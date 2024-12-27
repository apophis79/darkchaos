

'Alien Attack Mode.


Sub CreateAlienAttackMode
    Dim x

    With CreateGlfMode("alien_attack", 510)
        .StartEvents = Array("new_ball_active","stop_meteor_wave")
        .StopEvents = Array("ball_ended","start_meteor_wave")
        '.Debug = True

        
        'alien shot profile, two states
        With .ShotProfiles("alien")
            With .States("unlit")
                .Key = "key_alien_unlit"
                .Show = "off"
            End With
            With .States("lit")
                .Key = "key_alien_lit"
                .Show = "flash_color_with_fade"
                .Speed = 7
                With .Tokens()
                    .Add "fade", 200
                    .Add "color", AlienColor
                End With
            End With
        End With


        'Define alien shots
        For x = 1 to 8
            With .Shots("alien_shot"&x)
                .Profile = "alien"
                With .Tokens()
                    .Add "lights", MainShotLightNames(x-1)
                End With
                With .ControlEvents()
                    .Events = Array("alien_shot"&x&"_lit")
                    .State = 1
                End With
                .RestartEvents = Array("reset_alien_shot"&x,"reset_all_aliens")
            End With
        Next


        With .Timers("alien_attacks")
            .TickInterval = AlienTickInterval1
            .StartValue = 0
            .EndValue = 9
            With .ControlEvents()
                .EventName = "start_alien_attacks"
                .Action = "start"
            End With
            With .ControlEvents()
                .EventName = "restart_tw_timer"
                .Action = "stop"
            End With
            With .ControlEvents()
                .EventName = "timer_timewarp_complete"
                .Action = "start"
            End With
            With .ControlEvents()
                .EventName = "reset_alien_attacks"
                .Action = "reset"
            End With
        End With


        With .VariablePlayer()
		    With .EventName("timer_alien_attacks_tick{devices.timers.alien_attacks.ticks>0}")
				With .Variable("alien_position")
                    .Action = "add"
					.Int = 1
				End With
			End With
		End With


        With .StateMachines("alien")
            .PersistState = true
            .StartingState = "init"
            
            'States
            With .States("init")
                .Label = "Init State"
            End With
            For x = 1 to 8
                With .States("shot"&x)
                    .Label = "Alien Shot "&x
                    .EventsWhenStarted = Array("alien_shot"&x&"_lit") 
                End With
            Next
            With .States("done")
                .Label = "Done State"
            End With

            'Transitions
            With .Transitions()
                .Source = Array("init")
                .Target = "shot1"
                .Events = Array("timer_alien_attacks_tick{devices.timers.alien_attacks.ticks==1}")
            End With
            For x = 1 to 7
                With .Transitions()
                    .Source = Array("shot"&x)
                    .Target = "shot"&(x+1)
                    .Events = Array("timer_alien_attacks_tick")
                    .EventsWhenTransitioning = Array("reset_alien_shot"&x)
                End With
                With .Transitions()
                    .Source = Array("shot"&x)
                    .Target = "done"
                    .Events = Array(MainShotNames(x-1)&"_hit")
                    .EventsWhenTransitioning = Array("reset_alien_shot"&x,"reset_alien_attacks")
                End With
            Next
           
        End With

        
        With .ShowPlayer()
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
                    .Add "lights", "EarthFlash"
                    .Add "color", EarthHitColor
                End With
            End With
        End With


        With .EventPlayer()
            .Add "mode_alien_attack_started", Array("reset_all_aliens")
            'start the attack sequence (only after even waves)
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave1 == 0}", Array("start_alien_attacks") 'DEBUG
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", Array("start_alien_attacks")
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", Array("start_alien_attacks")  
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", Array("start_alien_attacks")
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", Array("start_alien_attacks")  
            'handle alien attack hit
            .Add "timer_alien_attacks_complete", Array("earth_hit","earth_flash")
        End With



    End With

End Sub