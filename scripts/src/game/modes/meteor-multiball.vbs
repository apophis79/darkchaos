

'Meteor Multiball.

'Meteor multiball occurs at regular intervals. Once it starts, the meteor targets begin to pop up.

Const MeteorWaveDelayTime = 45000

Const MeteorCoolColor = "ffA957"
Const MeteorWarmColor = "edb600"
Const MeteorHotColor = "ed1800"

Const MeteorTimerTickInterval = 500
Const MeteorCoolTicks = 8
Const MeteorWarmTicks = 8
Const MeteorHotTicks = 8

Dim MeteorTotalTime
MeteorTotalTime = MeteorTimerTickInterval*(MeteorCoolTicks + MeteorWarmTicks + MeteorHotTicks)

Sub CreateMeteorMultiballMode
    Dim x

    With CreateGlfMode("meteor_multiball", 1000)
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
                    .Events = Array("s_DTMeteor"&x&"_active")
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
                    .EventsWhenTransitioning = Array("knockdown_meteor"&x,"earth_hit")
                End With
            End With
        

            With .Timers("meteor"&x)
                .TickInterval = MeteorTimerTickInterval
                .StartValue = 0
                .EndValue = MeteorTotalTime
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
    
    End With
End Sub