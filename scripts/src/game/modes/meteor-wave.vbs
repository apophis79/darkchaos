

'Meteor Wave Mode.

'Meteor waves occur at regular intervals. Once it starts, the meteor targets begin to pop up and meteor MB starts.
'Meteor targets can be dropped four different ways: 
'  1) with a normal ball hit, 2) with a proton cannon, 3) with a cluster bomb, 4) when time runs out and it hits earth
'If a meteor hits Earth, one tick is removed from the Healt bar. When Health bar is depleted, then the flippers die (ball ends)
'Each wave gets successively harder, where more meteors need to be destroyed to end the wave. 
'Number of meteors per wave, starting from first wave and going to last wave: 6,9,12,15,18,21,24,27,30



' Known issues:
' - if proton fired right when wave starts, can case some confusion with the meteors dropped


Sub CreateMeteorWaveMode
    Dim x

    With CreateGlfMode("meteor_wave", 1000)
        '.Debug = True
        .StartEvents = Array("start_meteor_wave")
        .StopEvents = Array("timer_meteor_wave_finish_complete",GLF_BALL_ENDED)


        With .EventPlayer()
            '.Debug = True
            .Add "mode_meteor_wave_started", Array("start_meteor_multiball","check_protons","init_meteor1","init_meteor2","init_meteor3","init_meteor4")
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

            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave1 == 0}", Array("meteor_wave1_running")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave1 == 2 && current_player.shot_meteor_wave2 == 0}", Array("meteor_wave2_running")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", Array("meteor_wave3_running")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave3 == 2 && current_player.shot_meteor_wave4 == 0}", Array("meteor_wave4_running")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", Array("meteor_wave5_running")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave5 == 2 && current_player.shot_meteor_wave6 == 0}", Array("meteor_wave6_running")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", Array("meteor_wave7_running")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave7 == 2 && current_player.shot_meteor_wave8 == 0}", Array("meteor_wave8_running")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", Array("meteor_wave9_running")

            .Add "meteor_wave_done{current_player.shot_meteor_wave1 == 1}", Array("meteor_wave1_done","stop_meteor_wave") 
            .Add "meteor_wave_done{current_player.shot_meteor_wave2 == 1}", Array("meteor_wave2_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave3 == 1}", Array("meteor_wave3_done","stop_meteor_wave") 'light_eb here?
            .Add "meteor_wave_done{current_player.shot_meteor_wave4 == 1}", Array("meteor_wave4_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave5 == 1}", Array("meteor_wave5_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave6 == 1}", Array("meteor_wave6_done","stop_meteor_wave","light_eb")
            .Add "meteor_wave_done{current_player.shot_meteor_wave7 == 1}", Array("meteor_wave7_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave8 == 1}", Array("meteor_wave8_done","stop_meteor_wave")
            .Add "meteor_wave_done{current_player.shot_meteor_wave9 == 1}", Array("meteor_wave9_done","stop_meteor_wave","start_meteor_wizard")

            .Add "proton_fired", Array("check_protons","proton_fired_flash_show")
            .Add "meteor1_down", Array("check_meteor_wave") 'avoids race cond with variableplayer?
            .Add "meteor2_down", Array("check_meteor_wave")
            .Add "meteor3_down", Array("check_meteor_wave")
            .Add "meteor4_down", Array("check_meteor_wave")
            .Add "check_meteor_wave{current_player.num_meteors_to_drop==0}", Array("meteor_wave_done")
        End With

        'Randomize which meteor gets hit by proton cannon
        With .RandomEventPlayer()
            '.Debug = True
            With .EventName("check_protons")
                .Add "meteor1_proton_hit{current_player.shot_meteor1_light > 0}", 1
                .Add "meteor2_proton_hit{current_player.shot_meteor2_light > 0}", 1
                .Add "meteor3_proton_hit{current_player.shot_meteor3_light > 0}", 1
                .Add "meteor4_proton_hit{current_player.shot_meteor4_light > 0}", 1
                .ForceAll = False
                .ForceDifferent = False
            End With
        End With
        

        'Define a shot profile with four states
        With .ShotProfiles("meteor_temp")
            With .States("unlit")
                .Key = "key_meteor_off"
                .Show = "off"
            End With
            With .States("cool")
                .Key = "key_meteor_cool"
                .Show = "flash_color_with_fade"
                .Speed = 1
                With .Tokens()
                    .Add "color", MeteorCoolColor
                    .Add "fade", 200
                End With
            End With
            With .States("warm")
                .Key = "key_meteor_warm"
                .Show = "flash_color_with_fade"
                .Speed = 3
                With .Tokens()
                    .Add "color", MeteorWarmColor
                    .Add "fade", 100
                End With
            End With
            With .States("hot")
                .Key = "key_meteor_hot"
                .Show = "flash_color"
                .Speed = 6
                With .Tokens()
                    .Add "color", MeteorHotColor
                End With
            End With
        End With

        'Proton shot is ready, two states
        With .ShotProfiles("proton_shot_ready")
            With .States("unlit")
                .Key = "p_shot_not_ready"
                .Show = "off"
                With .Tokens()
                    .Add "lights", "tFire"
                End With
            End With
            With .States("ready")
                .Key = "p_shot_is_ready"
                .Show = "flash_color_with_fade"
                .Speed = 1
                With .Tokens()
                    .Add "fade", 200
                    .Add "color", ProtonColor
                    .Add "lights", "tFire"
                End With
            End With
        End With

        'Health shot is ready, two states
        With .ShotProfiles("health_shot_ready")
            With .States("unlit")
                .Key = "h_shot_not_ready"
                .Show = "off"
                With .Tokens()
                    .Add "lights", "tFire"
                End With
            End With
            With .States("ready")
                .Key = "h_shot_is_ready"
                .Show = "flash_color_with_fade"
                .Speed = 1
                With .Tokens()
                    .Add "fade", 200
                    .Add "color", HealthColor1
                    .Add "lights", "tHealth2"
                End With
            End With
        End With

        'Define fire proton shots
        With .Shots("fire_protons")
            .Profile = "proton_shot_ready"
            With .ControlEvents()
                .Events = Array("mode_meteor_wave_started{current_player.shot_proton_round1==1}","light_proton_charge3")
                .State = 1
            End With
            .RestartEvents = Array("check_protons_done{current_player.shot_proton_round1==0}")  'FIXME: why is this not working?
        End With

        'Define health shots
        With .Shots("mw_health")
            .Profile = "health_shot_ready"
            With .ControlEvents()
                .Events = Array("mode_meteor_wave_started")
                .State = 1
            End With
            .RestartEvents = Array("stop_meteor_wave") 
        End With


        'Define meteor shots
        For x = 1 to 4
            With .Shots("meteor"&x&"_light")
                .Profile = "meteor_temp"
                With .Tokens()
                    .Add "lights", "LMet"&x
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
                .ResetEvents = Array("meteor"&x&"_down")
            End With
        Next


        'Meteor state machines
        For x = 1 to 4   'for each meteor

            With .StateMachines("meteor"&x)
                '.Debug = True
                .PersistState = False
                .StartingState = "init"
                
                'States
                With .States("init")
                    .Label = "Init State"
                End With
                With .States("down")
                    .Label = "Down State"
                    .EventsWhenStarted = Array("meteor"&x&"_down","restart_meteor"&x&"_timer") 
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
                    .Events = Array("timer_meteor"&x&"_init_complete")
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
                    .EventsWhenTransitioning = Array("meteor"&x&"_knockdown","earth_hit","earth_flash")
                End With
                With .Transitions()  'normal hit
                    .Source = Array("up_cool","up_warm","up_hot")
                    .Target = "down"
                    .Events = Array("s_DTMeteor"&x&"_active")
                    .EventsWhenTransitioning = Array("meteor"&x&"_hit","meteor"&x&"_explodes_show","meteor"&x&"_flash_show")
                End With
                With .Transitions()  'knockdowns
                    .Source = Array("up_cool","up_warm","up_hot")
                    .Target = "down"
                    .Events = Array("meteor"&x&"_proton_hit","stop_meteor_wave","cluster_bomb_fired",GLF_BALL_ENDED)
                    .EventsWhenTransitioning = Array("meteor"&x&"_knockdown")
                End With
            End With

            With .Timers("meteor"&x)
                '.Debug = True
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

            'Randomize the initialization time for each meteor
            With .Timers("meteor"&x&"_init")
                '.Debug = True
                .TickInterval = MeteorTimerInitTickInterval
                .StartValue = 0
                .EndValue = 5
                .StartRunning = True
                With .ControlEvents()
                    .EventName = "meteor"&x&"_init_tick1"
                    .Action = "jump"
                    .Value = 1
                End With
                With .ControlEvents()
                    .EventName = "meteor"&x&"_init_tick2"
                    .Action = "jump"
                    .Value = 2
                End With
                With .ControlEvents()
                    .EventName = "meteor"&x&"_init_tick3"
                    .Action = "jump"
                    .Value = 3
                End With
                With .ControlEvents()
                    .EventName = "meteor"&x&"_init_tick4"
                    .Action = "jump"
                    .Value = 4
                End With
            End With

            With .RandomEventPlayer()
                '.Debug = True
                With .EventName("init_meteor"&x)
                    .Add "meteor"&x&"_init_tick1", 1
                    .Add "meteor"&x&"_init_tick2", 1
                    .Add "meteor"&x&"_init_tick3", 1
                    .Add "meteor"&x&"_init_tick4", 1
                    .ForceAll = False
                    .ForceDifferent = False
                End With
             End With

            'Light shows
            With .ShowPlayer()
                With .EventName("meteor"&x&"_explodes_show")
                    .Key = "key_meteor"&x&"_explodes"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", "ffffff"
                    End With    
                End With
                With .EventName("meteor"&x&"_proton_hit")
                    .Key = "key_meteor"&x&"_proton_hit"
                    .Show = "meteor"&x&"_explodes"
                    .Speed = 1
				    .Loops = 1
                    With .Tokens()
                        .Add "color", ProtonColor
                    End With    
                End With
            End With

        Next


        'Stage the wave finish
        With .Timers("meteor_wave_finish")
            '.Debug = True
            .TickInterval = 500
            .StartValue = 0
            .EndValue = 2
            With .ControlEvents()
                .EventName = "stop_meteor_wave"
                .Action = "restart"
            End With
        End With

        'Light shows
        With .ShowPlayer()
            With .EventName("proton_fired")
                .Key = "key_proton_fired"
                .Priority = 10
                .Show = "flash_color"
                .Speed = 20
                .Loops = 5
                With .Tokens()
                    .Add "lights", "tBlast"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("meteor1_flash_show")
                .Key = "key_meteor1_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", MeteorFlashColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("meteor2_flash_show")
                .Key = "key_meteor2_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", MeteorFlashColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("meteor3_flash_show")
                .Key = "key_meteor3_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", MeteorFlashColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("meteor4_flash_show")
                .Key = "key_meteor4_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", MeteorFlashColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("proton_fired_flash_show")
                .Key = "key_proton_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 3
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", ProtonColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("earth_hit")
                .Key = "key_earth_hit"
                .Priority = 15
                .Show = "earth_hit"
                .Speed = 1
                .Loops = 1
            End With
            With .EventName("earth_flash")
                .Key = "key_earth_flash"
                .Priority = 15
                .Show = "flash_color"
                .Speed = 15
                .Loops = 3
                With .Tokens()
                    .Add "lights", "tEarth"
                    .Add "color", EarthHitColor
                End With
            End With
        End With

        With .VariablePlayer()
            '.Debug = True
		    With .EventName("mode_meteor_wave_started")
				With .Variable("num_meteors_to_raise")
                    .Action = "set"
					.Int = "current_player.meteors_per_wave" 
				End With
                With .Variable("num_meteors_to_drop")
                    .Action = "set"
					.Int = "current_player.meteors_per_wave" 
				End With
			End With
            With .EventName("meteor_raised")
                With .Variable("num_meteors_to_raise")
                    .Action = "add"
                    .Int = -1
                End With
            End With
            With .EventName("meteor1_down")  'gets called after a knockdown too
                With .Variable("num_meteors_to_drop")
                    .Action = "add"
                    .Int = -1
                End With
            End With
            With .EventName("meteor2_down")  'gets called after a knockdown too
                With .Variable("num_meteors_to_drop")
                    .Action = "add"
                    .Int = -1
                End With
            End With
            With .EventName("meteor3_down")  'gets called after a knockdown too
                With .Variable("num_meteors_to_drop")
                    .Action = "add"
                    .Int = -1
                End With
            End With
            With .EventName("meteor4_down")  'gets called after a knockdown too
                With .Variable("num_meteors_to_drop")
                    .Action = "add"
                    .Int = -1
                End With
            End With
            With .EventName("stop_meteor_wave") 
                With .Variable("meteors_per_wave")
                    .Action = "add"
                    .Int = 3
                End With
            End With
            With .EventName("light_eb") 
                With .Variable("light_the_eb")
                    .Action = "set"
                    .Int = 1
                End With
            End With
		End With

        With .LightPlayer()
            With .EventName("mode_meteor_wave_started")
				With .Lights("GI")
					.Color = "000000"
                    '.Fade = 400
				End With
			End With
            With .EventName("timer_meteor_wave_finish_tick{devices.timers.meteor_wave_finish.ticks==1}")
                With .Lights("GI")
                    .Color = GIColor3000k
                    '.Fade = 400  'FIXME not working for some reason
                End With
            End With
        End With


        With .SegmentDisplayPlayer()
            With .EventName("mode_meteor_wave_started")
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