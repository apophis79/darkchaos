

'Meteor Wave Mode.

'Meteor waves occur at regular intervals. Once it starts, the meteor targets begin to pop up and meteor MB starts.
'Meteor targets can be dropped four different ways: 
'  1) with a normal ball hit, 2) with a proton cannon, 3) with a custer bomb, 4) when time runs out and it hits earth
'If a meteor hits Earth, one tick is removed from the Healt bar. When Health bar is depleted, then the flippers die (ball ends)
'Each wave gets successively harder, where more meteors need to be destroyed to end the wave. 
'Number of meteors per wave, starting from first wave and going to last wave: 4,7,10,13,16,19,22,25,28

' TODO:
' - GI event triggering at end of Wave              DONE
' - Reset MB if still going at start of new wave    DONE
' - include inital raise randomness                 
' - include wave meteor counts                       
' - add proton cannon firing effect                 need randome event player for this
' - add cluster bomb firing effect                  DONE
' - add post diverter up                            DONE
' - add health bar effects (negative and positive)  DONE
' - kill flippers when health runs out              
' - suppress other modes during meteor MB mode      
' - add shows (first light shows)                   



Const MeteorWaveDelayTime = 45000

Const MeteorTimerInitTickInterval = 500

Const MeteorTimerTickInterval = 1100
Const MeteorDropTicks = 1
Const MeteorCoolTicks = 4
Const MeteorWarmTicks = 4
Const MeteorHotTicks = 4

Dim MeteorTotalTicks
MeteorTotalTicks = MeteorDropTicks + MeteorCoolTicks + MeteorWarmTicks + MeteorHotTicks

Sub CreateMeteorWaveMode
    Dim x

    With CreateGlfMode("meteor_wave", 1000)
        .Debug = True
        .StartEvents = Array("start_meteor_wave")
        .StopEvents = Array("stop_meteor_wave")


        'Meteor state machines
        For x = 1 to 4   'for each meteor

            With .StateMachines("meteor"&x)
                .Debug = True
                .PersistState = False
                .StartingState = "init"
                
                'States
                With .States("init")
                    .Label = "Init State"
                    .EventsWhenStarted = Array("init_meteors","restart_meteor"&x&"_init_timer") 
                End With
                With .States("down")
                    .Label = "Down State"
                    .EventsWhenStarted = Array("meteor_dropped","restart_meteor"&x&"_timer") 
                End With
                With .States("up_cool")
                    .Label = "Up Cool"
                    .EventsWhenStarted = Array("meteor"&x&"_raise")
                    With .ShowWhenActive()
                        .Show = "flash_color"
                        .Speed = 1
                        With .Tokens()
                            .Add "lights", "LMet"&x
                            .Add "color", MeteorCoolColor
                        End With
                    End With
                End With
                With .States("up_warm")
                    .Label = "Up Warm"
                    With .ShowWhenActive()
                        .Show = "flash_color"
                        .Speed = 2
                        With .Tokens()
                            .Add "lights", "LMet"&x
                            .Add "color", MeteorWarmColor
                        End With
                    End With
                End With
                With .States("up_hot")
                    .Label = "Up Hot"
                    With .ShowWhenActive()
                        .Show = "flash_color"
                        .Speed = 4
                        With .Tokens()
                            .Add "lights", "LMet"&x
                            .Add "color", MeteorHotColor
                        End With
                    End With
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
                    .EventsWhenTransitioning = Array("meteor"&x&"_knockdown","earth_hit")
                End With
                With .Transitions()  'normal hit
                    .Source = Array("up_cool","up_warm","up_hot")
                    .Target = "down"
                    .Events = Array("s_DTMeteor"&x&"_active")
                    .EventsWhenTransitioning = Array("meteor"&x&"_hit")
                End With
                With .Transitions()  'knockdowns
                    .Source = Array("up_cool","up_warm","up_hot")
                    .Target = "down"
                    .Events = Array("stop_meteor_wave","cluster_bomb_fired",GLF_BALL_ENDED)
                    .EventsWhenTransitioning = Array("meteor"&x&"_knockdown")
                End With
            End With
        

            With .Timers("meteor"&x&"_init")
                .TickInterval = MeteorTimerInitTickInterval
                .StartValue = 0
                .EndValue = 1  'FIXME  num should semi-random int from 1 to 4
                With .ControlEvents()
                    .EventName = "restart_meteor"&x&"_init_timer"
                    .Action = "restart"
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

            With .VariablePlayer()
                .Debug = true
                With .EventName("meteor"&x&"_raise")
                    With .Variable("num_meteors_to_raise")
                        .Action = "add"
                        .Int = -1
                    End With
                End With
                With .EventName("meteor"&x&"_hit")
                    With .Variable("num_meteors_to_drop")
                        .Action = "add"
                        .Int = -1
                    End With
                End With
                With .EventName("meteor"&x&"_knockdown")
                    With .Variable("num_meteors_to_drop")
                        .Action = "add"
                        .Int = -1
                    End With
                End With
            End With

        Next

        With .EventPlayer()
            .Add "mode_meteor_wave_started", Array("start_meteor_multiball")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 1}", Array("fire_proton_round1","proton_fired")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 2}", Array("fire_proton_round2","proton_fired")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 3}", Array("fire_proton_round3","proton_fired")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 4}", Array("fire_proton_round4","proton_fired")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 5}", Array("fire_proton_round5","proton_fired")
            .Add "s_TargetMystery3_active{current_player.proton_round_count == 6}", Array("fire_proton_round6","proton_fired","reset_proton_charges")
            .Add "meteor_dropped{current_player.num_meteors_to_drop==0}", Array("stop_meteor_wave")
        End With

        With .LightPlayer()
            With .Events("mode_meteor_wave_started")
				With .Lights("GI")
					.Color = "000000"
				End With
			End With
            With .Events("stop_meteor_wave")
				With .Lights("GI")
					.Color = GIColor3000k
				End With
			End With
        End With

        With .VariablePlayer()
            .Debug = true
		    With .EventName("mode_meteor_wave_started")
				With .Variable("num_meteors_to_raise")
                    .Action = "set"
					.Int = 5  'FIXME  num should be based on wave number
				End With
                With .Variable("num_meteors_to_drop")
                    .Action = "set"
					.Int = 5  'FIXME  num should be based on wave number
				End With
			End With
		End With

    End With
End Sub