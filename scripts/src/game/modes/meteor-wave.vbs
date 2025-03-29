

'Meteor Wave Mode.

'Meteor waves occur at regular intervals. Once it starts, the meteor targets begin to pop up and meteor MB starts.
'Meteor targets can be dropped four different ways: 
'  1) with a normal ball hit, 2) with a proton cannon, 3) with a cluster bomb, 4) when time runs out and it hits earth
'If a meteor hits Earth, one tick is removed from the Healt bar. When Health bar is depleted, then the flippers die (ball ends)
'Each wave gets successively harder, where more meteors need to be destroyed to end the wave. 
'Number of meteors per wave, starting from first wave and going to last wave: 6,9,12,15,18,21,24,27,30



Sub CreateMeteorWaveMode
    Dim x

    With CreateGlfMode("meteor_wave", 1000)
        '.Debug = True
        .StartEvents = Array("start_meteor_wave")
        .StopEvents = Array("timer_meteor_wave_finish_complete","mode_base_stopping","kill_flippers")


        With .EventPlayer()
            '.Debug = True
            'Initializations
            .Add "mode_meteor_wave_started", Array("start_meteor_multiball","init_meteor1","init_meteor2","init_meteor3","init_meteor4","raise_diverter","stop_some_modes_for_mw","backglass_dark_off","backglass_chaos_off","backglass_wave_on","backglass_ball_off")
            .Add "stop_some_modes_for_mw", Array("stop_skillshots","stop_combos","stop_ship_save","stop_timewarp","stop_shields") '"stop_extra_ball","stop_mystery","stop_training_qualify"
            '.Add "mode_meteor_wave_stopping", Array("backglass_dark_on","backglass_chaos_on")
            'Start up in correct wave
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave1 == 0}", Array("meteor_wave1_running","meteor_wave0_music_stop")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave1 == 2 && current_player.shot_meteor_wave2 == 0}", Array("meteor_wave2_running","meteor_wave1_music_stop")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", Array("meteor_wave3_running","meteor_wave2_music_stop")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave3 == 2 && current_player.shot_meteor_wave4 == 0}", Array("meteor_wave4_running","meteor_wave3_music_stop")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", Array("meteor_wave5_running","meteor_wave4_music_stop")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave5 == 2 && current_player.shot_meteor_wave6 == 0}", Array("meteor_wave6_running","meteor_wave5_music_stop")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", Array("meteor_wave7_running","meteor_wave6_music_stop")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave7 == 2 && current_player.shot_meteor_wave8 == 0}", Array("meteor_wave8_running","meteor_wave7_music_stop")
            .Add "mode_meteor_wave_started{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", Array("meteor_wave9_running","meteor_wave8_music_stop")
            'Successful center target hit, fire proton round if available
            .Add "s_TargetMystery3_active{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", Array("fire_proton_round1","proton_fired")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", Array("fire_proton_round2","proton_fired")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", Array("fire_proton_round3","proton_fired")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", Array("fire_proton_round4","proton_fired")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", Array("fire_proton_round5","proton_fired")
            .Add "s_TargetMystery3_active{current_player.shot_proton_round6 == 1}", Array("fire_proton_round6","proton_fired","reset_proton_charges")
            'Successful center orbit left, fire proton round if available
            .Add "center_orbit_left_hit{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", Array("fire_proton_round1","proton_fired")
            .Add "center_orbit_left_hit{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", Array("fire_proton_round2","proton_fired")
            .Add "center_orbit_left_hit{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", Array("fire_proton_round3","proton_fired")
            .Add "center_orbit_left_hit{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", Array("fire_proton_round4","proton_fired")
            .Add "center_orbit_left_hit{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", Array("fire_proton_round5","proton_fired")
            .Add "center_orbit_left_hit{current_player.shot_proton_round6 == 1}", Array("fire_proton_round6","proton_fired","reset_proton_charges")
            'Successful center orbit right, fire proton round if available
            .Add "center_orbit_right_hit{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", Array("fire_proton_round1","proton_fired")
            .Add "center_orbit_right_hit{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", Array("fire_proton_round2","proton_fired")
            .Add "center_orbit_right_hit{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", Array("fire_proton_round3","proton_fired")
            .Add "center_orbit_right_hit{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", Array("fire_proton_round4","proton_fired")
            .Add "center_orbit_right_hit{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", Array("fire_proton_round5","proton_fired")
            .Add "center_orbit_right_hit{current_player.shot_proton_round6 == 1}", Array("fire_proton_round6","proton_fired","reset_proton_charges")
            'Handle fired proton
            .Add "proton_fired", Array("check_protons","proton_fired_flash_show","score_5000")
            'Handle events after meteor is downed
            .Add "meteor1_down", Array("calc_num_meteors_ratio","check_meteor_wave")
            .Add "meteor2_down", Array("calc_num_meteors_ratio","check_meteor_wave")
            .Add "meteor3_down", Array("calc_num_meteors_ratio","check_meteor_wave")
            .Add "meteor4_down", Array("calc_num_meteors_ratio","check_meteor_wave")
            'handle pf display updates
            .Add "calc_num_meteors_ratio", Array("check_num_meteors_ratio") 
            .Add "check_num_meteors_ratio{current_player.num_meteors_ratio < current_player.last_num_meteors_ratio}", Array("update_last_num_meteors_ratio") 
            .Add "update_last_num_meteors_ratio", Array("check_update_display","check_num_meteors_ratio")
            .Add "check_update_display{current_player.last_num_meteors_ratio >= 0}", Array("update_display")
            'Stop the current successful wave
            .Add "check_meteor_wave{current_player.num_meteors_to_drop <= 0}", Array("meteor_wave_done","play_voc_wave_completed")
            .Add "meteor_wave_done{current_player.meteor_wave_running == 1}", Array("stop_meteor_wave","score_wave_count")
            .Add "meteor_wave_done{current_player.shot_meteor_wave1 == 1}", Array("meteor_wave1_done") 
            .Add "meteor_wave_done{current_player.shot_meteor_wave2 == 1}", Array("meteor_wave2_done")
            .Add "meteor_wave_done{current_player.shot_meteor_wave3 == 1}", Array("meteor_wave3_done")
            .Add "meteor_wave_done{current_player.shot_meteor_wave4 == 1}", Array("meteor_wave4_done")
            .Add "meteor_wave_done{current_player.shot_meteor_wave5 == 1}", Array("meteor_wave5_done","light_eb")
            .Add "meteor_wave_done{current_player.shot_meteor_wave6 == 1}", Array("meteor_wave6_done")
            .Add "meteor_wave_done{current_player.shot_meteor_wave7 == 1}", Array("meteor_wave7_done")
            .Add "meteor_wave_done{current_player.shot_meteor_wave8 == 1}", Array("meteor_wave8_done")
            .Add "meteor_wave_done{current_player.shot_meteor_wave9 == 1}", Array("meteor_wave9_done","activate_final_wave_wizard")
            .Add "meteor_wave_done{current_player.training_heal_achieved==0}", Array("drop_diverter")
            'restart fire protons
            .Add "check_protons{current_player.shot_proton_round1==0}", Array("restart_fire_protons")
            'earth hit show
            .Add "earth_hit", Array("mw_lsing_earth_hit","mw_rsling_earth_hit")
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
            With .EventName("update_display")
                .Add "pf_seg1_off{current_player.shot_mw_pf_seg1==0}", 1
                .Add "pf_seg2_off{current_player.shot_mw_pf_seg2==0}", 1
                .Add "pf_seg3_off{current_player.shot_mw_pf_seg3==0}", 1
                .Add "pf_seg4_off{current_player.shot_mw_pf_seg4==0}", 1
                .Add "pf_seg5_off{current_player.shot_mw_pf_seg5==0}", 1
                .Add "pf_seg6_off{current_player.shot_mw_pf_seg6==0}", 1
                .Add "pf_seg16_off{current_player.shot_mw_pf_seg16==0}", 1
                .Add "pf_seg17_off{current_player.shot_mw_pf_seg17==0}", 1
                .Add "pf_seg18_off{current_player.shot_mw_pf_seg18==0}", 1
                .Add "pf_seg19_off{current_player.shot_mw_pf_seg19==0}", 1
                .Add "pf_seg20_off{current_player.shot_mw_pf_seg20==0}", 1
                .Add "pf_seg21_off{current_player.shot_mw_pf_seg21==0}", 1
                .ForceAll = False
                .ForceDifferent = False
            End With
            With .EventName("play_sfx_LMet")
                .Add "play_sfx_LMet1", 1
                .Add "play_sfx_LMet2", 1
                .Add "play_sfx_LMet3", 1
                .Add "play_sfx_LMet4", 1
                .Add "play_sfx_LMet5", 1
                .Add "play_sfx_LMet6", 1
                .Add "play_sfx_LMet7", 1
                .Add "play_sfx_LMet8", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
            With .EventName("earth_hit")
                .Add "play_sfx_EarthHit1", 1
                .Add "play_sfx_EarthHit2", 1
                .Add "play_sfx_EarthHit3", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
            With .EventName("proton_fired")
                .Add "play_sfx_LPF1", 1
                .Add "play_sfx_LPF2", 1
                .Add "play_sfx_LPF3", 1
                .Add "play_sfx_LPF4", 1
                .Add "play_sfx_LPF5", 1
                .ForceAll = True
                .ForceDifferent = True
            End With
        End With


        With .DOFPlayer()
            With .EventName("proton_fired")
                .Action = "DOF_PULSE"
                .DOFEvent = 140
            End With
            With .EventName("play_sfx_LMet")
                .Action = "DOF_PULSE"
                .DOFEvent = 141
            End With
            With .EventName("earth_hit")
                .Action = "DOF_PULSE"
                .DOFEvent = 142
            End With
            With .EventName("meteor1_raise")
                .Action = "DOF_PULSE"
                .DOFEvent = 114
            End With
            With .EventName("meteor2_raise")
                .Action = "DOF_PULSE"
                .DOFEvent = 114
            End With
            With .EventName("meteor3_raise")
                .Action = "DOF_PULSE"
                .DOFEvent = 115
            End With
            With .EventName("meteor4_raise")
                .Action = "DOF_PULSE"
                .DOFEvent = 115
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
                    .Add "fade", 300
                End With
            End With
            With .States("hot")
                .Key = "key_meteor_hot"
                .Show = "flash_color"
                .Speed = 8
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
                .Speed = 2
                With .Tokens()
                    .Add "fade", 400
                    .Add "color", ProtonColor
                    .Add "lights", "tFire"
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
            .RestartEvents = Array("restart_fire_protons")
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

        'Define PF display light shots
        For x = 1 to 6    
            With .Shots("mw_pf_seg"&x)
                '.Profile = "flicker_on_flicker_off"
                .Profile = "pf_segs"
                With .Tokens()
                    .Add "lights", "pf_seg"&x
                    .Add "color", SegmentsColor
                End With
                ' With .ControlEvents()
                '     .Events = Array("mode_meteor_wave_started")
                '     .State = 0
                ' End With
                With .ControlEvents()
                    .Events = Array("pf_seg"&x&"_off","mode_meteor_wave_stopping")
                    .State = 1
                End With
                .RestartEvents = Array("timer_meteor1_init_complete","timer_meteor2_init_complete","timer_meteor3_init_complete","timer_meteor4_init_complete") 
            End With
        Next

        For x = 16 to 21    
            With .Shots("mw_pf_seg"&x)
                '.Profile = "flicker_on_flicker_off"
                .Profile = "pf_segs"
                With .Tokens()
                    .Add "lights", "pf_seg"&x
                    .Add "color", SegmentsColor
                End With
                ' With .ControlEvents()
                '     .Events = Array("mode_meteor_wave_started")
                '     .State = 0
                ' End With
                With .ControlEvents()
                    .Events = Array("pf_seg"&x&"_off","mode_meteor_wave_stopping")
                    .State = 1
                End With
                .RestartEvents = Array("timer_meteor1_init_complete","timer_meteor2_init_complete","timer_meteor3_init_complete","timer_meteor4_init_complete") 
            End With
        Next

        With .ShotProfiles("pf_segs")
            With .States("lit")
                .Show = "led_color"
                .Key = "key_pf_segs_lit"
                .Priority = 100
            End With
            With .States("unlit")
                .Show = "flicker_color_off"
                .Speed = 3
                .Key = "key_pf_segs_off"
                .Priority = 110
            End With
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
                    .EventsWhenStarted = Array("meteor"&x&"_cool","meteor"&x&"_raise")
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
                    .EventsWhenTransitioning = Array("meteor"&x&"_knockdown","earth_hit","earth_flash","earth_bg")
                End With
                With .Transitions()  'normal hit
                    .Source = Array("up_cool")
                    .Target = "down"
                    .Events = Array("s_DTMeteor"&x&"_active")
                    .EventsWhenTransitioning = Array("meteor"&x&"_hit","meteor"&x&"_explodes_show","meteor"&x&"_flash_show","meteor"&x&"_blink_show","play_sfx_LMet","score_4000")
                End With
                With .Transitions()  'normal hit
                    .Source = Array("up_warm")
                    .Target = "down"
                    .Events = Array("s_DTMeteor"&x&"_active")
                    .EventsWhenTransitioning = Array("meteor"&x&"_hit","meteor"&x&"_explodes_show","meteor"&x&"_flash_show","meteor"&x&"_blink_show","play_sfx_LMet","score_8000")
                End With
                With .Transitions()  'normal hit
                    .Source = Array("up_hot")
                    .Target = "down"
                    .Events = Array("s_DTMeteor"&x&"_active")
                    .EventsWhenTransitioning = Array("meteor"&x&"_hit","meteor"&x&"_explodes_show","meteor"&x&"_flash_show","meteor"&x&"_blink_show","play_sfx_LMet","score_15000")
                End With
                With .Transitions()  'knockdowns
                    .Source = Array("up_cool","up_warm","up_hot")
                    .Target = "down"
                    .Events = Array("meteor"&x&"_proton_hit","stop_meteor_wave","cluster_bomb_fired","mode_meteor_wave_stopping")
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
                With .EventName("meteor"&x&"_blink_show")
                    .Key = "key_meteor"&x&"_blink"
                    .Show = "flash_color"
                    .Speed = 22
                    .Loops = 4
                    With .Tokens()
                        .Add "lights", "LMet"&x
                        .Add "color", "ff1100"
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

            With .VariablePlayer()
                With .EventName("meteor"&x&"_raise")
                    With .Variable("num_meteors_to_raise")
                        .Action = "add"
                        .Int = -1
                    End With
                End With
                With .EventName("meteor"&x&"_down")  'gets called after a knockdown too
                    With .Variable("num_meteors_to_drop")
                        .Action = "add"
                        .Int = -1
                    End With
                End With
            End With

        Next

        'Stage the wave finish      FIXME: replace with relay events
        With .Timers("meteor_wave_finish")
            '.Debug = True
            .TickInterval = 500
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "stop_meteor_wave"
                .Action = "restart"
            End With
        End With

        'Light shows
        With .ShowPlayer()
            With .EventName("mode_meteor_wave_started")
                .Key = "key_bumpers_off"
                .Show = "off" 
                With .Tokens()
                    .Add "lights", "tBumper"
                End With
            End With
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
            'Earth hit
            With .EventName("earth_hit")
                .Key = "key_earth_hit"
                .Priority = 15
                .Show = "earth_hit"
                .Speed = 1
                .Loops = 1
            End With
            With .EventName("earth_bg")
                .Key = "key_earth_bg"
                .Priority = 15
                .Show = "earth_hit_bg"
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
                    .Add "lights", "tFlasherU"
                    .Add "color", EarthHitColor
                End With
            End With
            With .EventName("mw_lsing_earth_hit")
                .Key = "key_mw_lsing_earth_hit"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 6
                With .Tokens()
                    .Add "lights", "tFL5"
                    .Add "color", EarthHitColor
                End With
            End With
            With .EventName("mw_rsling_earth_hit")
                .Key = "key_mw_rsling_earth_hit"
                .Show = "flash_color"
                .Speed = 13
                .Loops = 6
                With .Tokens()
                    .Add "lights", "tFL6"
                    .Add "color", EarthHitColor
                End With
            End With
            ' With .EventName("mw_lsing_earth_hit")
            '     .Key = "key_mw_lsing_earth_hit"
            '     .Show = "lsling_swap_2_2_b"
            '     .Speed = 2
            '     .Loops = 7
            '     With .Tokens()
            '         .Add "color1", "ff1100"
            '         .Add "color2", "001122"
            '         .Add "intensity", 100
            '     End With
            ' End With
            ' With .EventName("mw_rsling_earth_hit")
            '     .Key = "key_mw_rsling_earth_hit"
            '     .Show = "rsling_swap_2_2_b"
            '     .Speed = 2
            '     .Loops = 7
            '     With .Tokens()
            '         .Add "color1", "ff1100"
            '         .Add "color2", "001122"
            '         .Add "intensity", 100
            '     End With
            ' End With
        End With

        With .VariablePlayer()
            '.Debug = True
		    With .EventName("mode_meteor_wave_started")
                With .Variable("meteor_wave_running")
                    .Action = "set"
                    .Int = 1
                End With
				With .Variable("num_meteors_to_raise")
                    .Action = "set"
					.Int = "current_player.meteors_per_wave" 
				End With
                With .Variable("num_meteors_to_drop")
                    .Action = "set"
					.Int = "current_player.meteors_per_wave" 
				End With
                With .Variable("num_meteors_ratio")
                    .Action = "set"
                    .Int = 12
                End With
                With .Variable("last_num_meteors_ratio")
                    .Action = "set"
                    .Int = "12 * (1 - 1/current_player.meteors_per_wave)"
                End With
			End With
            With .EventName("calc_num_meteors_ratio")
                With .Variable("num_meteors_ratio")
                    .Action = "set"
                    .Int = "12 * current_player.num_meteors_to_drop / current_player.meteors_per_wave" 
                End With
            End With
            With .EventName("update_last_num_meteors_ratio")
                With .Variable("last_num_meteors_ratio")
                    .Action = "add"
                    .Int = -1 
                End With
            End With
            With .EventName("stop_meteor_wave") 
                With .Variable("meteors_per_wave")
                    .Action = "add"
                    .Int = 3
                End With
                With .Variable("num_meteors_ratio")
                    .Action = "set"
                    .Int = 0
                End With
                With .Variable("last_num_meteors_ratio")
                    .Action = "set"
                    .Int = 0
                End With
            End With
            With .EventName("meteor_wave_done") 
                With .Variable("meteor_wave_running")
                    .Action = "set"
                    .Int = 0
                End With
            End With
            With .EventName("score_wave_count") 
                With .Variable("num_waves_completed_this_ball") 
                    .Action = "add"
                    .Int = 1
                End With
                With .Variable("num_waves_completed") 
                    .Action = "add"
                    .Int = 1
                End With
            End With
            With .EventName("mode_meteor_wave_stopping") 
                With .Variable("meteor_wave_running")
                    .Action = "set"
                    .Int = 0
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
				End With
			End With
            With .EventName("timer_meteor_wave_finish_tick{devices.timers.meteor_wave_finish.ticks==1}")
                With .Lights("GI")
                    .Color = GIColor3000k
                End With
            End With
        End With


        With .SegmentDisplayPlayer()
            With .EventName("mode_meteor_wave_started")
                With .Display("player1")
                    .Text = """"""
                    .Expire = 4000
                End With
                With .Display("player2")
                    .Text = """METEOR"""
                    .Flashing = "all"
                    .Expire = 4000
                End With
                With .Display("player3")
                    .Text = """WAVE """
                    .Flashing = "all"
                    .Expire = 4000
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = 4000
                End With
            End With
        End With

    End With

End Sub