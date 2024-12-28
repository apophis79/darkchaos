

'Alien Attack Mode.

'After every even wave is completed, an alien roving shot will move accross the playfield. Direction is randomly chosen
'If the roving shot makes it all the way accross the playfield, an earth_hit occurs.
'Timewarp will freeze the alien
'Cluster bomb will distroy the alien


Sub CreateAlienAttackMode
    Dim x

    With CreateGlfMode("alien_attack", 510)
        .StartEvents = Array("new_ball_active","stop_meteor_wave")
        .StopEvents = Array("ball_ended","start_meteor_wave")
        .Debug = True

        
        'alien shot profile, two states
        With .ShotProfiles("alien")
            With .States("unlit")
                .Key = "key_alien_unlit"
                .Show = "off"
            End With
            With .States("lit")
                .Key = "key_alien_lit"
                .Show = "flash_color_with_fade"
                .Priority = 10
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
                .Debug = True
                .Profile = "alien"
                With .Tokens()
                    .Add "lights", MainShotLightNames(x-1)
                End With
                With .ControlEvents()
                    .Events = Array(MainShotNames(x-1)&"_hit")
                    .State = 0
                End With
                With .ControlEvents()
                    .Events = Array("alien_shot"&x&"_lit")
                    .State = 1
                End With
                .RestartEvents = Array("reset_alien_shot"&x,"reset_alien_attack")
            End With
        Next


        'Alien state machine
        With .StateMachines("alien")
            .Debug = True
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

            'Transitions
            With .Transitions()
                .Source = Array("init")
                .Target = "shot1"
                .Events = Array("timer_alien_attack_tick{current_player.alien_attack_dir == 0 && devices.timers.alien_attack.ticks == 1}")
            End With
            With .Transitions()
                .Source = Array("init")
                .Target = "shot8"
                .Events = Array("timer_alien_attack_tick{current_player.alien_attack_dir == 1 && devices.timers.alien_attack.ticks == 1}")
            End With
            For x = 1 to 7
                With .Transitions()  'move alien from left to right
                    .Source = Array("shot"&x)
                    .Target = "shot"&(x+1)
                    .Events = Array("timer_alien_attack_tick{current_player.alien_attack_dir == 0 && devices.timers.alien_attack.ticks == "&(x+1)&"}") 
                    '.Events = Array("timer_alien_attack_tick{current_player.alien_attack_dir == 0}")
                    .EventsWhenTransitioning = Array("reset_alien_shot"&x)
                End With
            Next
            For x = 2 to 8
                With .Transitions()  'move alien from right to left
                    .Source = Array("shot"&x)
                    .Target = "shot"&(x-1)
                    .Events = Array("timer_alien_attack_tick{current_player.alien_attack_dir == 1 && devices.timers.alien_attack.ticks == "&(10-x)&"}") 
                    '.Events = Array("timer_alien_attack_tick{current_player.alien_attack_dir == 1}")
                    .EventsWhenTransitioning = Array("reset_alien_shot"&x)
                End With
            Next
            For x = 1 to 8
                With .Transitions()  'handle successfully destroyed alien
                    .Source = Array("shot"&x)
                    .Target = "init"
                    .Events = Array(MainShotNames(x-1)&"_hit","cluster_bomb_fired")
                    .EventsWhenTransitioning = Array("reset_alien_shot"&x,"alien_attack_finished")
                End With
            Next
           
        End With


        With .EventPlayer()
            .Debug = True
            'resetting the attack
            .Add "mode_alien_attack_started{current_player.alien_attack_done==0}", Array("reset_alien_timer")
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave1 == 2 && current_player.shot_meteor_wave2 == 0}", Array("reset_alien_attack")  'after wave 1
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave3 == 2 && current_player.shot_meteor_wave4 == 0}", Array("reset_alien_attack")  'after wave 3
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave5 == 2 && current_player.shot_meteor_wave6 == 0}", Array("reset_alien_attack")  'after wave 5
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave7 == 2 && current_player.shot_meteor_wave8 == 0}", Array("reset_alien_attack")  'after wave 6
            'start the attack sequence (only after even waves)
            .Add "reset_alien_timer{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", Array("continue_alien_attack")  'after wave 2
            .Add "reset_alien_timer{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", Array("continue_alien_attack")  'after wave 4
            .Add "reset_alien_timer{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", Array("continue_alien_attack")  'after wave 6
            .Add "reset_alien_timer{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", Array("continue_alien_attack")  'after wave 8
            'handle time warp
            .Add "restart_tw_timer{devices.timers.alien_attack.ticks >= 0}", Array("freeze_alien_attack")  
            .Add "timer_timewarp_complete{devices.timers.alien_attack.ticks >= 0}", Array("continue_alien_attack") 
            'handle alien attack hit
            .Add "timer_alien_attack_complete", Array("earth_hit","earth_flash","alien_attack_finished")
        End With

        With .RandomEventPlayer()
            .Debug = True
            With .EventName("reset_alien_attack")
                .Add "alien_attack_from_left", 1
                .Add "alien_attack_from_right", 1
                .ForceAll = False
                .ForceDifferent = False
            End With
        End With


        With .Timers("alien_attack")
            .Debug = True
            .TickInterval = AlienTickInterval
            .StartValue = "current_player.alien_tick_count"
            .EndValue = 9
            With .ControlEvents()
                .EventName = "reset_alien_timer"
                .Action = "reset"
            End With
            With .ControlEvents()
                .EventName = "freeze_alien_attack"
                .Action = "stop"
            End With
            With .ControlEvents()
                .EventName = "alien_attack_finished"
                .Action = "stop"
            End With
            With .ControlEvents()
                .EventName = "continue_alien_attack"
                .Action = "start"
            End With
        End With


        With .VariablePlayer()
            .Debug = True
            With .EventName("alien_attack_finished")
                With .Variable("alien_attack_done")
                    .Action = "set"
					.Int = 1
				End With
			End With
            With .EventName("reset_alien_attack")
                With .Variable("alien_attack_done")
                    .Action = "set"
					.Int = 0
				End With
                With .Variable("alien_tick_count")
                    .Action = "set"
					.Int = -1
				End With
			End With
            With .EventName("timer_alien_attack_tick")
				With .Variable("alien_tick_count")
                    .Action = "set"
					.Int = "devices.timers.alien_attack.ticks"
				End With
			End With
            With .EventName("alien_attack_from_left")
				With .Variable("alien_attack_dir")
                    .Action = "set"
					.Int = 0
				End With
			End With
            With .EventName("alien_attack_from_right")
				With .Variable("alien_attack_dir")
                    .Action = "set"
					.Int = 1
				End With
			End With
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


    End With

End Sub