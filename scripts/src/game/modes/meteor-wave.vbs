

'Meteor Wave Mode.

'Meteor waves occur at regular intervals. Once it starts, the meteor targets begin to pop up and meteor MB starts.
'Meteor targets can be dropped four different ways: 
'  1) with a normal ball hit, 2) with a proton cannon, 3) with a cluster bomb, 4) when time runs out and it hits earth
'If a meteor hits Earth, one tick is removed from the Healt bar. When Health bar is depleted, then the flippers die (ball ends)
'Each wave gets successively harder, where more meteors need to be destroyed to end the wave. 
'Number of meteors per wave, starting from first wave and going to last wave: 4,7,10,13,16,19,22,25,28

' TODO:
' - GI event triggering at end of Wave              DONE
' - Reset MB if still going at start of new wave    DONE
' - include inital raise randomness                 DONE         
' - include wave meteor counts                      DONE
' - add proton cannon firing effect                 DONE
' - add cluster bomb firing effect                  DONE
' - add post diverter up                            DONE
' - add health bar effects (negative and positive)  DONE
' - add timewarp effect                             DONE
' - kill flippers when health runs out              DONE
' - suppress other modes during meteor MB mode      DONE
'     - health, protons, and cluster bombs should stay active   
' - add shows (first light shows)                   

' Known issues:
' - moon mb not releasing all balls. ball count get messed up
' - stutter at end of the wave



