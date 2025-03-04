

'Ship Save Mode.

's_RightOrb2 must be hit right after s_RightOrb1 (by hitting their swtiches).
'Once this occurs, a ship save light is lit in order (1, 2, 3)
'Once the third charge light is lit, a the ship save (ball save) will be extended at ths start of next meteor wave.


Sub CreateShipSaveMode
    Dim x

    With CreateGlfMode("ship_save", 520)
        .StartEvents = Array("new_ball_started","stop_meteor_wave","stop_training","wizard_mode_ended")
        .StopEvents = Array("stop_ship_save","mode_base_stopping","start_training_select","wizard_mode_started") ',"start_meteor_wave"

        With .EventPlayer()
            'Reset ship charge shots
            .Add "mode_ship_save_started{current_player.shot_ship_charge1==0}", Array("restart_ship_save")
            .Add "mode_ship_save_started{current_player.training_ship_save_achieved==1 && current_player.shot_ship_charge3!=2}", Array("restart_ship_save")
            .Add "mode_ship_save_started{current_player.shot_ship_charge3==2 && current_player.meteor_mb_shootagain_time =="&MeteorMBShootAgainTime&"}", Array("restart_ship_save")
            .Add "restart_ship_save{current_player.training_ship_save_achieved==0}", Array("ready_ship_charge1","clear_ship_save") 'no training boost
            .Add "restart_ship_save{current_player.training_ship_save_achieved==1}", Array("light_ship_charge1","light_ship_charge2","ready_ship_charge3","clear_ship_save") 'with training boost
            'Successful shot
            .Add "right_orbit_hit{current_player.shot_ship_charge1 == 1}", Array("light_ship_charge1","ready_ship_charge2","play_sfx_LF")
            .Add "right_orbit_hit{current_player.shot_ship_charge1 == 2 && current_player.shot_ship_charge2 == 1}", Array("light_ship_charge2","ready_ship_charge3","play_sfx_LF")
            .Add "right_orbit_hit{current_player.shot_ship_charge2 == 2 && current_player.shot_ship_charge3 == 1}", Array("light_ship_charge3","play_sfx_LF")
            .Add "light_ship_charge3", Array("slings_powerup_added","lsling_powerup_sa","rsling_powerup_sa","saver_acquired")
            'Handle mystery award
            .Add "mystery_added_saver", Array("complete_ship_save","light_ship_charge3")
        End With

        With .RandomEventPlayer()
            '.Debug = True
            With .EventName("play_sfx_LF")
                .Add "play_sfx_LF1", 1
                .Add "play_sfx_LF2", 1
                .Add "play_sfx_LF3", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
        End With

        With .SoundPlayer()
            With .EventName("play_sfx_LF1")
                .Key = "key_sfx_LF1"
                .Sound = "sfx_LF1"
            End With
            With .EventName("play_sfx_LF2")
                .Key = "key_sfx_LF2"
                .Sound = "sfx_LF2"
            End With
            With .EventName("play_sfx_LF3")
                .Key = "key_sfx_LF3"
                .Sound = "sfx_LF3"
            End With
            With .EventName("light_ship_charge3")
                .Key = "key_voc_ShipSaver"
                .Sound = "voc_ShipSaver"
            End With
        End With
        

        'Define our shots
        For x = 1 to 3
            With .Shots("ship_charge"&x)
                .Profile = "powerups"
                With .Tokens()
                    .Add "lights", "LF"&x
                    .Add "color", ShipSaveColor
                End With
                With .ControlEvents()
                    .Events = Array("ready_ship_charge"&x)
                    .State = 1
                End With
                With .ControlEvents()
                    .Events = Array("light_ship_charge"&x,"complete_ship_save")
                    .State = 2
                End With
                .RestartEvents = Array("restart_ship_save")
            End With
        Next

        With .ShowPlayer()
            With .EventName("light_ship_charge3")
                .Key = "key_ship_saves_charged"
                .Show = "flash_color"
                .Speed = 15
                .Loops = 5
                With .Tokens()
                    .Add "lights", "tSaver"
                    .Add "color", ShipSaveColor
                End With
            End With
            'Added ship saver shows
            With .EventName("lsling_powerup_sa")
                .Key = "key_lsling_powerup_sa"
                .Show = "lsling_rotate2_cw"
                .Speed = 2
                .Loops = 3
                With .Tokens()
                    .Add "color1", ShipSaveColor
                    .Add "color2", ShipSaveColor
                    .Add "intensity", SlingDomePowerUpBrightness
                End With
            End With
            With .EventName("rsling_powerup_sa")
                .Key = "key_rsling_powerup_sa"
                .Show = "rsling_rotate2_ccw"
                .Speed = 2
                .Loops = 3
                With .Tokens()
                    .Add "color1", ShipSaveColor
                    .Add "color2", ShipSaveColor
                    .Add "intensity", SlingDomePowerUpBrightness
                End With
            End With
            With .EventName("saver_acquired") 
                .Key = "key_saver_acquired"
                .Show = "ship_saver_acquired" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With
        End With

        With .VariablePlayer()
            With .EventName("clear_ship_save")
				With .Variable("meteor_mb_shootagain_time")
                    .Action = "set"
					.Int = MeteorMBShootAgainTime
				End With
			End With
            With .EventName("light_ship_charge3")
				With .Variable("meteor_mb_shootagain_time")
                    .Action = "set"
					.Int = ShipSaveShootAgainTime
				End With
			End With
		End With

        With .SegmentDisplayPlayer()
            With .EventName("light_ship_charge3")
                With .Display("player2")
                    .Text = """ SHIP """
                    .Flashing = "all"
                    .Expire = 2000
                End With
                With .Display("player3")
                    .Text = """ SAVER """
                    .Flashing = "all"
                    .Expire = 2000
                End With
            End With
        End With
    
    End With
End Sub