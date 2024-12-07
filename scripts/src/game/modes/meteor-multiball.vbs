

'Meteor Multiball.

'Meteor multiball occurs at regular intervals. Once it starts, the meteor targets begin to pop up.
'Meteor targets can be dropped four different ways: 
'  1) with a normal ball hit, 2) with a proton cannon, 3) with a custer bomb, 4) when time runs out and it hits earth
'If a meteor hits Earth, one tick is removed from the Healt bar. When Health bar is depleted, then the flippers die (ball ends)
'Each wave gets successively harder, where more meteors need to be destroyed to end the wave. 
'Number of meteors per wave, starting from first wave and going to last wave: 4,7,10,13,16,19,22,25,28

Const MeteorWaveDelayTime = 45000

Const MeteorTimerTickInterval = 4500
Const MeteorCoolTicks = 1
Const MeteorWarmTicks = 1
Const MeteorHotTicks = 1

Dim MeteorTotalTicks
MeteorTotalTicks = MeteorCoolTicks + MeteorWarmTicks + MeteorHotTicks

Sub CreateMeteorMultiballMode
    Dim x

    With CreateGlfMode("meteor_multiball", 1000)
        .Debug = True
        .StartEvents = Array("start_meteor_wave")
        .StopEvents = Array("ball_ended")


        'Meteor state machines
        For x = 1 to 4   'for each meteor

            With .StateMachines("meteor"&x)
                .PersistState = True
                .StartingState = "down"
                
                With .States("down")
                    .Label = "Down State"
                    .EventsWhenStarted = Array("meteor"&x&"_down")
                End With
                With .States("up_cool")
                    .Label = "Up Cool"
                    .EventsWhenStarted = Array("meteor"&x&"_cool","meteor"&x&"_raise")
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
                    .EventsWhenStarted = Array("meteor"&x&"_warm")
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
                    .EventsWhenStarted = Array("meteor"&x&"_hot")
                    With .ShowWhenActive()
                        .Show = "flash_color"
                        .Speed = 4
                        With .Tokens()
                            .Add "lights", "LMet"&x
                            .Add "color", MeteorHotColor
                        End With
                    End With
                End With

                With .Transitions()  'normal hit
                    .Source = Array("up_cool","up_warm","up_hot")
                    .Target = "down"
                    .Events = Array("s_DTMeteor"&x&"_active","multiball_meteor_stopped")
                    .EventsWhenTransitioning = Array("meteor"&x&"_hit","stop_meteor"&x&"_timer")
                End With
                With .Transitions()
                    .Source = Array("down")
                    .Target = "up_cool"
                    .Events = Array("timer_meteor"&x&"_started")
                End With
                With .Transitions()
                    .Source = Array("up_cool")
                    .Target = "up_warm"
                    .Events = Array("timer_meteor"&x&"_tick{devices.timers.meteor"&x&".ticks=="&MeteorCoolTicks&"}")
                End With
                With .Transitions()
                    .Source = Array("up_warm")
                    .Target = "up_hot"
                    .Events = Array("timer_meteor"&x&"_tick{devices.timers.meteor"&x&".ticks=="&MeteorCoolTicks+MeteorWarmTicks&"}")
                End With
                With .Transitions()  'earth hit
                    .Source = Array("up_hot")
                    .Target = "down"
                    .Events = Array("timer_meteor"&x&"_complete")
                    .EventsWhenTransitioning = Array("meteor"&x&"_knockdown","earth_hit")
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

        Next

        With .EventPlayer()
            .Add "mode_meteor_multiball_started", Array("restart_meteor1_timer","restart_meteor2_timer","restart_meteor3_timer","restart_meteor4_timer")
        End With

        With .ShowPlayer()
            With .Events("mode_meteor_multiball_started")
                .Show = "flash_color"
                .Speed = 1
				With .Tokens()
                    .Add "lights", "LSA"
                    .Add "color", ShipSaveColor
                End With
			End With
            With .Events("multiball_meteor_hurry_up")
                .Show = "flash_color"
                .Speed = 5
				With .Tokens()
                    .Add "lights", "LSA"
                    .Add "color", ShipSaveColor
                End With
			End With
            With .Events("multiball_meteor_shoot_again_ended")
                .Show = "off"
				With .Tokens()
                    .Add "lights", "LSA"
                End With
			End With
        End With

        With .LightPlayer()
            With .Events("mode_meteor_multiball_started")
				With .Lights("GI")
					.Color = "000000"
				End With
			End With
            With .Events("mode_meteor_multiball_stopped")
            'With .Events("multiball_meteor_stopped")
				With .Lights("GI")
					.Color = GIColor3000k
				End With
			End With
        End With


        With .Multiballs("meteor")
            .StartEvents = Array("mode_meteor_multiball_started")
            .BallCount = 3
            .BallCountType = "total"
            .ShootAgain = 10000
            .HurryUp = 3000
            .GracePeriod = 2000
        End With
    
    End With
End Sub