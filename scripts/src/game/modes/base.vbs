


' Base Mode.

Sub CreateBaseMode()
    Dim x

    With CreateGlfMode("base", 200)
        .StartEvents = Array(GLF_BALL_STARTED)
        .StopEvents = Array(GLF_BALL_ENDED)

        With .EventPlayer()
            'new ball
            .Add "s_Plunger2_active{current_player.ball_just_started==1}", Array("new_ball_active")

            'waves
            .Add "mode_base_started{current_player.shot_meteor_wave1 == 0}", Array("pre_meteor_wave1")
            .Add "mode_base_started{current_player.shot_meteor_wave1 == 1}", Array("meteor_wave1_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave2 == 1}", Array("meteor_wave2_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave3 == 1}", Array("meteor_wave3_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave4 == 1}", Array("meteor_wave4_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave5 == 1}", Array("meteor_wave5_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave6 == 1}", Array("meteor_wave6_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave7 == 1}", Array("meteor_wave7_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave8 == 1}", Array("meteor_wave8_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave9 == 1}", Array("meteor_wave9_restart")

            .Add "mode_base_started{current_player.shot_meteor_wave1 == 2 && current_player.shot_meteor_wave2 == 0}", Array("meteor_wave2_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", Array("meteor_wave3_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave3 == 2 && current_player.shot_meteor_wave4 == 0}", Array("meteor_wave4_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", Array("meteor_wave5_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave5 == 2 && current_player.shot_meteor_wave6 == 0}", Array("meteor_wave6_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", Array("meteor_wave7_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave7 == 2 && current_player.shot_meteor_wave8 == 0}", Array("meteor_wave8_restart")
            .Add "mode_base_started{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", Array("meteor_wave9_restart")
        
            'skillshots
            .Add "mode_base_started", Array("check_skillshot_ready")

            'handle some switches
            .Add "s_TargetMystery5_active", Array("magnet_activated")
            .Add "s_TimewarpRamp_active", Array("left_ramp_hit")
            .Add "s_MoonRamp_active", Array("right_ramp_hit")

            'handle delayed moon ball release
            .Add "timer_delay_ball_release_complete", Array("release_moon_ball")
        End With
       

        With .SegmentDisplayPlayer()
            With .EventName("mode_base_started")
                With .Display("player1")
                    .Text = "{players[0].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player2")
                    .Text = "{players[1].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player3")
                    .Text = "{players[2].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player4")
                    .Text = "{players[3].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("ball")
                    .Text = "{current_player.ball:0>2}"
                End With
            End With
            With .EventName("player_added{kwargs.num==2}")
                With .Display("player2")
                    .Text = "{players[1].score:0>2,}"
                End With
            End With
            With .EventName("player_added{kwargs.num==3}")
                With .Display("player3")
                    .Text = "{players[2].score:0>2,}"
                End With
            End With
            With .EventName("player_added{kwargs.num==4}")
                With .Display("player4")
                    .Text = "{players[3].score:0>2,}"
                End With
            End With
            
            ' With .EventName("mode_base_started")
            '     With .Display("pf")
            '         .Text = "{00:0>2}"
            '     End With
            ' End With
        End With

        With .LightPlayer()
            With .EventName("mode_base_started")
                With .Lights("GI")
                    .Color = GIColor3000k
                    .Fade = 200
                End With
            End With
        End With

        'Define meteor wave lights
        For x = 1 to 9
            With .Shots("meteor_wave"&x)
                .Profile = "powerups"
                With .Tokens()
                    .Add "lights", "LW"&x
                    .Add "color", MeteorWaveColor
                End With
                With .ControlEvents()
                    .Events = Array("meteor_wave"&x&"_running")
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("meteor_wave"&x&"_done")
                    .State = 2
                End With
                .RestartEvents = Array(GLF_GAME_START,"meteor_wave"&x&"_restart")
            End With
        Next


        'The main shots sequences
        With .SequenceShots("left_side_up")
            .SwitchSequence = Array("s_LeftBumper1", "s_LeftBumper2")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("left_side_down")
            .SwitchSequence = Array("s_LeftBumper2", "s_LeftBumper1")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("left_orbit")
            .SwitchSequence = Array("s_LeftOrb1", "s_LeftOrb2")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("inner_orbit")
            .SwitchSequence = Array("s_InnerOrb1", "s_InnerOrb2")
            .SequenceTimeout = 300
        End With

        With .SequenceShots("center_orbit_left")
            .SwitchSequence = Array("s_CenterOrb1", "s_CenterOrb2", "s_CenterOrb3")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("center_orbit_right")
            .SwitchSequence = Array("s_CenterOrb3", "s_CenterOrb2", "s_CenterOrb1")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("right_orbit")
            .SwitchSequence = Array("s_RightOrb1", "s_RightOrb2")
            .SequenceTimeout = 500
        End With

        With .ShowPlayer()
            For x = 1 to 4
                With .EventName("s_Bumper"&x&"_active")
                    .Key = "key_bumper"&x&"_flash"
                    .Show = "flash_color_with_fade" 
                    .Speed = 15
                    .Loops = 1
                    .Priority = 2000
                    With .Tokens()
                        .Add "lights", "LB"&x
                        .Add "color", "00cc00" '"ffffff"
                        .Add "fade", 50
                    End With
                End With
            Next

            For x = 0 to 4
                With .EventName(RolloverSwitches(x)&"_active")
                    .Key = "key_rollover"&x&"_flash"
                    .Show = "flicker_color_off" 
                    .Speed = 5
                    .Loops = 2
                    .Priority = 1000
                    With .Tokens()
                        .Add "lights", RolloverLightNames(x)
                        .Add "color", GIColor3000k
                    End With
                End With
            Next

            With .EventName("magnet_activated")
                .Key = "key_ts_scoop_gi"
                .Show = "flash_color" '_with_fade"
                .Speed = 15
                .Loops = 7
                .Priority = 1000
                With .Tokens()
                    .Add "lights", "gi13" 
                    .Add "color", GIColor3000k
                    '.Add "fade", 300
                End With
            End With

            With .EventName("sling_rotate_cw_show")
                .Key = "key_sling_rotate_cw"
                .Show = "sling_rotate_cw" '_with_fade"
                .Speed = 2
                .Loops = 7
                .Priority = 1000
                With .Tokens()
                    .Add "intensity1", 40
                    .Add "intensity2", 80
                    .Add "color", ProtonColor
                End With
            End With
        End With


         With .BallSaves("new_ball")
            .ActiveTime = 5000
            .HurryUpTime = 3000
            .GracePeriod = 2000
            .AutoLaunch = True
            .EnableEvents = Array("new_ball_active")
        End With

        'Scoop ball hold
        With .BallHolds("scoop_hold")
            '.Debug = True
            .BallsToHold = 1
            .HoldDevices = Array("scoop")
            .EnableEvents = Array("enable_scoop_hold") 
            .DisableEvents = Array("disable_scoop_hold") 
            .ReleaseAllEvents = Array("release_scoop_hold")
        End With


        With .Shots("base_shoot_again")
            .Profile = "shoot_again"
            With .ControlEvents()
                .Events = Array("ball_save_new_ball_enabled")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("ball_save_new_ball_hurry_up")
                .State = 2
            End With
            .ResetEvents = Array("ball_save_new_ball_grace_period")
        End With
       

        With .VariablePlayer()
		    With .EventName("mode_base_started")
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 1
				End With
			End With
            With .EventName("new_ball_active")
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 0
				End With
			End With
		End With


        With .Timers("delay_ball_release")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "delayed_release_moon_ball"
                .Action = "restart"
            End With
        End With


        With .SoundPlayer()
            'Music pre meteor wave 1
            With .EventName("pre_meteor_wave1")
                .Sound = "mus_main"
            End With
            With .EventName("pre_meteor_wave1_music_stop")
                .Sound = "mus_main"
                .Action = "stop"
            End With

            'Music meteor wave 1
            With .EventName("meteor_wave1_running")
                .Sound = "mus_secondary"
            End With
            With .EventName("meteor_wave1_restart")
                .Sound = "mus_main"
            End With
            With .EventName("meteor_wave1_music_stop")
                .Sound = "mus_secondary"
                .Action = "stop"
            End With

            'Music meteor wave 2
            With .EventName("meteor_wave2_running")
                .Sound = "mus_wave"
            End With
            With .EventName("meteor_wave2_restart")
                .Sound = "mus_secondary"
            End With
            With .EventName("meteor_wave2_music_stop")
                .Sound = "mus_wave"
                .Action = "stop"
            End With



            'Slings
            With .EventName("s_LeftSlingshot_active")
                .Key = "key_sfx_left_sling"
                .Sound = "sfx_left_sling"
            End With
            With .EventName("s_RightSlingshot_active")
                .Key = "key_sfx_right_sling"
                .Sound = "sfx_right_sling"
            End With

            'Bumpers
            With .EventName("s_Bumper1_active")
                .Key = "key_sfx_bumper1"
                .Sound = "sfx_bumper1"
            End With
            With .EventName("s_Bumper2_active")
                .Key = "key_sfx_bumper2"
                .Sound = "sfx_bumper2"
            End With
            With .EventName("s_Bumper3_active")
                .Key = "key_sfx_bumper3"
                .Sound = "sfx_bumper3"
            End With
            With .EventName("s_Bumper4_active")
                .Key = "key_sfx_bumper4"
                .Sound = "sfx_bumper4"
            End With

            'Lanes
            With .EventName("s_LeftOutlane_active")
                .Sound = "sfx_LLO"
            End With
            With .EventName("s_LeftInlane_active")
                .Sound = "sfx_LLI"
            End With
            With .EventName("s_RightInlane_active")
                .Sound = "sfx_LRI"
            End With
            With .EventName("s_RightOutlane_active")
                .Sound = "sfx_LRO"
            End With

            'Other
            With .EventName("mode_base_stopping")
                .Sound = "sfx_ball_drain"
            End With
            With .EventName("magnet_activated")
                .Sound = "sfx_mag_cap"
            End With

            'Meteor wave sounds (needed here so they dont stop when meteor wave mode stops)
            With .EventName("play_sfx_LMet1")
                .Key = "key_sfx_LMet1"
                .Sound = "sfx_LMet1"
            End With
            With .EventName("play_sfx_LMet2")
                .Key = "key_sfx_LMet2"
                .Sound = "sfx_LMet2"
            End With
            With .EventName("play_sfx_LMet3")
                .Key = "key_sfx_LMet3"
                .Sound = "sfx_LMet3"
            End With
            With .EventName("play_sfx_LMet4")
                .Key = "key_sfx_LMet4"
                .Sound = "sfx_LMet4"
            End With
            With .EventName("play_sfx_LMet5")
                .Key = "key_sfx_LMet5"
                .Sound = "sfx_LMet5"
            End With
            With .EventName("play_sfx_LMet6")
                .Key = "key_sfx_LMet6"
                .Sound = "sfx_LMet6"
            End With
            With .EventName("play_sfx_LMet7")
                .Key = "key_sfx_LMet7"
                .Sound = "sfx_LMet7"
            End With
            With .EventName("play_sfx_LMet8")
                .Key = "key_sfx_LMet8"
                .Sound = "sfx_LMet8"
            End With

            With .EventName("play_sfx_EarthHit1")
                .Key = "key_sfx_EarthHit1"
                .Sound = "sfx_EarthHit1"
            End With
            With .EventName("play_sfx_EarthHit2")
                .Key = "key_sfx_EarthHit2"
                .Sound = "sfx_EarthHit2"
            End With
            With .EventName("play_sfx_EarthHit3")
                .Key = "key_sfx_EarthHit3"
                .Sound = "sfx_EarthHit3"
            End With
        End With

    End With

End Sub