Sub CreateMeteorWaveMode
    Dim x

    With CreateGlfMode("meteor_wave", 1000)
        .Debug = True
        '.StartEvents = Array("timer_meteor_wave_init_tick{devices.timers.meteor_wave_init.ticks == 9}")
        '.StopEvents = Array("timer_meteor_wave_finish_tick{devices.timers.meteor_wave_finish.ticks == 1}")
        .StartEvents = Array("start_meteor_wave")
        .StopEvents = Array("stop_meteor_wave")

        'Define a shot profile with four states
        With .ShotProfiles("meteor_temp")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("cool")
                .Show = "flash_color_with_fade"
                .Speed = 1
                With .Tokens()
                    .Add "color", MeteorCoolColor
                    .Add "fade", 200
                End With
            End With
            With .States("warm")
                .Show = "flash_color_with_fade"
                .Speed = 3
                With .Tokens()
                    .Add "color", MeteorWarmColor
                    .Add "fade", 100
                End With
            End With
            With .States("hot")
                .Show = "flash_color"
                .Speed = 6
                With .Tokens()
                    .Add "color", MeteorHotColor
                End With
            End With
        End With

        'Define meteor shots
        For x = 1 to 4
            With .Shots("meteor"&x&"_light")
                .Profile = "meteor_temp"
                With .Tokens()
                    .Add "lights", "LMet"&x
                End With
                With .ControlEvents()
                    .Events = Array("meteor"&x&"_down")
                    .State = 0
                End With
                With .ControlEvents()
                    .Events = Array("meteor"&x&"_cool")
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("meteor"&x&"_warm")
                    .State = 2
                End With
                With .ControlEvents()
                    .Events = Array("meteor"&x&"_hot")
                    .State = 3
                End With
            End With
        Next


        'Meteor state machines
        For x = 1 to 4   'for each meteor

            With .StateMachines("meteor"&x)
                .Debug = True
                .PersistState = False
                .StartingState = "init"
                
                'States
                With .States("init")
                    .Label = "Init State"
                End With
                With .States("down")
                    .Label = "Down State"
                    .EventsWhenStarted = Array("meteor"&x&"_down","restart_meteor"&x&"_timer","meteor_dropped") 
                End With
                With .States("up_cool")
                    .Label = "Up Cool"
                    .EventsWhenStarted = Array("meteor"&x&"_cool","meteor"&x&"_raise","meteor_raised")
                End With
                With .States("up_warm")
                    .Label = "Up Warm"
                    .EventsWhenStarted = Array("meteor"&x&"_warm")
                End With
                With .States("up_hot")
                    .Label = "Up Hot"
                    .EventsWhenStarted = Array("meteor"&x&"_hot")
                End With

                'Transitions
                With .Transitions()
                    .Source = Array("init")
                    .Target = "up_cool"
                    .Events = Array("meteor"&x&"_start")
                    .EventsWhenTransitioning = Array("restart_meteor"&x&"_timer")
                End With
                With .Transitions()
                    .Source = Array("down")
                    .Target = "up_cool"
                    .Events = Array("timer_meteor"&x&"_tick{current_player.num_meteors_to_raise>0 && devices.timers.meteor"&x&".ticks=="&MeteorDropTicks&"}")
                End With
                With .Transitions()
                    .Source = Array("up_cool")
                    .Target = "up_warm"
                    .Events = Array("timer_meteor"&x&"_tick{devices.timers.meteor"&x&".ticks=="&MeteorDropTicks+MeteorCoolTicks&"}")
                End With
                With .Transitions()
                    .Source = Array("up_warm")
                    .Target = "up_hot"
                    .Events = Array("timer_meteor"&x&"_tick{devices.timers.meteor"&x&".ticks=="&MeteorDropTicks+MeteorCoolTicks+MeteorWarmTicks&"}")
                End With
                With .Transitions()  'earth hit
                    .Source = Array("up_hot")
                    .Target = "down"
                    .Events = Array("timer_meteor"&x&"_complete")
                    .EventsWhenTransitioning = Array("meteor"&x&"_knockdown","earth_hit")
                End With
                With .Transitions()  'normal hit
                    .Source = Array("up_cool","up_warm","up_hot")
                    .Target = "down"
                    .Events = Array("s_DTMeteor"&x&"_active")
                    .EventsWhenTransitioning = Array("meteor"&x&"_hit","meteor"&x&"_explodes_show")',"meteor"&x&"_flash_show")
                End With
                With .Transitions()  'knockdowns
                    .Source = Array("up_cool","up_warm","up_hot")
                    .Target = "down"
                    .Events = Array("stop_meteor_wave","cluster_bomb_fired",GLF_BALL_ENDED)
                    .EventsWhenTransitioning = Array("meteor"&x&"_knockdown")
                End With
            End With

            With .Timers("meteor"&x)
                .TickInterval = MeteorTimerTickInterval
                .StartValue = 0
                .EndValue = MeteorTotalTicks
                With .ControlEvents()
                    .EventName = "restart_meteor"&x&"_timer"
                    .Action = "restart"
                End With
                With .ControlEvents()
                    .EventName = "stop_meteor"&x&"_timer"
                    .Action = "stop"
                End With
            End With

            With .ShowPlayer()
                With .Events("meteor"&x&"_explodes_show")
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                End With
            End With

        Next


        With .EventPlayer()
            .Debug = True
            .Add "mode_meteor_wave_started", Array("start_meteor_multiball")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", Array("fire_proton_round1","proton_fired")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", Array("fire_proton_round2","proton_fired")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", Array("fire_proton_round3","proton_fired")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", Array("fire_proton_round4","proton_fired")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", Array("fire_proton_round5","proton_fired")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round6 == 1}", Array("fire_proton_round6","proton_fired","reset_proton_charges")

            .Add "center_orbit_left_hit{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", Array("fire_proton_round1","proton_fired")
            .Add "center_orbit_left_hit{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", Array("fire_proton_round2","proton_fired")
            .Add "center_orbit_left_hit{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", Array("fire_proton_round3","proton_fired")
            .Add "center_orbit_left_hit{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", Array("fire_proton_round4","proton_fired")
            .Add "center_orbit_left_hit{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", Array("fire_proton_round5","proton_fired")
            .Add "center_orbit_left_hit{current_player.shot_proton_round6 == 1}", Array("fire_proton_round6","proton_fired","reset_proton_charges")

            .Add "center_orbit_right_hit{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", Array("fire_proton_round1","proton_fired")
            .Add "center_orbit_right_hit{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", Array("fire_proton_round2","proton_fired")
            .Add "center_orbit_right_hit{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", Array("fire_proton_round3","proton_fired")
            .Add "center_orbit_right_hit{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", Array("fire_proton_round4","proton_fired")
            .Add "center_orbit_right_hit{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", Array("fire_proton_round5","proton_fired")
            .Add "center_orbit_right_hit{current_player.shot_proton_round6 == 1}", Array("fire_proton_round6","proton_fired","reset_proton_charges")

            .Add "meteor_wave_done{current_player.shot_meteor_wave1 == 0}", Array("meteor_wave1_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave1 == 1 && current_player.shot_meteor_wave2 == 0}", Array("meteor_wave2_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave2 == 1 && current_player.shot_meteor_wave3 == 0}", Array("meteor_wave3_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave3 == 1 && current_player.shot_meteor_wave4 == 0}", Array("meteor_wave4_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave4 == 1 && current_player.shot_meteor_wave5 == 0}", Array("meteor_wave5_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave5 == 1 && current_player.shot_meteor_wave6 == 0}", Array("meteor_wave6_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave6 == 1 && current_player.shot_meteor_wave7 == 0}", Array("meteor_wave7_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave7 == 1 && current_player.shot_meteor_wave8 == 0}", Array("meteor_wave8_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave8 == 1 && current_player.shot_meteor_wave9 == 0}", Array("meteor_wave9_done","stop_meteor_wave","start_meteor_wizard")

            .Add "proton_fired", Array("check_protons")
            .Add "meteor_dropped", Array("check_meteor_wave") 'avoids race cond with variableplayer?
            .Add "check_meteor_wave{current_player.num_meteors_to_drop==0}", Array("meteor_wave_done")
        End With

        With .RandomEventPlayer()
            .Debug = True
            With .EventName("proton_fired")
                .Add "meteor1_knockdown{current_player.shot_meteor1_light > 0}", 25
                .Add "meteor2_knockdown{current_player.shot_meteor2_light > 0}", 25
                .Add "meteor3_knockdown{current_player.shot_meteor3_light > 0}", 25
                .Add "meteor4_knockdown{current_player.shot_meteor4_light > 0}", 25
                .ForceAll = False
                .ForceDifferent = False
            End With
            With .EventName("timer_meteors_init_tick")
                .Add "meteor1_start{current_player.shot_meteor1_light == 0}", 25
                .Add "meteor2_start{current_player.shot_meteor2_light == 0}", 25
                .Add "meteor3_start{current_player.shot_meteor3_light == 0}", 25
                .Add "meteor4_start{current_player.shot_meteor4_light == 0}", 25
                .ForceAll = False
                .ForceDifferent = False
            End With
        End With

        With .Timers("meteors_init")
            .TickInterval = MeteorTimerInitTickInterval
            .StartValue = 0
            .EndValue = 5 
            With .ControlEvents()
                .EventName = "mode_meteor_wave_started"
                .Action = "restart"
            End With
        End With
        

        With .LightPlayer()
            With .Events("mode_meteor_wave_started")
				With .Lights("GI")
					.Color = "000000"
                    .Fade = 1000
				End With
			End With
            With .Events("stop_meteor_wave")
				With .Lights("GI")
					.Color = GIColor3000k
                    .Fade = 200
				End With
			End With
        End With


        With .ShowPlayer()
            With .Events("mode_meteor_wave_started{current_player.shot_proton_round1==1}")
                .Show = "flash_color_with_fade"
                .Speed = 1
                With .Tokens()
                    .Add "lights", "FireProtonShots"
                    .Add "color", ProtonColor
                    .Add "fade", 200
                End With
            End With
            With .Events("light_proton_charge3")
                .Show = "flash_color_with_fade"
                .Speed = 1
                With .Tokens()
                    .Add "lights", "FireProtonShots"
                    .Add "color", ProtonColor
                    .Add "fade", 200
                End With
            End With
            With .Events("proton_fired")
                .Show = "flash_color"
                .Speed = 20
                .Loops = 5
                With .Tokens()
                    .Add "lights", "ProtonBlast"
                    .Add "color", ProtonColor
                End With
            End With
            With .Events("check_protons{current_player.shot_proton_round1==0}")
                .Show = "off"
                With .Tokens()
                    .Add "lights", "FireProtonShots"
                End With
            End With
        End With


        With .ShowPlayer()
            With .Events("meteor1_flash_show")
                .Show = "flash_color_with_fade" 
                .Speed = 2
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", "ffffff"
                    .Add "fade", 300
                End With
            End With
            With .Events("meteor2_flash_show")
                .Show = "flash_color_with_fade" 
                .Speed = 2
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", "ffffff"
                    .Add "fade", 300
                End With
            End With
            With .Events("meteor3_flash_show")
                .Show = "flash_color_with_fade" 
                .Speed = 2
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", "ffffff"
                    .Add "fade", 300
                End With
            End With
            With .Events("meteor4_flash_show")
                .Show = "flash_color_with_fade" 
                .Speed = 2
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", "ffffff"
                    .Add "fade", 300
                End With
            End With
        End With

        With .VariablePlayer()
            .Debug = true
		    With .EventName("mode_meteor_wave_started")
				With .Variable("num_meteors_to_raise")
                    .Action = "set"
					.Int = "current_player.meteor_wave_count" 
				End With
                With .Variable("num_meteors_to_drop")
                    .Action = "set"
					.Int = "current_player.meteor_wave_count" 
				End With
			End With
            With .EventName("meteor_raised")
                With .Variable("num_meteors_to_raise")
                    .Action = "add"
                    .Int = -1
                End With
            End With
            With .EventName("meteor_dropped")  'gets called after a knockdown too
                With .Variable("num_meteors_to_drop")
                    .Action = "add"
                    .Int = -1
                End With
            End With
            With .EventName("stop_meteor_wave") 
                With .Variable("meteor_wave_count")
                    .Action = "add"
                    .Int = 3
                End With
            End With
		End With

        With .SegmentDisplayPlayer()
            With .Events("mode_meteor_wave_started")
                With .Display("player2")
                    .Text = """METEOR"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
                With .Display("player3")
                    .Text = """WAVE """
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With


    End With

End Sub