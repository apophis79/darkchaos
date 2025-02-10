

'Proton Cannon Mode.

's_InnerOrb2 must be hit right after s_InnerOrb1 (by hitting their swtiches).
'Once this occurs, a proton charge light is lit in order (1, 2, 3)
'Once the third charge light is lit, a new proton round is lit in order (1 - 6)
'If a proton is available, then the proton cannon can be fired during a meteor wave
'The proton cannon can be fired by hitting s_TargetMystery3 or the center orbit during a metero wave 
'When the proton cannon is fired it will destroy one random meteor (drop targets) that are currently active on the table



Sub CreateProtonCannonMode
    Dim x

    With CreateGlfMode("proton_cannon", 510)
        .StartEvents = Array("new_ball_started","stop_training","wizard_mode_ended")
        .StopEvents = Array("ball_ended","start_training_select","wizard_mode_started")

        With .EventPlayer()
            'Reset proton charge shots
            .Add "mode_proton_cannon_started{current_player.shot_proton_charge1==0}", Array("reset_proton_charges")
            .Add "mode_proton_cannon_started{current_player.training_proton_cannon_achieved==1}", Array("reset_proton_charges")
            .Add "reset_proton_charges{current_player.training_proton_cannon_achieved==0}", Array("ready_proton_charge1") 'no training boost
            .Add "reset_proton_charges{current_player.training_proton_cannon_achieved==1}", Array("light_proton_charge1","light_proton_charge2","ready_proton_charge3") 'with training boost
            'Successful shot
            .Add "inner_orbit_hit{current_player.shot_proton_charge1 == 1}", Array("play_sfx_LPC","light_proton_charge1","ready_proton_charge2")
            .Add "inner_orbit_hit{current_player.shot_proton_charge1 == 2 && current_player.shot_proton_charge2 == 1}", Array("play_sfx_LPC","light_proton_charge2","ready_proton_charge3")
            .Add "inner_orbit_hit{current_player.shot_proton_charge2 == 2 && current_player.shot_proton_charge3 == 1}", Array("play_sfx_LPC","light_proton_charge3")
            'Add protons
            .Add "light_proton_charge3{current_player.shot_proton_round1 == 0}", Array("play_sfx_LPR","add_proton_round1","reset_proton_charges")
            .Add "light_proton_charge3{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", Array("play_sfx_LPR","add_proton_round2","reset_proton_charges")
            .Add "light_proton_charge3{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", Array("play_sfx_LPR","add_proton_round3","reset_proton_charges")
            .Add "light_proton_charge3{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", Array("play_sfx_LPR","add_proton_round4","reset_proton_charges")
            .Add "light_proton_charge3{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", Array("play_sfx_LPR","add_proton_round5","reset_proton_charges")
            .Add "light_proton_charge3{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", Array("play_sfx_LPR","add_proton_round6","check_fully_loaded") 'check for wizard mode qualification
            '.Add "check_protons", Array("check_protons_done")
            'Handle mystery award
            .Add "mystery_full_protons", Array("complete_full_protons")
            .Add "complete_full_protons", Array("check_fully_loaded","score_5000") 'check for wizard mode qualification
            'Scoring
            .Add "s_spinner_active", Array("score_10")
            .Add "inner_orbit_hit", Array("score_100")
            .Add "light_proton_charge3", Array("score_1000")
        End With


        With .RandomEventPlayer()
            With .EventName("play_sfx_LPC")
                .Add "play_sfx_LPC1", 1
                .Add "play_sfx_LPC2", 1
                .Add "play_sfx_LPC3", 1
                .Add "play_sfx_LPC4", 1
                .Add "play_sfx_LPC5", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
        End With

        With .SoundPlayer()
            With .EventName("play_sfx_LPC1")
                .Key = "key_sfx_LPC1"
                .Sound = "sfx_LPC1"
            End With
            With .EventName("play_sfx_LPC2")
                .Key = "key_sfx_LPC2"
                .Sound = "sfx_LPC2"
            End With
            With .EventName("play_sfx_LPC3")
                .Key = "key_sfx_LPC3"
                .Sound = "sfx_LPC3"
            End With
            With .EventName("play_sfx_LPC4")
                .Key = "key_sfx_LPC4"
                .Sound = "sfx_LPC4"
            End With
            With .EventName("play_sfx_LPC5")
                .Key = "key_sfx_LPC5"
                .Sound = "sfx_LPC5"
            End With

            With .EventName("play_sfx_LPR")
                .Key = "key_voc_LPR1"
                .Sound = "voc_LPR1"
            End With

            With .EventName("s_spinner_active")
                .Key = "key_sfx_Spinner"
                .Sound = "sfx_Spinner"
            End With
        End With
        

        'Define our shots
        For x = 1 to 3
            With .Shots("proton_charge"&x)
                .Profile = "powerups"
                With .Tokens()
                    .Add "lights", "LPC"&x
                    .Add "color", ProtonColor
                End With
                With .ControlEvents()
                    .Events = Array("ready_proton_charge"&x)
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("light_proton_charge"&x,"complete_full_protons")
                    .State = 2
                End With
                .RestartEvents = Array("reset_proton_charges")
            End With
        Next

        For x = 1 to 6
            With .Shots("proton_round"&x)
                .Profile = "off_on_color"
                With .Tokens()
                    .Add "lights", "LPR"&x
                    .Add "color", ProtonColor
                End With
                With .ControlEvents()
                    .Events = Array("add_proton_round"&x,"complete_full_protons")
                    .State = 1
                End With
                .RestartEvents = Array("fire_proton_round"&x)
            End With

            With .ShowPlayer()
                With .EventName("add_proton_round"&x)
                    .Key = "key_proton"&x&"_charged"
                    .Show = "flash_color"
                    .Speed = 15
                    .Loops = 5
                    With .Tokens()
                        .Add "lights", "LPR"&x
                        .Add "color", ProtonColor
                    End With
                End With
            End With
        Next


        With .ShowPlayer()
            With .EventName("light_proton_charge3")
                .Key = "key_proton_charged"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 5
                With .Tokens()
                    .Add "lights", "tProton"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("complete_full_protons")
                .Key = "key_all_proton_charged"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 15
                With .Tokens()
                    .Add "lights", "tProtonAll"
                    .Add "color", ProtonColor
                End With
            End With
            With .EventName("s_spinner_active")
                .Key = "key_spinner_flash"
                .Show = "flash_color_with_fade" 
                .Speed = 15
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL4"
                    .Add "color", ProtonColor
                    .Add "fade", 300
                End With
            End With
        End With

        With .SegmentDisplayPlayer()
            With .EventName("light_proton_charge3")
                With .Display("player4")
                    .Text = """PROTON"""
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With


    End With
End Sub