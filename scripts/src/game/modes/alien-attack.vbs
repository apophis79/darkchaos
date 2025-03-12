

'Alien Attack Mode.

'After every even wave is completed, an alien roving shot will move accross the playfield. Direction is randomly chosen
'If the roving shot makes it all the way accross the playfield, an earth_hit occurs.
'Timewarp will freeze the alien
'Cluster bomb will distroy the alien


Sub CreateAlienAttackMode
    Dim x

    With CreateGlfMode("alien_attack", 500)
        .StartEvents = Array("new_ball_active","stop_meteor_wave","stop_training","wizard_mode_ended")
        .StopEvents = Array("mode_base_stopping","recycle_alien_done","start_training_select","wizard_mode_started")
        '.Debug = True


        With .EventPlayer()
            'start the attack sequence (only after even waves)
            '.Add "mode_alien_attack_started", Array("start_alien_attack")  'DEBUG
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", Array("start_alien_attack")  'after wave 2
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", Array("start_alien_attack")  'after wave 4
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", Array("start_alien_attack")  'after wave 6
            .Add "mode_alien_attack_started{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", Array("start_alien_attack")  'after wave 8
            'reset stuff at start of wave
            .Add "start_meteor_wave", Array("recycle_alien_attack")
            .Add "recycle_alien_attack", Array("recycle_alien_done")
            'handle alien hit
            .Add "alien_hit", Array("alien_hit_show","alien_hit_show2","play_voc_AlienHit","start_double_scoring","score_400000")
        End With

        With .RandomEventPlayer()
            '.Debug = True
            With .EventName("reset_alien_attack")
                .Add "alien_attack_from_left", 1
                .Add "alien_attack_from_right", 1
                .ForceAll = False
                .ForceDifferent = False
            End With
        End With


        With .SoundPlayer()
            With .EventName("alien_attacking")
                .Key = "key_voc_AlienAlert"
                .Sound = "voc_AlienAlert"
            End With
            With .EventName("play_voc_AlienHit")
                .Key = "key_voc_AlienHit"
                .Sound = "voc_AlienHit"
            End With
        End With

        
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
                '.Debug = True
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
                .RestartEvents = Array("reset_alien_shot"&x,"alien_attack_finished")
            End With
        Next



        'Alien state machine
        With .StateMachines("attack_state")
            '.Debug = True
            .PersistState = true
            .StartingState = "not_attacking"

            'States
            With .States("not_attacking")
                .Label = "Not Attacking State"
                .EventsWhenStarted = Array("reset_alien_attack","stop_alien_timer") 
            End With
            With .States("start_attacking")
                .Label = "Not Attacking State"
                .EventsWhenStarted = Array("start_alien_timer") 
            End With
            With .States("attacking")
                .Label = "Attacking State"
            End With
            With .States("attack_paused")
                .Label = "Attack Paused State"
                .EventsWhenStarted = Array("stop_alien_timer") 
            End With
            With .States("attack_done")
                .Label = "Attack Done State"
                .EventsWhenStarted = Array("stop_alien_timer","alien_attack_finished") 
            End With

            'Transitions
            With .Transitions()
                .Source = Array("not_attacking")
                .Target = "start_attacking"
                .Events = Array("start_alien_attack")
            End With
            With .Transitions()
                .Source = Array("start_attacking")
                .Target = "attacking"
                .Events = Array("timer_alien_attack_tick{devices.timers.alien_attack.ticks > 0}")
                .EventsWhenTransitioning = Array("alien_attacking")
            End With
            With .Transitions() 'pause between modes and during timewarp
                .Source = Array("start_attacking","attacking")
                .Target = "attack_paused"
                .Events = Array("timer_timewarp_tick{devices.timers.timewarp.ticks==1}")  '"mode_alien_attack_stopping"
            End With
            With .Transitions() 
                .Source = Array("attack_paused")
                .Target = "start_attacking"
                .Events = Array("timer_timewarp_complete","mode_alien_attack_started")
                .EventsWhenTransitioning = Array("start_alien_timer")
            End With
            With .Transitions() 
                .Source = Array("attacking")
                .Target = "start_attacking"
                .Events = Array("mode_alien_attack_started")
                .EventsWhenTransitioning = Array("start_alien_timer")
            End With
            With .Transitions()  'successfully destroyed alien
                .Source = Array("attacking")
                .Target = "attack_done"
                .Events = Array("alien_hit_show")
            End With
            With .Transitions()  'alien made a hit on earth
                .Source = Array("attacking")
                .Target = "attack_done"
                .Events = Array("timer_alien_attack_complete")
                .EventsWhenTransitioning = Array("earth_hit","alien_hit_show")
            End With
            With .Transitions()  'successfully destroed alien
                .Source = Array("attack_done")
                .Target = "not_attacking"
                .Events = Array("recycle_alien_attack")
            End With

        End With


        'Alien state machine
        With .StateMachines("alien")
            '.Debug = True
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
                .Events = Array("alien_attacking{current_player.alien_attack_dir == 0}")
            End With
            With .Transitions()
                .Source = Array("init")
                .Target = "shot8"
                .Events = Array("alien_attacking{current_player.alien_attack_dir == 1}")
            End With
            For x = 1 to 7
                With .Transitions()  'move alien from left to right
                    .Source = Array("shot"&x)
                    .Target = "shot"&(x+1)
                    .Events = Array("timer_alien_attack_tick{current_player.alien_attack_dir == 0 && devices.timers.alien_attack.ticks == "&(x+1)&"}") 
                    .EventsWhenTransitioning = Array("reset_alien_shot"&x)
                End With
            Next
            For x = 2 to 8
                With .Transitions()  'move alien from right to left
                    .Source = Array("shot"&x)
                    .Target = "shot"&(x-1)
                    .Events = Array("timer_alien_attack_tick{current_player.alien_attack_dir == 1 && devices.timers.alien_attack.ticks == "&(10-x)&"}") 
                    .EventsWhenTransitioning = Array("reset_alien_shot"&x)
                End With
            Next
            For x = 1 to 8
                With .Transitions()  'alien destroyed
                    .Source = Array("shot"&x)
                    .Target = "init"
                    .Events = Array(MainShotNames(x-1)&"_hit","cluster_bomb_fired")
                    .EventsWhenTransitioning = Array("reset_alien_shot"&x,"alien_hit")
                End With
            Next
            For x = 1 to 8
                With .Transitions()  'earth hit
                    .Source = Array("shot"&x)
                    .Target = "init"
                    .Events = Array("earth_hit")
                    .EventsWhenTransitioning = Array("reset_alien_shot"&x)
                End With
            Next

        End With


        With .Timers("alien_attack")
            '.Debug = True
            .TickInterval = AlienTickInterval
            .StartValue = "current_player.alien_tick_count"
            .EndValue = 9
            With .ControlEvents()
                .EventName = "reset_alien_timer"
                .Action = "reset"
            End With
            With .ControlEvents()
                .EventName = "stop_alien_timer"
                .Action = "stop"
            End With
            With .ControlEvents()
                .EventName = "start_alien_timer"
                .Action = "start"
            End With
        End With


        With .VariablePlayer()
            With .EventName("reset_alien_attack")
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
            With .EventName("alien_hit_show")
                .Key = "key_alien_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 20
                .Loops = 5
                With .Tokens()
                    .Add "lights", "tFlasherU"
                    .Add "color", AlienFlashColor
                    .Add "fade", 300
                End With
            End With
            With .EventName("alien_hit_show2")
                .Key = "key_alien_flash2"
                .Show = "insert_swap2" 
                .Speed = 2
                .Loops = 5
                .Priority = 1000
                With .Tokens()
                    .Add "color1", DoubleScoringColor
                    .Add "color2", AlienColor
                    .Add "intensity", 100
                End With
            End With
        End With


    End With

End Sub