Function Glf_0(args)
	On Error Resume Next
	    Glf_0 = glf_dispatch_current_kwargs("num")=1
	If Err Then Glf_0 = False
End Function
glf_funcRefMap.Add "player_added{kwargs.num==1}", "Glf_0"
Function Glf_1(args)
	On Error Resume Next
	    Glf_1 = glf_dispatch_current_kwargs("num")=2
	If Err Then Glf_1 = False
End Function
glf_funcRefMap.Add "player_added{kwargs.num==2}", "Glf_1"
Function Glf_2(args)
	On Error Resume Next
	    Glf_2 = glf_dispatch_current_kwargs("num")=3
	If Err Then Glf_2 = False
End Function
glf_funcRefMap.Add "player_added{kwargs.num==3}", "Glf_2"
Function Glf_3(args)
	On Error Resume Next
	    Glf_3 = glf_dispatch_current_kwargs("num")=4
	If Err Then Glf_3 = False
End Function
glf_funcRefMap.Add "player_added{kwargs.num==4}", "Glf_3"
Function Glf_4(args)
	Glf_4 = 0
End Function
glf_funcRefMap.Add "0", "Glf_4"
Function Glf_5(args)
	Glf_5 = -1
End Function
glf_funcRefMap.Add "-1", "Glf_5"
Function Glf_6(args)
	Glf_6 = 4
End Function
glf_funcRefMap.Add "4", "Glf_6"
Function Glf_7(args)
	Glf_7 = 1
End Function
glf_funcRefMap.Add "1", "Glf_7"
Function Glf_8(args)
	Glf_8 = ""
End Function
glf_funcRefMap.Add """""", "Glf_8"
Function Glf_9(args)
	Glf_9 = "WARNING"
End Function
glf_funcRefMap.Add """WARNING""", "Glf_9"
Function Glf_10(args)
	Glf_10 = "TILT"
End Function
glf_funcRefMap.Add """TILT""", "Glf_10"
Function Glf_11(args)
	On Error Resume Next
	    Glf_11 = glf_timers("attract_shows").GetValue("ticks") = 8
	If Err Then Glf_11 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 8}", "Glf_11"
Function Glf_12(args)
	On Error Resume Next
	    Glf_12 = glf_timers("attract_shows").GetValue("ticks") = 16
	If Err Then Glf_12 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 16}", "Glf_12"
Function Glf_13(args)
	On Error Resume Next
	    Glf_13 = glf_timers("attract_shows").GetValue("ticks") = 26
	If Err Then Glf_13 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 26}", "Glf_13"
Function Glf_14(args)
	On Error Resume Next
	    Glf_14 = glf_timers("attract_shows").GetValue("ticks") = 30
	If Err Then Glf_14 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 30}", "Glf_14"
Function Glf_15(args)
	On Error Resume Next
	    Glf_15 = glf_timers("attract_shows").GetValue("ticks") = 38
	If Err Then Glf_15 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 38}", "Glf_15"
Function Glf_16(args)
	On Error Resume Next
	    Glf_16 = glf_timers("attract_shows").GetValue("ticks") = 42
	If Err Then Glf_16 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 42}", "Glf_16"
Function Glf_17(args)
	On Error Resume Next
	    Glf_17 = glf_timers("attract_shows").GetValue("ticks") = 44
	If Err Then Glf_17 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 44}", "Glf_17"
Function Glf_18(args)
	On Error Resume Next
	    Glf_18 = glf_timers("attract_shows").GetValue("ticks") = 45
	If Err Then Glf_18 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 45}", "Glf_18"
Function Glf_19(args)
	On Error Resume Next
	    Glf_19 = glf_timers("attract_shows").GetValue("ticks") = 54
	If Err Then Glf_19 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 54}", "Glf_19"
Function Glf_20(args)
	On Error Resume Next
	    Glf_20 = glf_timers("attract_shows").GetValue("ticks") = 60
	If Err Then Glf_20 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 60}", "Glf_20"
Function Glf_21(args)
	On Error Resume Next
	    Glf_21 = glf_timers("attract_shows").GetValue("ticks") = 61
	If Err Then Glf_21 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 61}", "Glf_21"
Function Glf_22(args)
	On Error Resume Next
	    Glf_22 = glf_timers("attract_shows").GetValue("ticks") = 70
	If Err Then Glf_22 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 70}", "Glf_22"
Function Glf_23(args)
	On Error Resume Next
	    Glf_23 = glf_timers("attract_shows").GetValue("ticks") = 71
	If Err Then Glf_23 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 71}", "Glf_23"
Function Glf_24(args)
	On Error Resume Next
	    Glf_24 = glf_timers("attract_shows").GetValue("ticks") = 80
	If Err Then Glf_24 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 80}", "Glf_24"
Function Glf_25(args)
	On Error Resume Next
	    Glf_25 = glf_timers("attract_shows").GetValue("ticks") = 88
	If Err Then Glf_25 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 88}", "Glf_25"
Function Glf_26(args)
	On Error Resume Next
	    Glf_26 = glf_timers("attract_shows").GetValue("ticks") = 98
	If Err Then Glf_26 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 98}", "Glf_26"
Function Glf_27(args)
	On Error Resume Next
	    Glf_27 = glf_timers("attract_shows").GetValue("ticks") = 102
	If Err Then Glf_27 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 102}", "Glf_27"
Function Glf_28(args)
	On Error Resume Next
	    Glf_28 = glf_timers("attract_shows").GetValue("ticks") = 103
	If Err Then Glf_28 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 103}", "Glf_28"
Function Glf_29(args)
	On Error Resume Next
	    Glf_29 = glf_timers("attract_shows").GetValue("ticks") = 116
	If Err Then Glf_29 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 116}", "Glf_29"
Function Glf_30(args)
	On Error Resume Next
	    Glf_30 = glf_timers("attract_shows").GetValue("ticks") = 126
	If Err Then Glf_30 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 126}", "Glf_30"
Function Glf_31(args)
	On Error Resume Next
	    Glf_31 = glf_timers("attract_shows").GetValue("ticks") = 128
	If Err Then Glf_31 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 128}", "Glf_31"
Function Glf_32(args)
	On Error Resume Next
	    Glf_32 = glf_timers("attract_shows").GetValue("ticks") = 132
	If Err Then Glf_32 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 132}", "Glf_32"
Function Glf_33(args)
	On Error Resume Next
	    Glf_33 = glf_timers("attract_shows").GetValue("ticks") = 133
	If Err Then Glf_33 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 133}", "Glf_33"
Function Glf_34(args)
	On Error Resume Next
	    Glf_34 = glf_timers("attract_shows").GetValue("ticks") = 150
	If Err Then Glf_34 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 150}", "Glf_34"
Function Glf_35(args)
	On Error Resume Next
	    Glf_35 = glf_timers("attract_shows").GetValue("ticks") = 151
	If Err Then Glf_35 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 151}", "Glf_35"
Function Glf_36(args)
	On Error Resume Next
	    Glf_36 = glf_timers("attract_shows").GetValue("ticks") = 164
	If Err Then Glf_36 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 164}", "Glf_36"
Function Glf_37(args)
	On Error Resume Next
	    Glf_37 = glf_timers("attract_shows").GetValue("ticks") = 178
	If Err Then Glf_37 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 178}", "Glf_37"
Function Glf_38(args)
	On Error Resume Next
	    Glf_38 = glf_timers("attract_shows").GetValue("ticks") = 182
	If Err Then Glf_38 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 182}", "Glf_38"
Function Glf_39(args)
	On Error Resume Next
	    Glf_39 = glf_timers("attract_shows").GetValue("ticks") = 184
	If Err Then Glf_39 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 184}", "Glf_39"
Function Glf_40(args)
	On Error Resume Next
	    Glf_40 = glf_timers("attract_shows").GetValue("ticks") = 198
	If Err Then Glf_40 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 198}", "Glf_40"
Function Glf_41(args)
	On Error Resume Next
	    Glf_41 = glf_timers("attract_shows").GetValue("ticks") = 202
	If Err Then Glf_41 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 202}", "Glf_41"
Function Glf_42(args)
	On Error Resume Next
	    Glf_42 = glf_timers("attract_shows").GetValue("ticks") = 203
	If Err Then Glf_42 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 203}", "Glf_42"
Function Glf_43(args)
	On Error Resume Next
	    Glf_43 = glf_timers("attract_shows").GetValue("ticks") = 208
	If Err Then Glf_43 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 208}", "Glf_43"
Function Glf_44(args)
	On Error Resume Next
	    Glf_44 = glf_timers("attract_shows").GetValue("ticks") = 209
	If Err Then Glf_44 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 209}", "Glf_44"
Function Glf_45(args)
	On Error Resume Next
	    Glf_45 = glf_timers("attract_shows").GetValue("ticks") = 216
	If Err Then Glf_45 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 216}", "Glf_45"
Function Glf_46(args)
	On Error Resume Next
	    Glf_46 = glf_timers("attract_shows").GetValue("ticks") = 218
	If Err Then Glf_46 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 218}", "Glf_46"
Function Glf_47(args)
	On Error Resume Next
	    Glf_47 = glf_timers("attract_shows").GetValue("ticks") = 224
	If Err Then Glf_47 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 224}", "Glf_47"
Function Glf_48(args)
	On Error Resume Next
	    Glf_48 = glf_timers("attract_shows").GetValue("ticks") = 225
	If Err Then Glf_48 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 225}", "Glf_48"
Function Glf_49(args)
	On Error Resume Next
	    Glf_49 = glf_timers("attract_shows").GetValue("ticks") = 228
	If Err Then Glf_49 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 228}", "Glf_49"
Function Glf_50(args)
	On Error Resume Next
	    Glf_50 = glf_timers("attract_shows").GetValue("ticks") = 229
	If Err Then Glf_50 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 229}", "Glf_50"
Function Glf_51(args)
	On Error Resume Next
	    Glf_51 = glf_timers("attract_shows").GetValue("ticks") = 232
	If Err Then Glf_51 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 232}", "Glf_51"
Function Glf_52(args)
	On Error Resume Next
	    Glf_52 = glf_timers("attract_shows").GetValue("ticks") = 233
	If Err Then Glf_52 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 233}", "Glf_52"
Function Glf_53(args)
	On Error Resume Next
	    Glf_53 = glf_timers("attract_shows").GetValue("ticks") = 238
	If Err Then Glf_53 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 238}", "Glf_53"
Function Glf_54(args)
	On Error Resume Next
	    Glf_54 = glf_timers("attract_shows").GetValue("ticks") = 239
	If Err Then Glf_54 = False
End Function
glf_funcRefMap.Add "timer_attract_shows_tick{devices.timers.attract_shows.ticks == 239}", "Glf_54"
Function Glf_55(args)
	On Error Resume Next
	    Glf_55 = glf_timers("attract_display").GetValue("ticks") = 1
	If Err Then Glf_55 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 1}", "Glf_55"
Function Glf_56(args)
	On Error Resume Next
	    Glf_56 = glf_timers("attract_display").GetValue("ticks") = 7
	If Err Then Glf_56 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 7}", "Glf_56"
Function Glf_57(args)
	On Error Resume Next
	    Glf_57 = glf_timers("attract_display").GetValue("ticks") = 17
	If Err Then Glf_57 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 17}", "Glf_57"
Function Glf_58(args)
	On Error Resume Next
	    Glf_58 = glf_timers("attract_display").GetValue("ticks") = 21
	If Err Then Glf_58 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 21}", "Glf_58"
Function Glf_59(args)
	On Error Resume Next
	    Glf_59 = glf_timers("attract_display").GetValue("ticks") = 25
	If Err Then Glf_59 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 25}", "Glf_59"
Function Glf_60(args)
	On Error Resume Next
	    Glf_60 = glf_timers("attract_display").GetValue("ticks") = 29
	If Err Then Glf_60 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 29}", "Glf_60"
Function Glf_61(args)
	On Error Resume Next
	    Glf_61 = glf_timers("attract_display").GetValue("ticks") = 33
	If Err Then Glf_61 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 33}", "Glf_61"
Function Glf_62(args)
	On Error Resume Next
	    Glf_62 = glf_timers("attract_display").GetValue("ticks") = 36
	If Err Then Glf_62 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 36}", "Glf_62"
Function Glf_63(args)
	On Error Resume Next
	    Glf_63 = glf_timers("attract_display").GetValue("ticks") = 40
	If Err Then Glf_63 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 40}", "Glf_63"
Function Glf_64(args)
	On Error Resume Next
	    Glf_64 = glf_timers("attract_display").GetValue("ticks") = 46
	If Err Then Glf_64 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 46}", "Glf_64"
Function Glf_65(args)
	On Error Resume Next
	    Glf_65 = glf_timers("attract_display").GetValue("ticks") = 48
	If Err Then Glf_65 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 48}", "Glf_65"
Function Glf_66(args)
	On Error Resume Next
	    Glf_66 = glf_timers("attract_display").GetValue("ticks") = 50
	If Err Then Glf_66 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 50}", "Glf_66"
Function Glf_67(args)
	Glf_67 = 3
End Function
glf_funcRefMap.Add "3", "Glf_67"
Function Glf_68(args)
	Glf_68 = 240
End Function
glf_funcRefMap.Add "240", "Glf_68"
Function Glf_69(args)
	Glf_69 = 55
End Function
glf_funcRefMap.Add "55", "Glf_69"
Function Glf_70(args)
	Glf_70 = "DARK "
End Function
glf_funcRefMap.Add """DARK """, "Glf_70"
Function Glf_71(args)
	Glf_71 = "CHAOS   "
End Function
glf_funcRefMap.Add """CHAOS   """, "Glf_71"
Function Glf_72(args)
	Glf_72 = glf_machine_vars("score_1_label").GetValue()
End Function
glf_funcRefMap.Add "machine.score_1_label", "Glf_72"
Function Glf_73(args)
	Glf_73 = glf_machine_vars("score_1_name").GetValue() & " "
End Function
glf_funcRefMap.Add "machine.score_1_name & "" """, "Glf_73"
Function Glf_74(args)
	Glf_74 = glf_machine_vars("score_1_value").GetValue()
End Function
glf_funcRefMap.Add "machine.score_1_value", "Glf_74"
Function Glf_75(args)
	Glf_75 = glf_machine_vars("score_2_label").GetValue()
End Function
glf_funcRefMap.Add "machine.score_2_label", "Glf_75"
Function Glf_76(args)
	Glf_76 = glf_machine_vars("score_2_name").GetValue() & " "
End Function
glf_funcRefMap.Add "machine.score_2_name & "" """, "Glf_76"
Function Glf_77(args)
	Glf_77 = glf_machine_vars("score_2_value").GetValue()
End Function
glf_funcRefMap.Add "machine.score_2_value", "Glf_77"
Function Glf_78(args)
	Glf_78 = glf_machine_vars("score_3_label").GetValue()
End Function
glf_funcRefMap.Add "machine.score_3_label", "Glf_78"
Function Glf_79(args)
	Glf_79 = glf_machine_vars("score_3_name").GetValue() & " "
End Function
glf_funcRefMap.Add "machine.score_3_name & "" """, "Glf_79"
Function Glf_80(args)
	Glf_80 = glf_machine_vars("score_3_value").GetValue()
End Function
glf_funcRefMap.Add "machine.score_3_value", "Glf_80"
Function Glf_81(args)
	Glf_81 = glf_machine_vars("score_4_label").GetValue()
End Function
glf_funcRefMap.Add "machine.score_4_label", "Glf_81"
Function Glf_82(args)
	Glf_82 = glf_machine_vars("score_4_name").GetValue() & " "
End Function
glf_funcRefMap.Add "machine.score_4_name & "" """, "Glf_82"
Function Glf_83(args)
	Glf_83 = glf_machine_vars("score_4_value").GetValue()
End Function
glf_funcRefMap.Add "machine.score_4_value", "Glf_83"
Function Glf_84(args)
	Glf_84 = "LAST "
End Function
glf_funcRefMap.Add """LAST """, "Glf_84"
Function Glf_85(args)
	Glf_85 = "SCORES "
End Function
glf_funcRefMap.Add """SCORES """, "Glf_85"
Function Glf_86(args)
	Glf_86 = glf_machine_vars("player1_score").GetValue()
End Function
glf_funcRefMap.Add "machine.player1_score", "Glf_86"
Function Glf_87(args)
	Glf_87 = glf_machine_vars("player2_score").GetValue()
End Function
glf_funcRefMap.Add "machine.player2_score", "Glf_87"
Function Glf_88(args)
	Glf_88 = glf_machine_vars("player3_score").GetValue()
End Function
glf_funcRefMap.Add "machine.player3_score", "Glf_88"
Function Glf_89(args)
	Glf_89 = glf_machine_vars("player4_score").GetValue()
End Function
glf_funcRefMap.Add "machine.player4_score", "Glf_89"
Function Glf_90(args)
	Glf_90 = "APOPHIS"
End Function
glf_funcRefMap.Add """APOPHIS""", "Glf_90"
Function Glf_91(args)
	Glf_91 = "FLUX  "
End Function
glf_funcRefMap.Add """FLUX  """, "Glf_91"
Function Glf_92(args)
	Glf_92 = "UNSAVORY"
End Function
glf_funcRefMap.Add """UNSAVORY""", "Glf_92"
Function Glf_93(args)
	On Error Resume Next
	    Glf_93 = Glf_GameVariable("tilted") = False
	If Err Then Glf_93 = False
End Function
glf_funcRefMap.Add "ball_ending{game.tilted == False}", "Glf_93"
Function Glf_94(args)
	On Error Resume Next
	    Glf_94 = GetPlayerState("shot_cluster_bomb1") = 1
	If Err Then Glf_94 = False
End Function
glf_funcRefMap.Add "check_bonus_bomb1{current_player.shot_cluster_bomb1 == 1}", "Glf_94"
Function Glf_95(args)
	On Error Resume Next
	    Glf_95 = GetPlayerState("shot_cluster_bomb2") = 1
	If Err Then Glf_95 = False
End Function
glf_funcRefMap.Add "check_bonus_bomb2{current_player.shot_cluster_bomb2 == 1}", "Glf_95"
Function Glf_96(args)
	On Error Resume Next
	    Glf_96 = GetPlayerState("shot_moon_missile1") = 1
	If Err Then Glf_96 = False
End Function
glf_funcRefMap.Add "check_bonus_missile1{current_player.shot_moon_missile1 == 1}", "Glf_96"
Function Glf_97(args)
	On Error Resume Next
	    Glf_97 = GetPlayerState("shot_moon_missile2") = 1
	If Err Then Glf_97 = False
End Function
glf_funcRefMap.Add "check_bonus_missile2{current_player.shot_moon_missile2 == 1}", "Glf_97"
Function Glf_98(args)
	On Error Resume Next
	    Glf_98 = GetPlayerState("shot_proton_round1") = 1
	If Err Then Glf_98 = False
End Function
glf_funcRefMap.Add "check_bonus_proton1{current_player.shot_proton_round1 == 1}", "Glf_98"
Function Glf_99(args)
	On Error Resume Next
	    Glf_99 = GetPlayerState("shot_proton_round2") = 1
	If Err Then Glf_99 = False
End Function
glf_funcRefMap.Add "check_bonus_proton2{current_player.shot_proton_round2 == 1}", "Glf_99"
Function Glf_100(args)
	On Error Resume Next
	    Glf_100 = GetPlayerState("shot_proton_round3") = 1
	If Err Then Glf_100 = False
End Function
glf_funcRefMap.Add "check_bonus_proton3{current_player.shot_proton_round3 == 1}", "Glf_100"
Function Glf_101(args)
	On Error Resume Next
	    Glf_101 = GetPlayerState("shot_proton_round4") = 1
	If Err Then Glf_101 = False
End Function
glf_funcRefMap.Add "check_bonus_proton4{current_player.shot_proton_round4 == 1}", "Glf_101"
Function Glf_102(args)
	On Error Resume Next
	    Glf_102 = GetPlayerState("shot_proton_round5") = 1
	If Err Then Glf_102 = False
End Function
glf_funcRefMap.Add "check_bonus_proton5{current_player.shot_proton_round5 == 1}", "Glf_102"
Function Glf_103(args)
	On Error Resume Next
	    Glf_103 = GetPlayerState("shot_proton_round6") = 1
	If Err Then Glf_103 = False
End Function
glf_funcRefMap.Add "check_bonus_proton6{current_player.shot_proton_round6 == 1}", "Glf_103"
Function Glf_104(args)
	On Error Resume Next
	    Glf_104 = GetPlayerState("shot_meteor_wave1") = 2
	If Err Then Glf_104 = False
End Function
glf_funcRefMap.Add "check_bonus_waves{current_player.shot_meteor_wave1 == 2}", "Glf_104"
Function Glf_105(args)
	On Error Resume Next
	    Glf_105 = GetPlayerState("shot_meteor_wave2") = 2
	If Err Then Glf_105 = False
End Function
glf_funcRefMap.Add "check_bonus_waves{current_player.shot_meteor_wave2 == 2}", "Glf_105"
Function Glf_106(args)
	On Error Resume Next
	    Glf_106 = GetPlayerState("shot_meteor_wave3") = 2
	If Err Then Glf_106 = False
End Function
glf_funcRefMap.Add "check_bonus_waves{current_player.shot_meteor_wave3 == 2}", "Glf_106"
Function Glf_107(args)
	On Error Resume Next
	    Glf_107 = GetPlayerState("shot_meteor_wave4") = 2
	If Err Then Glf_107 = False
End Function
glf_funcRefMap.Add "check_bonus_waves{current_player.shot_meteor_wave4 == 2}", "Glf_107"
Function Glf_108(args)
	On Error Resume Next
	    Glf_108 = GetPlayerState("shot_meteor_wave5") = 2
	If Err Then Glf_108 = False
End Function
glf_funcRefMap.Add "check_bonus_waves{current_player.shot_meteor_wave5 == 2}", "Glf_108"
Function Glf_109(args)
	On Error Resume Next
	    Glf_109 = GetPlayerState("shot_meteor_wave6") = 2
	If Err Then Glf_109 = False
End Function
glf_funcRefMap.Add "check_bonus_waves{current_player.shot_meteor_wave6 == 2}", "Glf_109"
Function Glf_110(args)
	On Error Resume Next
	    Glf_110 = GetPlayerState("shot_meteor_wave7") = 2
	If Err Then Glf_110 = False
End Function
glf_funcRefMap.Add "check_bonus_waves{current_player.shot_meteor_wave7 == 2}", "Glf_110"
Function Glf_111(args)
	On Error Resume Next
	    Glf_111 = GetPlayerState("shot_meteor_wave8") = 2
	If Err Then Glf_111 = False
End Function
glf_funcRefMap.Add "check_bonus_waves{current_player.shot_meteor_wave8 == 2}", "Glf_111"
Function Glf_112(args)
	On Error Resume Next
	    Glf_112 = GetPlayerState("shot_meteor_wave9") = 2
	If Err Then Glf_112 = False
End Function
glf_funcRefMap.Add "check_bonus_waves{current_player.shot_meteor_wave9 == 2}", "Glf_112"
Function Glf_113(args)
	On Error Resume Next
	    Glf_113 = glf_timers("bonus").GetValue("ticks") = 17
	If Err Then Glf_113 = False
End Function
glf_funcRefMap.Add "timer_bonus_tick{devices.timers.bonus.ticks == 17}", "Glf_113"
Function Glf_114(args)
	On Error Resume Next
	    Glf_114 = glf_timers("bonus").GetValue("ticks") = 2 And GetPlayerState("bonus_multiplier") = 2
	If Err Then Glf_114 = False
End Function
glf_funcRefMap.Add "timer_bonus_tick{devices.timers.bonus.ticks == 2 && current_player.bonus_multiplier == 2}", "Glf_114"
Function Glf_115(args)
	On Error Resume Next
	    Glf_115 = glf_timers("bonus").GetValue("ticks") = 3
	If Err Then Glf_115 = False
End Function
glf_funcRefMap.Add "timer_bonus_tick{devices.timers.bonus.ticks == 3}", "Glf_115"
Function Glf_116(args)
	On Error Resume Next
	    Glf_116 = glf_timers("bonus").GetValue("ticks") = 6
	If Err Then Glf_116 = False
End Function
glf_funcRefMap.Add "timer_bonus_tick{devices.timers.bonus.ticks == 6}", "Glf_116"
Function Glf_117(args)
	On Error Resume Next
	    Glf_117 = glf_timers("bonus").GetValue("ticks") = 9
	If Err Then Glf_117 = False
End Function
glf_funcRefMap.Add "timer_bonus_tick{devices.timers.bonus.ticks == 9}", "Glf_117"
Function Glf_118(args)
	On Error Resume Next
	    Glf_118 = glf_timers("bonus").GetValue("ticks") = 12
	If Err Then Glf_118 = False
End Function
glf_funcRefMap.Add "timer_bonus_tick{devices.timers.bonus.ticks == 12}", "Glf_118"
Function Glf_119(args)
	On Error Resume Next
	    Glf_119 = glf_timers("bonus").GetValue("ticks") = 15
	If Err Then Glf_119 = False
End Function
glf_funcRefMap.Add "timer_bonus_tick{devices.timers.bonus.ticks == 15}", "Glf_119"
Function Glf_120(args)
	On Error Resume Next
	    Glf_120 = glf_timers("bonus").GetValue("ticks") = 18
	If Err Then Glf_120 = False
End Function
glf_funcRefMap.Add "timer_bonus_tick{devices.timers.bonus.ticks == 18}", "Glf_120"
Function Glf_121(args)
	Glf_121 = 24
End Function
glf_funcRefMap.Add "24", "Glf_121"
Function Glf_122(args)
	On Error Resume Next
	    Glf_122 = GetPlayerState("bonus_comboflip_block")=0 And glf_timers("bonus").GetValue("ticks") < 16
	If Err Then Glf_122 = False
End Function
glf_funcRefMap.Add "skip_bonus_tally{current_player.bonus_comboflip_block==0 && devices.timers.bonus.ticks < 16}", "Glf_122"
Function Glf_123(args)
	Glf_123 = 16
End Function
glf_funcRefMap.Add "16", "Glf_123"
Function Glf_124(args)
	Glf_124 = "BONUS  "
End Function
glf_funcRefMap.Add """BONUS  """, "Glf_124"
Function Glf_125(args)
	Glf_125 = " X 2  "
End Function
glf_funcRefMap.Add """ X 2  """, "Glf_125"
Function Glf_126(args)
	Glf_126 = "WAVES"
End Function
glf_funcRefMap.Add """WAVES""", "Glf_126"
Function Glf_127(args)
	Glf_127 = Glf_FormatValue(GetPlayerState("bonus_waves"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.bonus_waves:0>2}", "Glf_127"
Function Glf_128(args)
	Glf_128 = "TRAINING"
End Function
glf_funcRefMap.Add """TRAINING""", "Glf_128"
Function Glf_129(args)
	Glf_129 = Glf_FormatValue(GetPlayerState("bonus_training"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.bonus_training:0>2}", "Glf_129"
Function Glf_130(args)
	Glf_130 = "BOMBS"
End Function
glf_funcRefMap.Add """BOMBS""", "Glf_130"
Function Glf_131(args)
	Glf_131 = Glf_FormatValue(GetPlayerState("bonus_bombs"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.bonus_bombs:0>2}", "Glf_131"
Function Glf_132(args)
	Glf_132 = "MISSILES"
End Function
glf_funcRefMap.Add """MISSILES""", "Glf_132"
Function Glf_133(args)
	Glf_133 = Glf_FormatValue(GetPlayerState("bonus_missiles"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.bonus_missiles:0>2}", "Glf_133"
Function Glf_134(args)
	Glf_134 = "PROTONS"
End Function
glf_funcRefMap.Add """PROTONS""", "Glf_134"
Function Glf_135(args)
	Glf_135 = Glf_FormatValue(GetPlayerState("bonus_protons"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.bonus_protons:0>2}", "Glf_135"
Function Glf_136(args)
	Glf_136 = "TOTAL"
End Function
glf_funcRefMap.Add """TOTAL""", "Glf_136"
Function Glf_137(args)
	Glf_137 = Glf_FormatValue(GetPlayerState("bonus_total"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.bonus_total:0>2}", "Glf_137"
Function Glf_138(args)
	Glf_138 = 100000 * GetPlayerState("num_waves_completed_this_ball") * GetPlayerState("num_waves_completed")
End Function
glf_funcRefMap.Add "100000 * current_player.num_waves_completed_this_ball * current_player.num_waves_completed", "Glf_138"
Function Glf_139(args)
	Glf_139 = 250000 * GetPlayerState("training_total_achieved")
End Function
glf_funcRefMap.Add "250000 * current_player.training_total_achieved", "Glf_139"
Function Glf_140(args)
	Glf_140 = 250000
End Function
glf_funcRefMap.Add "250000", "Glf_140"
Function Glf_141(args)
	Glf_141 = 50000
End Function
glf_funcRefMap.Add "50000", "Glf_141"
Function Glf_142(args)
	Glf_142 = (GetPlayerState("bonus_waves") + GetPlayerState("bonus_training") + GetPlayerState("bonus_bombs") + GetPlayerState("bonus_missiles") + GetPlayerState("bonus_protons")) * GetPlayerState("bonus_multiplier")
End Function
glf_funcRefMap.Add "(current_player.bonus_waves + current_player.bonus_training + current_player.bonus_bombs + current_player.bonus_missiles + current_player.bonus_protons) * current_player.bonus_multiplier", "Glf_142"
Function Glf_143(args)
	Glf_143 = GetPlayerState("bonus_total")
End Function
glf_funcRefMap.Add "current_player.bonus_total", "Glf_143"
Function Glf_144(args)
	On Error Resume Next
	    Glf_144 = glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_144 = False
End Function
glf_funcRefMap.Add "mode_post_game_started{machine.won_game == 0}", "Glf_144"
Function Glf_145(args)
	On Error Resume Next
	    Glf_145 = glf_machine_vars("won_game").GetValue() = 1
	If Err Then Glf_145 = False
End Function
glf_funcRefMap.Add "mode_post_game_started{machine.won_game == 1}", "Glf_145"
Function Glf_146(args)
	On Error Resume Next
	    Glf_146 = glf_timers("post_game_show").GetValue("ticks") = 1
	If Err Then Glf_146 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 1}", "Glf_146"
Function Glf_147(args)
	On Error Resume Next
	    Glf_147 = glf_timers("post_game_show").GetValue("ticks") = 2
	If Err Then Glf_147 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 2}", "Glf_147"
Function Glf_148(args)
	On Error Resume Next
	    Glf_148 = glf_timers("post_game_show").GetValue("ticks") = 4
	If Err Then Glf_148 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 4}", "Glf_148"
Function Glf_149(args)
	On Error Resume Next
	    Glf_149 = glf_timers("post_game_show").GetValue("ticks") = 8
	If Err Then Glf_149 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 8}", "Glf_149"
Function Glf_150(args)
	On Error Resume Next
	    Glf_150 = glf_timers("post_game_show").GetValue("ticks") = 10
	If Err Then Glf_150 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 10}", "Glf_150"
Function Glf_151(args)
	On Error Resume Next
	    Glf_151 = glf_timers("post_game_show").GetValue("ticks") = 12
	If Err Then Glf_151 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 12}", "Glf_151"
Function Glf_152(args)
	On Error Resume Next
	    Glf_152 = glf_timers("post_game_show").GetValue("ticks") = 16
	If Err Then Glf_152 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 16}", "Glf_152"
Function Glf_153(args)
	On Error Resume Next
	    Glf_153 = glf_timers("post_game_show").GetValue("ticks") = 17
	If Err Then Glf_153 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 17}", "Glf_153"
Function Glf_154(args)
	On Error Resume Next
	    Glf_154 = glf_timers("post_game_show").GetValue("ticks") = 18
	If Err Then Glf_154 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 18}", "Glf_154"
Function Glf_155(args)
	On Error Resume Next
	    Glf_155 = glf_timers("post_game_show").GetValue("ticks") = 19
	If Err Then Glf_155 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 19}", "Glf_155"
Function Glf_156(args)
	On Error Resume Next
	    Glf_156 = glf_timers("post_game_show").GetValue("ticks") = 20
	If Err Then Glf_156 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 20}", "Glf_156"
Function Glf_157(args)
	On Error Resume Next
	    Glf_157 = glf_timers("post_game_show").GetValue("ticks") = 24
	If Err Then Glf_157 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 24}", "Glf_157"
Function Glf_158(args)
	On Error Resume Next
	    Glf_158 = glf_timers("post_game_show").GetValue("ticks") = 25
	If Err Then Glf_158 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 25}", "Glf_158"
Function Glf_159(args)
	On Error Resume Next
	    Glf_159 = glf_timers("post_game_show").GetValue("ticks") = 26
	If Err Then Glf_159 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 26}", "Glf_159"
Function Glf_160(args)
	On Error Resume Next
	    Glf_160 = glf_timers("post_game_show").GetValue("ticks") = 27
	If Err Then Glf_160 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 27}", "Glf_160"
Function Glf_161(args)
	On Error Resume Next
	    Glf_161 = glf_timers("post_game_show").GetValue("ticks") = 28
	If Err Then Glf_161 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 28}", "Glf_161"
Function Glf_162(args)
	On Error Resume Next
	    Glf_162 = glf_timers("post_game_show").GetValue("ticks") = 29
	If Err Then Glf_162 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 29}", "Glf_162"
Function Glf_163(args)
	On Error Resume Next
	    Glf_163 = glf_timers("post_game_show").GetValue("ticks") = 30
	If Err Then Glf_163 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 30}", "Glf_163"
Function Glf_164(args)
	On Error Resume Next
	    Glf_164 = glf_timers("post_game_show").GetValue("ticks") = 31
	If Err Then Glf_164 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 31}", "Glf_164"
Function Glf_165(args)
	On Error Resume Next
	    Glf_165 = glf_timers("post_game_show").GetValue("ticks") = 32
	If Err Then Glf_165 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 32}", "Glf_165"
Function Glf_166(args)
	On Error Resume Next
	    Glf_166 = glf_timers("post_game_show").GetValue("ticks") = 33
	If Err Then Glf_166 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 33}", "Glf_166"
Function Glf_167(args)
	On Error Resume Next
	    Glf_167 = glf_timers("post_game_show").GetValue("ticks") = 34
	If Err Then Glf_167 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 34}", "Glf_167"
Function Glf_168(args)
	On Error Resume Next
	    Glf_168 = glf_timers("post_game_show").GetValue("ticks") = 35
	If Err Then Glf_168 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 35}", "Glf_168"
Function Glf_169(args)
	On Error Resume Next
	    Glf_169 = glf_timers("post_game_show").GetValue("ticks") = 36
	If Err Then Glf_169 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 36}", "Glf_169"
Function Glf_170(args)
	On Error Resume Next
	    Glf_170 = glf_timers("post_game_show").GetValue("ticks") = 37
	If Err Then Glf_170 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 37}", "Glf_170"
Function Glf_171(args)
	On Error Resume Next
	    Glf_171 = glf_timers("post_game_show").GetValue("ticks") = 38
	If Err Then Glf_171 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 38}", "Glf_171"
Function Glf_172(args)
	On Error Resume Next
	    Glf_172 = glf_timers("post_game_show").GetValue("ticks") = 39
	If Err Then Glf_172 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 39}", "Glf_172"
Function Glf_173(args)
	On Error Resume Next
	    Glf_173 = glf_timers("post_game_show").GetValue("ticks") = 40
	If Err Then Glf_173 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 40}", "Glf_173"
Function Glf_174(args)
	On Error Resume Next
	    Glf_174 = glf_timers("post_game_show").GetValue("ticks") = 41
	If Err Then Glf_174 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 41}", "Glf_174"
Function Glf_175(args)
	On Error Resume Next
	    Glf_175 = glf_timers("post_game_show").GetValue("ticks") = 42
	If Err Then Glf_175 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 42}", "Glf_175"
Function Glf_176(args)
	On Error Resume Next
	    Glf_176 = glf_timers("post_game_show").GetValue("ticks") = 43
	If Err Then Glf_176 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 43}", "Glf_176"
Function Glf_177(args)
	On Error Resume Next
	    Glf_177 = glf_timers("post_game_show").GetValue("ticks") = 44
	If Err Then Glf_177 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 44}", "Glf_177"
Function Glf_178(args)
	On Error Resume Next
	    Glf_178 = glf_timers("post_game_show").GetValue("ticks") = 45
	If Err Then Glf_178 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 45}", "Glf_178"
Function Glf_179(args)
	On Error Resume Next
	    Glf_179 = glf_timers("post_game_show").GetValue("ticks") = 46
	If Err Then Glf_179 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 46}", "Glf_179"
Function Glf_180(args)
	On Error Resume Next
	    Glf_180 = glf_timers("post_game_show").GetValue("ticks") = 47
	If Err Then Glf_180 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 47}", "Glf_180"
Function Glf_181(args)
	On Error Resume Next
	    Glf_181 = glf_timers("post_game_show").GetValue("ticks") = 48
	If Err Then Glf_181 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 48}", "Glf_181"
Function Glf_182(args)
	On Error Resume Next
	    Glf_182 = glf_timers("post_game_show").GetValue("ticks") = 49
	If Err Then Glf_182 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 49}", "Glf_182"
Function Glf_183(args)
	On Error Resume Next
	    Glf_183 = glf_timers("post_game_show").GetValue("ticks") = 50
	If Err Then Glf_183 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 50}", "Glf_183"
Function Glf_184(args)
	On Error Resume Next
	    Glf_184 = glf_timers("post_game_show").GetValue("ticks") = 51
	If Err Then Glf_184 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 51}", "Glf_184"
Function Glf_185(args)
	On Error Resume Next
	    Glf_185 = glf_timers("post_game_show").GetValue("ticks") = 52
	If Err Then Glf_185 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 52}", "Glf_185"
Function Glf_186(args)
	On Error Resume Next
	    Glf_186 = glf_timers("post_game_show").GetValue("ticks") = 53
	If Err Then Glf_186 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 53}", "Glf_186"
Function Glf_187(args)
	On Error Resume Next
	    Glf_187 = glf_timers("post_game_show").GetValue("ticks") = 54
	If Err Then Glf_187 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 54}", "Glf_187"
Function Glf_188(args)
	On Error Resume Next
	    Glf_188 = glf_timers("post_game_show").GetValue("ticks") = 55
	If Err Then Glf_188 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 55}", "Glf_188"
Function Glf_189(args)
	On Error Resume Next
	    Glf_189 = glf_timers("post_game_show").GetValue("ticks") = 56
	If Err Then Glf_189 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 56}", "Glf_189"
Function Glf_190(args)
	On Error Resume Next
	    Glf_190 = glf_timers("post_game_show").GetValue("ticks") = 57
	If Err Then Glf_190 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 57}", "Glf_190"
Function Glf_191(args)
	On Error Resume Next
	    Glf_191 = glf_timers("post_game_show").GetValue("ticks") = 58
	If Err Then Glf_191 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 58}", "Glf_191"
Function Glf_192(args)
	On Error Resume Next
	    Glf_192 = glf_timers("post_game_show").GetValue("ticks") = 59
	If Err Then Glf_192 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 59}", "Glf_192"
Function Glf_193(args)
	On Error Resume Next
	    Glf_193 = glf_timers("post_game_show").GetValue("ticks") = 60
	If Err Then Glf_193 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 60}", "Glf_193"
Function Glf_194(args)
	On Error Resume Next
	    Glf_194 = glf_timers("post_game_show").GetValue("ticks") = 61
	If Err Then Glf_194 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 61}", "Glf_194"
Function Glf_195(args)
	On Error Resume Next
	    Glf_195 = glf_timers("post_game_show").GetValue("ticks") = 62
	If Err Then Glf_195 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 62}", "Glf_195"
Function Glf_196(args)
	On Error Resume Next
	    Glf_196 = glf_timers("post_game_show").GetValue("ticks") = 63
	If Err Then Glf_196 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 63}", "Glf_196"
Function Glf_197(args)
	On Error Resume Next
	    Glf_197 = glf_timers("post_game_show").GetValue("ticks") = 64
	If Err Then Glf_197 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 64}", "Glf_197"
Function Glf_198(args)
	On Error Resume Next
	    Glf_198 = glf_timers("post_game_show").GetValue("ticks") = 65
	If Err Then Glf_198 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 65}", "Glf_198"
Function Glf_199(args)
	On Error Resume Next
	    Glf_199 = glf_timers("post_game_show").GetValue("ticks") = 66
	If Err Then Glf_199 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 66}", "Glf_199"
Function Glf_200(args)
	On Error Resume Next
	    Glf_200 = glf_timers("post_game_show").GetValue("ticks") = 67
	If Err Then Glf_200 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 67}", "Glf_200"
Function Glf_201(args)
	On Error Resume Next
	    Glf_201 = glf_timers("post_game_show").GetValue("ticks") = 68
	If Err Then Glf_201 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 68}", "Glf_201"
Function Glf_202(args)
	On Error Resume Next
	    Glf_202 = glf_timers("post_game_show").GetValue("ticks") = 69
	If Err Then Glf_202 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 69}", "Glf_202"
Function Glf_203(args)
	On Error Resume Next
	    Glf_203 = glf_timers("post_game_show").GetValue("ticks") = 70
	If Err Then Glf_203 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 70}", "Glf_203"
Function Glf_204(args)
	On Error Resume Next
	    Glf_204 = glf_timers("post_game_show").GetValue("ticks") = 71
	If Err Then Glf_204 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 71}", "Glf_204"
Function Glf_205(args)
	On Error Resume Next
	    Glf_205 = glf_timers("post_game_show").GetValue("ticks") = 72
	If Err Then Glf_205 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 72}", "Glf_205"
Function Glf_206(args)
	On Error Resume Next
	    Glf_206 = glf_timers("post_game_show").GetValue("ticks") = 73
	If Err Then Glf_206 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 73}", "Glf_206"
Function Glf_207(args)
	On Error Resume Next
	    Glf_207 = glf_timers("post_game_show").GetValue("ticks") = 74
	If Err Then Glf_207 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 74}", "Glf_207"
Function Glf_208(args)
	On Error Resume Next
	    Glf_208 = glf_timers("post_game_show").GetValue("ticks") = 75
	If Err Then Glf_208 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 75}", "Glf_208"
Function Glf_209(args)
	On Error Resume Next
	    Glf_209 = glf_timers("post_game_show").GetValue("ticks") = 76
	If Err Then Glf_209 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 76}", "Glf_209"
Function Glf_210(args)
	On Error Resume Next
	    Glf_210 = glf_timers("post_game_show").GetValue("ticks") = 78
	If Err Then Glf_210 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 78}", "Glf_210"
Function Glf_211(args)
	On Error Resume Next
	    Glf_211 = glf_timers("post_game_show").GetValue("ticks") = 79
	If Err Then Glf_211 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 79}", "Glf_211"
Function Glf_212(args)
	On Error Resume Next
	    Glf_212 = glf_timers("post_game_show").GetValue("ticks") = 80
	If Err Then Glf_212 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 80}", "Glf_212"
Function Glf_213(args)
	On Error Resume Next
	    Glf_213 = glf_timers("post_game_show").GetValue("ticks") = 81
	If Err Then Glf_213 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 81}", "Glf_213"
Function Glf_214(args)
	On Error Resume Next
	    Glf_214 = glf_timers("post_game_show").GetValue("ticks") = 82
	If Err Then Glf_214 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 82}", "Glf_214"
Function Glf_215(args)
	On Error Resume Next
	    Glf_215 = glf_timers("post_game_show").GetValue("ticks") = 83
	If Err Then Glf_215 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 83}", "Glf_215"
Function Glf_216(args)
	On Error Resume Next
	    Glf_216 = glf_timers("post_game_show").GetValue("ticks") = 84
	If Err Then Glf_216 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 84}", "Glf_216"
Function Glf_217(args)
	On Error Resume Next
	    Glf_217 = glf_timers("post_game_show").GetValue("ticks") = 85
	If Err Then Glf_217 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 85}", "Glf_217"
Function Glf_218(args)
	On Error Resume Next
	    Glf_218 = glf_timers("post_game_show").GetValue("ticks") = 86
	If Err Then Glf_218 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 86}", "Glf_218"
Function Glf_219(args)
	On Error Resume Next
	    Glf_219 = glf_timers("post_game_show").GetValue("ticks") = 87
	If Err Then Glf_219 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 87}", "Glf_219"
Function Glf_220(args)
	On Error Resume Next
	    Glf_220 = glf_timers("post_game_show").GetValue("ticks") = 88
	If Err Then Glf_220 = False
End Function
glf_funcRefMap.Add "timer_post_game_show_tick{devices.timers.post_game_show.ticks == 88}", "Glf_220"
Function Glf_221(args)
	On Error Resume Next
	    Glf_221 = glf_machine_vars("message_num").GetValue() = 1 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_221 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 1 && machine.won_game == 0}", "Glf_221"
Function Glf_222(args)
	On Error Resume Next
	    Glf_222 = glf_machine_vars("message_num").GetValue() = 2 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_222 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 2 && machine.won_game == 0}", "Glf_222"
Function Glf_223(args)
	On Error Resume Next
	    Glf_223 = glf_machine_vars("message_num").GetValue() = 3 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_223 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 3 && machine.won_game == 0}", "Glf_223"
Function Glf_224(args)
	On Error Resume Next
	    Glf_224 = glf_machine_vars("message_num").GetValue() = 4 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_224 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 4 && machine.won_game == 0}", "Glf_224"
Function Glf_225(args)
	On Error Resume Next
	    Glf_225 = glf_machine_vars("message_num").GetValue() = 5 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_225 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 5 && machine.won_game == 0}", "Glf_225"
Function Glf_226(args)
	On Error Resume Next
	    Glf_226 = glf_machine_vars("message_num").GetValue() = 6 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_226 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 6 && machine.won_game == 0}", "Glf_226"
Function Glf_227(args)
	On Error Resume Next
	    Glf_227 = glf_machine_vars("message_num").GetValue() = 7 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_227 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 7 && machine.won_game == 0}", "Glf_227"
Function Glf_228(args)
	On Error Resume Next
	    Glf_228 = glf_machine_vars("message_num").GetValue() = 8 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_228 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 8 && machine.won_game == 0}", "Glf_228"
Function Glf_229(args)
	On Error Resume Next
	    Glf_229 = glf_machine_vars("message_num").GetValue() = 9 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_229 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 9 && machine.won_game == 0}", "Glf_229"
Function Glf_230(args)
	On Error Resume Next
	    Glf_230 = glf_machine_vars("message_num").GetValue() = 10 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_230 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 10 && machine.won_game == 0}", "Glf_230"
Function Glf_231(args)
	On Error Resume Next
	    Glf_231 = glf_machine_vars("message_num").GetValue() = 11 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_231 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 11 && machine.won_game == 0}", "Glf_231"
Function Glf_232(args)
	On Error Resume Next
	    Glf_232 = glf_machine_vars("message_num").GetValue() = 12 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_232 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 12 && machine.won_game == 0}", "Glf_232"
Function Glf_233(args)
	On Error Resume Next
	    Glf_233 = glf_machine_vars("message_num").GetValue() = 13 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_233 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 13 && machine.won_game == 0}", "Glf_233"
Function Glf_234(args)
	On Error Resume Next
	    Glf_234 = glf_machine_vars("message_num").GetValue() = 14 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_234 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 14 && machine.won_game == 0}", "Glf_234"
Function Glf_235(args)
	On Error Resume Next
	    Glf_235 = glf_machine_vars("message_num").GetValue() = 15 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_235 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 15 && machine.won_game == 0}", "Glf_235"
Function Glf_236(args)
	On Error Resume Next
	    Glf_236 = glf_machine_vars("message_num").GetValue() = 16 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_236 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 16 && machine.won_game == 0}", "Glf_236"
Function Glf_237(args)
	On Error Resume Next
	    Glf_237 = glf_machine_vars("message_num").GetValue() = 17 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_237 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 17 && machine.won_game == 0}", "Glf_237"
Function Glf_238(args)
	On Error Resume Next
	    Glf_238 = glf_machine_vars("message_num").GetValue() = 18 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_238 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 18 && machine.won_game == 0}", "Glf_238"
Function Glf_239(args)
	On Error Resume Next
	    Glf_239 = glf_machine_vars("message_num").GetValue() = 19 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_239 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 19 && machine.won_game == 0}", "Glf_239"
Function Glf_240(args)
	On Error Resume Next
	    Glf_240 = glf_machine_vars("message_num").GetValue() = 20 And glf_machine_vars("won_game").GetValue() = 0
	If Err Then Glf_240 = False
End Function
glf_funcRefMap.Add "check_loser_message{machine.message_num == 20 && machine.won_game == 0}", "Glf_240"
Function Glf_241(args)
	On Error Resume Next
	    Glf_241 = glf_machine_vars("won_game").GetValue() = 1
	If Err Then Glf_241 = False
End Function
glf_funcRefMap.Add "check_winner_message1{machine.won_game == 1}", "Glf_241"
Function Glf_242(args)
	On Error Resume Next
	    Glf_242 = glf_machine_vars("won_game").GetValue() = 1
	If Err Then Glf_242 = False
End Function
glf_funcRefMap.Add "check_winner_message2{machine.won_game == 1}", "Glf_242"
Function Glf_243(args)
	On Error Resume Next
	    Glf_243 = glf_machine_vars("won_game").GetValue() = 1
	If Err Then Glf_243 = False
End Function
glf_funcRefMap.Add "check_winner_message3{machine.won_game == 1}", "Glf_243"
Function Glf_244(args)
	On Error Resume Next
	    Glf_244 = glf_machine_vars("won_game").GetValue() = 1
	If Err Then Glf_244 = False
End Function
glf_funcRefMap.Add "check_winner_message4{machine.won_game == 1}", "Glf_244"
Function Glf_245(args)
	On Error Resume Next
	    Glf_245 = glf_machine_vars("won_game").GetValue() = 1
	If Err Then Glf_245 = False
End Function
glf_funcRefMap.Add "check_winner_message5{machine.won_game == 1}", "Glf_245"
Function Glf_246(args)
	On Error Resume Next
	    Glf_246 = glf_machine_vars("won_game").GetValue() = 1
	If Err Then Glf_246 = False
End Function
glf_funcRefMap.Add "check_winner_message6{machine.won_game == 1}", "Glf_246"
Function Glf_247(args)
	Glf_247 = 93
End Function
glf_funcRefMap.Add "93", "Glf_247"
Function Glf_248(args)
	Glf_248 = "YOU"
End Function
glf_funcRefMap.Add """YOU""", "Glf_248"
Function Glf_249(args)
	Glf_249 = "FAILED"
End Function
glf_funcRefMap.Add """FAILED""", "Glf_249"
Function Glf_250(args)
	Glf_250 = "WE ALL"
End Function
glf_funcRefMap.Add """WE ALL""", "Glf_250"
Function Glf_251(args)
	Glf_251 = "DIED"
End Function
glf_funcRefMap.Add """DIED""", "Glf_251"
Function Glf_252(args)
	Glf_252 = "PLAY"
End Function
glf_funcRefMap.Add """PLAY""", "Glf_252"
Function Glf_253(args)
	Glf_253 = "BETTER"
End Function
glf_funcRefMap.Add """BETTER""", "Glf_253"
Function Glf_254(args)
	Glf_254 = "NEXT"
End Function
glf_funcRefMap.Add """NEXT""", "Glf_254"
Function Glf_255(args)
	Glf_255 = "TIME"
End Function
glf_funcRefMap.Add """TIME""", "Glf_255"
Function Glf_256(args)
	Glf_256 = "EARTH"
End Function
glf_funcRefMap.Add """EARTH""", "Glf_256"
Function Glf_257(args)
	Glf_257 = "THANKS"
End Function
glf_funcRefMap.Add """THANKS""", "Glf_257"
Function Glf_258(args)
	Glf_258 = "TO YOU"
End Function
glf_funcRefMap.Add """TO YOU""", "Glf_258"
Function Glf_259(args)
	Glf_259 = "COME ON "
End Function
glf_funcRefMap.Add """COME ON """, "Glf_259"
Function Glf_260(args)
	Glf_260 = "HOW HARD"
End Function
glf_funcRefMap.Add """HOW HARD""", "Glf_260"
Function Glf_261(args)
	Glf_261 = "IS IT"
End Function
glf_funcRefMap.Add """IS IT""", "Glf_261"
Function Glf_262(args)
	Glf_262 = "REALLY"
End Function
glf_funcRefMap.Add """REALLY""", "Glf_262"
Function Glf_263(args)
	Glf_263 = "HIT THE"
End Function
glf_funcRefMap.Add """HIT THE""", "Glf_263"
Function Glf_264(args)
	Glf_264 = "METEORS"
End Function
glf_funcRefMap.Add """METEORS""", "Glf_264"
Function Glf_265(args)
	Glf_265 = "NEXTTIME"
End Function
glf_funcRefMap.Add """NEXTTIME""", "Glf_265"
Function Glf_266(args)
	Glf_266 = "PLEASE"
End Function
glf_funcRefMap.Add """PLEASE""", "Glf_266"
Function Glf_267(args)
	Glf_267 = "OH WOW "
End Function
glf_funcRefMap.Add """OH WOW """, "Glf_267"
Function Glf_268(args)
	Glf_268 = "YOU LOST"
End Function
glf_funcRefMap.Add """YOU LOST""", "Glf_268"
Function Glf_269(args)
	Glf_269 = "AGAIN "
End Function
glf_funcRefMap.Add """AGAIN """, "Glf_269"
Function Glf_270(args)
	Glf_270 = "SURPRISE"
End Function
glf_funcRefMap.Add """SURPRISE""", "Glf_270"
Function Glf_271(args)
	Glf_271 = "ITS EASY"
End Function
glf_funcRefMap.Add """ITS EASY""", "Glf_271"
Function Glf_272(args)
	Glf_272 = "YOU JUST"
End Function
glf_funcRefMap.Add """YOU JUST""", "Glf_272"
Function Glf_273(args)
	Glf_273 = "NEED TO "
End Function
glf_funcRefMap.Add """NEED TO """, "Glf_273"
Function Glf_274(args)
	Glf_274 = "NOT SUCK"
End Function
glf_funcRefMap.Add """NOT SUCK""", "Glf_274"
Function Glf_275(args)
	Glf_275 = "PRACTICE"
End Function
glf_funcRefMap.Add """PRACTICE""", "Glf_275"
Function Glf_276(args)
	Glf_276 = "DAMN"
End Function
glf_funcRefMap.Add """DAMN""", "Glf_276"
Function Glf_277(args)
	Glf_277 = "LUCKILY"
End Function
glf_funcRefMap.Add """LUCKILY""", "Glf_277"
Function Glf_278(args)
	Glf_278 = "THIS IS "
End Function
glf_funcRefMap.Add """THIS IS """, "Glf_278"
Function Glf_279(args)
	Glf_279 = "NOT REAL"
End Function
glf_funcRefMap.Add """NOT REAL""", "Glf_279"
Function Glf_280(args)
	Glf_280 = "GAMEOVER"
End Function
glf_funcRefMap.Add """GAMEOVER""", "Glf_280"
Function Glf_281(args)
	Glf_281 = "MAN"
End Function
glf_funcRefMap.Add """MAN""", "Glf_281"
Function Glf_282(args)
	Glf_282 = "WE ALL "
End Function
glf_funcRefMap.Add """WE ALL """, "Glf_282"
Function Glf_283(args)
	Glf_283 = "DEAD NOW"
End Function
glf_funcRefMap.Add """DEAD NOW""", "Glf_283"
Function Glf_284(args)
	Glf_284 = "MORE"
End Function
glf_funcRefMap.Add """MORE""", "Glf_284"
Function Glf_285(args)
	Glf_285 = "BEER"
End Function
glf_funcRefMap.Add """BEER""", "Glf_285"
Function Glf_286(args)
	Glf_286 = "MIGHT"
End Function
glf_funcRefMap.Add """MIGHT""", "Glf_286"
Function Glf_287(args)
	Glf_287 = "HELP"
End Function
glf_funcRefMap.Add """HELP""", "Glf_287"
Function Glf_288(args)
	Glf_288 = "UNLUCKY"
End Function
glf_funcRefMap.Add """UNLUCKY""", "Glf_288"
Function Glf_289(args)
	Glf_289 = "SHOT"
End Function
glf_funcRefMap.Add """SHOT""", "Glf_289"
Function Glf_290(args)
	Glf_290 = "EARTH-"
End Function
glf_funcRefMap.Add """EARTH-""", "Glf_290"
Function Glf_291(args)
	Glf_291 = "LING"
End Function
glf_funcRefMap.Add """LING""", "Glf_291"
Function Glf_292(args)
	Glf_292 = "THE"
End Function
glf_funcRefMap.Add """THE""", "Glf_292"
Function Glf_293(args)
	Glf_293 = "DINOS"
End Function
glf_funcRefMap.Add """DINOS""", "Glf_293"
Function Glf_294(args)
	Glf_294 = "LASTED"
End Function
glf_funcRefMap.Add """LASTED""", "Glf_294"
Function Glf_295(args)
	Glf_295 = "LONGER"
End Function
glf_funcRefMap.Add """LONGER""", "Glf_295"
Function Glf_296(args)
	Glf_296 = "ASTEROID"
End Function
glf_funcRefMap.Add """ASTEROID""", "Glf_296"
Function Glf_297(args)
	Glf_297 = "+ ONE"
End Function
glf_funcRefMap.Add """+ ONE""", "Glf_297"
Function Glf_298(args)
	Glf_298 = "HUMANS"
End Function
glf_funcRefMap.Add """HUMANS""", "Glf_298"
Function Glf_299(args)
	Glf_299 = "ZERO"
End Function
glf_funcRefMap.Add """ZERO""", "Glf_299"
Function Glf_300(args)
	Glf_300 = "THE ODDS"
End Function
glf_funcRefMap.Add """THE ODDS""", "Glf_300"
Function Glf_301(args)
	Glf_301 = "WERE"
End Function
glf_funcRefMap.Add """WERE""", "Glf_301"
Function Glf_302(args)
	Glf_302 = "3720"
End Function
glf_funcRefMap.Add """3720""", "Glf_302"
Function Glf_303(args)
	Glf_303 = "TO ONE"
End Function
glf_funcRefMap.Add """TO ONE""", "Glf_303"
Function Glf_304(args)
	Glf_304 = "ONE"
End Function
glf_funcRefMap.Add """ONE""", "Glf_304"
Function Glf_305(args)
	Glf_305 = "GIANT"
End Function
glf_funcRefMap.Add """GIANT""", "Glf_305"
Function Glf_306(args)
	Glf_306 = "WEEP FOR"
End Function
glf_funcRefMap.Add """WEEP FOR""", "Glf_306"
Function Glf_307(args)
	Glf_307 = "MANKIND"
End Function
glf_funcRefMap.Add """MANKIND""", "Glf_307"
Function Glf_308(args)
	Glf_308 = "THE DARK"
End Function
glf_funcRefMap.Add """THE DARK""", "Glf_308"
Function Glf_309(args)
	Glf_309 = "CHAOS"
End Function
glf_funcRefMap.Add """CHAOS""", "Glf_309"
Function Glf_310(args)
	Glf_310 = "GOD IS"
End Function
glf_funcRefMap.Add """GOD IS""", "Glf_310"
Function Glf_311(args)
	Glf_311 = "HAPPY"
End Function
glf_funcRefMap.Add """HAPPY""", "Glf_311"
Function Glf_312(args)
	Glf_312 = "TRY JUST"
End Function
glf_funcRefMap.Add """TRY JUST""", "Glf_312"
Function Glf_313(args)
	Glf_313 = "YOU ARE"
End Function
glf_funcRefMap.Add """YOU ARE""", "Glf_313"
Function Glf_314(args)
	Glf_314 = "LUCKY"
End Function
glf_funcRefMap.Add """LUCKY""", "Glf_314"
Function Glf_315(args)
	Glf_315 = "ITS ON "
End Function
glf_funcRefMap.Add """ITS ON """, "Glf_315"
Function Glf_316(args)
	Glf_316 = "FREEPLAY"
End Function
glf_funcRefMap.Add """FREEPLAY""", "Glf_316"
Function Glf_317(args)
	Glf_317 = "KEEP"
End Function
glf_funcRefMap.Add """KEEP""", "Glf_317"
Function Glf_318(args)
	Glf_318 = "CALM"
End Function
glf_funcRefMap.Add """CALM""", "Glf_318"
Function Glf_319(args)
	Glf_319 = "PINBALL"
End Function
glf_funcRefMap.Add """PINBALL""", "Glf_319"
Function Glf_320(args)
	Glf_320 = "A VILE"
End Function
glf_funcRefMap.Add """A VILE""", "Glf_320"
Function Glf_321(args)
	Glf_321 = "DARK"
End Function
glf_funcRefMap.Add """DARK""", "Glf_321"
Function Glf_322(args)
	Glf_322 = "LOOMED"
End Function
glf_funcRefMap.Add """LOOMED""", "Glf_322"
Function Glf_323(args)
	Glf_323 = "COSMIC"
End Function
glf_funcRefMap.Add """COSMIC""", "Glf_323"
Function Glf_324(args)
	Glf_324 = "IMPACTS"
End Function
glf_funcRefMap.Add """IMPACTS""", "Glf_324"
Function Glf_325(args)
	Glf_325 = "TORE AND"
End Function
glf_funcRefMap.Add """TORE AND""", "Glf_325"
Function Glf_326(args)
	Glf_326 = "BOOMED"
End Function
glf_funcRefMap.Add """BOOMED""", "Glf_326"
Function Glf_327(args)
	Glf_327 = "TURMOIL "
End Function
glf_funcRefMap.Add """TURMOIL """, "Glf_327"
Function Glf_328(args)
	Glf_328 = "AND FEAR"
End Function
glf_funcRefMap.Add """AND FEAR""", "Glf_328"
Function Glf_329(args)
	Glf_329 = "HUMANITY"
End Function
glf_funcRefMap.Add """HUMANITY""", "Glf_329"
Function Glf_330(args)
	Glf_330 = "DOOMED"
End Function
glf_funcRefMap.Add """DOOMED""", "Glf_330"
Function Glf_331(args)
	Glf_331 = "A HERO "
End Function
glf_funcRefMap.Add """A HERO """, "Glf_331"
Function Glf_332(args)
	Glf_332 = "ASCENDED"
End Function
glf_funcRefMap.Add """ASCENDED""", "Glf_332"
Function Glf_333(args)
	Glf_333 = "INTO THE"
End Function
glf_funcRefMap.Add """INTO THE""", "Glf_333"
Function Glf_334(args)
	Glf_334 = "NIGHT"
End Function
glf_funcRefMap.Add """NIGHT""", "Glf_334"
Function Glf_335(args)
	Glf_335 = "A FIERY"
End Function
glf_funcRefMap.Add """A FIERY""", "Glf_335"
Function Glf_336(args)
	Glf_336 = "BATTLE"
End Function
glf_funcRefMap.Add """BATTLE""", "Glf_336"
Function Glf_337(args)
	Glf_337 = "WON THE"
End Function
glf_funcRefMap.Add """WON THE""", "Glf_337"
Function Glf_338(args)
	Glf_338 = "FIGHT"
End Function
glf_funcRefMap.Add """FIGHT""", "Glf_338"
Function Glf_339(args)
	Glf_339 = "SPARKS"
End Function
glf_funcRefMap.Add """SPARKS""", "Glf_339"
Function Glf_340(args)
	Glf_340 = "OF HOPE"
End Function
glf_funcRefMap.Add """OF HOPE""", "Glf_340"
Function Glf_341(args)
	Glf_341 = "FLICKER "
End Function
glf_funcRefMap.Add """FLICKER """, "Glf_341"
Function Glf_342(args)
	Glf_342 = "OF LIGHT"
End Function
glf_funcRefMap.Add """OF LIGHT""", "Glf_342"
Function Glf_343(args)
	Glf_343 = 2
End Function
glf_funcRefMap.Add "2", "Glf_343"
Function Glf_344(args)
	Glf_344 = 5
End Function
glf_funcRefMap.Add "5", "Glf_344"
Function Glf_345(args)
	Glf_345 = 6
End Function
glf_funcRefMap.Add "6", "Glf_345"
Function Glf_346(args)
	Glf_346 = 7
End Function
glf_funcRefMap.Add "7", "Glf_346"
Function Glf_347(args)
	Glf_347 = 8
End Function
glf_funcRefMap.Add "8", "Glf_347"
Function Glf_348(args)
	Glf_348 = 9
End Function
glf_funcRefMap.Add "9", "Glf_348"
Function Glf_349(args)
	Glf_349 = 10
End Function
glf_funcRefMap.Add "10", "Glf_349"
Function Glf_350(args)
	Glf_350 = 11
End Function
glf_funcRefMap.Add "11", "Glf_350"
Function Glf_351(args)
	Glf_351 = 12
End Function
glf_funcRefMap.Add "12", "Glf_351"
Function Glf_352(args)
	Glf_352 = 13
End Function
glf_funcRefMap.Add "13", "Glf_352"
Function Glf_353(args)
	Glf_353 = 14
End Function
glf_funcRefMap.Add "14", "Glf_353"
Function Glf_354(args)
	Glf_354 = 15
End Function
glf_funcRefMap.Add "15", "Glf_354"
Function Glf_355(args)
	Glf_355 = 17
End Function
glf_funcRefMap.Add "17", "Glf_355"
Function Glf_356(args)
	Glf_356 = 18
End Function
glf_funcRefMap.Add "18", "Glf_356"
Function Glf_357(args)
	Glf_357 = 19
End Function
glf_funcRefMap.Add "19", "Glf_357"
Function Glf_358(args)
	Glf_358 = 20
End Function
glf_funcRefMap.Add "20", "Glf_358"
Function Glf_359(args)
	On Error Resume Next
	    Glf_359 = GetPlayerState("score") > -1000000
	If Err Then Glf_359 = False
End Function
glf_funcRefMap.Add "score_m100000{current_player.score > -1000000}", "Glf_359"
Function Glf_360(args)
	On Error Resume Next
	    Glf_360 = GetPlayerState("score") < -1000000
	If Err Then Glf_360 = False
End Function
glf_funcRefMap.Add "apply_score_m100000.1{current_player.score < -1000000}", "Glf_360"
Function Glf_361(args)
	Glf_361 = -1000000
End Function
glf_funcRefMap.Add "-1000000", "Glf_361"
Function Glf_362(args)
	Glf_362 = 930 * GetPlayerState("scoring_multiplier") * GetPlayerState("spin_multiplier")
End Function
glf_funcRefMap.Add "930 * current_player.scoring_multiplier * current_player.spin_multiplier", "Glf_362"
Function Glf_363(args)
	Glf_363 = 1000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1000 * current_player.scoring_multiplier", "Glf_363"
Function Glf_364(args)
	Glf_364 = 1000 * GetPlayerState("scoring_multiplier") * GetPlayerState("pop_multiplier")
End Function
glf_funcRefMap.Add "1000 * current_player.scoring_multiplier * current_player.pop_multiplier", "Glf_364"
Function Glf_365(args)
	Glf_365 = 2000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "2000 * current_player.scoring_multiplier", "Glf_365"
Function Glf_366(args)
	Glf_366 = 3000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "3000 * current_player.scoring_multiplier", "Glf_366"
Function Glf_367(args)
	Glf_367 = 4000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "4000 * current_player.scoring_multiplier", "Glf_367"
Function Glf_368(args)
	Glf_368 = 5000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "5000 * current_player.scoring_multiplier", "Glf_368"
Function Glf_369(args)
	Glf_369 = 8000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "8000 * current_player.scoring_multiplier", "Glf_369"
Function Glf_370(args)
	Glf_370 = 9000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "9000 * current_player.scoring_multiplier", "Glf_370"
Function Glf_371(args)
	Glf_371 = 10000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "10000 * current_player.scoring_multiplier", "Glf_371"
Function Glf_372(args)
	Glf_372 = 15000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "15000 * current_player.scoring_multiplier", "Glf_372"
Function Glf_373(args)
	Glf_373 = 20000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "20000 * current_player.scoring_multiplier", "Glf_373"
Function Glf_374(args)
	Glf_374 = 25000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "25000 * current_player.scoring_multiplier", "Glf_374"
Function Glf_375(args)
	Glf_375 = 30000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "30000 * current_player.scoring_multiplier", "Glf_375"
Function Glf_376(args)
	Glf_376 = 40000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "40000 * current_player.scoring_multiplier", "Glf_376"
Function Glf_377(args)
	Glf_377 = 50000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "50000 * current_player.scoring_multiplier", "Glf_377"
Function Glf_378(args)
	Glf_378 = 60000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "60000 * current_player.scoring_multiplier", "Glf_378"
Function Glf_379(args)
	Glf_379 = 70000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "70000 * current_player.scoring_multiplier", "Glf_379"
Function Glf_380(args)
	Glf_380 = 80000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "80000 * current_player.scoring_multiplier", "Glf_380"
Function Glf_381(args)
	Glf_381 = 90000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "90000 * current_player.scoring_multiplier", "Glf_381"
Function Glf_382(args)
	Glf_382 = 100000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "100000 * current_player.scoring_multiplier", "Glf_382"
Function Glf_383(args)
	Glf_383 = -100000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "-100000 * current_player.scoring_multiplier", "Glf_383"
Function Glf_384(args)
	Glf_384 = 150000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "150000 * current_player.scoring_multiplier", "Glf_384"
Function Glf_385(args)
	Glf_385 = 200000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "200000 * current_player.scoring_multiplier", "Glf_385"
Function Glf_386(args)
	Glf_386 = 250000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "250000 * current_player.scoring_multiplier", "Glf_386"
Function Glf_387(args)
	Glf_387 = 300000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "300000 * current_player.scoring_multiplier", "Glf_387"
Function Glf_388(args)
	Glf_388 = 400000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "400000 * current_player.scoring_multiplier", "Glf_388"
Function Glf_389(args)
	Glf_389 = 500000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "500000 * current_player.scoring_multiplier", "Glf_389"
Function Glf_390(args)
	Glf_390 = 600000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "600000 * current_player.scoring_multiplier", "Glf_390"
Function Glf_391(args)
	Glf_391 = 700000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "700000 * current_player.scoring_multiplier", "Glf_391"
Function Glf_392(args)
	Glf_392 = 750000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "750000 * current_player.scoring_multiplier", "Glf_392"
Function Glf_393(args)
	Glf_393 = 800000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "800000 * current_player.scoring_multiplier", "Glf_393"
Function Glf_394(args)
	Glf_394 = 900000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "900000 * current_player.scoring_multiplier", "Glf_394"
Function Glf_395(args)
	Glf_395 = 1000000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1000000 * current_player.scoring_multiplier", "Glf_395"
Function Glf_396(args)
	Glf_396 = 1100000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1100000 * current_player.scoring_multiplier", "Glf_396"
Function Glf_397(args)
	Glf_397 = 1200000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1200000 * current_player.scoring_multiplier", "Glf_397"
Function Glf_398(args)
	Glf_398 = 1300000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1300000 * current_player.scoring_multiplier", "Glf_398"
Function Glf_399(args)
	Glf_399 = 1400000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1400000 * current_player.scoring_multiplier", "Glf_399"
Function Glf_400(args)
	Glf_400 = 1500000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1500000 * current_player.scoring_multiplier", "Glf_400"
Function Glf_401(args)
	Glf_401 = 1600000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1600000 * current_player.scoring_multiplier", "Glf_401"
Function Glf_402(args)
	Glf_402 = 1700000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1700000 * current_player.scoring_multiplier", "Glf_402"
Function Glf_403(args)
	Glf_403 = 1800000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1800000 * current_player.scoring_multiplier", "Glf_403"
Function Glf_404(args)
	Glf_404 = 1900000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1900000 * current_player.scoring_multiplier", "Glf_404"
Function Glf_405(args)
	Glf_405 = 2000000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "2000000 * current_player.scoring_multiplier", "Glf_405"
Function Glf_406(args)
	Glf_406 = 3000000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "3000000 * current_player.scoring_multiplier", "Glf_406"
Function Glf_407(args)
	On Error Resume Next
	    Glf_407 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_407 = False
End Function
glf_funcRefMap.Add "s_right_magna_key_active{current_player.hs_input_ready == 1}", "Glf_407"
Function Glf_408(args)
	On Error Resume Next
	    Glf_408 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_408 = False
End Function
glf_funcRefMap.Add "s_plunger_key_active{current_player.hs_input_ready == 1}", "Glf_408"
Function Glf_409(args)
	On Error Resume Next
	    Glf_409 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_409 = False
End Function
glf_funcRefMap.Add "s_lockbar_key_active{current_player.hs_input_ready == 1}", "Glf_409"
Function Glf_410(args)
	On Error Resume Next
	    Glf_410 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_410 = False
End Function
glf_funcRefMap.Add "s_start_active{current_player.hs_input_ready == 1}", "Glf_410"
Function Glf_411(args)
	On Error Resume Next
	    Glf_411 = glf_machine_vars("high_score_initials_chars").GetValue() = 3
	If Err Then Glf_411 = False
End Function
glf_funcRefMap.Add "text_inputted.1{machine.high_score_initials_chars == 3}", "Glf_411"
Function Glf_414(args)
	On Error Resume Next
	    Glf_414 = glf_machine_vars("high_score_initials_chars").GetValue() < 3
	If Err Then Glf_414 = False
End Function
glf_funcRefMap.Add "text_inputted{machine.high_score_initials_chars < 3}", "Glf_414"
Function Glf_415(args)
	On Error Resume Next
	    Glf_415 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_415 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.2{current_player.hs_input_ready == 1}", "Glf_415"
Function Glf_416(args)
	On Error Resume Next
	    Glf_416 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_416 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.2{current_player.hs_input_ready == 1}", "Glf_416"
Function Glf_417(args)
	On Error Resume Next
	    Glf_417 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 0
	If Err Then Glf_417 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 0}", "Glf_417"
Function Glf_418(args)
	Glf_418 = glf_machine_vars("high_score_initials").GetValue() & "A"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""A""", "Glf_418"
Function Glf_419(args)
	On Error Resume Next
	    Glf_419 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 1
	If Err Then Glf_419 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 1}", "Glf_419"
Function Glf_420(args)
	Glf_420 = glf_machine_vars("high_score_initials").GetValue() & "B"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""B""", "Glf_420"
Function Glf_421(args)
	On Error Resume Next
	    Glf_421 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 2
	If Err Then Glf_421 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 2}", "Glf_421"
Function Glf_422(args)
	Glf_422 = glf_machine_vars("high_score_initials").GetValue() & "C"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""C""", "Glf_422"
Function Glf_423(args)
	On Error Resume Next
	    Glf_423 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 3
	If Err Then Glf_423 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 3}", "Glf_423"
Function Glf_424(args)
	Glf_424 = glf_machine_vars("high_score_initials").GetValue() & "D"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""D""", "Glf_424"
Function Glf_425(args)
	On Error Resume Next
	    Glf_425 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 4
	If Err Then Glf_425 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 4}", "Glf_425"
Function Glf_426(args)
	Glf_426 = glf_machine_vars("high_score_initials").GetValue() & "E"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""E""", "Glf_426"
Function Glf_427(args)
	On Error Resume Next
	    Glf_427 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 5
	If Err Then Glf_427 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 5}", "Glf_427"
Function Glf_428(args)
	Glf_428 = glf_machine_vars("high_score_initials").GetValue() & "F"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""F""", "Glf_428"
Function Glf_429(args)
	On Error Resume Next
	    Glf_429 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 6
	If Err Then Glf_429 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 6}", "Glf_429"
Function Glf_430(args)
	Glf_430 = glf_machine_vars("high_score_initials").GetValue() & "G"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""G""", "Glf_430"
Function Glf_431(args)
	On Error Resume Next
	    Glf_431 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 7
	If Err Then Glf_431 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 7}", "Glf_431"
Function Glf_432(args)
	Glf_432 = glf_machine_vars("high_score_initials").GetValue() & "H"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""H""", "Glf_432"
Function Glf_433(args)
	On Error Resume Next
	    Glf_433 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 8
	If Err Then Glf_433 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 8}", "Glf_433"
Function Glf_434(args)
	Glf_434 = glf_machine_vars("high_score_initials").GetValue() & "I"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""I""", "Glf_434"
Function Glf_435(args)
	On Error Resume Next
	    Glf_435 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 9
	If Err Then Glf_435 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 9}", "Glf_435"
Function Glf_436(args)
	Glf_436 = glf_machine_vars("high_score_initials").GetValue() & "J"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""J""", "Glf_436"
Function Glf_437(args)
	On Error Resume Next
	    Glf_437 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 10
	If Err Then Glf_437 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 10}", "Glf_437"
Function Glf_438(args)
	Glf_438 = glf_machine_vars("high_score_initials").GetValue() & "K"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""K""", "Glf_438"
Function Glf_439(args)
	On Error Resume Next
	    Glf_439 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 11
	If Err Then Glf_439 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 11}", "Glf_439"
Function Glf_440(args)
	Glf_440 = glf_machine_vars("high_score_initials").GetValue() & "L"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""L""", "Glf_440"
Function Glf_441(args)
	On Error Resume Next
	    Glf_441 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 12
	If Err Then Glf_441 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 12}", "Glf_441"
Function Glf_442(args)
	Glf_442 = glf_machine_vars("high_score_initials").GetValue() & "M"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""M""", "Glf_442"
Function Glf_443(args)
	On Error Resume Next
	    Glf_443 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 13
	If Err Then Glf_443 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 13}", "Glf_443"
Function Glf_444(args)
	Glf_444 = glf_machine_vars("high_score_initials").GetValue() & "N"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""N""", "Glf_444"
Function Glf_445(args)
	On Error Resume Next
	    Glf_445 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 14
	If Err Then Glf_445 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 14}", "Glf_445"
Function Glf_446(args)
	Glf_446 = glf_machine_vars("high_score_initials").GetValue() & "O"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""O""", "Glf_446"
Function Glf_447(args)
	On Error Resume Next
	    Glf_447 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 15
	If Err Then Glf_447 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 15}", "Glf_447"
Function Glf_448(args)
	Glf_448 = glf_machine_vars("high_score_initials").GetValue() & "P"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""P""", "Glf_448"
Function Glf_449(args)
	On Error Resume Next
	    Glf_449 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 16
	If Err Then Glf_449 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 16}", "Glf_449"
Function Glf_450(args)
	Glf_450 = glf_machine_vars("high_score_initials").GetValue() & "Q"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""Q""", "Glf_450"
Function Glf_451(args)
	On Error Resume Next
	    Glf_451 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 17
	If Err Then Glf_451 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 17}", "Glf_451"
Function Glf_452(args)
	Glf_452 = glf_machine_vars("high_score_initials").GetValue() & "R"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""R""", "Glf_452"
Function Glf_453(args)
	On Error Resume Next
	    Glf_453 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 18
	If Err Then Glf_453 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 18}", "Glf_453"
Function Glf_454(args)
	Glf_454 = glf_machine_vars("high_score_initials").GetValue() & "S"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""S""", "Glf_454"
Function Glf_455(args)
	On Error Resume Next
	    Glf_455 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 19
	If Err Then Glf_455 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 19}", "Glf_455"
Function Glf_456(args)
	Glf_456 = glf_machine_vars("high_score_initials").GetValue() & "T"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""T""", "Glf_456"
Function Glf_457(args)
	On Error Resume Next
	    Glf_457 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 20
	If Err Then Glf_457 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 20}", "Glf_457"
Function Glf_458(args)
	Glf_458 = glf_machine_vars("high_score_initials").GetValue() & "U"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""U""", "Glf_458"
Function Glf_459(args)
	On Error Resume Next
	    Glf_459 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 21
	If Err Then Glf_459 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 21}", "Glf_459"
Function Glf_460(args)
	Glf_460 = glf_machine_vars("high_score_initials").GetValue() & "V"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""V""", "Glf_460"
Function Glf_461(args)
	On Error Resume Next
	    Glf_461 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 22
	If Err Then Glf_461 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 22}", "Glf_461"
Function Glf_462(args)
	Glf_462 = glf_machine_vars("high_score_initials").GetValue() & "W"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""W""", "Glf_462"
Function Glf_463(args)
	On Error Resume Next
	    Glf_463 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 23
	If Err Then Glf_463 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 23}", "Glf_463"
Function Glf_464(args)
	Glf_464 = glf_machine_vars("high_score_initials").GetValue() & "X"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""X""", "Glf_464"
Function Glf_465(args)
	On Error Resume Next
	    Glf_465 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 24
	If Err Then Glf_465 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 24}", "Glf_465"
Function Glf_466(args)
	Glf_466 = glf_machine_vars("high_score_initials").GetValue() & "Y"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""Y""", "Glf_466"
Function Glf_467(args)
	On Error Resume Next
	    Glf_467 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 25
	If Err Then Glf_467 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 25}", "Glf_467"
Function Glf_468(args)
	Glf_468 = glf_machine_vars("high_score_initials").GetValue() & "Z"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""Z""", "Glf_468"
Function Glf_469(args)
	On Error Resume Next
	    Glf_469 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 26
	If Err Then Glf_469 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 26}", "Glf_469"
Function Glf_470(args)
	Glf_470 = glf_machine_vars("high_score_initials").GetValue() & "0"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""0""", "Glf_470"
Function Glf_471(args)
	On Error Resume Next
	    Glf_471 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 27
	If Err Then Glf_471 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 27}", "Glf_471"
Function Glf_472(args)
	Glf_472 = glf_machine_vars("high_score_initials").GetValue() & "1"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""1""", "Glf_472"
Function Glf_473(args)
	On Error Resume Next
	    Glf_473 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 28
	If Err Then Glf_473 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 28}", "Glf_473"
Function Glf_474(args)
	Glf_474 = glf_machine_vars("high_score_initials").GetValue() & "2"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""2""", "Glf_474"
Function Glf_475(args)
	On Error Resume Next
	    Glf_475 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 29
	If Err Then Glf_475 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 29}", "Glf_475"
Function Glf_476(args)
	Glf_476 = glf_machine_vars("high_score_initials").GetValue() & "3"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""3""", "Glf_476"
Function Glf_477(args)
	On Error Resume Next
	    Glf_477 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 30
	If Err Then Glf_477 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 30}", "Glf_477"
Function Glf_478(args)
	Glf_478 = glf_machine_vars("high_score_initials").GetValue() & "4"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""4""", "Glf_478"
Function Glf_479(args)
	On Error Resume Next
	    Glf_479 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 31
	If Err Then Glf_479 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 31}", "Glf_479"
Function Glf_480(args)
	Glf_480 = glf_machine_vars("high_score_initials").GetValue() & "5"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""5""", "Glf_480"
Function Glf_481(args)
	On Error Resume Next
	    Glf_481 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 32
	If Err Then Glf_481 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 32}", "Glf_481"
Function Glf_482(args)
	Glf_482 = glf_machine_vars("high_score_initials").GetValue() & "6"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""6""", "Glf_482"
Function Glf_483(args)
	On Error Resume Next
	    Glf_483 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 33
	If Err Then Glf_483 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 33}", "Glf_483"
Function Glf_484(args)
	Glf_484 = glf_machine_vars("high_score_initials").GetValue() & "7"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""7""", "Glf_484"
Function Glf_485(args)
	On Error Resume Next
	    Glf_485 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 34
	If Err Then Glf_485 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 34}", "Glf_485"
Function Glf_486(args)
	Glf_486 = glf_machine_vars("high_score_initials").GetValue() & "8"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""8""", "Glf_486"
Function Glf_487(args)
	On Error Resume Next
	    Glf_487 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 35
	If Err Then Glf_487 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 35}", "Glf_487"
Function Glf_488(args)
	Glf_488 = glf_machine_vars("high_score_initials").GetValue() & "9"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""9""", "Glf_488"
Function Glf_489(args)
	On Error Resume Next
	    Glf_489 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 36
	If Err Then Glf_489 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 36}", "Glf_489"
Function Glf_490(args)
	Glf_490 = glf_machine_vars("high_score_initials").GetValue() & "_"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""_""", "Glf_490"
Function Glf_491(args)
	Glf_491 = 60
End Function
glf_funcRefMap.Add "60", "Glf_491"
Function Glf_492(args)
	Glf_492 = Glf_FormatValue(glf_timers("high_score_timeout").GetValue("ticks"), "0>2")
End Function
glf_funcRefMap.Add "{devices.timers.high_score_timeout.ticks:0>2}", "Glf_492"
Function Glf_493(args)
	On Error Resume Next
	    Glf_493 = glf_dispatch_current_kwargs("player_num")=1
	If Err Then Glf_493 = False
End Function
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==1}", "Glf_493"
Function Glf_494(args)
	Glf_494 = "P1 "
End Function
glf_funcRefMap.Add """P1 """, "Glf_494"
Function Glf_495(args)
	On Error Resume Next
	    Glf_495 = glf_dispatch_current_kwargs("player_num")=2
	If Err Then Glf_495 = False
End Function
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==2}", "Glf_495"
Function Glf_496(args)
	Glf_496 = "P2 "
End Function
glf_funcRefMap.Add """P2 """, "Glf_496"
Function Glf_497(args)
	On Error Resume Next
	    Glf_497 = glf_dispatch_current_kwargs("player_num")=3
	If Err Then Glf_497 = False
End Function
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==3}", "Glf_497"
Function Glf_498(args)
	Glf_498 = "P3 "
End Function
glf_funcRefMap.Add """P3 """, "Glf_498"
Function Glf_499(args)
	On Error Resume Next
	    Glf_499 = glf_dispatch_current_kwargs("player_num")=4
	If Err Then Glf_499 = False
End Function
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==4}", "Glf_499"
Function Glf_500(args)
	Glf_500 = "P4 "
End Function
glf_funcRefMap.Add """P4 """, "Glf_500"
Function Glf_501(args)
	Glf_501 = "INITIALS"
End Function
glf_funcRefMap.Add """INITIALS""", "Glf_501"
Function Glf_502(args)
	Glf_502 = "A"
End Function
glf_funcRefMap.Add """A""", "Glf_502"
Function Glf_503(args)
	On Error Resume Next
	    Glf_503 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 0 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_503 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 0 && current_player.hs_input_ready == 1}", "Glf_503"
Function Glf_504(args)
	On Error Resume Next
	    Glf_504 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 0 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_504 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 0 && current_player.hs_input_ready == 1}", "Glf_504"
Function Glf_505(args)
	On Error Resume Next
	    Glf_505 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 1 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_505 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 1 && current_player.hs_input_ready == 1}", "Glf_505"
Function Glf_506(args)
	On Error Resume Next
	    Glf_506 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 1 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_506 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 1 && current_player.hs_input_ready == 1}", "Glf_506"
Function Glf_507(args)
	On Error Resume Next
	    Glf_507 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 2 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_507 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 2 && current_player.hs_input_ready == 1}", "Glf_507"
Function Glf_508(args)
	On Error Resume Next
	    Glf_508 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 2 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_508 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 2 && current_player.hs_input_ready == 1}", "Glf_508"
Function Glf_509(args)
	On Error Resume Next
	    Glf_509 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 3 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_509 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 3 && current_player.hs_input_ready == 1}", "Glf_509"
Function Glf_510(args)
	On Error Resume Next
	    Glf_510 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 3 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_510 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 3 && current_player.hs_input_ready == 1}", "Glf_510"
Function Glf_511(args)
	On Error Resume Next
	    Glf_511 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 4 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_511 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 4 && current_player.hs_input_ready == 1}", "Glf_511"
Function Glf_512(args)
	On Error Resume Next
	    Glf_512 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 4 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_512 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 4 && current_player.hs_input_ready == 1}", "Glf_512"
Function Glf_513(args)
	On Error Resume Next
	    Glf_513 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 5 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_513 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 5 && current_player.hs_input_ready == 1}", "Glf_513"
Function Glf_514(args)
	On Error Resume Next
	    Glf_514 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 5 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_514 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 5 && current_player.hs_input_ready == 1}", "Glf_514"
Function Glf_515(args)
	On Error Resume Next
	    Glf_515 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 6 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_515 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 6 && current_player.hs_input_ready == 1}", "Glf_515"
Function Glf_516(args)
	On Error Resume Next
	    Glf_516 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 6 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_516 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 6 && current_player.hs_input_ready == 1}", "Glf_516"
Function Glf_517(args)
	On Error Resume Next
	    Glf_517 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 7 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_517 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 7 && current_player.hs_input_ready == 1}", "Glf_517"
Function Glf_518(args)
	On Error Resume Next
	    Glf_518 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 7 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_518 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 7 && current_player.hs_input_ready == 1}", "Glf_518"
Function Glf_519(args)
	On Error Resume Next
	    Glf_519 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 8 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_519 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 8 && current_player.hs_input_ready == 1}", "Glf_519"
Function Glf_520(args)
	On Error Resume Next
	    Glf_520 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 8 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_520 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 8 && current_player.hs_input_ready == 1}", "Glf_520"
Function Glf_521(args)
	On Error Resume Next
	    Glf_521 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 9 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_521 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 9 && current_player.hs_input_ready == 1}", "Glf_521"
Function Glf_522(args)
	On Error Resume Next
	    Glf_522 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 9 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_522 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 9 && current_player.hs_input_ready == 1}", "Glf_522"
Function Glf_523(args)
	On Error Resume Next
	    Glf_523 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 10 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_523 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 10 && current_player.hs_input_ready == 1}", "Glf_523"
Function Glf_524(args)
	On Error Resume Next
	    Glf_524 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 10 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_524 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 10 && current_player.hs_input_ready == 1}", "Glf_524"
Function Glf_525(args)
	On Error Resume Next
	    Glf_525 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 11 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_525 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 11 && current_player.hs_input_ready == 1}", "Glf_525"
Function Glf_526(args)
	On Error Resume Next
	    Glf_526 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 11 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_526 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 11 && current_player.hs_input_ready == 1}", "Glf_526"
Function Glf_527(args)
	On Error Resume Next
	    Glf_527 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 12 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_527 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 12 && current_player.hs_input_ready == 1}", "Glf_527"
Function Glf_528(args)
	On Error Resume Next
	    Glf_528 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 12 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_528 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 12 && current_player.hs_input_ready == 1}", "Glf_528"
Function Glf_529(args)
	On Error Resume Next
	    Glf_529 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 13 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_529 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 13 && current_player.hs_input_ready == 1}", "Glf_529"
Function Glf_530(args)
	On Error Resume Next
	    Glf_530 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 13 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_530 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 13 && current_player.hs_input_ready == 1}", "Glf_530"
Function Glf_531(args)
	On Error Resume Next
	    Glf_531 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 14 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_531 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 14 && current_player.hs_input_ready == 1}", "Glf_531"
Function Glf_532(args)
	On Error Resume Next
	    Glf_532 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 14 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_532 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 14 && current_player.hs_input_ready == 1}", "Glf_532"
Function Glf_533(args)
	On Error Resume Next
	    Glf_533 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 15 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_533 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 15 && current_player.hs_input_ready == 1}", "Glf_533"
Function Glf_534(args)
	On Error Resume Next
	    Glf_534 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 15 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_534 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 15 && current_player.hs_input_ready == 1}", "Glf_534"
Function Glf_535(args)
	On Error Resume Next
	    Glf_535 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 16 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_535 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 16 && current_player.hs_input_ready == 1}", "Glf_535"
Function Glf_536(args)
	On Error Resume Next
	    Glf_536 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 16 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_536 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 16 && current_player.hs_input_ready == 1}", "Glf_536"
Function Glf_537(args)
	On Error Resume Next
	    Glf_537 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 17 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_537 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 17 && current_player.hs_input_ready == 1}", "Glf_537"
Function Glf_538(args)
	On Error Resume Next
	    Glf_538 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 17 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_538 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 17 && current_player.hs_input_ready == 1}", "Glf_538"
Function Glf_539(args)
	On Error Resume Next
	    Glf_539 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 18 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_539 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 18 && current_player.hs_input_ready == 1}", "Glf_539"
Function Glf_540(args)
	On Error Resume Next
	    Glf_540 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 18 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_540 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 18 && current_player.hs_input_ready == 1}", "Glf_540"
Function Glf_541(args)
	On Error Resume Next
	    Glf_541 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 19 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_541 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 19 && current_player.hs_input_ready == 1}", "Glf_541"
Function Glf_542(args)
	On Error Resume Next
	    Glf_542 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 19 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_542 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 19 && current_player.hs_input_ready == 1}", "Glf_542"
Function Glf_543(args)
	On Error Resume Next
	    Glf_543 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 20 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_543 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 20 && current_player.hs_input_ready == 1}", "Glf_543"
Function Glf_544(args)
	On Error Resume Next
	    Glf_544 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 20 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_544 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 20 && current_player.hs_input_ready == 1}", "Glf_544"
Function Glf_545(args)
	On Error Resume Next
	    Glf_545 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 21 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_545 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 21 && current_player.hs_input_ready == 1}", "Glf_545"
Function Glf_546(args)
	On Error Resume Next
	    Glf_546 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 21 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_546 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 21 && current_player.hs_input_ready == 1}", "Glf_546"
Function Glf_547(args)
	On Error Resume Next
	    Glf_547 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 22 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_547 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 22 && current_player.hs_input_ready == 1}", "Glf_547"
Function Glf_548(args)
	On Error Resume Next
	    Glf_548 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 22 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_548 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 22 && current_player.hs_input_ready == 1}", "Glf_548"
Function Glf_549(args)
	On Error Resume Next
	    Glf_549 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 23 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_549 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 23 && current_player.hs_input_ready == 1}", "Glf_549"
Function Glf_550(args)
	On Error Resume Next
	    Glf_550 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 23 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_550 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 23 && current_player.hs_input_ready == 1}", "Glf_550"
Function Glf_551(args)
	On Error Resume Next
	    Glf_551 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 24 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_551 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 24 && current_player.hs_input_ready == 1}", "Glf_551"
Function Glf_552(args)
	On Error Resume Next
	    Glf_552 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 24 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_552 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 24 && current_player.hs_input_ready == 1}", "Glf_552"
Function Glf_553(args)
	On Error Resume Next
	    Glf_553 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 25 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_553 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 25 && current_player.hs_input_ready == 1}", "Glf_553"
Function Glf_554(args)
	On Error Resume Next
	    Glf_554 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 25 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_554 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 25 && current_player.hs_input_ready == 1}", "Glf_554"
Function Glf_555(args)
	On Error Resume Next
	    Glf_555 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 26 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_555 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 26 && current_player.hs_input_ready == 1}", "Glf_555"
Function Glf_556(args)
	On Error Resume Next
	    Glf_556 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 26 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_556 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 26 && current_player.hs_input_ready == 1}", "Glf_556"
Function Glf_557(args)
	On Error Resume Next
	    Glf_557 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 27 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_557 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 27 && current_player.hs_input_ready == 1}", "Glf_557"
Function Glf_558(args)
	On Error Resume Next
	    Glf_558 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 27 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_558 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 27 && current_player.hs_input_ready == 1}", "Glf_558"
Function Glf_559(args)
	On Error Resume Next
	    Glf_559 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 28 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_559 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 28 && current_player.hs_input_ready == 1}", "Glf_559"
Function Glf_560(args)
	On Error Resume Next
	    Glf_560 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 28 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_560 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 28 && current_player.hs_input_ready == 1}", "Glf_560"
Function Glf_561(args)
	On Error Resume Next
	    Glf_561 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 29 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_561 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 29 && current_player.hs_input_ready == 1}", "Glf_561"
Function Glf_562(args)
	On Error Resume Next
	    Glf_562 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 29 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_562 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 29 && current_player.hs_input_ready == 1}", "Glf_562"
Function Glf_563(args)
	On Error Resume Next
	    Glf_563 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 30 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_563 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 30 && current_player.hs_input_ready == 1}", "Glf_563"
Function Glf_564(args)
	On Error Resume Next
	    Glf_564 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 30 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_564 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 30 && current_player.hs_input_ready == 1}", "Glf_564"
Function Glf_565(args)
	On Error Resume Next
	    Glf_565 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 31 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_565 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 31 && current_player.hs_input_ready == 1}", "Glf_565"
Function Glf_566(args)
	On Error Resume Next
	    Glf_566 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 31 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_566 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 31 && current_player.hs_input_ready == 1}", "Glf_566"
Function Glf_567(args)
	On Error Resume Next
	    Glf_567 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 32 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_567 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 32 && current_player.hs_input_ready == 1}", "Glf_567"
Function Glf_568(args)
	On Error Resume Next
	    Glf_568 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 32 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_568 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 32 && current_player.hs_input_ready == 1}", "Glf_568"
Function Glf_569(args)
	On Error Resume Next
	    Glf_569 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 33 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_569 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 33 && current_player.hs_input_ready == 1}", "Glf_569"
Function Glf_570(args)
	On Error Resume Next
	    Glf_570 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 33 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_570 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 33 && current_player.hs_input_ready == 1}", "Glf_570"
Function Glf_571(args)
	On Error Resume Next
	    Glf_571 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 34 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_571 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 34 && current_player.hs_input_ready == 1}", "Glf_571"
Function Glf_572(args)
	On Error Resume Next
	    Glf_572 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 34 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_572 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 34 && current_player.hs_input_ready == 1}", "Glf_572"
Function Glf_573(args)
	On Error Resume Next
	    Glf_573 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 35 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_573 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 35 && current_player.hs_input_ready == 1}", "Glf_573"
Function Glf_574(args)
	On Error Resume Next
	    Glf_574 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 35 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_574 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 35 && current_player.hs_input_ready == 1}", "Glf_574"
Function Glf_575(args)
	On Error Resume Next
	    Glf_575 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 36 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_575 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 36 && current_player.hs_input_ready == 1}", "Glf_575"
Function Glf_576(args)
	On Error Resume Next
	    Glf_576 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 36 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_576 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 36 && current_player.hs_input_ready == 1}", "Glf_576"
Function Glf_577(args)
	On Error Resume Next
	    Glf_577 = glf_machine_vars("high_score_initials_chars").GetValue()<3
	If Err Then Glf_577 = False
End Function
glf_funcRefMap.Add "text_inputted.1{machine.high_score_initials_chars<3}", "Glf_577"
Function Glf_578(args)
	On Error Resume Next
	    Glf_578 = glf_dispatch_current_kwargs("position") = 1
	If Err Then Glf_578 = False
End Function
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 1}", "Glf_578"
Function Glf_579(args)
	Glf_579 = "  GRAND "
End Function
glf_funcRefMap.Add """  GRAND """, "Glf_579"
Function Glf_580(args)
	Glf_580 = "CHAMPION"
End Function
glf_funcRefMap.Add """CHAMPION""", "Glf_580"
Function Glf_581(args)
	Glf_581 = "     " & glf_machine_vars("high_score_initials").GetValue()
End Function
glf_funcRefMap.Add """     "" & machine.high_score_initials", "Glf_581"
Function Glf_582(args)
	On Error Resume Next
	    Glf_582 = glf_dispatch_current_kwargs("position") = 2
	If Err Then Glf_582 = False
End Function
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 2}", "Glf_582"
Function Glf_583(args)
	Glf_583 = "   HIGH "
End Function
glf_funcRefMap.Add """   HIGH """, "Glf_583"
Function Glf_584(args)
	Glf_584 = "SCORE 1 "
End Function
glf_funcRefMap.Add """SCORE 1 """, "Glf_584"
Function Glf_585(args)
	On Error Resume Next
	    Glf_585 = glf_dispatch_current_kwargs("position") = 3
	If Err Then Glf_585 = False
End Function
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 3}", "Glf_585"
Function Glf_586(args)
	Glf_586 = "SCORE 2 "
End Function
glf_funcRefMap.Add """SCORE 2 """, "Glf_586"
Function Glf_587(args)
	On Error Resume Next
	    Glf_587 = glf_dispatch_current_kwargs("position") = 4
	If Err Then Glf_587 = False
End Function
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 4}", "Glf_587"
Function Glf_588(args)
	Glf_588 = "SCORE 3 "
End Function
glf_funcRefMap.Add """SCORE 3 """, "Glf_588"
Function Glf_589(args)
	On Error Resume Next
	    Glf_589 = GetPlayerState("wizard_final_hit_count") > 0
	If Err Then Glf_589 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.wizard_final_hit_count > 0}", "Glf_589"
Function Glf_590(args)
	On Error Resume Next
	    Glf_590 = GetPlayerState("number") = 1
	If Err Then Glf_590 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.number == 1}", "Glf_590"
Function Glf_591(args)
	On Error Resume Next
	    Glf_591 = GetPlayerState("number") = 2
	If Err Then Glf_591 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.number == 2}", "Glf_591"
Function Glf_592(args)
	On Error Resume Next
	    Glf_592 = GetPlayerState("number") = 3
	If Err Then Glf_592 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.number == 3}", "Glf_592"
Function Glf_593(args)
	On Error Resume Next
	    Glf_593 = GetPlayerState("number") = 4
	If Err Then Glf_593 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.number == 4}", "Glf_593"
Function Glf_594(args)
	On Error Resume Next
	    Glf_594 = GetPlayerState("wizard_final_hit_count") > 0 And GetPlayerState("ball_just_started")=1
	If Err Then Glf_594 = False
End Function
glf_funcRefMap.Add "s_Plunger2_active{current_player.wizard_final_hit_count > 0 && current_player.ball_just_started==1}", "Glf_594"
Function Glf_595(args)
	On Error Resume Next
	    Glf_595 = GetPlayerState("nuke_acquired") = 1 And GetPlayerState("nuke_used") = 0
	If Err Then Glf_595 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.nuke_acquired == 1 && current_player.nuke_used == 0}", "Glf_595"
Function Glf_596(args)
	On Error Resume Next
	    Glf_596 = GetPlayerState("shot_meteor_wave1") = 0
	If Err Then Glf_596 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave1 == 0}", "Glf_596"
Function Glf_597(args)
	On Error Resume Next
	    Glf_597 = GetPlayerState("shot_meteor_wave1") = 1
	If Err Then Glf_597 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave1 == 1}", "Glf_597"
Function Glf_598(args)
	On Error Resume Next
	    Glf_598 = GetPlayerState("shot_meteor_wave2") = 1
	If Err Then Glf_598 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave2 == 1}", "Glf_598"
Function Glf_599(args)
	On Error Resume Next
	    Glf_599 = GetPlayerState("shot_meteor_wave3") = 1
	If Err Then Glf_599 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave3 == 1}", "Glf_599"
Function Glf_600(args)
	On Error Resume Next
	    Glf_600 = GetPlayerState("shot_meteor_wave4") = 1
	If Err Then Glf_600 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave4 == 1}", "Glf_600"
Function Glf_601(args)
	On Error Resume Next
	    Glf_601 = GetPlayerState("shot_meteor_wave5") = 1
	If Err Then Glf_601 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave5 == 1}", "Glf_601"
Function Glf_602(args)
	On Error Resume Next
	    Glf_602 = GetPlayerState("shot_meteor_wave6") = 1
	If Err Then Glf_602 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave6 == 1}", "Glf_602"
Function Glf_603(args)
	On Error Resume Next
	    Glf_603 = GetPlayerState("shot_meteor_wave7") = 1
	If Err Then Glf_603 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave7 == 1}", "Glf_603"
Function Glf_604(args)
	On Error Resume Next
	    Glf_604 = GetPlayerState("shot_meteor_wave8") = 1
	If Err Then Glf_604 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave8 == 1}", "Glf_604"
Function Glf_605(args)
	On Error Resume Next
	    Glf_605 = GetPlayerState("shot_meteor_wave9") = 1
	If Err Then Glf_605 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave9 == 1}", "Glf_605"
Function Glf_606(args)
	On Error Resume Next
	    Glf_606 = GetPlayerState("shot_meteor_wave1") = 2 And GetPlayerState("shot_meteor_wave2") = 0
	If Err Then Glf_606 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave1 == 2 && current_player.shot_meteor_wave2 == 0}", "Glf_606"
Function Glf_607(args)
	On Error Resume Next
	    Glf_607 = GetPlayerState("shot_meteor_wave2") = 2 And GetPlayerState("shot_meteor_wave3") = 0
	If Err Then Glf_607 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", "Glf_607"
Function Glf_608(args)
	On Error Resume Next
	    Glf_608 = GetPlayerState("shot_meteor_wave3") = 2 And GetPlayerState("shot_meteor_wave4") = 0
	If Err Then Glf_608 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave3 == 2 && current_player.shot_meteor_wave4 == 0}", "Glf_608"
Function Glf_609(args)
	On Error Resume Next
	    Glf_609 = GetPlayerState("shot_meteor_wave4") = 2 And GetPlayerState("shot_meteor_wave5") = 0
	If Err Then Glf_609 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", "Glf_609"
Function Glf_610(args)
	On Error Resume Next
	    Glf_610 = GetPlayerState("shot_meteor_wave5") = 2 And GetPlayerState("shot_meteor_wave6") = 0
	If Err Then Glf_610 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave5 == 2 && current_player.shot_meteor_wave6 == 0}", "Glf_610"
Function Glf_611(args)
	On Error Resume Next
	    Glf_611 = GetPlayerState("shot_meteor_wave6") = 2 And GetPlayerState("shot_meteor_wave7") = 0
	If Err Then Glf_611 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", "Glf_611"
Function Glf_612(args)
	On Error Resume Next
	    Glf_612 = GetPlayerState("shot_meteor_wave7") = 2 And GetPlayerState("shot_meteor_wave8") = 0
	If Err Then Glf_612 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave7 == 2 && current_player.shot_meteor_wave8 == 0}", "Glf_612"
Function Glf_613(args)
	On Error Resume Next
	    Glf_613 = GetPlayerState("shot_meteor_wave8") = 2 And GetPlayerState("shot_meteor_wave9") = 0
	If Err Then Glf_613 = False
End Function
glf_funcRefMap.Add "check_base_restart{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", "Glf_613"
Function Glf_614(args)
	On Error Resume Next
	    Glf_614 = GetPlayerState("shot_final_wave_wizard") = 2 And GetPlayerState("victory") = 0
	If Err Then Glf_614 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.shot_final_wave_wizard == 2 && current_player.victory == 0}", "Glf_614"
Function Glf_615(args)
	On Error Resume Next
	    Glf_615 = GetPlayerState("shot_final_wave_wizard") = 1 And GetPlayerState("victory") = 0
	If Err Then Glf_615 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.shot_final_wave_wizard == 1 && current_player.victory == 0}", "Glf_615"
Function Glf_616(args)
	On Error Resume Next
	    Glf_616 = GetPlayerState("shot_combo_command_wizard") = 1 And GetPlayerState("victory") = 0
	If Err Then Glf_616 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.shot_combo_command_wizard == 1 && current_player.victory == 0}", "Glf_616"
Function Glf_617(args)
	On Error Resume Next
	    Glf_617 = GetPlayerState("shot_fully_loaded_wizard") = 1 And GetPlayerState("victory") = 0
	If Err Then Glf_617 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.shot_fully_loaded_wizard == 1 && current_player.victory == 0}", "Glf_617"
Function Glf_618(args)
	On Error Resume Next
	    Glf_618 = GetPlayerState("victory") = 1
	If Err Then Glf_618 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.victory == 1}", "Glf_618"
Function Glf_619(args)
	On Error Resume Next
	    Glf_619 = GetPlayerState("shot_fully_loaded_wizard") = 0 And GetPlayerState("shot_cluster_bomb2") = 1 And GetPlayerState("shot_proton_round6") = 1 And  GetPlayerState("shot_moon_missile2") = 1
	If Err Then Glf_619 = False
End Function
glf_funcRefMap.Add "check_fully_loaded{current_player.shot_fully_loaded_wizard == 0 && current_player.shot_cluster_bomb2 == 1 && current_player.shot_proton_round6 == 1 &&  current_player.shot_moon_missile2 == 1}", "Glf_619"
Function Glf_620(args)
	On Error Resume Next
	    Glf_620 = GetPlayerState("meteor_wave_running") = 0
	If Err Then Glf_620 = False
End Function
glf_funcRefMap.Add "prime_fully_loaded_wizard{current_player.meteor_wave_running == 0}", "Glf_620"
Function Glf_621(args)
	On Error Resume Next
	    Glf_621 = GetPlayerState("shot_final_wave_wizard") = 1
	If Err Then Glf_621 = False
End Function
glf_funcRefMap.Add "stop_meteor_wave{current_player.shot_final_wave_wizard == 1}", "Glf_621"
Function Glf_622(args)
	On Error Resume Next
	    Glf_622 = GetPlayerState("shot_combo_command_wizard") = 1
	If Err Then Glf_622 = False
End Function
glf_funcRefMap.Add "stop_meteor_wave{current_player.shot_combo_command_wizard == 1}", "Glf_622"
Function Glf_623(args)
	On Error Resume Next
	    Glf_623 = GetPlayerState("shot_fully_loaded_wizard") = 1
	If Err Then Glf_623 = False
End Function
glf_funcRefMap.Add "stop_meteor_wave{current_player.shot_fully_loaded_wizard == 1}", "Glf_623"
Function Glf_624(args)
	On Error Resume Next
	    Glf_624 = GetPlayerState("shot_final_wave_wizard") = 1
	If Err Then Glf_624 = False
End Function
glf_funcRefMap.Add "run_ccwiz_scoop_show{current_player.shot_final_wave_wizard == 1}", "Glf_624"
Function Glf_625(args)
	On Error Resume Next
	    Glf_625 = GetPlayerState("shot_combo_command_wizard") = 1 or GetPlayerState("shot_final_wave_wizard") = 1
	If Err Then Glf_625 = False
End Function
glf_funcRefMap.Add "run_flwiz_scoop_show{current_player.shot_combo_command_wizard == 1 or current_player.shot_final_wave_wizard == 1}", "Glf_625"
Function Glf_626(args)
	On Error Resume Next
	    Glf_626 = GetPlayerState("wizard_mode_is_ready") = 1 And GetPlayerState("shot_final_wave_wizard") = 1 And GetPlayerState("meteor_wave_running") = 0
	If Err Then Glf_626 = False
End Function
glf_funcRefMap.Add "balldevice_scoop_ball_entered{current_player.wizard_mode_is_ready == 1 && current_player.shot_final_wave_wizard == 1 && current_player.meteor_wave_running == 0}", "Glf_626"
Function Glf_627(args)
	On Error Resume Next
	    Glf_627 = GetPlayerState("wizard_mode_is_ready") = 1 And GetPlayerState("shot_combo_command_wizard") = 1 And GetPlayerState("shot_final_wave_wizard") <> 1 And GetPlayerState("meteor_wave_running") = 0
	If Err Then Glf_627 = False
End Function
glf_funcRefMap.Add "balldevice_scoop_ball_entered{current_player.wizard_mode_is_ready == 1 && current_player.shot_combo_command_wizard == 1 && current_player.shot_final_wave_wizard != 1 && current_player.meteor_wave_running == 0}", "Glf_627"
Function Glf_628(args)
	On Error Resume Next
	    Glf_628 = GetPlayerState("wizard_mode_is_ready") = 1 And GetPlayerState("shot_fully_loaded_wizard") = 1  And GetPlayerState("shot_combo_command_wizard") <> 1 And GetPlayerState("shot_final_wave_wizard") <> 1 And GetPlayerState("meteor_wave_running") = 0
	If Err Then Glf_628 = False
End Function
glf_funcRefMap.Add "balldevice_scoop_ball_entered{current_player.wizard_mode_is_ready == 1 && current_player.shot_fully_loaded_wizard == 1  && current_player.shot_combo_command_wizard != 1 && current_player.shot_final_wave_wizard != 1 && current_player.meteor_wave_running == 0}", "Glf_628"
Function Glf_629(args)
	On Error Resume Next
	    Glf_629 = GetPlayerState("shot_final_wave_wizard") = 1
	If Err Then Glf_629 = False
End Function
glf_funcRefMap.Add "balldevice_moon_lock_ball_enter{current_player.shot_final_wave_wizard == 1}", "Glf_629"
Function Glf_630(args)
	On Error Resume Next
	    Glf_630 = GetPlayerState("ball_just_started")=0
	If Err Then Glf_630 = False
End Function
glf_funcRefMap.Add "check_plunger{current_player.ball_just_started==0}", "Glf_630"
Function Glf_631(args)
	Glf_631 = 5000
End Function
glf_funcRefMap.Add "5000", "Glf_631"
Function Glf_632(args)
	Glf_632 = Glf_FormatValue(GetPlayerStateForPlayer(0, "score"), "0>2,")
End Function
glf_funcRefMap.Add "{players[0].score:0>2,}", "Glf_632"
Function Glf_633(args)
	Glf_633 = Glf_FormatValue(GetPlayerStateForPlayer(1, "score"), "0>2,")
End Function
glf_funcRefMap.Add "{players[1].score:0>2,}", "Glf_633"
Function Glf_634(args)
	Glf_634 = Glf_FormatValue(GetPlayerStateForPlayer(2, "score"), "0>2,")
End Function
glf_funcRefMap.Add "{players[2].score:0>2,}", "Glf_634"
Function Glf_635(args)
	Glf_635 = Glf_FormatValue(GetPlayerStateForPlayer(3, "score"), "0>2,")
End Function
glf_funcRefMap.Add "{players[3].score:0>2,}", "Glf_635"
Function Glf_636(args)
	Glf_636 = Glf_FormatValue(GetPlayerState("ball"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.ball:0>2}", "Glf_636"
Function Glf_637(args)
	Glf_637 = Glf_FormatValue(GetPlayerStateForPlayer(0, "score"), "0>2")
End Function
glf_funcRefMap.Add "{players[0].score:0>2}", "Glf_637"
Function Glf_638(args)
	Glf_638 = Glf_FormatValue(GetPlayerStateForPlayer(1, "score"), "0>2")
End Function
glf_funcRefMap.Add "{players[1].score:0>2}", "Glf_638"
Function Glf_639(args)
	Glf_639 = Glf_FormatValue(GetPlayerStateForPlayer(2, "score"), "0>2")
End Function
glf_funcRefMap.Add "{players[2].score:0>2}", "Glf_639"
Function Glf_640(args)
	Glf_640 = Glf_FormatValue(GetPlayerStateForPlayer(3, "score"), "0>2")
End Function
glf_funcRefMap.Add "{players[3].score:0>2}", "Glf_640"
Function Glf_641(args)
	Glf_641 = "BALL"
End Function
glf_funcRefMap.Add """BALL""", "Glf_641"
Function Glf_642(args)
	Glf_642 = 500
End Function
glf_funcRefMap.Add "500", "Glf_642"
Function Glf_643(args)
	Glf_643 = 300
End Function
glf_funcRefMap.Add "300", "Glf_643"
Function Glf_644(args)
	Glf_644 = 600
End Function
glf_funcRefMap.Add "600", "Glf_644"
Function Glf_645(args)
	On Error Resume Next
	    Glf_645 = glf_timers("meteor_countdown").GetValue("ticks") = 3
	If Err Then Glf_645 = False
End Function
glf_funcRefMap.Add "timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 3}", "Glf_645"
Function Glf_646(args)
	Glf_646 = 6000
End Function
glf_funcRefMap.Add "6000", "Glf_646"
Function Glf_647(args)
	Glf_647 = 3000
End Function
glf_funcRefMap.Add "3000", "Glf_647"
Function Glf_648(args)
	Glf_648 = 2000
End Function
glf_funcRefMap.Add "2000", "Glf_648"
Function Glf_649(args)
	Glf_649 = 1500
End Function
glf_funcRefMap.Add "1500", "Glf_649"
Function Glf_650(args)
	On Error Resume Next
	    Glf_650 = glf_timers("meteor_countdown").GetValue("ticks") = 1
	If Err Then Glf_650 = False
End Function
glf_funcRefMap.Add "timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 1}", "Glf_650"
Function Glf_651(args)
	On Error Resume Next
	    Glf_651 = Glf_GameVariable("balls_in_play") = 1 And GetPlayerState("ball_just_started") = 0
	If Err Then Glf_651 = False
End Function
glf_funcRefMap.Add "flipper_cradle{game.balls_in_play == 1 && current_player.ball_just_started == 0}", "Glf_651"
Function Glf_652(args)
	On Error Resume Next
	    Glf_652 = GetPlayerState("ball_cradled") = 1
	If Err Then Glf_652 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active{current_player.ball_cradled == 1}", "Glf_652"
Function Glf_653(args)
	On Error Resume Next
	    Glf_653 = GetPlayerState("ball_cradled") = 1
	If Err Then Glf_653 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active{current_player.ball_cradled == 1}", "Glf_653"
Function Glf_654(args)
	On Error Resume Next
	    Glf_654 = GetPlayerState("ball_cradled") = 1
	If Err Then Glf_654 = False
End Function
glf_funcRefMap.Add "s_right_staged_flipper_key_active{current_player.ball_cradled == 1}", "Glf_654"
Function Glf_655(args)
	On Error Resume Next
	    Glf_655 = glf_timers("info").GetValue("ticks") = 0
	If Err Then Glf_655 = False
End Function
glf_funcRefMap.Add "timer_info_tick{devices.timers.info.ticks == 0}", "Glf_655"
Function Glf_656(args)
	On Error Resume Next
	    Glf_656 = glf_timers("info").GetValue("ticks") = 1
	If Err Then Glf_656 = False
End Function
glf_funcRefMap.Add "timer_info_tick{devices.timers.info.ticks == 1}", "Glf_656"
Function Glf_657(args)
	On Error Resume Next
	    Glf_657 = glf_timers("info").GetValue("ticks") = 2
	If Err Then Glf_657 = False
End Function
glf_funcRefMap.Add "timer_info_tick{devices.timers.info.ticks == 2}", "Glf_657"
Function Glf_658(args)
	On Error Resume Next
	    Glf_658 = glf_timers("info").GetValue("ticks") = 3
	If Err Then Glf_658 = False
End Function
glf_funcRefMap.Add "timer_info_tick{devices.timers.info.ticks == 3}", "Glf_658"
Function Glf_659(args)
	On Error Resume Next
	    Glf_659 = GetPlayerState("number") = 1 or GetPlayerState("number") = 2
	If Err Then Glf_659 = False
End Function
glf_funcRefMap.Add "info_ball_num{current_player.number == 1 or current_player.number == 2}", "Glf_659"
Function Glf_660(args)
	On Error Resume Next
	    Glf_660 = GetPlayerState("number") = 3 or GetPlayerState("number") = 4
	If Err Then Glf_660 = False
End Function
glf_funcRefMap.Add "info_ball_num{current_player.number == 3 or current_player.number == 4}", "Glf_660"
Function Glf_661(args)
	On Error Resume Next
	    Glf_661 = GetPlayerState("number") = 1 or GetPlayerState("number") = 2
	If Err Then Glf_661 = False
End Function
glf_funcRefMap.Add "info_trained_num{current_player.number == 1 or current_player.number == 2}", "Glf_661"
Function Glf_662(args)
	Glf_662 = "TRAINED"
End Function
glf_funcRefMap.Add """TRAINED""", "Glf_662"
Function Glf_663(args)
	Glf_663 = Glf_FormatValue(GetPlayerState("training_total_achieved"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.training_total_achieved:0>2}", "Glf_663"
Function Glf_664(args)
	On Error Resume Next
	    Glf_664 = GetPlayerState("number") = 3 or GetPlayerState("number") = 4
	If Err Then Glf_664 = False
End Function
glf_funcRefMap.Add "info_trained_num{current_player.number == 3 or current_player.number == 4}", "Glf_664"
Function Glf_665(args)
	On Error Resume Next
	    Glf_665 = GetPlayerState("number") = 1 or GetPlayerState("number") = 2
	If Err Then Glf_665 = False
End Function
glf_funcRefMap.Add "info_eb_num{current_player.number == 1 or current_player.number == 2}", "Glf_665"
Function Glf_666(args)
	Glf_666 = "EB NUM"
End Function
glf_funcRefMap.Add """EB NUM""", "Glf_666"
Function Glf_667(args)
	Glf_667 = Glf_FormatValue(GetPlayerState("extra_balls"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.extra_balls:0>2}", "Glf_667"
Function Glf_668(args)
	On Error Resume Next
	    Glf_668 = GetPlayerState("number") = 3 or GetPlayerState("number") = 4
	If Err Then Glf_668 = False
End Function
glf_funcRefMap.Add "info_eb_num{current_player.number == 3 or current_player.number == 4}", "Glf_668"
Function Glf_669(args)
	On Error Resume Next
	    Glf_669 = GetPlayerState("nuke_acquired") = 0
	If Err Then Glf_669 = False
End Function
glf_funcRefMap.Add "mode_nuke_started{current_player.nuke_acquired == 0}", "Glf_669"
Function Glf_670(args)
	On Error Resume Next
	    Glf_670 = GetPlayerState("nuke_acquired") = 1 And GetPlayerState("nuke_used") = 0
	If Err Then Glf_670 = False
End Function
glf_funcRefMap.Add "mode_nuke_started{current_player.nuke_acquired == 1 && current_player.nuke_used == 0}", "Glf_670"
Function Glf_671(args)
	On Error Resume Next
	    Glf_671 = GetPlayerState("nuke_acquired") = 1 And GetPlayerState("nuke_used") = 0
	If Err Then Glf_671 = False
End Function
glf_funcRefMap.Add "check_detonate_nuke{current_player.nuke_acquired == 1 && current_player.nuke_used == 0}", "Glf_671"
Function Glf_672(args)
	On Error Resume Next
	    Glf_672 = GetPlayerState("ball_just_started")=1 And GetPlayerState("shot_meteor_wave9") < 2
	If Err Then Glf_672 = False
End Function
glf_funcRefMap.Add "mode_skillshots_started{current_player.ball_just_started==1 && current_player.shot_meteor_wave9 < 2}", "Glf_672"
Function Glf_673(args)
	On Error Resume Next
	    Glf_673 = GetPlayerState("shot_ss")=1
	If Err Then Glf_673 = False
End Function
glf_funcRefMap.Add "s_TargetMystery2_active{current_player.shot_ss==1}", "Glf_673"
Function Glf_674(args)
	On Error Resume Next
	    Glf_674 = GetPlayerState("shot_ss")=1
	If Err Then Glf_674 = False
End Function
glf_funcRefMap.Add "left_side_hit{current_player.shot_ss==1}", "Glf_674"
Function Glf_675(args)
	On Error Resume Next
	    Glf_675 = GetPlayerState("shot_ss")=1 And GetPlayerState("flag_ss") = 1
	If Err Then Glf_675 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.shot_ss==1 && current_player.flag_ss == 1}", "Glf_675"
Function Glf_676(args)
	On Error Resume Next
	    Glf_676 = GetPlayerState("shot_ss")=1 And GetPlayerState("flag_ss") = 2
	If Err Then Glf_676 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.shot_ss==1 && current_player.flag_ss == 2}", "Glf_676"
Function Glf_677(args)
	On Error Resume Next
	    Glf_677 = GetPlayerState("num_skillshots")=3
	If Err Then Glf_677 = False
End Function
glf_funcRefMap.Add "sss_achieved.1{current_player.num_skillshots==3}", "Glf_677"
Function Glf_678(args)
	On Error Resume Next
	    Glf_678 = GetPlayerState("num_skillshots")=3
	If Err Then Glf_678 = False
End Function
glf_funcRefMap.Add "voc_ss_stopped{current_player.num_skillshots==3}", "Glf_678"
Function Glf_679(args)
	On Error Resume Next
	    Glf_679 = GetPlayerState("num_skillshots")=3
	If Err Then Glf_679 = False
End Function
glf_funcRefMap.Add "voc_sss_stopped{current_player.num_skillshots==3}", "Glf_679"
Function Glf_680(args)
	On Error Resume Next
	    Glf_680 = GetPlayerState("shot_meteor_wave2") = 2 And GetPlayerState("shot_meteor_wave3") = 0
	If Err Then Glf_680 = False
End Function
glf_funcRefMap.Add "mode_alien_attack_started{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", "Glf_680"
Function Glf_681(args)
	On Error Resume Next
	    Glf_681 = GetPlayerState("shot_meteor_wave4") = 2 And GetPlayerState("shot_meteor_wave5") = 0
	If Err Then Glf_681 = False
End Function
glf_funcRefMap.Add "mode_alien_attack_started{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", "Glf_681"
Function Glf_682(args)
	On Error Resume Next
	    Glf_682 = GetPlayerState("shot_meteor_wave6") = 2 And GetPlayerState("shot_meteor_wave7") = 0
	If Err Then Glf_682 = False
End Function
glf_funcRefMap.Add "mode_alien_attack_started{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", "Glf_682"
Function Glf_683(args)
	On Error Resume Next
	    Glf_683 = GetPlayerState("shot_meteor_wave8") = 2 And GetPlayerState("shot_meteor_wave9") = 0
	If Err Then Glf_683 = False
End Function
glf_funcRefMap.Add "mode_alien_attack_started{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", "Glf_683"
Function Glf_684(args)
	On Error Resume Next
	    Glf_684 = glf_timers("alien_attack").GetValue("ticks") > 0
	If Err Then Glf_684 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{devices.timers.alien_attack.ticks > 0}", "Glf_684"
Function Glf_685(args)
	On Error Resume Next
	    Glf_685 = glf_timers("timewarp").GetValue("ticks")=1
	If Err Then Glf_685 = False
End Function
glf_funcRefMap.Add "timer_timewarp_tick{devices.timers.timewarp.ticks==1}", "Glf_685"
Function Glf_686(args)
	On Error Resume Next
	    Glf_686 = GetPlayerState("alien_attack_dir") = 0
	If Err Then Glf_686 = False
End Function
glf_funcRefMap.Add "alien_attacking{current_player.alien_attack_dir == 0}", "Glf_686"
Function Glf_687(args)
	On Error Resume Next
	    Glf_687 = GetPlayerState("alien_attack_dir") = 1
	If Err Then Glf_687 = False
End Function
glf_funcRefMap.Add "alien_attacking{current_player.alien_attack_dir == 1}", "Glf_687"
Function Glf_688(args)
	On Error Resume Next
	    Glf_688 = GetPlayerState("alien_attack_dir") = 0 And glf_timers("alien_attack").GetValue("ticks") = 2
	If Err Then Glf_688 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 0 && devices.timers.alien_attack.ticks == 2}", "Glf_688"
Function Glf_689(args)
	On Error Resume Next
	    Glf_689 = GetPlayerState("alien_attack_dir") = 0 And glf_timers("alien_attack").GetValue("ticks") = 3
	If Err Then Glf_689 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 0 && devices.timers.alien_attack.ticks == 3}", "Glf_689"
Function Glf_690(args)
	On Error Resume Next
	    Glf_690 = GetPlayerState("alien_attack_dir") = 0 And glf_timers("alien_attack").GetValue("ticks") = 4
	If Err Then Glf_690 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 0 && devices.timers.alien_attack.ticks == 4}", "Glf_690"
Function Glf_691(args)
	On Error Resume Next
	    Glf_691 = GetPlayerState("alien_attack_dir") = 0 And glf_timers("alien_attack").GetValue("ticks") = 5
	If Err Then Glf_691 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 0 && devices.timers.alien_attack.ticks == 5}", "Glf_691"
Function Glf_692(args)
	On Error Resume Next
	    Glf_692 = GetPlayerState("alien_attack_dir") = 0 And glf_timers("alien_attack").GetValue("ticks") = 6
	If Err Then Glf_692 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 0 && devices.timers.alien_attack.ticks == 6}", "Glf_692"
Function Glf_693(args)
	On Error Resume Next
	    Glf_693 = GetPlayerState("alien_attack_dir") = 0 And glf_timers("alien_attack").GetValue("ticks") = 7
	If Err Then Glf_693 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 0 && devices.timers.alien_attack.ticks == 7}", "Glf_693"
Function Glf_694(args)
	On Error Resume Next
	    Glf_694 = GetPlayerState("alien_attack_dir") = 0 And glf_timers("alien_attack").GetValue("ticks") = 8
	If Err Then Glf_694 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 0 && devices.timers.alien_attack.ticks == 8}", "Glf_694"
Function Glf_695(args)
	On Error Resume Next
	    Glf_695 = GetPlayerState("alien_attack_dir") = 1 And glf_timers("alien_attack").GetValue("ticks") = 8
	If Err Then Glf_695 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 1 && devices.timers.alien_attack.ticks == 8}", "Glf_695"
Function Glf_696(args)
	On Error Resume Next
	    Glf_696 = GetPlayerState("alien_attack_dir") = 1 And glf_timers("alien_attack").GetValue("ticks") = 7
	If Err Then Glf_696 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 1 && devices.timers.alien_attack.ticks == 7}", "Glf_696"
Function Glf_697(args)
	On Error Resume Next
	    Glf_697 = GetPlayerState("alien_attack_dir") = 1 And glf_timers("alien_attack").GetValue("ticks") = 6
	If Err Then Glf_697 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 1 && devices.timers.alien_attack.ticks == 6}", "Glf_697"
Function Glf_698(args)
	On Error Resume Next
	    Glf_698 = GetPlayerState("alien_attack_dir") = 1 And glf_timers("alien_attack").GetValue("ticks") = 5
	If Err Then Glf_698 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 1 && devices.timers.alien_attack.ticks == 5}", "Glf_698"
Function Glf_699(args)
	On Error Resume Next
	    Glf_699 = GetPlayerState("alien_attack_dir") = 1 And glf_timers("alien_attack").GetValue("ticks") = 4
	If Err Then Glf_699 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 1 && devices.timers.alien_attack.ticks == 4}", "Glf_699"
Function Glf_700(args)
	On Error Resume Next
	    Glf_700 = GetPlayerState("alien_attack_dir") = 1 And glf_timers("alien_attack").GetValue("ticks") = 3
	If Err Then Glf_700 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 1 && devices.timers.alien_attack.ticks == 3}", "Glf_700"
Function Glf_701(args)
	On Error Resume Next
	    Glf_701 = GetPlayerState("alien_attack_dir") = 1 And glf_timers("alien_attack").GetValue("ticks") = 2
	If Err Then Glf_701 = False
End Function
glf_funcRefMap.Add "timer_alien_attack_tick{current_player.alien_attack_dir == 1 && devices.timers.alien_attack.ticks == 2}", "Glf_701"
Function Glf_702(args)
	On Error Resume Next
	    Glf_702 = GetPlayerState("alien_attack_dir") = 1 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_702 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.alien_attack_dir == 1 && current_player.alien_grace_time == 1}", "Glf_702"
Function Glf_703(args)
	On Error Resume Next
	    Glf_703 = GetPlayerState("alien_attack_dir") = 0 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_703 = False
End Function
glf_funcRefMap.Add "left_side_hit{current_player.alien_attack_dir == 0 && current_player.alien_grace_time == 1}", "Glf_703"
Function Glf_704(args)
	On Error Resume Next
	    Glf_704 = GetPlayerState("alien_attack_dir") = 1 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_704 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.alien_attack_dir == 1 && current_player.alien_grace_time == 1}", "Glf_704"
Function Glf_705(args)
	On Error Resume Next
	    Glf_705 = GetPlayerState("alien_attack_dir") = 0 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_705 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.alien_attack_dir == 0 && current_player.alien_grace_time == 1}", "Glf_705"
Function Glf_706(args)
	On Error Resume Next
	    Glf_706 = GetPlayerState("alien_attack_dir") = 1 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_706 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.alien_attack_dir == 1 && current_player.alien_grace_time == 1}", "Glf_706"
Function Glf_707(args)
	On Error Resume Next
	    Glf_707 = GetPlayerState("alien_attack_dir") = 0 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_707 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.alien_attack_dir == 0 && current_player.alien_grace_time == 1}", "Glf_707"
Function Glf_708(args)
	On Error Resume Next
	    Glf_708 = GetPlayerState("alien_attack_dir") = 1 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_708 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.alien_attack_dir == 1 && current_player.alien_grace_time == 1}", "Glf_708"
Function Glf_709(args)
	On Error Resume Next
	    Glf_709 = GetPlayerState("alien_attack_dir") = 0 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_709 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.alien_attack_dir == 0 && current_player.alien_grace_time == 1}", "Glf_709"
Function Glf_710(args)
	On Error Resume Next
	    Glf_710 = GetPlayerState("alien_attack_dir") = 1 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_710 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.alien_attack_dir == 1 && current_player.alien_grace_time == 1}", "Glf_710"
Function Glf_711(args)
	On Error Resume Next
	    Glf_711 = GetPlayerState("alien_attack_dir") = 0 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_711 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.alien_attack_dir == 0 && current_player.alien_grace_time == 1}", "Glf_711"
Function Glf_712(args)
	On Error Resume Next
	    Glf_712 = GetPlayerState("alien_attack_dir") = 1 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_712 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.alien_attack_dir == 1 && current_player.alien_grace_time == 1}", "Glf_712"
Function Glf_713(args)
	On Error Resume Next
	    Glf_713 = GetPlayerState("alien_attack_dir") = 0 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_713 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.alien_attack_dir == 0 && current_player.alien_grace_time == 1}", "Glf_713"
Function Glf_714(args)
	On Error Resume Next
	    Glf_714 = GetPlayerState("alien_attack_dir") = 1 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_714 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.alien_attack_dir == 1 && current_player.alien_grace_time == 1}", "Glf_714"
Function Glf_715(args)
	On Error Resume Next
	    Glf_715 = GetPlayerState("alien_attack_dir") = 0 And GetPlayerState("alien_grace_time") = 1
	If Err Then Glf_715 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.alien_attack_dir == 0 && current_player.alien_grace_time == 1}", "Glf_715"
Function Glf_716(args)
	Glf_716 = GetPlayerState("alien_tick_count")
End Function
glf_funcRefMap.Add "current_player.alien_tick_count", "Glf_716"
Function Glf_717(args)
	Glf_717 = glf_timers("alien_attack").GetValue("ticks")
End Function
glf_funcRefMap.Add "devices.timers.alien_attack.ticks", "Glf_717"
Function Glf_718(args)
	On Error Resume Next
	    Glf_718 = GetPlayerState("training_shields_achieved")=1
	If Err Then Glf_718 = False
End Function
glf_funcRefMap.Add "mode_shields_started{current_player.training_shields_achieved==1}", "Glf_718"
Function Glf_719(args)
	On Error Resume Next
	    Glf_719 = GetPlayerState("training_shields_achieved")=1
	If Err Then Glf_719 = False
End Function
glf_funcRefMap.Add "restart_qualify_shields{current_player.training_shields_achieved==1}", "Glf_719"
Function Glf_720(args)
	On Error Resume Next
	    Glf_720 = GetPlayerState("shot_shield_left")=1
	If Err Then Glf_720 = False
End Function
glf_funcRefMap.Add "mode_shields_started{current_player.shot_shield_left==1}", "Glf_720"
Function Glf_721(args)
	On Error Resume Next
	    Glf_721 = GetPlayerState("shot_shield_left")=1
	If Err Then Glf_721 = False
End Function
glf_funcRefMap.Add "s_LeftOutlane_active{current_player.shot_shield_left==1}", "Glf_721"
Function Glf_722(args)
	On Error Resume Next
	    Glf_722 = GetPlayerState("shot_shield_right")=1
	If Err Then Glf_722 = False
End Function
glf_funcRefMap.Add "s_RightOutlane_active{current_player.shot_shield_right==1}", "Glf_722"
Function Glf_723(args)
	Glf_723 = "SHIELDS"
End Function
glf_funcRefMap.Add """SHIELDS""", "Glf_723"
Function Glf_724(args)
	On Error Resume Next
	    Glf_724 = GetPlayerState("shot_ship_charge1")=0
	If Err Then Glf_724 = False
End Function
glf_funcRefMap.Add "mode_ship_save_started{current_player.shot_ship_charge1==0}", "Glf_724"
Function Glf_725(args)
	On Error Resume Next
	    Glf_725 = GetPlayerState("training_ship_save_achieved")=1 And GetPlayerState("shot_ship_charge3")<>2
	If Err Then Glf_725 = False
End Function
glf_funcRefMap.Add "mode_ship_save_started{current_player.training_ship_save_achieved==1 && current_player.shot_ship_charge3!=2}", "Glf_725"
Function Glf_726(args)
	On Error Resume Next
	    Glf_726 = GetPlayerState("shot_ship_charge3")=2 And GetPlayerState("meteor_mb_shootagain_time") =6000
	If Err Then Glf_726 = False
End Function
glf_funcRefMap.Add "mode_ship_save_started{current_player.shot_ship_charge3==2 && current_player.meteor_mb_shootagain_time ==6000}", "Glf_726"
Function Glf_727(args)
	On Error Resume Next
	    Glf_727 = GetPlayerState("training_ship_save_achieved")=0
	If Err Then Glf_727 = False
End Function
glf_funcRefMap.Add "restart_ship_save{current_player.training_ship_save_achieved==0}", "Glf_727"
Function Glf_728(args)
	On Error Resume Next
	    Glf_728 = GetPlayerState("training_ship_save_achieved")=1
	If Err Then Glf_728 = False
End Function
glf_funcRefMap.Add "restart_ship_save{current_player.training_ship_save_achieved==1}", "Glf_728"
Function Glf_729(args)
	On Error Resume Next
	    Glf_729 = GetPlayerState("shot_ship_charge3") = 2
	If Err Then Glf_729 = False
End Function
glf_funcRefMap.Add "mode_ship_save_started{current_player.shot_ship_charge3 == 2}", "Glf_729"
Function Glf_730(args)
	On Error Resume Next
	    Glf_730 = GetPlayerState("shot_ship_charge1") = 1
	If Err Then Glf_730 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_ship_charge1 == 1}", "Glf_730"
Function Glf_731(args)
	On Error Resume Next
	    Glf_731 = GetPlayerState("shot_ship_charge1") = 2 And GetPlayerState("shot_ship_charge2") = 1
	If Err Then Glf_731 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_ship_charge1 == 2 && current_player.shot_ship_charge2 == 1}", "Glf_731"
Function Glf_732(args)
	On Error Resume Next
	    Glf_732 = GetPlayerState("shot_ship_charge2") = 2 And GetPlayerState("shot_ship_charge3") = 1
	If Err Then Glf_732 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_ship_charge2 == 2 && current_player.shot_ship_charge3 == 1}", "Glf_732"
Function Glf_733(args)
	Glf_733 = 15000
End Function
glf_funcRefMap.Add "15000", "Glf_733"
Function Glf_734(args)
	Glf_734 = " SHIP "
End Function
glf_funcRefMap.Add """ SHIP """, "Glf_734"
Function Glf_735(args)
	Glf_735 = " SAVER "
End Function
glf_funcRefMap.Add """ SAVER """, "Glf_735"
Function Glf_736(args)
	On Error Resume Next
	    Glf_736 = GetPlayerState("ball_just_started")=1
	If Err Then Glf_736 = False
End Function
glf_funcRefMap.Add "mode_combos_started{current_player.ball_just_started==1}", "Glf_736"
Function Glf_737(args)
	On Error Resume Next
	    Glf_737 = GetPlayerState("combos_value")=0
	If Err Then Glf_737 = False
End Function
glf_funcRefMap.Add "check_add_combos{current_player.combos_value==0}", "Glf_737"
Function Glf_738(args)
	On Error Resume Next
	    Glf_738 = GetPlayerState("combos_value")=1
	If Err Then Glf_738 = False
End Function
glf_funcRefMap.Add "check_add_combos{current_player.combos_value==1}", "Glf_738"
Function Glf_739(args)
	On Error Resume Next
	    Glf_739 = GetPlayerState("combos_value")=2
	If Err Then Glf_739 = False
End Function
glf_funcRefMap.Add "check_add_combos{current_player.combos_value==2}", "Glf_739"
Function Glf_740(args)
	On Error Resume Next
	    Glf_740 = GetPlayerState("combos_value")=3
	If Err Then Glf_740 = False
End Function
glf_funcRefMap.Add "check_add_combos{current_player.combos_value==3}", "Glf_740"
Function Glf_741(args)
	On Error Resume Next
	    Glf_741 = GetPlayerState("combos_value")=4
	If Err Then Glf_741 = False
End Function
glf_funcRefMap.Add "check_add_combos{current_player.combos_value==4}", "Glf_741"
Function Glf_742(args)
	On Error Resume Next
	    Glf_742 = GetPlayerState("combos_value")=5
	If Err Then Glf_742 = False
End Function
glf_funcRefMap.Add "check_add_combos{current_player.combos_value==5}", "Glf_742"
Function Glf_743(args)
	On Error Resume Next
	    Glf_743 = GetPlayerState("combos_value")=6
	If Err Then Glf_743 = False
End Function
glf_funcRefMap.Add "check_add_combos{current_player.combos_value==6}", "Glf_743"
Function Glf_744(args)
	On Error Resume Next
	    Glf_744 = GetPlayerState("combos_value")=7
	If Err Then Glf_744 = False
End Function
glf_funcRefMap.Add "check_add_combos{current_player.combos_value==7}", "Glf_744"
Function Glf_745(args)
	On Error Resume Next
	    Glf_745 = GetPlayerState("combos_value")=8
	If Err Then Glf_745 = False
End Function
glf_funcRefMap.Add "check_add_combos{current_player.combos_value==8}", "Glf_745"
Function Glf_746(args)
	On Error Resume Next
	    Glf_746 = GetPlayerState("shot_combo_command_wizard") = 0
	If Err Then Glf_746 = False
End Function
glf_funcRefMap.Add "check_combo_command_wizard{current_player.shot_combo_command_wizard == 0}", "Glf_746"
Function Glf_747(args)
	On Error Resume Next
	    Glf_747 = GetPlayerState("combos_value")=8
	If Err Then Glf_747 = False
End Function
glf_funcRefMap.Add "check_subtract_combos{current_player.combos_value==8}", "Glf_747"
Function Glf_748(args)
	On Error Resume Next
	    Glf_748 = GetPlayerState("combos_value")=7
	If Err Then Glf_748 = False
End Function
glf_funcRefMap.Add "check_subtract_combos{current_player.combos_value==7}", "Glf_748"
Function Glf_749(args)
	On Error Resume Next
	    Glf_749 = GetPlayerState("combos_value")=6
	If Err Then Glf_749 = False
End Function
glf_funcRefMap.Add "check_subtract_combos{current_player.combos_value==6}", "Glf_749"
Function Glf_750(args)
	On Error Resume Next
	    Glf_750 = GetPlayerState("combos_value")=5
	If Err Then Glf_750 = False
End Function
glf_funcRefMap.Add "check_subtract_combos{current_player.combos_value==5}", "Glf_750"
Function Glf_751(args)
	On Error Resume Next
	    Glf_751 = GetPlayerState("combos_value")=4
	If Err Then Glf_751 = False
End Function
glf_funcRefMap.Add "check_subtract_combos{current_player.combos_value==4}", "Glf_751"
Function Glf_752(args)
	On Error Resume Next
	    Glf_752 = GetPlayerState("combos_value")=3
	If Err Then Glf_752 = False
End Function
glf_funcRefMap.Add "check_subtract_combos{current_player.combos_value==3}", "Glf_752"
Function Glf_753(args)
	On Error Resume Next
	    Glf_753 = GetPlayerState("combos_value")=2
	If Err Then Glf_753 = False
End Function
glf_funcRefMap.Add "check_subtract_combos{current_player.combos_value==2}", "Glf_753"
Function Glf_754(args)
	On Error Resume Next
	    Glf_754 = GetPlayerState("combos_value")=1
	If Err Then Glf_754 = False
End Function
glf_funcRefMap.Add "check_subtract_combos{current_player.combos_value==1}", "Glf_754"
Function Glf_755(args)
	On Error Resume Next
	    Glf_755 = GetPlayerState("combos_value")>0
	If Err Then Glf_755 = False
End Function
glf_funcRefMap.Add "left_side_hit{current_player.combos_value>0}", "Glf_755"
Function Glf_756(args)
	On Error Resume Next
	    Glf_756 = GetPlayerState("combos_value")>0
	If Err Then Glf_756 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.combos_value>0}", "Glf_756"
Function Glf_757(args)
	On Error Resume Next
	    Glf_757 = GetPlayerState("combos_value")>0
	If Err Then Glf_757 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.combos_value>0}", "Glf_757"
Function Glf_758(args)
	On Error Resume Next
	    Glf_758 = GetPlayerState("combos_value")>0
	If Err Then Glf_758 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.combos_value>0}", "Glf_758"
Function Glf_759(args)
	On Error Resume Next
	    Glf_759 = GetPlayerState("combos_value")>0
	If Err Then Glf_759 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.combos_value>0}", "Glf_759"
Function Glf_760(args)
	On Error Resume Next
	    Glf_760 = GetPlayerState("combos_value")>0
	If Err Then Glf_760 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.combos_value>0}", "Glf_760"
Function Glf_761(args)
	On Error Resume Next
	    Glf_761 = GetPlayerState("combos_value")>0
	If Err Then Glf_761 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.combos_value>0}", "Glf_761"
Function Glf_762(args)
	On Error Resume Next
	    Glf_762 = GetPlayerState("combos_value")>0
	If Err Then Glf_762 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.combos_value>0}", "Glf_762"
Function Glf_763(args)
	Glf_763 = GetPlayerState("combo_ticks")
End Function
glf_funcRefMap.Add "current_player.combo_ticks", "Glf_763"
Function Glf_764(args)
	Glf_764 = GetPlayerState("combo_decay_ticks")
End Function
glf_funcRefMap.Add "current_player.combo_decay_ticks", "Glf_764"
Function Glf_765(args)
	On Error Resume Next
	    Glf_765 = GetPlayerState("shot_timewarp1")=0
	If Err Then Glf_765 = False
End Function
glf_funcRefMap.Add "mode_timewarp_started{current_player.shot_timewarp1==0}", "Glf_765"
Function Glf_766(args)
	On Error Resume Next
	    Glf_766 = GetPlayerState("ball_just_started")=0
	If Err Then Glf_766 = False
End Function
glf_funcRefMap.Add "mode_timewarp_started{current_player.ball_just_started==0}", "Glf_766"
Function Glf_767(args)
	On Error Resume Next
	    Glf_767 = GetPlayerState("warping")=0 And GetPlayerState("shot_timewarp1")=1
	If Err Then Glf_767 = False
End Function
glf_funcRefMap.Add "s_TimewarpRamp_active{current_player.warping==0 && current_player.shot_timewarp1==1}", "Glf_767"
Function Glf_768(args)
	On Error Resume Next
	    Glf_768 = GetPlayerState("warping")=0 And GetPlayerState("shot_timewarp1")=2 And GetPlayerState("shot_timewarp2")=1
	If Err Then Glf_768 = False
End Function
glf_funcRefMap.Add "s_TimewarpRamp_active{current_player.warping==0 && current_player.shot_timewarp1==2 && current_player.shot_timewarp2==1}", "Glf_768"
Function Glf_769(args)
	Glf_769 = Glf_FormatValue(glf_timers("meteor_countdown").GetValue("ticks"), "0>2")
End Function
glf_funcRefMap.Add "{devices.timers.meteor_countdown.ticks:0>2}", "Glf_769"
Function Glf_770(args)
	Glf_770 = "WARPING"
End Function
glf_funcRefMap.Add """WARPING""", "Glf_770"
Function Glf_771(args)
	On Error Resume Next
	    Glf_771 = GetPlayerState("light_the_eb") = 1 And GetPlayerState("flippers_are_dead")=0
	If Err Then Glf_771 = False
End Function
glf_funcRefMap.Add "check_eb{current_player.light_the_eb == 1 && current_player.flippers_are_dead==0}", "Glf_771"
Function Glf_772(args)
	On Error Resume Next
	    Glf_772 = GetPlayerState("extra_balls") = 0
	If Err Then Glf_772 = False
End Function
glf_funcRefMap.Add "check_eb{current_player.extra_balls == 0}", "Glf_772"
Function Glf_773(args)
	On Error Resume Next
	    Glf_773 = GetPlayerState("extra_balls") > 0
	If Err Then Glf_773 = False
End Function
glf_funcRefMap.Add "check_eb{current_player.extra_balls > 0}", "Glf_773"
Function Glf_774(args)
	On Error Resume Next
	    Glf_774 = GetPlayerState("shot_eb_ready") = 0 And GetPlayerState("wizard_mode_is_ready")=0
	If Err Then Glf_774 = False
End Function
glf_funcRefMap.Add "balldevice_scoop_ball_entered{current_player.shot_eb_ready == 0 && current_player.wizard_mode_is_ready==0}", "Glf_774"
Function Glf_775(args)
	On Error Resume Next
	    Glf_775 = GetPlayerState("shot_eb_ready") = 1 And GetPlayerState("wizard_mode_is_ready")=0
	If Err Then Glf_775 = False
End Function
glf_funcRefMap.Add "balldevice_scoop_ball_entered{current_player.shot_eb_ready == 1 && current_player.wizard_mode_is_ready==0}", "Glf_775"
Function Glf_776(args)
	On Error Resume Next
	    Glf_776 = GetPlayerState("shot_mystery_ready")=0 And GetPlayerState("shot_training_ready")=0
	If Err Then Glf_776 = False
End Function
glf_funcRefMap.Add "eb_complete{current_player.shot_mystery_ready==0 && current_player.shot_training_ready==0}", "Glf_776"
Function Glf_777(args)
	Glf_777 = " EXTRA "
End Function
glf_funcRefMap.Add """ EXTRA """, "Glf_777"
Function Glf_778(args)
	Glf_778 = " BALL "
End Function
glf_funcRefMap.Add """ BALL """, "Glf_778"
Function Glf_779(args)
	On Error Resume Next
	    Glf_779 = GetPlayerState("shot_mystery_ready")=1 And GetPlayerState("flippers_are_dead")=0
	If Err Then Glf_779 = False
End Function
glf_funcRefMap.Add "mode_mystery_started{current_player.shot_mystery_ready==1 && current_player.flippers_are_dead==0}", "Glf_779"
Function Glf_780(args)
	On Error Resume Next
	    Glf_780 = GetPlayerState("shot_mystery_ready")=0 And GetPlayerState("flippers_are_dead")=0
	If Err Then Glf_780 = False
End Function
glf_funcRefMap.Add "check_mystery{current_player.shot_mystery_ready==0 && current_player.flippers_are_dead==0}", "Glf_780"
Function Glf_781(args)
	On Error Resume Next
	    Glf_781 = GetPlayerState("shot_mystery_ready")=1 And GetPlayerState("flippers_are_dead")=0
	If Err Then Glf_781 = False
End Function
glf_funcRefMap.Add "check_mystery{current_player.shot_mystery_ready==1 && current_player.flippers_are_dead==0}", "Glf_781"
Function Glf_782(args)
	On Error Resume Next
	    Glf_782 = GetPlayerState("shot_training_ready")=0
	If Err Then Glf_782 = False
End Function
glf_funcRefMap.Add "restart_qualify_mystery{current_player.shot_training_ready==0}", "Glf_782"
Function Glf_783(args)
	On Error Resume Next
	    Glf_783 = GetPlayerState("flag_sss_mystery") = 0
	If Err Then Glf_783 = False
End Function
glf_funcRefMap.Add "qualify_mystery_on_complete{current_player.flag_sss_mystery == 0}", "Glf_783"
Function Glf_784(args)
	On Error Resume Next
	    Glf_784 = GetPlayerState("shot_health9_light") = 0
	If Err Then Glf_784 = False
End Function
glf_funcRefMap.Add "mystery_full_health{current_player.shot_health9_light == 0}", "Glf_784"
Function Glf_785(args)
	On Error Resume Next
	    Glf_785 = GetPlayerState("shot_proton_round6") = 0
	If Err Then Glf_785 = False
End Function
glf_funcRefMap.Add "mystery_full_protons{current_player.shot_proton_round6 == 0}", "Glf_785"
Function Glf_786(args)
	On Error Resume Next
	    Glf_786 = GetPlayerState("shot_cluster_bomb2") = 0
	If Err Then Glf_786 = False
End Function
glf_funcRefMap.Add "mystery_added_cluster{current_player.shot_cluster_bomb2 == 0}", "Glf_786"
Function Glf_787(args)
	On Error Resume Next
	    Glf_787 = GetPlayerState("shot_ship_charge3") <> 2
	If Err Then Glf_787 = False
End Function
glf_funcRefMap.Add "mystery_added_saver{current_player.shot_ship_charge3 != 2}", "Glf_787"
Function Glf_788(args)
	On Error Resume Next
	    Glf_788 = GetPlayerState("shot_shield_left") = 0
	If Err Then Glf_788 = False
End Function
glf_funcRefMap.Add "mystery_added_shields{current_player.shot_shield_left == 0}", "Glf_788"
Function Glf_789(args)
	On Error Resume Next
	    Glf_789 = GetPlayerState("shot_moon_missile2") = 0 And glf_state_machines("moon_mb").GetValue("state")<>"locking"
	If Err Then Glf_789 = False
End Function
glf_funcRefMap.Add "mystery_moon_ready{current_player.shot_moon_missile2 == 0 && devices.state_machines.moon_mb.state!=""locking""}", "Glf_789"
Function Glf_790(args)
	On Error Resume Next
	    Glf_790 = GetPlayerState("scoring_multiplier") = 1
	If Err Then Glf_790 = False
End Function
glf_funcRefMap.Add "mystery_double_scoring{current_player.scoring_multiplier == 1}", "Glf_790"
Function Glf_791(args)
	On Error Resume Next
	    Glf_791 = GetPlayerState("spin_multiplier") = 1
	If Err Then Glf_791 = False
End Function
glf_funcRefMap.Add "mystery_super_spinner{current_player.spin_multiplier == 1}", "Glf_791"
Function Glf_792(args)
	On Error Resume Next
	    Glf_792 = GetPlayerState("pop_multiplier") = 1
	If Err Then Glf_792 = False
End Function
glf_funcRefMap.Add "mystery_super_pops{current_player.pop_multiplier == 1}", "Glf_792"
Function Glf_793(args)
	On Error Resume Next
	    Glf_793 = GetPlayerState("bonus_multiplier") = 1
	If Err Then Glf_793 = False
End Function
glf_funcRefMap.Add "mystery_double_bonus{current_player.bonus_multiplier == 1}", "Glf_793"
Function Glf_794(args)
	On Error Resume Next
	    Glf_794 = GetPlayerState("combos_relaxed") = 0
	If Err Then Glf_794 = False
End Function
glf_funcRefMap.Add "mystery_relaxed_combos{current_player.combos_relaxed == 0}", "Glf_794"
Function Glf_795(args)
	On Error Resume Next
	    Glf_795 = GetPlayerState("nuke_acquired") = 0
	If Err Then Glf_795 = False
End Function
glf_funcRefMap.Add "activate_nuke{current_player.nuke_acquired == 0}", "Glf_795"
Function Glf_796(args)
	Glf_796 = "CLAIM"
End Function
glf_funcRefMap.Add """CLAIM""", "Glf_796"
Function Glf_797(args)
	Glf_797 = "MYSTERY"
End Function
glf_funcRefMap.Add """MYSTERY""", "Glf_797"
Function Glf_798(args)
	Glf_798 = " FULL "
End Function
glf_funcRefMap.Add """ FULL """, "Glf_798"
Function Glf_799(args)
	Glf_799 = "HEALTH"
End Function
glf_funcRefMap.Add """HEALTH""", "Glf_799"
Function Glf_800(args)
	Glf_800 = " ADDED "
End Function
glf_funcRefMap.Add """ ADDED """, "Glf_800"
Function Glf_801(args)
	Glf_801 = "CLUSTER"
End Function
glf_funcRefMap.Add """CLUSTER""", "Glf_801"
Function Glf_802(args)
	Glf_802 = " MOON "
End Function
glf_funcRefMap.Add """ MOON """, "Glf_802"
Function Glf_803(args)
	Glf_803 = " READY "
End Function
glf_funcRefMap.Add """ READY """, "Glf_803"
Function Glf_804(args)
	Glf_804 = "TRAINER"
End Function
glf_funcRefMap.Add """TRAINER""", "Glf_804"
Function Glf_805(args)
	Glf_805 = "DOUBLE"
End Function
glf_funcRefMap.Add """DOUBLE""", "Glf_805"
Function Glf_806(args)
	Glf_806 = "SCORING"
End Function
glf_funcRefMap.Add """SCORING""", "Glf_806"
Function Glf_807(args)
	Glf_807 = " SUPER "
End Function
glf_funcRefMap.Add """ SUPER """, "Glf_807"
Function Glf_808(args)
	Glf_808 = "SPINNER"
End Function
glf_funcRefMap.Add """SPINNER""", "Glf_808"
Function Glf_809(args)
	Glf_809 = "  POPS  "
End Function
glf_funcRefMap.Add """  POPS  """, "Glf_809"
Function Glf_810(args)
	Glf_810 = " BONUS "
End Function
glf_funcRefMap.Add """ BONUS """, "Glf_810"
Function Glf_811(args)
	Glf_811 = "RELAXED"
End Function
glf_funcRefMap.Add """RELAXED""", "Glf_811"
Function Glf_812(args)
	Glf_812 = "COMBOS"
End Function
glf_funcRefMap.Add """COMBOS""", "Glf_812"
Function Glf_813(args)
	Glf_813 = " EB IS "
End Function
glf_funcRefMap.Add """ EB IS """, "Glf_813"
Function Glf_814(args)
	Glf_814 = " LIT "
End Function
glf_funcRefMap.Add """ LIT """, "Glf_814"
Function Glf_815(args)
	On Error Resume Next
	    Glf_815 = GetPlayerState("shot_moon_missile2") = 1
	If Err Then Glf_815 = False
End Function
glf_funcRefMap.Add "mode_moon_multiball_qualify_started{current_player.shot_moon_missile2 == 1}", "Glf_815"
Function Glf_816(args)
	On Error Resume Next
	    Glf_816 = GetPlayerState("training_moon_missile_used")=1
	If Err Then Glf_816 = False
End Function
glf_funcRefMap.Add "mode_moon_multiball_qualify_started{current_player.training_moon_missile_used==1}", "Glf_816"
Function Glf_817(args)
	On Error Resume Next
	    Glf_817 = GetPlayerState("training_moon_missile_achieved")=1 And glf_state_machines("moon_mb").GetValue("state")<>"locking" And GetPlayerState("shot_moon_missile2") = 0
	If Err Then Glf_817 = False
End Function
glf_funcRefMap.Add "mode_moon_multiball_qualify_started{current_player.training_moon_missile_achieved==1 && devices.state_machines.moon_mb.state!=""locking"" && current_player.shot_moon_missile2 == 0}", "Glf_817"
Function Glf_818(args)
	On Error Resume Next
	    Glf_818 = GetPlayerState("training_moon_missile_achieved")=1
	If Err Then Glf_818 = False
End Function
glf_funcRefMap.Add "restart_moon_qualify_shots{current_player.training_moon_missile_achieved==1}", "Glf_818"
Function Glf_819(args)
	On Error Resume Next
	    Glf_819 = GetPlayerState("shot_moon_missile1") = 1
	If Err Then Glf_819 = False
End Function
glf_funcRefMap.Add "mode_moon_multiball_qualify_started{current_player.shot_moon_missile1 == 1}", "Glf_819"
Function Glf_820(args)
	On Error Resume Next
	    Glf_820 = glf_state_machines("moon_mb").GetValue("state")<>"locking" And glf_ball_devices("moon_lock").GetValue("balls")=0
	If Err Then Glf_820 = False
End Function
glf_funcRefMap.Add "s_MoonRamp_active{devices.state_machines.moon_mb.state!=""locking"" && devices.ball_devices.moon_lock.balls==0}", "Glf_820"
Function Glf_821(args)
	On Error Resume Next
	    Glf_821 = glf_state_machines("moon_mb").GetValue("state")<>"locking" And glf_ball_devices("moon_lock").GetValue("balls") > GetPlayerState("multiball_lock_moon_launch_balls_locked") And glf_ball_devices("moon_lock").GetValue("balls") > GetPlayerState("leftover_balls_in_lock")
	If Err Then Glf_821 = False
End Function
glf_funcRefMap.Add "balldevice_moon_lock_ball_entered{devices.state_machines.moon_mb.state!=""locking"" && devices.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked && devices.ball_devices.moon_lock.balls > current_player.leftover_balls_in_lock}", "Glf_821"
Function Glf_822(args)
	On Error Resume Next
	    Glf_822 = glf_state_machines("moon_mb").GetValue("state")="in_progress"
	If Err Then Glf_822 = False
End Function
glf_funcRefMap.Add "balldevice_moon_lock_ball_entered{devices.state_machines.moon_mb.state==""in_progress""}", "Glf_822"
Function Glf_823(args)
	On Error Resume Next
	    Glf_823 = glf_ball_devices("moon_lock").GetValue("balls") > GetPlayerState("multiball_lock_moon_launch_balls_locked")
	If Err Then Glf_823 = False
End Function
glf_funcRefMap.Add "multiball_lock_moon_launch_locked_ball{devices.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked}", "Glf_823"
Function Glf_824(args)
	On Error Resume Next
	    Glf_824 = GetPlayerState("multiball_lock_moon_launch_balls_locked")=1
	If Err Then Glf_824 = False
End Function
glf_funcRefMap.Add "multiball_lock_moon_launch_locked_ball{current_player.multiball_lock_moon_launch_balls_locked==1}", "Glf_824"
Function Glf_825(args)
	On Error Resume Next
	    Glf_825 = GetPlayerState("multiball_lock_moon_launch_balls_locked")=2
	If Err Then Glf_825 = False
End Function
glf_funcRefMap.Add "multiball_lock_moon_launch_locked_ball{current_player.multiball_lock_moon_launch_balls_locked==2}", "Glf_825"
Function Glf_826(args)
	On Error Resume Next
	    Glf_826 = GetPlayerState("shot_moon_missile2") = 0
	If Err Then Glf_826 = False
End Function
glf_funcRefMap.Add "stop_meteor_wave{current_player.shot_moon_missile2 == 0}", "Glf_826"
Function Glf_827(args)
	On Error Resume Next
	    Glf_827 = glf_state_machines("moon_mb").GetValue("state")="locking"
	If Err Then Glf_827 = False
End Function
glf_funcRefMap.Add "mode_moon_multiball_qualify_started{devices.state_machines.moon_mb.state==""locking""}", "Glf_827"
Function Glf_828(args)
	On Error Resume Next
	    Glf_828 = GetPlayerState("ball_just_started") = 0
	If Err Then Glf_828 = False
End Function
glf_funcRefMap.Add "restart_moon_qualify_shots{current_player.ball_just_started == 0}", "Glf_828"
Function Glf_829(args)
	Glf_829 = glf_ball_devices("moon_lock").GetValue("balls")
End Function
glf_funcRefMap.Add "devices.ball_devices.moon_lock.balls", "Glf_829"
Function Glf_830(args)
	Glf_830 = "MOON"
End Function
glf_funcRefMap.Add """MOON""", "Glf_830"
Function Glf_831(args)
	Glf_831 = "LAUNCH"
End Function
glf_funcRefMap.Add """LAUNCH""", "Glf_831"
Function Glf_832(args)
	Glf_832 = "LOCK"
End Function
glf_funcRefMap.Add """LOCK""", "Glf_832"
Function Glf_833(args)
	On Error Resume Next
	    Glf_833 = GetPlayerState("multiball_lock_moon_launch_balls_locked")>0 And GetPlayerState("disable_moon_launch")=0 And GetPlayerState("wizard_mode_running")=0
	If Err Then Glf_833 = False
End Function
glf_funcRefMap.Add "s_right_magna_key_active{current_player.multiball_lock_moon_launch_balls_locked>0 && current_player.disable_moon_launch==0 && current_player.wizard_mode_running==0}", "Glf_833"
Function Glf_834(args)
	On Error Resume Next
	    Glf_834 = GetPlayerState("multiball_lock_moon_launch_balls_locked")=0 And GetPlayerState("disable_moon_launch")=0
	If Err Then Glf_834 = False
End Function
glf_funcRefMap.Add "s_right_magna_key_active{current_player.multiball_lock_moon_launch_balls_locked==0 && current_player.disable_moon_launch==0}", "Glf_834"
Function Glf_835(args)
	Glf_835 = 10000
End Function
glf_funcRefMap.Add "10000", "Glf_835"
Function Glf_836(args)
	Glf_836 = GetPlayerState("multiball_lock_moon_launch_balls_locked")
End Function
glf_funcRefMap.Add "current_player.multiball_lock_moon_launch_balls_locked", "Glf_836"
Function Glf_837(args)
	On Error Resume Next
	    Glf_837 = GetPlayerState("wizard_mode_running") = 0
	If Err Then Glf_837 = False
End Function
glf_funcRefMap.Add "start_moon_multiball.1{current_player.wizard_mode_running == 0}", "Glf_837"
Function Glf_838(args)
	On Error Resume Next
	    Glf_838 = glf_timers("double_scoring").GetValue("ticks") = 55
	If Err Then Glf_838 = False
End Function
glf_funcRefMap.Add "timer_double_scoring_tick{devices.timers.double_scoring.ticks == 55}", "Glf_838"
Function Glf_839(args)
	Glf_839 = " DOUBLE "
End Function
glf_funcRefMap.Add """ DOUBLE """, "Glf_839"
Function Glf_840(args)
	On Error Resume Next
	    Glf_840 = glf_timers("super_spinner").GetValue("ticks") = 55
	If Err Then Glf_840 = False
End Function
glf_funcRefMap.Add "timer_super_spinner_tick{devices.timers.super_spinner.ticks == 55}", "Glf_840"
Function Glf_841(args)
	Glf_841 = 69
End Function
glf_funcRefMap.Add "69", "Glf_841"
Function Glf_842(args)
	On Error Resume Next
	    Glf_842 = glf_timers("super_pops").GetValue("ticks") = 55
	If Err Then Glf_842 = False
End Function
glf_funcRefMap.Add "timer_super_pops_tick{devices.timers.super_pops.ticks == 55}", "Glf_842"
Function Glf_843(args)
	On Error Resume Next
	    Glf_843 = GetPlayerState("ball_just_started")=1
	If Err Then Glf_843 = False
End Function
glf_funcRefMap.Add "mode_health_started{current_player.ball_just_started==1}", "Glf_843"
Function Glf_844(args)
	On Error Resume Next
	    Glf_844 = GetPlayerState("training_heal_achieved")=1
	If Err Then Glf_844 = False
End Function
glf_funcRefMap.Add "mode_health_started{current_player.training_heal_achieved==1}", "Glf_844"
Function Glf_845(args)
	On Error Resume Next
	    Glf_845 = GetPlayerState("health_bump_value")<9
	If Err Then Glf_845 = False
End Function
glf_funcRefMap.Add "check_add_health_bump{current_player.health_bump_value<9}", "Glf_845"
Function Glf_846(args)
	On Error Resume Next
	    Glf_846 = GetPlayerState("health_bump_value")>=9
	If Err Then Glf_846 = False
End Function
glf_funcRefMap.Add "check_add_health_bump{current_player.health_bump_value>=9}", "Glf_846"
Function Glf_847(args)
	On Error Resume Next
	    Glf_847 = GetPlayerState("health_value")=8
	If Err Then Glf_847 = False
End Function
glf_funcRefMap.Add "check_add_health{current_player.health_value==8}", "Glf_847"
Function Glf_848(args)
	On Error Resume Next
	    Glf_848 = GetPlayerState("health_value")=7
	If Err Then Glf_848 = False
End Function
glf_funcRefMap.Add "check_add_health{current_player.health_value==7}", "Glf_848"
Function Glf_849(args)
	On Error Resume Next
	    Glf_849 = GetPlayerState("health_value")=6
	If Err Then Glf_849 = False
End Function
glf_funcRefMap.Add "check_add_health{current_player.health_value==6}", "Glf_849"
Function Glf_850(args)
	On Error Resume Next
	    Glf_850 = GetPlayerState("health_value")=5
	If Err Then Glf_850 = False
End Function
glf_funcRefMap.Add "check_add_health{current_player.health_value==5}", "Glf_850"
Function Glf_851(args)
	On Error Resume Next
	    Glf_851 = GetPlayerState("health_value")=4
	If Err Then Glf_851 = False
End Function
glf_funcRefMap.Add "check_add_health{current_player.health_value==4}", "Glf_851"
Function Glf_852(args)
	On Error Resume Next
	    Glf_852 = GetPlayerState("health_value")=3
	If Err Then Glf_852 = False
End Function
glf_funcRefMap.Add "check_add_health{current_player.health_value==3}", "Glf_852"
Function Glf_853(args)
	On Error Resume Next
	    Glf_853 = GetPlayerState("health_value")=2
	If Err Then Glf_853 = False
End Function
glf_funcRefMap.Add "check_add_health{current_player.health_value==2}", "Glf_853"
Function Glf_854(args)
	On Error Resume Next
	    Glf_854 = GetPlayerState("health_value")=1
	If Err Then Glf_854 = False
End Function
glf_funcRefMap.Add "check_add_health{current_player.health_value==1}", "Glf_854"
Function Glf_855(args)
	On Error Resume Next
	    Glf_855 = GetPlayerState("health_value")=9
	If Err Then Glf_855 = False
End Function
glf_funcRefMap.Add "check_remove_health{current_player.health_value==9}", "Glf_855"
Function Glf_856(args)
	On Error Resume Next
	    Glf_856 = GetPlayerState("health_value")=8
	If Err Then Glf_856 = False
End Function
glf_funcRefMap.Add "check_remove_health{current_player.health_value==8}", "Glf_856"
Function Glf_857(args)
	On Error Resume Next
	    Glf_857 = GetPlayerState("health_value")=7
	If Err Then Glf_857 = False
End Function
glf_funcRefMap.Add "check_remove_health{current_player.health_value==7}", "Glf_857"
Function Glf_858(args)
	On Error Resume Next
	    Glf_858 = GetPlayerState("health_value")=6
	If Err Then Glf_858 = False
End Function
glf_funcRefMap.Add "check_remove_health{current_player.health_value==6}", "Glf_858"
Function Glf_859(args)
	On Error Resume Next
	    Glf_859 = GetPlayerState("health_value")=5
	If Err Then Glf_859 = False
End Function
glf_funcRefMap.Add "check_remove_health{current_player.health_value==5}", "Glf_859"
Function Glf_860(args)
	On Error Resume Next
	    Glf_860 = GetPlayerState("health_value")=4
	If Err Then Glf_860 = False
End Function
glf_funcRefMap.Add "check_remove_health{current_player.health_value==4}", "Glf_860"
Function Glf_861(args)
	On Error Resume Next
	    Glf_861 = GetPlayerState("health_value")=3
	If Err Then Glf_861 = False
End Function
glf_funcRefMap.Add "check_remove_health{current_player.health_value==3}", "Glf_861"
Function Glf_862(args)
	On Error Resume Next
	    Glf_862 = GetPlayerState("health_value")=2
	If Err Then Glf_862 = False
End Function
glf_funcRefMap.Add "check_remove_health{current_player.health_value==2}", "Glf_862"
Function Glf_863(args)
	On Error Resume Next
	    Glf_863 = GetPlayerState("health_value")=1
	If Err Then Glf_863 = False
End Function
glf_funcRefMap.Add "check_remove_health{current_player.health_value==1}", "Glf_863"
Function Glf_864(args)
	On Error Resume Next
	    Glf_864 = GetPlayerState("health_value")>0
	If Err Then Glf_864 = False
End Function
glf_funcRefMap.Add "earth_hit{current_player.health_value>0}", "Glf_864"
Function Glf_865(args)
	On Error Resume Next
	    Glf_865 = GetPlayerState("shot_proton_charge1")=0
	If Err Then Glf_865 = False
End Function
glf_funcRefMap.Add "mode_proton_cannon_started{current_player.shot_proton_charge1==0}", "Glf_865"
Function Glf_866(args)
	On Error Resume Next
	    Glf_866 = GetPlayerState("training_proton_cannon_achieved")=1
	If Err Then Glf_866 = False
End Function
glf_funcRefMap.Add "mode_proton_cannon_started{current_player.training_proton_cannon_achieved==1}", "Glf_866"
Function Glf_867(args)
	On Error Resume Next
	    Glf_867 = GetPlayerState("training_proton_cannon_achieved")=0
	If Err Then Glf_867 = False
End Function
glf_funcRefMap.Add "reset_proton_charges{current_player.training_proton_cannon_achieved==0}", "Glf_867"
Function Glf_868(args)
	On Error Resume Next
	    Glf_868 = GetPlayerState("training_proton_cannon_achieved")=1
	If Err Then Glf_868 = False
End Function
glf_funcRefMap.Add "reset_proton_charges{current_player.training_proton_cannon_achieved==1}", "Glf_868"
Function Glf_869(args)
	On Error Resume Next
	    Glf_869 = GetPlayerState("shot_proton_charge1") = 1
	If Err Then Glf_869 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.shot_proton_charge1 == 1}", "Glf_869"
Function Glf_870(args)
	On Error Resume Next
	    Glf_870 = GetPlayerState("shot_proton_charge1") = 2 And GetPlayerState("shot_proton_charge2") = 1
	If Err Then Glf_870 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.shot_proton_charge1 == 2 && current_player.shot_proton_charge2 == 1}", "Glf_870"
Function Glf_871(args)
	On Error Resume Next
	    Glf_871 = GetPlayerState("shot_proton_charge2") = 2 And GetPlayerState("shot_proton_charge3") = 1
	If Err Then Glf_871 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.shot_proton_charge2 == 2 && current_player.shot_proton_charge3 == 1}", "Glf_871"
Function Glf_872(args)
	On Error Resume Next
	    Glf_872 = GetPlayerState("shot_proton_round1") = 0
	If Err Then Glf_872 = False
End Function
glf_funcRefMap.Add "light_proton_charge3{current_player.shot_proton_round1 == 0}", "Glf_872"
Function Glf_873(args)
	On Error Resume Next
	    Glf_873 = GetPlayerState("shot_proton_round1") = 1 And GetPlayerState("shot_proton_round2") = 0
	If Err Then Glf_873 = False
End Function
glf_funcRefMap.Add "light_proton_charge3{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", "Glf_873"
Function Glf_874(args)
	On Error Resume Next
	    Glf_874 = GetPlayerState("shot_proton_round2") = 1 And GetPlayerState("shot_proton_round3") = 0
	If Err Then Glf_874 = False
End Function
glf_funcRefMap.Add "light_proton_charge3{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", "Glf_874"
Function Glf_875(args)
	On Error Resume Next
	    Glf_875 = GetPlayerState("shot_proton_round3") = 1 And GetPlayerState("shot_proton_round4") = 0
	If Err Then Glf_875 = False
End Function
glf_funcRefMap.Add "light_proton_charge3{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", "Glf_875"
Function Glf_876(args)
	On Error Resume Next
	    Glf_876 = GetPlayerState("shot_proton_round4") = 1 And GetPlayerState("shot_proton_round5") = 0
	If Err Then Glf_876 = False
End Function
glf_funcRefMap.Add "light_proton_charge3{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", "Glf_876"
Function Glf_877(args)
	On Error Resume Next
	    Glf_877 = GetPlayerState("shot_proton_round5") = 1 And GetPlayerState("shot_proton_round6") = 0
	If Err Then Glf_877 = False
End Function
glf_funcRefMap.Add "light_proton_charge3{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", "Glf_877"
Function Glf_878(args)
	Glf_878 = "PROTON"
End Function
glf_funcRefMap.Add """PROTON""", "Glf_878"
Function Glf_879(args)
	On Error Resume Next
	    Glf_879 = GetPlayerState("shot_cluster_charge1")=0
	If Err Then Glf_879 = False
End Function
glf_funcRefMap.Add "mode_cluster_bombs_started{current_player.shot_cluster_charge1==0}", "Glf_879"
Function Glf_880(args)
	On Error Resume Next
	    Glf_880 = GetPlayerState("training_cluster_bomb_achieved")=1
	If Err Then Glf_880 = False
End Function
glf_funcRefMap.Add "mode_cluster_bombs_started{current_player.training_cluster_bomb_achieved==1}", "Glf_880"
Function Glf_881(args)
	On Error Resume Next
	    Glf_881 = GetPlayerState("training_cluster_bomb_achieved")=0
	If Err Then Glf_881 = False
End Function
glf_funcRefMap.Add "reset_cluster_charges{current_player.training_cluster_bomb_achieved==0}", "Glf_881"
Function Glf_882(args)
	On Error Resume Next
	    Glf_882 = GetPlayerState("training_cluster_bomb_achieved")=1
	If Err Then Glf_882 = False
End Function
glf_funcRefMap.Add "reset_cluster_charges{current_player.training_cluster_bomb_achieved==1}", "Glf_882"
Function Glf_883(args)
	On Error Resume Next
	    Glf_883 = GetPlayerState("shot_cluster_bomb1") = 1
	If Err Then Glf_883 = False
End Function
glf_funcRefMap.Add "mode_cluster_bombs_started{current_player.shot_cluster_bomb1 == 1}", "Glf_883"
Function Glf_884(args)
	On Error Resume Next
	    Glf_884 = GetPlayerState("shot_cluster_charge1") = 1
	If Err Then Glf_884 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_cluster_charge1 == 1}", "Glf_884"
Function Glf_885(args)
	On Error Resume Next
	    Glf_885 = GetPlayerState("shot_cluster_charge1") = 2 And GetPlayerState("shot_cluster_charge2") = 1
	If Err Then Glf_885 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_cluster_charge1 == 2 && current_player.shot_cluster_charge2 == 1}", "Glf_885"
Function Glf_886(args)
	On Error Resume Next
	    Glf_886 = GetPlayerState("shot_cluster_charge2") = 2 And GetPlayerState("shot_cluster_charge3") = 1
	If Err Then Glf_886 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_cluster_charge2 == 2 && current_player.shot_cluster_charge3 == 1}", "Glf_886"
Function Glf_887(args)
	On Error Resume Next
	    Glf_887 = GetPlayerState("shot_cluster_bomb1") = 0
	If Err Then Glf_887 = False
End Function
glf_funcRefMap.Add "light_cluster_charge3{current_player.shot_cluster_bomb1 == 0}", "Glf_887"
Function Glf_888(args)
	On Error Resume Next
	    Glf_888 = GetPlayerState("shot_cluster_bomb1") = 1 And GetPlayerState("shot_cluster_bomb2") = 0
	If Err Then Glf_888 = False
End Function
glf_funcRefMap.Add "light_cluster_charge3{current_player.shot_cluster_bomb1 == 1 && current_player.shot_cluster_bomb2 == 0}", "Glf_888"
Function Glf_889(args)
	On Error Resume Next
	    Glf_889 = GetPlayerState("shot_cluster_bomb1") = 1 And GetPlayerState("shot_cluster_bomb2") = 0
	If Err Then Glf_889 = False
End Function
glf_funcRefMap.Add "s_left_magna_key_active{current_player.shot_cluster_bomb1 == 1 && current_player.shot_cluster_bomb2 == 0}", "Glf_889"
Function Glf_890(args)
	On Error Resume Next
	    Glf_890 = GetPlayerState("shot_cluster_bomb2") = 1
	If Err Then Glf_890 = False
End Function
glf_funcRefMap.Add "s_left_magna_key_active{current_player.shot_cluster_bomb2 == 1}", "Glf_890"
Function Glf_891(args)
	On Error Resume Next
	    Glf_891 = GetPlayerState("shot_cluster_bomb1") = 0
	If Err Then Glf_891 = False
End Function
glf_funcRefMap.Add "s_left_magna_key_active{current_player.shot_cluster_bomb1 == 0}", "Glf_891"
Function Glf_892(args)
	On Error Resume Next
	    Glf_892 = GetPlayerState("num_training_shots_hit") = GetPlayerState("num_training_shots")
	If Err Then Glf_892 = False
End Function
glf_funcRefMap.Add "mode_training_qualify_started{current_player.num_training_shots_hit == current_player.num_training_shots}", "Glf_892"
Function Glf_893(args)
	On Error Resume Next
	    Glf_893 = GetPlayerState("training_just_finished") = 1
	If Err Then Glf_893 = False
End Function
glf_funcRefMap.Add "mode_training_qualify_started{current_player.training_just_finished == 1}", "Glf_893"
Function Glf_894(args)
	On Error Resume Next
	    Glf_894 = GetPlayerState("training_total_achieved") < 6
	If Err Then Glf_894 = False
End Function
glf_funcRefMap.Add "restart_qualify_training{current_player.training_total_achieved < 6}", "Glf_894"
Function Glf_895(args)
	On Error Resume Next
	    Glf_895 = GetPlayerState("training_total_achieved") = 3
	If Err Then Glf_895 = False
End Function
glf_funcRefMap.Add "restart_qualify_training{current_player.training_total_achieved == 3}", "Glf_895"
Function Glf_896(args)
	On Error Resume Next
	    Glf_896 = GetPlayerState("shot_training_shot1") = 1
	If Err Then Glf_896 = False
End Function
glf_funcRefMap.Add "left_side_hit{current_player.shot_training_shot1 == 1}", "Glf_896"
Function Glf_897(args)
	On Error Resume Next
	    Glf_897 = GetPlayerState("shot_training_shot2") = 1
	If Err Then Glf_897 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_training_shot2 == 1}", "Glf_897"
Function Glf_898(args)
	On Error Resume Next
	    Glf_898 = GetPlayerState("shot_training_shot3") = 1
	If Err Then Glf_898 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.shot_training_shot3 == 1}", "Glf_898"
Function Glf_899(args)
	On Error Resume Next
	    Glf_899 = GetPlayerState("shot_training_shot4") = 1
	If Err Then Glf_899 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.shot_training_shot4 == 1}", "Glf_899"
Function Glf_900(args)
	On Error Resume Next
	    Glf_900 = GetPlayerState("shot_training_shot5") = 1
	If Err Then Glf_900 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.shot_training_shot5 == 1}", "Glf_900"
Function Glf_901(args)
	On Error Resume Next
	    Glf_901 = GetPlayerState("shot_training_shot6") = 1
	If Err Then Glf_901 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.shot_training_shot6 == 1}", "Glf_901"
Function Glf_902(args)
	On Error Resume Next
	    Glf_902 = GetPlayerState("shot_training_shot7") = 1
	If Err Then Glf_902 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.shot_training_shot7 == 1}", "Glf_902"
Function Glf_903(args)
	On Error Resume Next
	    Glf_903 = GetPlayerState("shot_training_shot8") = 1
	If Err Then Glf_903 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_training_shot8 == 1}", "Glf_903"
Function Glf_904(args)
	On Error Resume Next
	    Glf_904 = GetPlayerState("num_training_shots_hit") = GetPlayerState("num_training_shots")
	If Err Then Glf_904 = False
End Function
glf_funcRefMap.Add "check_training_qualify{current_player.num_training_shots_hit == current_player.num_training_shots}", "Glf_904"
Function Glf_905(args)
	On Error Resume Next
	    Glf_905 = GetPlayerState("shot_training_ready") = 1 And GetPlayerState("wizard_mode_is_ready")=0 And GetPlayerState("flippers_are_dead")=0
	If Err Then Glf_905 = False
End Function
glf_funcRefMap.Add "s_Scoop_active{current_player.shot_training_ready == 1 && current_player.wizard_mode_is_ready==0 && current_player.flippers_are_dead==0}", "Glf_905"
Function Glf_906(args)
	On Error Resume Next
	    Glf_906 = GetPlayerState("shot_training_ready")=1 And GetPlayerState("flippers_are_dead")=0
	If Err Then Glf_906 = False
End Function
glf_funcRefMap.Add "check_training{current_player.shot_training_ready==1 && current_player.flippers_are_dead==0}", "Glf_906"
Function Glf_907(args)
	On Error Resume Next
	    Glf_907 = GetPlayerState("shot_training_ready") = 0
	If Err Then Glf_907 = False
End Function
glf_funcRefMap.Add "ss_trainer_ready{current_player.shot_training_ready == 0}", "Glf_907"
Function Glf_908(args)
	On Error Resume Next
	    Glf_908 = GetPlayerState("shot_training_shot1") = 0
	If Err Then Glf_908 = False
End Function
glf_funcRefMap.Add "left_side_training_on{current_player.shot_training_shot1 == 0}", "Glf_908"
Function Glf_909(args)
	On Error Resume Next
	    Glf_909 = GetPlayerState("shot_training_shot2") = 0
	If Err Then Glf_909 = False
End Function
glf_funcRefMap.Add "left_orbit_training_on{current_player.shot_training_shot2 == 0}", "Glf_909"
Function Glf_910(args)
	On Error Resume Next
	    Glf_910 = GetPlayerState("shot_training_shot3") = 0
	If Err Then Glf_910 = False
End Function
glf_funcRefMap.Add "left_ramp_training_on{current_player.shot_training_shot3 == 0}", "Glf_910"
Function Glf_911(args)
	On Error Resume Next
	    Glf_911 = GetPlayerState("shot_training_shot4") = 0
	If Err Then Glf_911 = False
End Function
glf_funcRefMap.Add "inner_orbit_training_on{current_player.shot_training_shot4 == 0}", "Glf_911"
Function Glf_912(args)
	On Error Resume Next
	    Glf_912 = GetPlayerState("shot_training_shot5") = 0
	If Err Then Glf_912 = False
End Function
glf_funcRefMap.Add "center_orbit_left_training_on{current_player.shot_training_shot5 == 0}", "Glf_912"
Function Glf_913(args)
	On Error Resume Next
	    Glf_913 = GetPlayerState("shot_training_shot6") = 0
	If Err Then Glf_913 = False
End Function
glf_funcRefMap.Add "center_orbit_right_training_on{current_player.shot_training_shot6 == 0}", "Glf_913"
Function Glf_914(args)
	On Error Resume Next
	    Glf_914 = GetPlayerState("shot_training_shot7") = 0
	If Err Then Glf_914 = False
End Function
glf_funcRefMap.Add "right_ramp_training_on{current_player.shot_training_shot7 == 0}", "Glf_914"
Function Glf_915(args)
	On Error Resume Next
	    Glf_915 = GetPlayerState("shot_training_shot8") = 0
	If Err Then Glf_915 = False
End Function
glf_funcRefMap.Add "right_orbit_training_on{current_player.shot_training_shot8 == 0}", "Glf_915"
Function Glf_916(args)
	Glf_916 = GetPlayerState("num_training_shots")
End Function
glf_funcRefMap.Add "current_player.num_training_shots", "Glf_916"
Function Glf_917(args)
	On Error Resume Next
	    Glf_917 = GetPlayerState("num_training_shots") < 8
	If Err Then Glf_917 = False
End Function
glf_funcRefMap.Add "training_shots_completed{current_player.num_training_shots < 8}", "Glf_917"
Function Glf_918(args)
	Glf_918 = "START"
End Function
glf_funcRefMap.Add """START""", "Glf_918"
Function Glf_919(args)
	On Error Resume Next
	    Glf_919 = glf_timers("training_select").GetValue("ticks") = 7
	If Err Then Glf_919 = False
End Function
glf_funcRefMap.Add "timer_training_select_tick{devices.timers.training_select.ticks == 7}", "Glf_919"
Function Glf_920(args)
	On Error Resume Next
	    Glf_920 = glf_state_machines("training_select").GetValue("state")="heal"
	If Err Then Glf_920 = False
End Function
glf_funcRefMap.Add "make_selection{devices.state_machines.training_select.state==""heal""}", "Glf_920"
Function Glf_921(args)
	On Error Resume Next
	    Glf_921 = glf_state_machines("training_select").GetValue("state")="cluster_bomb"
	If Err Then Glf_921 = False
End Function
glf_funcRefMap.Add "make_selection{devices.state_machines.training_select.state==""cluster_bomb""}", "Glf_921"
Function Glf_922(args)
	On Error Resume Next
	    Glf_922 = glf_state_machines("training_select").GetValue("state")="proton_cannon"
	If Err Then Glf_922 = False
End Function
glf_funcRefMap.Add "make_selection{devices.state_machines.training_select.state==""proton_cannon""}", "Glf_922"
Function Glf_923(args)
	On Error Resume Next
	    Glf_923 = glf_state_machines("training_select").GetValue("state")="moon_missile"
	If Err Then Glf_923 = False
End Function
glf_funcRefMap.Add "make_selection{devices.state_machines.training_select.state==""moon_missile""}", "Glf_923"
Function Glf_924(args)
	On Error Resume Next
	    Glf_924 = glf_state_machines("training_select").GetValue("state")="ship_save"
	If Err Then Glf_924 = False
End Function
glf_funcRefMap.Add "make_selection{devices.state_machines.training_select.state==""ship_save""}", "Glf_924"
Function Glf_925(args)
	On Error Resume Next
	    Glf_925 = glf_state_machines("training_select").GetValue("state")="shields"
	If Err Then Glf_925 = False
End Function
glf_funcRefMap.Add "make_selection{devices.state_machines.training_select.state==""shields""}", "Glf_925"
Function Glf_926(args)
	On Error Resume Next
	    Glf_926 = glf_state_machines("training_select").GetValue("state")="skip"
	If Err Then Glf_926 = False
End Function
glf_funcRefMap.Add "make_selection{devices.state_machines.training_select.state==""skip""}", "Glf_926"
Function Glf_927(args)
	On Error Resume Next
	    Glf_927 = glf_ball_devices("moon_lock").GetValue("balls") > GetPlayerState("multiball_lock_moon_launch_balls_locked")
	If Err Then Glf_927 = False
End Function
glf_funcRefMap.Add "balldevice_moon_lock_ball_enter{devices.ball_devices.moon_lock.balls > current_player.multiball_lock_moon_launch_balls_locked}", "Glf_927"
Function Glf_928(args)
	Glf_928 = "right"
End Function
glf_funcRefMap.Add """right""", "Glf_928"
Function Glf_929(args)
	Glf_929 = "left"
End Function
glf_funcRefMap.Add """left""", "Glf_929"
Function Glf_930(args)
	On Error Resume Next
	    Glf_930 = GetPlayerState("ts_hurry_up")=0
	If Err Then Glf_930 = False
End Function
glf_funcRefMap.Add "heal_selected{current_player.ts_hurry_up==0}", "Glf_930"
Function Glf_931(args)
	On Error Resume Next
	    Glf_931 = GetPlayerState("ts_hurry_up")=1
	If Err Then Glf_931 = False
End Function
glf_funcRefMap.Add "heal_selected{current_player.ts_hurry_up==1}", "Glf_931"
Function Glf_932(args)
	On Error Resume Next
	    Glf_932 = glf_state_machines("training_select").GetValue("state")="heal"
	If Err Then Glf_932 = False
End Function
glf_funcRefMap.Add "selection_hurry_up{devices.state_machines.training_select.state==""heal""}", "Glf_932"
Function Glf_933(args)
	On Error Resume Next
	    Glf_933 = GetPlayerState("ts_hurry_up")=0
	If Err Then Glf_933 = False
End Function
glf_funcRefMap.Add "cluster_bomb_selected{current_player.ts_hurry_up==0}", "Glf_933"
Function Glf_934(args)
	On Error Resume Next
	    Glf_934 = GetPlayerState("ts_hurry_up")=1
	If Err Then Glf_934 = False
End Function
glf_funcRefMap.Add "cluster_bomb_selected{current_player.ts_hurry_up==1}", "Glf_934"
Function Glf_935(args)
	On Error Resume Next
	    Glf_935 = glf_state_machines("training_select").GetValue("state")="cluster_bomb"
	If Err Then Glf_935 = False
End Function
glf_funcRefMap.Add "selection_hurry_up{devices.state_machines.training_select.state==""cluster_bomb""}", "Glf_935"
Function Glf_936(args)
	On Error Resume Next
	    Glf_936 = GetPlayerState("ts_hurry_up")=0
	If Err Then Glf_936 = False
End Function
glf_funcRefMap.Add "proton_cannon_selected{current_player.ts_hurry_up==0}", "Glf_936"
Function Glf_937(args)
	On Error Resume Next
	    Glf_937 = GetPlayerState("ts_hurry_up")=1
	If Err Then Glf_937 = False
End Function
glf_funcRefMap.Add "proton_cannon_selected{current_player.ts_hurry_up==1}", "Glf_937"
Function Glf_938(args)
	On Error Resume Next
	    Glf_938 = glf_state_machines("training_select").GetValue("state")="proton_cannon"
	If Err Then Glf_938 = False
End Function
glf_funcRefMap.Add "selection_hurry_up{devices.state_machines.training_select.state==""proton_cannon""}", "Glf_938"
Function Glf_939(args)
	On Error Resume Next
	    Glf_939 = GetPlayerState("ts_hurry_up")=0
	If Err Then Glf_939 = False
End Function
glf_funcRefMap.Add "moon_missile_selected{current_player.ts_hurry_up==0}", "Glf_939"
Function Glf_940(args)
	On Error Resume Next
	    Glf_940 = GetPlayerState("ts_hurry_up")=1
	If Err Then Glf_940 = False
End Function
glf_funcRefMap.Add "moon_missile_selected{current_player.ts_hurry_up==1}", "Glf_940"
Function Glf_941(args)
	On Error Resume Next
	    Glf_941 = glf_state_machines("training_select").GetValue("state")="moon_missile"
	If Err Then Glf_941 = False
End Function
glf_funcRefMap.Add "selection_hurry_up{devices.state_machines.training_select.state==""moon_missile""}", "Glf_941"
Function Glf_942(args)
	On Error Resume Next
	    Glf_942 = GetPlayerState("ts_hurry_up")=0
	If Err Then Glf_942 = False
End Function
glf_funcRefMap.Add "ship_save_selected{current_player.ts_hurry_up==0}", "Glf_942"
Function Glf_943(args)
	On Error Resume Next
	    Glf_943 = GetPlayerState("ts_hurry_up")=1
	If Err Then Glf_943 = False
End Function
glf_funcRefMap.Add "ship_save_selected{current_player.ts_hurry_up==1}", "Glf_943"
Function Glf_944(args)
	On Error Resume Next
	    Glf_944 = glf_state_machines("training_select").GetValue("state")="ship_save"
	If Err Then Glf_944 = False
End Function
glf_funcRefMap.Add "selection_hurry_up{devices.state_machines.training_select.state==""ship_save""}", "Glf_944"
Function Glf_945(args)
	On Error Resume Next
	    Glf_945 = GetPlayerState("ts_hurry_up")=0
	If Err Then Glf_945 = False
End Function
glf_funcRefMap.Add "shields_selected{current_player.ts_hurry_up==0}", "Glf_945"
Function Glf_946(args)
	On Error Resume Next
	    Glf_946 = GetPlayerState("ts_hurry_up")=1
	If Err Then Glf_946 = False
End Function
glf_funcRefMap.Add "shields_selected{current_player.ts_hurry_up==1}", "Glf_946"
Function Glf_947(args)
	On Error Resume Next
	    Glf_947 = glf_state_machines("training_select").GetValue("state")="shields"
	If Err Then Glf_947 = False
End Function
glf_funcRefMap.Add "selection_hurry_up{devices.state_machines.training_select.state==""shields""}", "Glf_947"
Function Glf_948(args)
	On Error Resume Next
	    Glf_948 = GetPlayerState("ts_last_move")="left" And GetPlayerState("training_heal_achieved")=1
	If Err Then Glf_948 = False
End Function
glf_funcRefMap.Add "training_select_left{current_player.ts_last_move==""left"" && current_player.training_heal_achieved==1}", "Glf_948"
Function Glf_949(args)
	On Error Resume Next
	    Glf_949 = GetPlayerState("ts_last_move")="right" And GetPlayerState("training_heal_achieved")=1
	If Err Then Glf_949 = False
End Function
glf_funcRefMap.Add "training_select_right{current_player.ts_last_move==""right"" && current_player.training_heal_achieved==1}", "Glf_949"
Function Glf_950(args)
	On Error Resume Next
	    Glf_950 = GetPlayerState("ts_last_move")="left" And GetPlayerState("training_cluster_bomb_achieved")=1
	If Err Then Glf_950 = False
End Function
glf_funcRefMap.Add "training_select_left{current_player.ts_last_move==""left"" && current_player.training_cluster_bomb_achieved==1}", "Glf_950"
Function Glf_951(args)
	On Error Resume Next
	    Glf_951 = GetPlayerState("ts_last_move")="right" And GetPlayerState("training_cluster_bomb_achieved")=1
	If Err Then Glf_951 = False
End Function
glf_funcRefMap.Add "training_select_right{current_player.ts_last_move==""right"" && current_player.training_cluster_bomb_achieved==1}", "Glf_951"
Function Glf_952(args)
	On Error Resume Next
	    Glf_952 = GetPlayerState("ts_last_move")="left" And GetPlayerState("training_proton_cannon_achieved")=1
	If Err Then Glf_952 = False
End Function
glf_funcRefMap.Add "training_select_left{current_player.ts_last_move==""left"" && current_player.training_proton_cannon_achieved==1}", "Glf_952"
Function Glf_953(args)
	On Error Resume Next
	    Glf_953 = GetPlayerState("ts_last_move")="right" And GetPlayerState("training_proton_cannon_achieved")=1
	If Err Then Glf_953 = False
End Function
glf_funcRefMap.Add "training_select_right{current_player.ts_last_move==""right"" && current_player.training_proton_cannon_achieved==1}", "Glf_953"
Function Glf_954(args)
	On Error Resume Next
	    Glf_954 = GetPlayerState("ts_last_move")="left" And GetPlayerState("training_moon_missile_achieved")=1
	If Err Then Glf_954 = False
End Function
glf_funcRefMap.Add "training_select_left{current_player.ts_last_move==""left"" && current_player.training_moon_missile_achieved==1}", "Glf_954"
Function Glf_955(args)
	On Error Resume Next
	    Glf_955 = GetPlayerState("ts_last_move")="right" And GetPlayerState("training_moon_missile_achieved")=1
	If Err Then Glf_955 = False
End Function
glf_funcRefMap.Add "training_select_right{current_player.ts_last_move==""right"" && current_player.training_moon_missile_achieved==1}", "Glf_955"
Function Glf_956(args)
	On Error Resume Next
	    Glf_956 = GetPlayerState("ts_last_move")="left" And GetPlayerState("training_ship_save_achieved")=1
	If Err Then Glf_956 = False
End Function
glf_funcRefMap.Add "training_select_left{current_player.ts_last_move==""left"" && current_player.training_ship_save_achieved==1}", "Glf_956"
Function Glf_957(args)
	On Error Resume Next
	    Glf_957 = GetPlayerState("ts_last_move")="right" And GetPlayerState("training_ship_save_achieved")=1
	If Err Then Glf_957 = False
End Function
glf_funcRefMap.Add "training_select_right{current_player.ts_last_move==""right"" && current_player.training_ship_save_achieved==1}", "Glf_957"
Function Glf_958(args)
	On Error Resume Next
	    Glf_958 = GetPlayerState("ts_last_move")="left" And GetPlayerState("training_shields_achieved")=1
	If Err Then Glf_958 = False
End Function
glf_funcRefMap.Add "training_select_left{current_player.ts_last_move==""left"" && current_player.training_shields_achieved==1}", "Glf_958"
Function Glf_959(args)
	On Error Resume Next
	    Glf_959 = GetPlayerState("ts_last_move")="right" And GetPlayerState("training_shields_achieved")=1
	If Err Then Glf_959 = False
End Function
glf_funcRefMap.Add "training_select_right{current_player.ts_last_move==""right"" && current_player.training_shields_achieved==1}", "Glf_959"
Function Glf_960(args)
	Glf_960 = "SELECT"
End Function
glf_funcRefMap.Add """SELECT""", "Glf_960"
Function Glf_961(args)
	On Error Resume Next
	    Glf_961 = GetPlayerState("training_heal_achieved")=0
	If Err Then Glf_961 = False
End Function
glf_funcRefMap.Add "heal_selected{current_player.training_heal_achieved==0}", "Glf_961"
Function Glf_962(args)
	Glf_962 = "HEAL "
End Function
glf_funcRefMap.Add """HEAL """, "Glf_962"
Function Glf_963(args)
	On Error Resume Next
	    Glf_963 = GetPlayerState("training_cluster_bomb_achieved")=0
	If Err Then Glf_963 = False
End Function
glf_funcRefMap.Add "cluster_bomb_selected{current_player.training_cluster_bomb_achieved==0}", "Glf_963"
Function Glf_964(args)
	On Error Resume Next
	    Glf_964 = GetPlayerState("training_proton_cannon_achieved")=0
	If Err Then Glf_964 = False
End Function
glf_funcRefMap.Add "proton_cannon_selected{current_player.training_proton_cannon_achieved==0}", "Glf_964"
Function Glf_965(args)
	On Error Resume Next
	    Glf_965 = GetPlayerState("training_moon_missile_achieved")=0
	If Err Then Glf_965 = False
End Function
glf_funcRefMap.Add "moon_missile_selected{current_player.training_moon_missile_achieved==0}", "Glf_965"
Function Glf_966(args)
	Glf_966 = "MOON "
End Function
glf_funcRefMap.Add """MOON """, "Glf_966"
Function Glf_967(args)
	On Error Resume Next
	    Glf_967 = GetPlayerState("training_ship_save_achieved")=0
	If Err Then Glf_967 = False
End Function
glf_funcRefMap.Add "ship_save_selected{current_player.training_ship_save_achieved==0}", "Glf_967"
Function Glf_968(args)
	Glf_968 = "SAVER "
End Function
glf_funcRefMap.Add """SAVER """, "Glf_968"
Function Glf_969(args)
	On Error Resume Next
	    Glf_969 = GetPlayerState("training_shields_achieved")=0
	If Err Then Glf_969 = False
End Function
glf_funcRefMap.Add "shields_selected{current_player.training_shields_achieved==0}", "Glf_969"
Function Glf_970(args)
	Glf_970 = "SKIP "
End Function
glf_funcRefMap.Add """SKIP """, "Glf_970"
Function Glf_971(args)
	On Error Resume Next
	    Glf_971 = GetPlayerState("training_health_bump_value")<3
	If Err Then Glf_971 = False
End Function
glf_funcRefMap.Add "check_add_training_health_bump{current_player.training_health_bump_value<3}", "Glf_971"
Function Glf_972(args)
	On Error Resume Next
	    Glf_972 = GetPlayerState("training_health_bump_value")>=3
	If Err Then Glf_972 = False
End Function
glf_funcRefMap.Add "check_add_training_health_bump{current_player.training_health_bump_value>=3}", "Glf_972"
Function Glf_973(args)
	On Error Resume Next
	    Glf_973 = GetPlayerState("shot_training_health1") = 0
	If Err Then Glf_973 = False
End Function
glf_funcRefMap.Add "check_add_training_health{current_player.shot_training_health1 == 0}", "Glf_973"
Function Glf_974(args)
	On Error Resume Next
	    Glf_974 = GetPlayerState("shot_training_health1") = 1 And GetPlayerState("shot_training_health2") = 0
	If Err Then Glf_974 = False
End Function
glf_funcRefMap.Add "check_add_training_health{current_player.shot_training_health1 == 1 && current_player.shot_training_health2 == 0}", "Glf_974"
Function Glf_975(args)
	On Error Resume Next
	    Glf_975 = GetPlayerState("shot_training_health2") = 1 And GetPlayerState("shot_training_health3") = 0
	If Err Then Glf_975 = False
End Function
glf_funcRefMap.Add "check_add_training_health{current_player.shot_training_health2 == 1 && current_player.shot_training_health3 == 0}", "Glf_975"
Function Glf_976(args)
	On Error Resume Next
	    Glf_976 = GetPlayerState("shot_training_health3") = 1 And GetPlayerState("shot_training_health4") = 0
	If Err Then Glf_976 = False
End Function
glf_funcRefMap.Add "check_add_training_health{current_player.shot_training_health3 == 1 && current_player.shot_training_health4 == 0}", "Glf_976"
Function Glf_977(args)
	On Error Resume Next
	    Glf_977 = GetPlayerState("shot_training_health4") = 1 And GetPlayerState("shot_training_health5") = 0
	If Err Then Glf_977 = False
End Function
glf_funcRefMap.Add "check_add_training_health{current_player.shot_training_health4 == 1 && current_player.shot_training_health5 == 0}", "Glf_977"
Function Glf_978(args)
	On Error Resume Next
	    Glf_978 = GetPlayerState("shot_training_health5") = 1 And GetPlayerState("shot_training_health6") = 0
	If Err Then Glf_978 = False
End Function
glf_funcRefMap.Add "check_add_training_health{current_player.shot_training_health5 == 1 && current_player.shot_training_health6 == 0}", "Glf_978"
Function Glf_979(args)
	On Error Resume Next
	    Glf_979 = GetPlayerState("shot_training_health6") = 1 And GetPlayerState("shot_training_health7") = 0
	If Err Then Glf_979 = False
End Function
glf_funcRefMap.Add "check_add_training_health{current_player.shot_training_health6 == 1 && current_player.shot_training_health7 == 0}", "Glf_979"
Function Glf_980(args)
	On Error Resume Next
	    Glf_980 = GetPlayerState("shot_training_health7") = 1 And GetPlayerState("shot_training_health8") = 0
	If Err Then Glf_980 = False
End Function
glf_funcRefMap.Add "check_add_training_health{current_player.shot_training_health7 == 1 && current_player.shot_training_health8 == 0}", "Glf_980"
Function Glf_981(args)
	On Error Resume Next
	    Glf_981 = GetPlayerState("shot_training_health8") = 1 And GetPlayerState("shot_training_health9") = 0
	If Err Then Glf_981 = False
End Function
glf_funcRefMap.Add "check_add_training_health{current_player.shot_training_health8 == 1 && current_player.shot_training_health9 == 0}", "Glf_981"
Function Glf_982(args)
	On Error Resume Next
	    Glf_982 = GetPlayerState("training_heal_achieved")=0
	If Err Then Glf_982 = False
End Function
glf_funcRefMap.Add "mode_training_heal_stopping{current_player.training_heal_achieved==0}", "Glf_982"
Function Glf_983(args)
	Glf_983 = "TRAIN "
End Function
glf_funcRefMap.Add """TRAIN """, "Glf_983"
Function Glf_984(args)
	Glf_984 = Glf_FormatValue(glf_timers("training_heal").GetValue("ticks"), "0>2")
End Function
glf_funcRefMap.Add "{devices.timers.training_heal.ticks:0>2}", "Glf_984"
Function Glf_985(args)
	On Error Resume Next
	    Glf_985 = GetPlayerState("shot_training_cluster_charge1") = 0
	If Err Then Glf_985 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_training_cluster_charge1 == 0}", "Glf_985"
Function Glf_986(args)
	On Error Resume Next
	    Glf_986 = GetPlayerState("shot_training_cluster_charge1") = 1 And GetPlayerState("shot_training_cluster_charge2") = 0
	If Err Then Glf_986 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_training_cluster_charge1 == 1 && current_player.shot_training_cluster_charge2 == 0}", "Glf_986"
Function Glf_987(args)
	On Error Resume Next
	    Glf_987 = GetPlayerState("shot_training_cluster_charge2") = 1 And GetPlayerState("shot_training_cluster_charge3") = 0
	If Err Then Glf_987 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_training_cluster_charge2 == 1 && current_player.shot_training_cluster_charge3 == 0}", "Glf_987"
Function Glf_988(args)
	Glf_988 = Glf_FormatValue(glf_timers("training_cluster_bomb").GetValue("ticks"), "0>2")
End Function
glf_funcRefMap.Add "{devices.timers.training_cluster_bomb.ticks:0>2}", "Glf_988"
Function Glf_989(args)
	On Error Resume Next
	    Glf_989 = GetPlayerState("shot_training_proton_charge1") = 0
	If Err Then Glf_989 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.shot_training_proton_charge1 == 0}", "Glf_989"
Function Glf_990(args)
	On Error Resume Next
	    Glf_990 = GetPlayerState("shot_training_proton_charge1") = 1 And GetPlayerState("shot_training_proton_charge2") = 0
	If Err Then Glf_990 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.shot_training_proton_charge1 == 1 && current_player.shot_training_proton_charge2 == 0}", "Glf_990"
Function Glf_991(args)
	On Error Resume Next
	    Glf_991 = GetPlayerState("shot_training_proton_charge2") = 1 And GetPlayerState("shot_training_proton_charge3") = 0
	If Err Then Glf_991 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.shot_training_proton_charge2 == 1 && current_player.shot_training_proton_charge3 == 0}", "Glf_991"
Function Glf_992(args)
	Glf_992 = Glf_FormatValue(glf_timers("training_proton_cannon").GetValue("ticks"), "0>2")
End Function
glf_funcRefMap.Add "{devices.timers.training_proton_cannon.ticks:0>2}", "Glf_992"
Function Glf_993(args)
	On Error Resume Next
	    Glf_993 = GetPlayerState("shot_training_moon_lane1")=0
	If Err Then Glf_993 = False
End Function
glf_funcRefMap.Add "update_training_select_moon_lane{current_player.shot_training_moon_lane1==0}", "Glf_993"
Function Glf_994(args)
	On Error Resume Next
	    Glf_994 = GetPlayerState("shot_training_moon_lane1")=1
	If Err Then Glf_994 = False
End Function
glf_funcRefMap.Add "update_training_select_moon_lane{current_player.shot_training_moon_lane1==1}", "Glf_994"
Function Glf_995(args)
	On Error Resume Next
	    Glf_995 = GetPlayerState("shot_training_moon_lane2")=0
	If Err Then Glf_995 = False
End Function
glf_funcRefMap.Add "update_training_select_moon_lane{current_player.shot_training_moon_lane2==0}", "Glf_995"
Function Glf_996(args)
	On Error Resume Next
	    Glf_996 = GetPlayerState("shot_training_moon_lane2")=1
	If Err Then Glf_996 = False
End Function
glf_funcRefMap.Add "update_training_select_moon_lane{current_player.shot_training_moon_lane2==1}", "Glf_996"
Function Glf_997(args)
	On Error Resume Next
	    Glf_997 = GetPlayerState("shot_training_moon_lane3")=0
	If Err Then Glf_997 = False
End Function
glf_funcRefMap.Add "update_training_select_moon_lane{current_player.shot_training_moon_lane3==0}", "Glf_997"
Function Glf_998(args)
	On Error Resume Next
	    Glf_998 = GetPlayerState("shot_training_moon_lane3")=1
	If Err Then Glf_998 = False
End Function
glf_funcRefMap.Add "update_training_select_moon_lane{current_player.shot_training_moon_lane3==1}", "Glf_998"
Function Glf_999(args)
	On Error Resume Next
	    Glf_999 = GetPlayerState("shot_training_moon_lane4")=0
	If Err Then Glf_999 = False
End Function
glf_funcRefMap.Add "update_training_select_moon_lane{current_player.shot_training_moon_lane4==0}", "Glf_999"
Function Glf_1000(args)
	On Error Resume Next
	    Glf_1000 = GetPlayerState("shot_training_moon_lane4")=1
	If Err Then Glf_1000 = False
End Function
glf_funcRefMap.Add "update_training_select_moon_lane{current_player.shot_training_moon_lane4==1}", "Glf_1000"
Function Glf_1001(args)
	Glf_1001 = Glf_FormatValue(glf_timers("training_moon_missile").GetValue("ticks"), "0>2")
End Function
glf_funcRefMap.Add "{devices.timers.training_moon_missile.ticks:0>2}", "Glf_1001"
Function Glf_1002(args)
	On Error Resume Next
	    Glf_1002 = GetPlayerState("shot_training_ship_charge1") = 0
	If Err Then Glf_1002 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_training_ship_charge1 == 0}", "Glf_1002"
Function Glf_1003(args)
	On Error Resume Next
	    Glf_1003 = GetPlayerState("shot_training_ship_charge1") = 1 And GetPlayerState("shot_training_ship_charge2") = 0
	If Err Then Glf_1003 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_training_ship_charge1 == 1 && current_player.shot_training_ship_charge2 == 0}", "Glf_1003"
Function Glf_1004(args)
	On Error Resume Next
	    Glf_1004 = GetPlayerState("shot_training_ship_charge2") = 1 And GetPlayerState("shot_training_ship_charge3") = 0
	If Err Then Glf_1004 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_training_ship_charge2 == 1 && current_player.shot_training_ship_charge3 == 0}", "Glf_1004"
Function Glf_1005(args)
	Glf_1005 = "SAVER"
End Function
glf_funcRefMap.Add """SAVER""", "Glf_1005"
Function Glf_1006(args)
	Glf_1006 = Glf_FormatValue(glf_timers("training_ship_save").GetValue("ticks"), "0>2")
End Function
glf_funcRefMap.Add "{devices.timers.training_ship_save.ticks:0>2}", "Glf_1006"
Function Glf_1007(args)
	On Error Resume Next
	    Glf_1007 = GetPlayerState("shot_training_shield_charge1")=0
	If Err Then Glf_1007 = False
End Function
glf_funcRefMap.Add "update_training_select_shields{current_player.shot_training_shield_charge1==0}", "Glf_1007"
Function Glf_1008(args)
	On Error Resume Next
	    Glf_1008 = GetPlayerState("shot_training_shield_charge1")=1
	If Err Then Glf_1008 = False
End Function
glf_funcRefMap.Add "update_training_select_shields{current_player.shot_training_shield_charge1==1}", "Glf_1008"
Function Glf_1009(args)
	On Error Resume Next
	    Glf_1009 = GetPlayerState("shot_training_shield_charge2")=0
	If Err Then Glf_1009 = False
End Function
glf_funcRefMap.Add "update_training_select_shields{current_player.shot_training_shield_charge2==0}", "Glf_1009"
Function Glf_1010(args)
	On Error Resume Next
	    Glf_1010 = GetPlayerState("shot_training_shield_charge2")=1
	If Err Then Glf_1010 = False
End Function
glf_funcRefMap.Add "update_training_select_shields{current_player.shot_training_shield_charge2==1}", "Glf_1010"
Function Glf_1011(args)
	On Error Resume Next
	    Glf_1011 = GetPlayerState("shot_training_shield_charge3")=0
	If Err Then Glf_1011 = False
End Function
glf_funcRefMap.Add "update_training_select_shields{current_player.shot_training_shield_charge3==0}", "Glf_1011"
Function Glf_1012(args)
	On Error Resume Next
	    Glf_1012 = GetPlayerState("shot_training_shield_charge3")=1
	If Err Then Glf_1012 = False
End Function
glf_funcRefMap.Add "update_training_select_shields{current_player.shot_training_shield_charge3==1}", "Glf_1012"
Function Glf_1013(args)
	Glf_1013 = Glf_FormatValue(glf_timers("training_shields").GetValue("ticks"), "0>2")
End Function
glf_funcRefMap.Add "{devices.timers.training_shields.ticks:0>2}", "Glf_1013"
Function Glf_1014(args)
	On Error Resume Next
	    Glf_1014 = GetPlayerState("meteor_countdown_value") = 0
	If Err Then Glf_1014 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_qualify_started{current_player.meteor_countdown_value == 0}", "Glf_1014"
Function Glf_1015(args)
	On Error Resume Next
	    Glf_1015 = GetPlayerState("meteor_countdown_value") > 0
	If Err Then Glf_1015 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_qualify_started{current_player.meteor_countdown_value > 0}", "Glf_1015"
Function Glf_1016(args)
	On Error Resume Next
	    Glf_1016 = GetPlayerState("ball_just_started") = 0
	If Err Then Glf_1016 = False
End Function
glf_funcRefMap.Add "init_mwq_timer{current_player.ball_just_started == 0}", "Glf_1016"
Function Glf_1017(args)
	On Error Resume Next
	    Glf_1017 = GetPlayerState("ball_just_started") = 1
	If Err Then Glf_1017 = False
End Function
glf_funcRefMap.Add "s_Plunger1_inactive{current_player.ball_just_started == 1}", "Glf_1017"
Function Glf_1018(args)
	On Error Resume Next
	    Glf_1018 = glf_timers("meteor_countdown").GetValue("ticks") = 4
	If Err Then Glf_1018 = False
End Function
glf_funcRefMap.Add "timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 4}", "Glf_1018"
Function Glf_1019(args)
	On Error Resume Next
	    Glf_1019 = glf_timers("meteor_countdown").GetValue("ticks") = 2
	If Err Then Glf_1019 = False
End Function
glf_funcRefMap.Add "timer_meteor_countdown_tick{devices.timers.meteor_countdown.ticks == 2}", "Glf_1019"
Function Glf_1020(args)
	Glf_1020 = GetPlayerState("meteor_countdown_value")
End Function
glf_funcRefMap.Add "current_player.meteor_countdown_value", "Glf_1020"
Function Glf_1021(args)
	Glf_1021 = 45
End Function
glf_funcRefMap.Add "45", "Glf_1021"
Function Glf_1022(args)
	Glf_1022 = glf_timers("meteor_countdown").GetValue("ticks")
End Function
glf_funcRefMap.Add "devices.timers.meteor_countdown.ticks", "Glf_1022"
Function Glf_1023(args)
	On Error Resume Next
	    Glf_1023 = GetPlayerState("shot_meteor_wave1") = 0
	If Err Then Glf_1023 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.shot_meteor_wave1 == 0}", "Glf_1023"
Function Glf_1024(args)
	On Error Resume Next
	    Glf_1024 = GetPlayerState("shot_meteor_wave1") = 2 And GetPlayerState("shot_meteor_wave2") = 0
	If Err Then Glf_1024 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.shot_meteor_wave1 == 2 && current_player.shot_meteor_wave2 == 0}", "Glf_1024"
Function Glf_1025(args)
	On Error Resume Next
	    Glf_1025 = GetPlayerState("shot_meteor_wave2") = 2 And GetPlayerState("shot_meteor_wave3") = 0
	If Err Then Glf_1025 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.shot_meteor_wave2 == 2 && current_player.shot_meteor_wave3 == 0}", "Glf_1025"
Function Glf_1026(args)
	On Error Resume Next
	    Glf_1026 = GetPlayerState("shot_meteor_wave3") = 2 And GetPlayerState("shot_meteor_wave4") = 0
	If Err Then Glf_1026 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.shot_meteor_wave3 == 2 && current_player.shot_meteor_wave4 == 0}", "Glf_1026"
Function Glf_1027(args)
	On Error Resume Next
	    Glf_1027 = GetPlayerState("shot_meteor_wave4") = 2 And GetPlayerState("shot_meteor_wave5") = 0
	If Err Then Glf_1027 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.shot_meteor_wave4 == 2 && current_player.shot_meteor_wave5 == 0}", "Glf_1027"
Function Glf_1028(args)
	On Error Resume Next
	    Glf_1028 = GetPlayerState("shot_meteor_wave5") = 2 And GetPlayerState("shot_meteor_wave6") = 0
	If Err Then Glf_1028 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.shot_meteor_wave5 == 2 && current_player.shot_meteor_wave6 == 0}", "Glf_1028"
Function Glf_1029(args)
	On Error Resume Next
	    Glf_1029 = GetPlayerState("shot_meteor_wave6") = 2 And GetPlayerState("shot_meteor_wave7") = 0
	If Err Then Glf_1029 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.shot_meteor_wave6 == 2 && current_player.shot_meteor_wave7 == 0}", "Glf_1029"
Function Glf_1030(args)
	On Error Resume Next
	    Glf_1030 = GetPlayerState("shot_meteor_wave7") = 2 And GetPlayerState("shot_meteor_wave8") = 0
	If Err Then Glf_1030 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.shot_meteor_wave7 == 2 && current_player.shot_meteor_wave8 == 0}", "Glf_1030"
Function Glf_1031(args)
	On Error Resume Next
	    Glf_1031 = GetPlayerState("shot_meteor_wave8") = 2 And GetPlayerState("shot_meteor_wave9") = 0
	If Err Then Glf_1031 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.shot_meteor_wave8 == 2 && current_player.shot_meteor_wave9 == 0}", "Glf_1031"
Function Glf_1032(args)
	On Error Resume Next
	    Glf_1032 = GetPlayerState("shot_proton_round1") = 1 And GetPlayerState("shot_proton_round2") = 0
	If Err Then Glf_1032 = False
End Function
glf_funcRefMap.Add "s_TargetMystery3_active{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", "Glf_1032"
Function Glf_1033(args)
	On Error Resume Next
	    Glf_1033 = GetPlayerState("shot_proton_round2") = 1 And GetPlayerState("shot_proton_round3") = 0
	If Err Then Glf_1033 = False
End Function
glf_funcRefMap.Add "s_TargetMystery3_active{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", "Glf_1033"
Function Glf_1034(args)
	On Error Resume Next
	    Glf_1034 = GetPlayerState("shot_proton_round3") = 1 And GetPlayerState("shot_proton_round4") = 0
	If Err Then Glf_1034 = False
End Function
glf_funcRefMap.Add "s_TargetMystery3_active{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", "Glf_1034"
Function Glf_1035(args)
	On Error Resume Next
	    Glf_1035 = GetPlayerState("shot_proton_round4") = 1 And GetPlayerState("shot_proton_round5") = 0
	If Err Then Glf_1035 = False
End Function
glf_funcRefMap.Add "s_TargetMystery3_active{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", "Glf_1035"
Function Glf_1036(args)
	On Error Resume Next
	    Glf_1036 = GetPlayerState("shot_proton_round5") = 1 And GetPlayerState("shot_proton_round6") = 0
	If Err Then Glf_1036 = False
End Function
glf_funcRefMap.Add "s_TargetMystery3_active{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", "Glf_1036"
Function Glf_1037(args)
	On Error Resume Next
	    Glf_1037 = GetPlayerState("shot_proton_round6") = 1
	If Err Then Glf_1037 = False
End Function
glf_funcRefMap.Add "s_TargetMystery3_active{current_player.shot_proton_round6 == 1}", "Glf_1037"
Function Glf_1038(args)
	On Error Resume Next
	    Glf_1038 = GetPlayerState("shot_proton_round1") = 1 And GetPlayerState("shot_proton_round2") = 0
	If Err Then Glf_1038 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", "Glf_1038"
Function Glf_1039(args)
	On Error Resume Next
	    Glf_1039 = GetPlayerState("shot_proton_round2") = 1 And GetPlayerState("shot_proton_round3") = 0
	If Err Then Glf_1039 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", "Glf_1039"
Function Glf_1040(args)
	On Error Resume Next
	    Glf_1040 = GetPlayerState("shot_proton_round3") = 1 And GetPlayerState("shot_proton_round4") = 0
	If Err Then Glf_1040 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", "Glf_1040"
Function Glf_1041(args)
	On Error Resume Next
	    Glf_1041 = GetPlayerState("shot_proton_round4") = 1 And GetPlayerState("shot_proton_round5") = 0
	If Err Then Glf_1041 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", "Glf_1041"
Function Glf_1042(args)
	On Error Resume Next
	    Glf_1042 = GetPlayerState("shot_proton_round5") = 1 And GetPlayerState("shot_proton_round6") = 0
	If Err Then Glf_1042 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", "Glf_1042"
Function Glf_1043(args)
	On Error Resume Next
	    Glf_1043 = GetPlayerState("shot_proton_round6") = 1
	If Err Then Glf_1043 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.shot_proton_round6 == 1}", "Glf_1043"
Function Glf_1044(args)
	On Error Resume Next
	    Glf_1044 = GetPlayerState("shot_proton_round1") = 1 And GetPlayerState("shot_proton_round2") = 0
	If Err Then Glf_1044 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.shot_proton_round1 == 1 && current_player.shot_proton_round2 == 0}", "Glf_1044"
Function Glf_1045(args)
	On Error Resume Next
	    Glf_1045 = GetPlayerState("shot_proton_round2") = 1 And GetPlayerState("shot_proton_round3") = 0
	If Err Then Glf_1045 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.shot_proton_round2 == 1 && current_player.shot_proton_round3 == 0}", "Glf_1045"
Function Glf_1046(args)
	On Error Resume Next
	    Glf_1046 = GetPlayerState("shot_proton_round3") = 1 And GetPlayerState("shot_proton_round4") = 0
	If Err Then Glf_1046 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.shot_proton_round3 == 1 && current_player.shot_proton_round4 == 0}", "Glf_1046"
Function Glf_1047(args)
	On Error Resume Next
	    Glf_1047 = GetPlayerState("shot_proton_round4") = 1 And GetPlayerState("shot_proton_round5") = 0
	If Err Then Glf_1047 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.shot_proton_round4 == 1 && current_player.shot_proton_round5 == 0}", "Glf_1047"
Function Glf_1048(args)
	On Error Resume Next
	    Glf_1048 = GetPlayerState("shot_proton_round5") = 1 And GetPlayerState("shot_proton_round6") = 0
	If Err Then Glf_1048 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.shot_proton_round5 == 1 && current_player.shot_proton_round6 == 0}", "Glf_1048"
Function Glf_1049(args)
	On Error Resume Next
	    Glf_1049 = GetPlayerState("shot_proton_round6") = 1
	If Err Then Glf_1049 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.shot_proton_round6 == 1}", "Glf_1049"
Function Glf_1050(args)
	On Error Resume Next
	    Glf_1050 = GetPlayerState("num_meteors_to_drop") < 0
	If Err Then Glf_1050 = False
End Function
glf_funcRefMap.Add "check_meteor_wave.4{current_player.num_meteors_to_drop < 0}", "Glf_1050"
Function Glf_1051(args)
	On Error Resume Next
	    Glf_1051 = GetPlayerState("num_meteors_to_drop") <= 0 And GetPlayerState("nuke_just_used") = 0
	If Err Then Glf_1051 = False
End Function
glf_funcRefMap.Add "check_meteor_wave.1{current_player.num_meteors_to_drop <= 0 && current_player.nuke_just_used == 0}", "Glf_1051"
Function Glf_1052(args)
	On Error Resume Next
	    Glf_1052 = GetPlayerState("meteor_wave_running") = 1
	If Err Then Glf_1052 = False
End Function
glf_funcRefMap.Add "meteor_wave_done{current_player.meteor_wave_running == 1}", "Glf_1052"
Function Glf_1053(args)
	On Error Resume Next
	    Glf_1053 = GetPlayerState("meteor_wave_running") = 1
	If Err Then Glf_1053 = False
End Function
glf_funcRefMap.Add "detonate_nuke{current_player.meteor_wave_running == 1}", "Glf_1053"
Function Glf_1054(args)
	On Error Resume Next
	    Glf_1054 = GetPlayerState("shot_meteor_wave1") = 1
	If Err Then Glf_1054 = False
End Function
glf_funcRefMap.Add "meteor_wave_done_done.2{current_player.shot_meteor_wave1 == 1}", "Glf_1054"
Function Glf_1055(args)
	On Error Resume Next
	    Glf_1055 = GetPlayerState("shot_meteor_wave2") = 1
	If Err Then Glf_1055 = False
End Function
glf_funcRefMap.Add "meteor_wave_done_done.2{current_player.shot_meteor_wave2 == 1}", "Glf_1055"
Function Glf_1056(args)
	On Error Resume Next
	    Glf_1056 = GetPlayerState("shot_meteor_wave3") = 1
	If Err Then Glf_1056 = False
End Function
glf_funcRefMap.Add "meteor_wave_done_done.2{current_player.shot_meteor_wave3 == 1}", "Glf_1056"
Function Glf_1057(args)
	On Error Resume Next
	    Glf_1057 = GetPlayerState("shot_meteor_wave4") = 1
	If Err Then Glf_1057 = False
End Function
glf_funcRefMap.Add "meteor_wave_done_done.2{current_player.shot_meteor_wave4 == 1}", "Glf_1057"
Function Glf_1058(args)
	On Error Resume Next
	    Glf_1058 = GetPlayerState("shot_meteor_wave5") = 1
	If Err Then Glf_1058 = False
End Function
glf_funcRefMap.Add "meteor_wave_done_done.2{current_player.shot_meteor_wave5 == 1}", "Glf_1058"
Function Glf_1059(args)
	On Error Resume Next
	    Glf_1059 = GetPlayerState("shot_meteor_wave6") = 1
	If Err Then Glf_1059 = False
End Function
glf_funcRefMap.Add "meteor_wave_done_done.2{current_player.shot_meteor_wave6 == 1}", "Glf_1059"
Function Glf_1060(args)
	On Error Resume Next
	    Glf_1060 = GetPlayerState("shot_meteor_wave7") = 1
	If Err Then Glf_1060 = False
End Function
glf_funcRefMap.Add "meteor_wave_done_done.2{current_player.shot_meteor_wave7 == 1}", "Glf_1060"
Function Glf_1061(args)
	On Error Resume Next
	    Glf_1061 = GetPlayerState("shot_meteor_wave8") = 1
	If Err Then Glf_1061 = False
End Function
glf_funcRefMap.Add "meteor_wave_done_done.2{current_player.shot_meteor_wave8 == 1}", "Glf_1061"
Function Glf_1062(args)
	On Error Resume Next
	    Glf_1062 = GetPlayerState("shot_meteor_wave9") = 1
	If Err Then Glf_1062 = False
End Function
glf_funcRefMap.Add "meteor_wave_done_done.2{current_player.shot_meteor_wave9 == 1}", "Glf_1062"
Function Glf_1063(args)
	On Error Resume Next
	    Glf_1063 = GetPlayerState("training_heal_achieved")=0
	If Err Then Glf_1063 = False
End Function
glf_funcRefMap.Add "meteor_wave_done_done.2{current_player.training_heal_achieved==0}", "Glf_1063"
Function Glf_1064(args)
	On Error Resume Next
	    Glf_1064 = GetPlayerState("shot_proton_round1")=0
	If Err Then Glf_1064 = False
End Function
glf_funcRefMap.Add "check_protons{current_player.shot_proton_round1==0}", "Glf_1064"
Function Glf_1065(args)
	On Error Resume Next
	    Glf_1065 = GetPlayerState("shot_meteor1_light") > 0
	If Err Then Glf_1065 = False
End Function
glf_funcRefMap.Add "meteor1_proton_hit{current_player.shot_meteor1_light > 0}", "Glf_1065"
Function Glf_1066(args)
	On Error Resume Next
	    Glf_1066 = GetPlayerState("shot_meteor2_light") > 0
	If Err Then Glf_1066 = False
End Function
glf_funcRefMap.Add "meteor2_proton_hit{current_player.shot_meteor2_light > 0}", "Glf_1066"
Function Glf_1067(args)
	On Error Resume Next
	    Glf_1067 = GetPlayerState("shot_meteor3_light") > 0
	If Err Then Glf_1067 = False
End Function
glf_funcRefMap.Add "meteor3_proton_hit{current_player.shot_meteor3_light > 0}", "Glf_1067"
Function Glf_1068(args)
	On Error Resume Next
	    Glf_1068 = GetPlayerState("shot_meteor4_light") > 0
	If Err Then Glf_1068 = False
End Function
glf_funcRefMap.Add "meteor4_proton_hit{current_player.shot_meteor4_light > 0}", "Glf_1068"
Function Glf_1069(args)
	On Error Resume Next
	    Glf_1069 = GetPlayerState("shot_proton_round1")=1
	If Err Then Glf_1069 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.shot_proton_round1==1}", "Glf_1069"
Function Glf_1070(args)
	On Error Resume Next
	    Glf_1070 = GetPlayerState("num_meteors_to_raise")>0 And glf_timers("meteor1").GetValue("ticks")=2
	If Err Then Glf_1070 = False
End Function
glf_funcRefMap.Add "timer_meteor1_tick{current_player.num_meteors_to_raise>0 && devices.timers.meteor1.ticks==2}", "Glf_1070"
Function Glf_1071(args)
	On Error Resume Next
	    Glf_1071 = glf_timers("meteor1").GetValue("ticks")=6
	If Err Then Glf_1071 = False
End Function
glf_funcRefMap.Add "timer_meteor1_tick{devices.timers.meteor1.ticks==6}", "Glf_1071"
Function Glf_1072(args)
	On Error Resume Next
	    Glf_1072 = glf_timers("meteor1").GetValue("ticks")=10
	If Err Then Glf_1072 = False
End Function
glf_funcRefMap.Add "timer_meteor1_tick{devices.timers.meteor1.ticks==10}", "Glf_1072"
Function Glf_1073(args)
	On Error Resume Next
	    Glf_1073 = GetPlayerState("num_meteors_to_raise")>0 And glf_timers("meteor2").GetValue("ticks")=2
	If Err Then Glf_1073 = False
End Function
glf_funcRefMap.Add "timer_meteor2_tick{current_player.num_meteors_to_raise>0 && devices.timers.meteor2.ticks==2}", "Glf_1073"
Function Glf_1074(args)
	On Error Resume Next
	    Glf_1074 = glf_timers("meteor2").GetValue("ticks")=6
	If Err Then Glf_1074 = False
End Function
glf_funcRefMap.Add "timer_meteor2_tick{devices.timers.meteor2.ticks==6}", "Glf_1074"
Function Glf_1075(args)
	On Error Resume Next
	    Glf_1075 = glf_timers("meteor2").GetValue("ticks")=10
	If Err Then Glf_1075 = False
End Function
glf_funcRefMap.Add "timer_meteor2_tick{devices.timers.meteor2.ticks==10}", "Glf_1075"
Function Glf_1076(args)
	On Error Resume Next
	    Glf_1076 = GetPlayerState("num_meteors_to_raise")>0 And glf_timers("meteor3").GetValue("ticks")=2
	If Err Then Glf_1076 = False
End Function
glf_funcRefMap.Add "timer_meteor3_tick{current_player.num_meteors_to_raise>0 && devices.timers.meteor3.ticks==2}", "Glf_1076"
Function Glf_1077(args)
	On Error Resume Next
	    Glf_1077 = glf_timers("meteor3").GetValue("ticks")=6
	If Err Then Glf_1077 = False
End Function
glf_funcRefMap.Add "timer_meteor3_tick{devices.timers.meteor3.ticks==6}", "Glf_1077"
Function Glf_1078(args)
	On Error Resume Next
	    Glf_1078 = glf_timers("meteor3").GetValue("ticks")=10
	If Err Then Glf_1078 = False
End Function
glf_funcRefMap.Add "timer_meteor3_tick{devices.timers.meteor3.ticks==10}", "Glf_1078"
Function Glf_1079(args)
	On Error Resume Next
	    Glf_1079 = GetPlayerState("num_meteors_to_raise")>0 And glf_timers("meteor4").GetValue("ticks")=2
	If Err Then Glf_1079 = False
End Function
glf_funcRefMap.Add "timer_meteor4_tick{current_player.num_meteors_to_raise>0 && devices.timers.meteor4.ticks==2}", "Glf_1079"
Function Glf_1080(args)
	On Error Resume Next
	    Glf_1080 = glf_timers("meteor4").GetValue("ticks")=6
	If Err Then Glf_1080 = False
End Function
glf_funcRefMap.Add "timer_meteor4_tick{devices.timers.meteor4.ticks==6}", "Glf_1080"
Function Glf_1081(args)
	On Error Resume Next
	    Glf_1081 = glf_timers("meteor4").GetValue("ticks")=10
	If Err Then Glf_1081 = False
End Function
glf_funcRefMap.Add "timer_meteor4_tick{devices.timers.meteor4.ticks==10}", "Glf_1081"
Function Glf_1082(args)
	On Error Resume Next
	    Glf_1082 = GetPlayerState("nuke_just_used") = 0
	If Err Then Glf_1082 = False
End Function
glf_funcRefMap.Add "finish_meteor_wave{current_player.nuke_just_used == 0}", "Glf_1082"
Function Glf_1083(args)
	On Error Resume Next
	    Glf_1083 = GetPlayerState("nuke_just_used") = 1
	If Err Then Glf_1083 = False
End Function
glf_funcRefMap.Add "finish_meteor_wave{current_player.nuke_just_used == 1}", "Glf_1083"
Function Glf_1084(args)
	Glf_1084 = GetPlayerState("meteors_per_wave")
End Function
glf_funcRefMap.Add "current_player.meteors_per_wave", "Glf_1084"
Function Glf_1085(args)
	Glf_1085 = Glf_FormatValue(GetPlayerState("num_meteors_to_drop"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.num_meteors_to_drop:0>2}", "Glf_1085"
Function Glf_1086(args)
	Glf_1086 = "00"
End Function
glf_funcRefMap.Add """00""", "Glf_1086"
Function Glf_1087(args)
	Glf_1087 = "  NUKED "
End Function
glf_funcRefMap.Add """  NUKED """, "Glf_1087"
Function Glf_1088(args)
	Glf_1088 = " NUKED  "
End Function
glf_funcRefMap.Add """ NUKED  """, "Glf_1088"
Function Glf_1089(args)
	On Error Resume Next
	    Glf_1089 = GetPlayerState("number") = 1 or GetPlayerState("number") = 2
	If Err Then Glf_1089 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.number == 1 or current_player.number == 2}", "Glf_1089"
Function Glf_1090(args)
	Glf_1090 = "METEOR "
End Function
glf_funcRefMap.Add """METEOR """, "Glf_1090"
Function Glf_1091(args)
	Glf_1091 = "WAVE  "
End Function
glf_funcRefMap.Add """WAVE  """, "Glf_1091"
Function Glf_1092(args)
	On Error Resume Next
	    Glf_1092 = GetPlayerState("number") = 3 or GetPlayerState("number") = 4
	If Err Then Glf_1092 = False
End Function
glf_funcRefMap.Add "mode_meteor_wave_started{current_player.number == 3 or current_player.number == 4}", "Glf_1092"
Function Glf_1093(args)
	On Error Resume Next
	    Glf_1093 = GetPlayerState("number") = 1 or GetPlayerState("number") = 2
	If Err Then Glf_1093 = False
End Function
glf_funcRefMap.Add "check_meteor_wave.2{current_player.number == 1 or current_player.number == 2}", "Glf_1093"
Function Glf_1094(args)
	On Error Resume Next
	    Glf_1094 = GetPlayerState("number") = 3 or GetPlayerState("number") = 4
	If Err Then Glf_1094 = False
End Function
glf_funcRefMap.Add "check_meteor_wave.2{current_player.number == 3 or current_player.number == 4}", "Glf_1094"
Function Glf_1095(args)
	Glf_1095 = GetPlayerState("meteor_mb_shootagain_time")
End Function
glf_funcRefMap.Add "current_player.meteor_mb_shootagain_time", "Glf_1095"
Function Glf_1096(args)
	On Error Resume Next
	    Glf_1096 = GetPlayerState("shot_flwiz_proton1")=1
	If Err Then Glf_1096 = False
End Function
glf_funcRefMap.Add "s_TargetMystery1_active{current_player.shot_flwiz_proton1==1}", "Glf_1096"
Function Glf_1097(args)
	On Error Resume Next
	    Glf_1097 = GetPlayerState("shot_flwiz_proton2")=1
	If Err Then Glf_1097 = False
End Function
glf_funcRefMap.Add "s_TargetMystery2_active{current_player.shot_flwiz_proton2==1}", "Glf_1097"
Function Glf_1098(args)
	On Error Resume Next
	    Glf_1098 = GetPlayerState("shot_flwiz_proton3")=1
	If Err Then Glf_1098 = False
End Function
glf_funcRefMap.Add "s_TargetMystery3_active{current_player.shot_flwiz_proton3==1}", "Glf_1098"
Function Glf_1099(args)
	On Error Resume Next
	    Glf_1099 = GetPlayerState("shot_flwiz_proton4")=1
	If Err Then Glf_1099 = False
End Function
glf_funcRefMap.Add "s_TargetMystery4_active{current_player.shot_flwiz_proton4==1}", "Glf_1099"
Function Glf_1100(args)
	On Error Resume Next
	    Glf_1100 = GetPlayerState("shot_flwiz_proton5")=1
	If Err Then Glf_1100 = False
End Function
glf_funcRefMap.Add "s_TargetMystery5_active{current_player.shot_flwiz_proton5==1}", "Glf_1100"
Function Glf_1101(args)
	On Error Resume Next
	    Glf_1101 = GetPlayerState("shot_flwiz_proton6")=1
	If Err Then Glf_1101 = False
End Function
glf_funcRefMap.Add "shield_bank_hit{current_player.shot_flwiz_proton6==1}", "Glf_1101"
Function Glf_1102(args)
	On Error Resume Next
	    Glf_1102 = GetPlayerState("shot_flwiz_cluster") = 1 And GetPlayerState("wizard_fully_loaded_phase") = 1
	If Err Then Glf_1102 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.shot_flwiz_cluster == 1 && current_player.wizard_fully_loaded_phase == 1}", "Glf_1102"
Function Glf_1103(args)
	On Error Resume Next
	    Glf_1103 = GetPlayerState("shot_flwiz_moon") = 1 And GetPlayerState("wizard_fully_loaded_phase") = 1
	If Err Then Glf_1103 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.shot_flwiz_moon == 1 && current_player.wizard_fully_loaded_phase == 1}", "Glf_1103"
Function Glf_1104(args)
	On Error Resume Next
	    Glf_1104 = GetPlayerState("wizard_fully_loaded_phase") = 1
	If Err Then Glf_1104 = False
End Function
glf_funcRefMap.Add "flwiz_shots_on_complete{current_player.wizard_fully_loaded_phase == 1}", "Glf_1104"
Function Glf_1105(args)
	On Error Resume Next
	    Glf_1105 = GetPlayerState("wizard_fully_loaded_phase") = 1 And GetPlayerState("flwiz_super_jp") = 1
	If Err Then Glf_1105 = False
End Function
glf_funcRefMap.Add "balldevice_scoop_ball_entered{current_player.wizard_fully_loaded_phase == 1 && current_player.flwiz_super_jp == 1}", "Glf_1105"
Function Glf_1106(args)
	On Error Resume Next
	    Glf_1106 = GetPlayerState("shot_flwiz_proton1") = 1 And GetPlayerState("wizard_fully_loaded_phase") = 2
	If Err Then Glf_1106 = False
End Function
glf_funcRefMap.Add "s_TargetMystery1_active{current_player.shot_flwiz_proton1 == 1 && current_player.wizard_fully_loaded_phase == 2}", "Glf_1106"
Function Glf_1107(args)
	On Error Resume Next
	    Glf_1107 = GetPlayerState("shot_flwiz_proton2") = 1 And GetPlayerState("wizard_fully_loaded_phase") = 2
	If Err Then Glf_1107 = False
End Function
glf_funcRefMap.Add "s_TargetMystery2_active{current_player.shot_flwiz_proton2 == 1 && current_player.wizard_fully_loaded_phase == 2}", "Glf_1107"
Function Glf_1108(args)
	On Error Resume Next
	    Glf_1108 = GetPlayerState("shot_flwiz_proton3") = 1 And GetPlayerState("wizard_fully_loaded_phase") = 2
	If Err Then Glf_1108 = False
End Function
glf_funcRefMap.Add "s_TargetMystery3_active{current_player.shot_flwiz_proton3 == 1 && current_player.wizard_fully_loaded_phase == 2}", "Glf_1108"
Function Glf_1109(args)
	On Error Resume Next
	    Glf_1109 = GetPlayerState("shot_flwiz_proton4") = 1 And GetPlayerState("wizard_fully_loaded_phase") = 2
	If Err Then Glf_1109 = False
End Function
glf_funcRefMap.Add "s_TargetMystery4_active{current_player.shot_flwiz_proton4 == 1 && current_player.wizard_fully_loaded_phase == 2}", "Glf_1109"
Function Glf_1110(args)
	On Error Resume Next
	    Glf_1110 = GetPlayerState("shot_flwiz_proton5") = 1 And GetPlayerState("wizard_fully_loaded_phase") = 2
	If Err Then Glf_1110 = False
End Function
glf_funcRefMap.Add "s_TargetMystery5_active{current_player.shot_flwiz_proton5 == 1 && current_player.wizard_fully_loaded_phase == 2}", "Glf_1110"
Function Glf_1111(args)
	On Error Resume Next
	    Glf_1111 = GetPlayerState("shot_flwiz_proton6") = 1 And GetPlayerState("wizard_fully_loaded_phase") = 2
	If Err Then Glf_1111 = False
End Function
glf_funcRefMap.Add "shield_bank_hit{current_player.shot_flwiz_proton6 == 1 && current_player.wizard_fully_loaded_phase == 2}", "Glf_1111"
Function Glf_1112(args)
	On Error Resume Next
	    Glf_1112 = GetPlayerState("shot_flwiz_cluster") = 1 And GetPlayerState("wizard_fully_loaded_phase") = 2
	If Err Then Glf_1112 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.shot_flwiz_cluster == 1 && current_player.wizard_fully_loaded_phase == 2}", "Glf_1112"
Function Glf_1113(args)
	On Error Resume Next
	    Glf_1113 = GetPlayerState("shot_flwiz_moon") = 1 And GetPlayerState("wizard_fully_loaded_phase") = 2
	If Err Then Glf_1113 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.shot_flwiz_moon == 1 && current_player.wizard_fully_loaded_phase == 2}", "Glf_1113"
Function Glf_1114(args)
	On Error Resume Next
	    Glf_1114 = GetPlayerState("wizard_fully_loaded_phase") = 2
	If Err Then Glf_1114 = False
End Function
glf_funcRefMap.Add "flwiz_shots_on_complete{current_player.wizard_fully_loaded_phase == 2}", "Glf_1114"
Function Glf_1115(args)
	On Error Resume Next
	    Glf_1115 = GetPlayerState("flwiz_super_jp") = 2
	If Err Then Glf_1115 = False
End Function
glf_funcRefMap.Add "balldevice_scoop_ball_entered{current_player.flwiz_super_jp == 2}", "Glf_1115"
Function Glf_1116(args)
	On Error Resume Next
	    Glf_1116 = GetPlayerState("wizard_fully_loaded_phase") = 1
	If Err Then Glf_1116 = False
End Function
glf_funcRefMap.Add "timer_flwiz_bumper_lights_tick{current_player.wizard_fully_loaded_phase == 1}", "Glf_1116"
Function Glf_1117(args)
	On Error Resume Next
	    Glf_1117 = GetPlayerState("wizard_fully_loaded_phase") = 2
	If Err Then Glf_1117 = False
End Function
glf_funcRefMap.Add "timer_flwiz_bumper_lights_tick{current_player.wizard_fully_loaded_phase == 2}", "Glf_1117"
Function Glf_1118(args)
	On Error Resume Next
	    Glf_1118 = GetPlayerState("shot_flwiz_proton1") = 0
	If Err Then Glf_1118 = False
End Function
glf_funcRefMap.Add "flwiz_proton1_ready{current_player.shot_flwiz_proton1 == 0}", "Glf_1118"
Function Glf_1119(args)
	On Error Resume Next
	    Glf_1119 = GetPlayerState("shot_flwiz_proton2") = 0
	If Err Then Glf_1119 = False
End Function
glf_funcRefMap.Add "flwiz_proton2_ready{current_player.shot_flwiz_proton2 == 0}", "Glf_1119"
Function Glf_1120(args)
	On Error Resume Next
	    Glf_1120 = GetPlayerState("shot_flwiz_proton3") = 0
	If Err Then Glf_1120 = False
End Function
glf_funcRefMap.Add "flwiz_proton3_ready{current_player.shot_flwiz_proton3 == 0}", "Glf_1120"
Function Glf_1121(args)
	On Error Resume Next
	    Glf_1121 = GetPlayerState("shot_flwiz_proton4") = 0
	If Err Then Glf_1121 = False
End Function
glf_funcRefMap.Add "flwiz_proton4_ready{current_player.shot_flwiz_proton4 == 0}", "Glf_1121"
Function Glf_1122(args)
	On Error Resume Next
	    Glf_1122 = GetPlayerState("shot_flwiz_proton5") = 0
	If Err Then Glf_1122 = False
End Function
glf_funcRefMap.Add "flwiz_proton5_ready{current_player.shot_flwiz_proton5 == 0}", "Glf_1122"
Function Glf_1123(args)
	On Error Resume Next
	    Glf_1123 = GetPlayerState("shot_flwiz_proton6") = 0
	If Err Then Glf_1123 = False
End Function
glf_funcRefMap.Add "flwiz_proton6_ready{current_player.shot_flwiz_proton6 == 0}", "Glf_1123"
Function Glf_1124(args)
	On Error Resume Next
	    Glf_1124 = GetPlayerState("shot_flwiz_cluster") = 0
	If Err Then Glf_1124 = False
End Function
glf_funcRefMap.Add "flwiz_cluster_ready{current_player.shot_flwiz_cluster == 0}", "Glf_1124"
Function Glf_1125(args)
	On Error Resume Next
	    Glf_1125 = GetPlayerState("shot_flwiz_moon") = 0
	If Err Then Glf_1125 = False
End Function
glf_funcRefMap.Add "flwiz_moon_ready{current_player.shot_flwiz_moon == 0}", "Glf_1125"
Function Glf_1126(args)
	Glf_1126 = 20000
End Function
glf_funcRefMap.Add "20000", "Glf_1126"
Function Glf_1127(args)
	Glf_1127 = 100000
End Function
glf_funcRefMap.Add "100000", "Glf_1127"
Function Glf_1128(args)
	Glf_1128 = " FULLY "
End Function
glf_funcRefMap.Add """ FULLY """, "Glf_1128"
Function Glf_1129(args)
	Glf_1129 = " LOADED "
End Function
glf_funcRefMap.Add """ LOADED """, "Glf_1129"
Function Glf_1130(args)
	Glf_1130 = " WIZARD "
End Function
glf_funcRefMap.Add """ WIZARD """, "Glf_1130"
Function Glf_1131(args)
	Glf_1131 = "  MODE  "
End Function
glf_funcRefMap.Add """  MODE  """, "Glf_1131"
Function Glf_1132(args)
	On Error Resume Next
	    Glf_1132 = glf_timers("fully_loaded_message").GetValue("ticks") = 1
	If Err Then Glf_1132 = False
End Function
glf_funcRefMap.Add "timer_fully_loaded_message_tick{devices.timers.fully_loaded_message.ticks == 1}", "Glf_1132"
Function Glf_1133(args)
	Glf_1133 = "   EB   "
End Function
glf_funcRefMap.Add """   EB   """, "Glf_1133"
Function Glf_1134(args)
	Glf_1134 = "  ADDED "
End Function
glf_funcRefMap.Add """  ADDED """, "Glf_1134"
Function Glf_1135(args)
	On Error Resume Next
	    Glf_1135 = glf_timers("fully_loaded_message").GetValue("ticks") = 2
	If Err Then Glf_1135 = False
End Function
glf_funcRefMap.Add "timer_fully_loaded_message_tick{devices.timers.fully_loaded_message.ticks == 2}", "Glf_1135"
Function Glf_1136(args)
	Glf_1136 = "HIT ALL"
End Function
glf_funcRefMap.Add """HIT ALL""", "Glf_1136"
Function Glf_1137(args)
	Glf_1137 = "  SHOTS "
End Function
glf_funcRefMap.Add """  SHOTS """, "Glf_1137"
Function Glf_1138(args)
	On Error Resume Next
	    Glf_1138 = GetPlayerState("shot_combo_command1") = 1 And GetPlayerState("wizard_combo_command_phase") = 1
	If Err Then Glf_1138 = False
End Function
glf_funcRefMap.Add "left_side_hit{current_player.shot_combo_command1 == 1 && current_player.wizard_combo_command_phase == 1}", "Glf_1138"
Function Glf_1139(args)
	On Error Resume Next
	    Glf_1139 = GetPlayerState("shot_combo_command2") = 1 And GetPlayerState("wizard_combo_command_phase") = 1
	If Err Then Glf_1139 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_combo_command2 == 1 && current_player.wizard_combo_command_phase == 1}", "Glf_1139"
Function Glf_1140(args)
	On Error Resume Next
	    Glf_1140 = GetPlayerState("shot_combo_command3") = 1 And GetPlayerState("wizard_combo_command_phase") = 1
	If Err Then Glf_1140 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.shot_combo_command3 == 1 && current_player.wizard_combo_command_phase == 1}", "Glf_1140"
Function Glf_1141(args)
	On Error Resume Next
	    Glf_1141 = GetPlayerState("shot_combo_command4") = 1 And GetPlayerState("wizard_combo_command_phase") = 1
	If Err Then Glf_1141 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.shot_combo_command4 == 1 && current_player.wizard_combo_command_phase == 1}", "Glf_1141"
Function Glf_1142(args)
	On Error Resume Next
	    Glf_1142 = GetPlayerState("shot_combo_command5") = 1 And GetPlayerState("wizard_combo_command_phase") = 1
	If Err Then Glf_1142 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.shot_combo_command5 == 1 && current_player.wizard_combo_command_phase == 1}", "Glf_1142"
Function Glf_1143(args)
	On Error Resume Next
	    Glf_1143 = GetPlayerState("shot_combo_command6") = 1 And GetPlayerState("wizard_combo_command_phase") = 1
	If Err Then Glf_1143 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.shot_combo_command6 == 1 && current_player.wizard_combo_command_phase == 1}", "Glf_1143"
Function Glf_1144(args)
	On Error Resume Next
	    Glf_1144 = GetPlayerState("shot_combo_command7") = 1 And GetPlayerState("wizard_combo_command_phase") = 1
	If Err Then Glf_1144 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.shot_combo_command7 == 1 && current_player.wizard_combo_command_phase == 1}", "Glf_1144"
Function Glf_1145(args)
	On Error Resume Next
	    Glf_1145 = GetPlayerState("shot_combo_command8") = 1 And GetPlayerState("wizard_combo_command_phase") = 1
	If Err Then Glf_1145 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_combo_command8 == 1 && current_player.wizard_combo_command_phase == 1}", "Glf_1145"
Function Glf_1146(args)
	On Error Resume Next
	    Glf_1146 = GetPlayerState("wizard_combo_command_phase") = 1
	If Err Then Glf_1146 = False
End Function
glf_funcRefMap.Add "ccwiz_shots_on_complete{current_player.wizard_combo_command_phase == 1}", "Glf_1146"
Function Glf_1147(args)
	On Error Resume Next
	    Glf_1147 = GetPlayerState("wizard_combo_command_phase") = 1 And GetPlayerState("ccwiz_super_jp") = 1
	If Err Then Glf_1147 = False
End Function
glf_funcRefMap.Add "balldevice_scoop_ball_entered{current_player.wizard_combo_command_phase == 1 && current_player.ccwiz_super_jp == 1}", "Glf_1147"
Function Glf_1148(args)
	On Error Resume Next
	    Glf_1148 = GetPlayerState("shot_combo_command1") = 1 And GetPlayerState("wizard_combo_command_phase") = 2
	If Err Then Glf_1148 = False
End Function
glf_funcRefMap.Add "left_side_hit{current_player.shot_combo_command1 == 1 && current_player.wizard_combo_command_phase == 2}", "Glf_1148"
Function Glf_1149(args)
	On Error Resume Next
	    Glf_1149 = GetPlayerState("shot_combo_command2") = 1 And GetPlayerState("wizard_combo_command_phase") = 2
	If Err Then Glf_1149 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_combo_command2 == 1 && current_player.wizard_combo_command_phase == 2}", "Glf_1149"
Function Glf_1150(args)
	On Error Resume Next
	    Glf_1150 = GetPlayerState("shot_combo_command3") = 1 And GetPlayerState("wizard_combo_command_phase") = 2
	If Err Then Glf_1150 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.shot_combo_command3 == 1 && current_player.wizard_combo_command_phase == 2}", "Glf_1150"
Function Glf_1151(args)
	On Error Resume Next
	    Glf_1151 = GetPlayerState("shot_combo_command4") = 1 And GetPlayerState("wizard_combo_command_phase") = 2
	If Err Then Glf_1151 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.shot_combo_command4 == 1 && current_player.wizard_combo_command_phase == 2}", "Glf_1151"
Function Glf_1152(args)
	On Error Resume Next
	    Glf_1152 = GetPlayerState("shot_combo_command5") = 1 And GetPlayerState("wizard_combo_command_phase") = 2
	If Err Then Glf_1152 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.shot_combo_command5 == 1 && current_player.wizard_combo_command_phase == 2}", "Glf_1152"
Function Glf_1153(args)
	On Error Resume Next
	    Glf_1153 = GetPlayerState("shot_combo_command6") = 1 And GetPlayerState("wizard_combo_command_phase") = 2
	If Err Then Glf_1153 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.shot_combo_command6 == 1 && current_player.wizard_combo_command_phase == 2}", "Glf_1153"
Function Glf_1154(args)
	On Error Resume Next
	    Glf_1154 = GetPlayerState("shot_combo_command7") = 1 And GetPlayerState("wizard_combo_command_phase") = 2
	If Err Then Glf_1154 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.shot_combo_command7 == 1 && current_player.wizard_combo_command_phase == 2}", "Glf_1154"
Function Glf_1155(args)
	On Error Resume Next
	    Glf_1155 = GetPlayerState("shot_combo_command8") = 1 And GetPlayerState("wizard_combo_command_phase") = 2
	If Err Then Glf_1155 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_combo_command8 == 1 && current_player.wizard_combo_command_phase == 2}", "Glf_1155"
Function Glf_1156(args)
	On Error Resume Next
	    Glf_1156 = GetPlayerState("wizard_combo_command_phase") = 2
	If Err Then Glf_1156 = False
End Function
glf_funcRefMap.Add "ccwiz_shots_on_complete{current_player.wizard_combo_command_phase == 2}", "Glf_1156"
Function Glf_1157(args)
	On Error Resume Next
	    Glf_1157 = GetPlayerState("ccwiz_super_jp") = 2
	If Err Then Glf_1157 = False
End Function
glf_funcRefMap.Add "balldevice_scoop_ball_entered{current_player.ccwiz_super_jp == 2}", "Glf_1157"
Function Glf_1158(args)
	On Error Resume Next
	    Glf_1158 = GetPlayerState("wizard_combo_command_phase") = 1
	If Err Then Glf_1158 = False
End Function
glf_funcRefMap.Add "timer_ccwiz_bumper_lights_tick{current_player.wizard_combo_command_phase == 1}", "Glf_1158"
Function Glf_1159(args)
	On Error Resume Next
	    Glf_1159 = GetPlayerState("wizard_combo_command_phase") = 2
	If Err Then Glf_1159 = False
End Function
glf_funcRefMap.Add "timer_ccwiz_bumper_lights_tick{current_player.wizard_combo_command_phase == 2}", "Glf_1159"
Function Glf_1160(args)
	On Error Resume Next
	    Glf_1160 = GetPlayerState("shot_combo_command1") = 0
	If Err Then Glf_1160 = False
End Function
glf_funcRefMap.Add "combo_command1_ready{current_player.shot_combo_command1 == 0}", "Glf_1160"
Function Glf_1161(args)
	On Error Resume Next
	    Glf_1161 = GetPlayerState("shot_combo_command2") = 0
	If Err Then Glf_1161 = False
End Function
glf_funcRefMap.Add "combo_command2_ready{current_player.shot_combo_command2 == 0}", "Glf_1161"
Function Glf_1162(args)
	On Error Resume Next
	    Glf_1162 = GetPlayerState("shot_combo_command3") = 0
	If Err Then Glf_1162 = False
End Function
glf_funcRefMap.Add "combo_command3_ready{current_player.shot_combo_command3 == 0}", "Glf_1162"
Function Glf_1163(args)
	On Error Resume Next
	    Glf_1163 = GetPlayerState("shot_combo_command4") = 0
	If Err Then Glf_1163 = False
End Function
glf_funcRefMap.Add "combo_command4_ready{current_player.shot_combo_command4 == 0}", "Glf_1163"
Function Glf_1164(args)
	On Error Resume Next
	    Glf_1164 = GetPlayerState("shot_combo_command5") = 0
	If Err Then Glf_1164 = False
End Function
glf_funcRefMap.Add "combo_command5_ready{current_player.shot_combo_command5 == 0}", "Glf_1164"
Function Glf_1165(args)
	On Error Resume Next
	    Glf_1165 = GetPlayerState("shot_combo_command6") = 0
	If Err Then Glf_1165 = False
End Function
glf_funcRefMap.Add "combo_command6_ready{current_player.shot_combo_command6 == 0}", "Glf_1165"
Function Glf_1166(args)
	On Error Resume Next
	    Glf_1166 = GetPlayerState("shot_combo_command7") = 0
	If Err Then Glf_1166 = False
End Function
glf_funcRefMap.Add "combo_command7_ready{current_player.shot_combo_command7 == 0}", "Glf_1166"
Function Glf_1167(args)
	On Error Resume Next
	    Glf_1167 = GetPlayerState("shot_combo_command8") = 0
	If Err Then Glf_1167 = False
End Function
glf_funcRefMap.Add "combo_command8_ready{current_player.shot_combo_command8 == 0}", "Glf_1167"
Function Glf_1168(args)
	On Error Resume Next
	    Glf_1168 = GetPlayerState("shot_combo_command1")=1
	If Err Then Glf_1168 = False
End Function
glf_funcRefMap.Add "left_side_hit{current_player.shot_combo_command1==1}", "Glf_1168"
Function Glf_1169(args)
	On Error Resume Next
	    Glf_1169 = GetPlayerState("shot_combo_command2")=1
	If Err Then Glf_1169 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_combo_command2==1}", "Glf_1169"
Function Glf_1170(args)
	On Error Resume Next
	    Glf_1170 = GetPlayerState("shot_combo_command3")=1
	If Err Then Glf_1170 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.shot_combo_command3==1}", "Glf_1170"
Function Glf_1171(args)
	On Error Resume Next
	    Glf_1171 = GetPlayerState("shot_combo_command4")=1
	If Err Then Glf_1171 = False
End Function
glf_funcRefMap.Add "inner_orbit_hit{current_player.shot_combo_command4==1}", "Glf_1171"
Function Glf_1172(args)
	On Error Resume Next
	    Glf_1172 = GetPlayerState("shot_combo_command5")=1
	If Err Then Glf_1172 = False
End Function
glf_funcRefMap.Add "center_orbit_left_hit{current_player.shot_combo_command5==1}", "Glf_1172"
Function Glf_1173(args)
	On Error Resume Next
	    Glf_1173 = GetPlayerState("shot_combo_command6")=1
	If Err Then Glf_1173 = False
End Function
glf_funcRefMap.Add "center_orbit_right_hit{current_player.shot_combo_command6==1}", "Glf_1173"
Function Glf_1174(args)
	On Error Resume Next
	    Glf_1174 = GetPlayerState("shot_combo_command7")=1
	If Err Then Glf_1174 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.shot_combo_command7==1}", "Glf_1174"
Function Glf_1175(args)
	On Error Resume Next
	    Glf_1175 = GetPlayerState("shot_combo_command8")=1
	If Err Then Glf_1175 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_combo_command8==1}", "Glf_1175"
Function Glf_1176(args)
	Glf_1176 = " COMBO "
End Function
glf_funcRefMap.Add """ COMBO """, "Glf_1176"
Function Glf_1177(args)
	Glf_1177 = "COMMAND"
End Function
glf_funcRefMap.Add """COMMAND""", "Glf_1177"
Function Glf_1178(args)
	On Error Resume Next
	    Glf_1178 = glf_timers("combo_command_message").GetValue("ticks") = 1
	If Err Then Glf_1178 = False
End Function
glf_funcRefMap.Add "timer_combo_command_message_tick{devices.timers.combo_command_message.ticks == 1}", "Glf_1178"
Function Glf_1179(args)
	On Error Resume Next
	    Glf_1179 = glf_timers("combo_command_message").GetValue("ticks") = 2
	If Err Then Glf_1179 = False
End Function
glf_funcRefMap.Add "timer_combo_command_message_tick{devices.timers.combo_command_message.ticks == 2}", "Glf_1179"
Function Glf_1180(args)
	On Error Resume Next
	    Glf_1180 = GetPlayerState("wizard_final_hit_count") = 20
	If Err Then Glf_1180 = False
End Function
glf_funcRefMap.Add "mode_final_wave_wizard_started{current_player.wizard_final_hit_count == 20}", "Glf_1180"
Function Glf_1181(args)
	On Error Resume Next
	    Glf_1181 = GetPlayerState("wizard_final_hit_count") < 20
	If Err Then Glf_1181 = False
End Function
glf_funcRefMap.Add "mode_final_wave_wizard_started{current_player.wizard_final_hit_count < 20}", "Glf_1181"
Function Glf_1182(args)
	On Error Resume Next
	    Glf_1182 = GetPlayerState("fwwiz_add_ball_ready") = 1
	If Err Then Glf_1182 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.fwwiz_add_ball_ready == 1}", "Glf_1182"
Function Glf_1183(args)
	On Error Resume Next
	    Glf_1183 = GetPlayerState("fwwiz_add_ball_ready") = 1
	If Err Then Glf_1183 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.fwwiz_add_ball_ready == 1}", "Glf_1183"
Function Glf_1184(args)
	On Error Resume Next
	    Glf_1184 = GetPlayerState("fwwiz_add_ball_ready") = 2
	If Err Then Glf_1184 = False
End Function
glf_funcRefMap.Add "left_ramp_hit{current_player.fwwiz_add_ball_ready == 2}", "Glf_1184"
Function Glf_1185(args)
	On Error Resume Next
	    Glf_1185 = GetPlayerState("fwwiz_add_ball_ready") = 2
	If Err Then Glf_1185 = False
End Function
glf_funcRefMap.Add "right_ramp_hit{current_player.fwwiz_add_ball_ready == 2}", "Glf_1185"
Function Glf_1186(args)
	On Error Resume Next
	    Glf_1186 = GetPlayerState("wizard_final_hit_count") > 0
	If Err Then Glf_1186 = False
End Function
glf_funcRefMap.Add "asteroid_hit{current_player.wizard_final_hit_count > 0}", "Glf_1186"
Function Glf_1187(args)
	On Error Resume Next
	    Glf_1187 = GetPlayerState("wizard_final_hit_count") = 3
	If Err Then Glf_1187 = False
End Function
glf_funcRefMap.Add "check_fwwiz_done{current_player.wizard_final_hit_count == 3}", "Glf_1187"
Function Glf_1188(args)
	On Error Resume Next
	    Glf_1188 = GetPlayerState("wizard_final_hit_count") <= 0
	If Err Then Glf_1188 = False
End Function
glf_funcRefMap.Add "check_fwwiz_done{current_player.wizard_final_hit_count <= 0}", "Glf_1188"
Function Glf_1189(args)
	On Error Resume Next
	    Glf_1189 = GetPlayerState("wizard_final_hit_count") = 19
	If Err Then Glf_1189 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 19}", "Glf_1189"
Function Glf_1190(args)
	On Error Resume Next
	    Glf_1190 = GetPlayerState("wizard_final_hit_count") = 18
	If Err Then Glf_1190 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 18}", "Glf_1190"
Function Glf_1191(args)
	On Error Resume Next
	    Glf_1191 = GetPlayerState("wizard_final_hit_count") = 17
	If Err Then Glf_1191 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 17}", "Glf_1191"
Function Glf_1192(args)
	On Error Resume Next
	    Glf_1192 = GetPlayerState("wizard_final_hit_count") = 16
	If Err Then Glf_1192 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 16}", "Glf_1192"
Function Glf_1193(args)
	On Error Resume Next
	    Glf_1193 = GetPlayerState("wizard_final_hit_count") = 15
	If Err Then Glf_1193 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 15}", "Glf_1193"
Function Glf_1194(args)
	On Error Resume Next
	    Glf_1194 = GetPlayerState("wizard_final_hit_count") = 14
	If Err Then Glf_1194 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 14}", "Glf_1194"
Function Glf_1195(args)
	On Error Resume Next
	    Glf_1195 = GetPlayerState("wizard_final_hit_count") = 13
	If Err Then Glf_1195 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 13}", "Glf_1195"
Function Glf_1196(args)
	On Error Resume Next
	    Glf_1196 = GetPlayerState("wizard_final_hit_count") = 12
	If Err Then Glf_1196 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 12}", "Glf_1196"
Function Glf_1197(args)
	On Error Resume Next
	    Glf_1197 = GetPlayerState("wizard_final_hit_count") = 11
	If Err Then Glf_1197 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 11}", "Glf_1197"
Function Glf_1198(args)
	On Error Resume Next
	    Glf_1198 = GetPlayerState("wizard_final_hit_count") = 10
	If Err Then Glf_1198 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 10}", "Glf_1198"
Function Glf_1199(args)
	On Error Resume Next
	    Glf_1199 = GetPlayerState("wizard_final_hit_count") = 9
	If Err Then Glf_1199 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 9}", "Glf_1199"
Function Glf_1200(args)
	On Error Resume Next
	    Glf_1200 = GetPlayerState("wizard_final_hit_count") = 8
	If Err Then Glf_1200 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 8}", "Glf_1200"
Function Glf_1201(args)
	On Error Resume Next
	    Glf_1201 = GetPlayerState("wizard_final_hit_count") = 7
	If Err Then Glf_1201 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 7}", "Glf_1201"
Function Glf_1202(args)
	On Error Resume Next
	    Glf_1202 = GetPlayerState("wizard_final_hit_count") = 6
	If Err Then Glf_1202 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 6}", "Glf_1202"
Function Glf_1203(args)
	On Error Resume Next
	    Glf_1203 = GetPlayerState("wizard_final_hit_count") = 5
	If Err Then Glf_1203 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 5}", "Glf_1203"
Function Glf_1204(args)
	On Error Resume Next
	    Glf_1204 = GetPlayerState("wizard_final_hit_count") = 4
	If Err Then Glf_1204 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 4}", "Glf_1204"
Function Glf_1205(args)
	On Error Resume Next
	    Glf_1205 = GetPlayerState("wizard_final_hit_count") = 3
	If Err Then Glf_1205 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 3}", "Glf_1205"
Function Glf_1206(args)
	On Error Resume Next
	    Glf_1206 = GetPlayerState("wizard_final_hit_count") = 2
	If Err Then Glf_1206 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 2}", "Glf_1206"
Function Glf_1207(args)
	On Error Resume Next
	    Glf_1207 = GetPlayerState("wizard_final_hit_count") = 1
	If Err Then Glf_1207 = False
End Function
glf_funcRefMap.Add "update_asteroid_glow{current_player.wizard_final_hit_count == 1}", "Glf_1207"
Function Glf_1208(args)
	On Error Resume Next
	    Glf_1208 = GetPlayerState("wizard_final_hit_count") = 19
	If Err Then Glf_1208 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 19}", "Glf_1208"
Function Glf_1209(args)
	On Error Resume Next
	    Glf_1209 = GetPlayerState("wizard_final_hit_count") = 18
	If Err Then Glf_1209 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 18}", "Glf_1209"
Function Glf_1210(args)
	On Error Resume Next
	    Glf_1210 = GetPlayerState("wizard_final_hit_count") = 17
	If Err Then Glf_1210 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 17}", "Glf_1210"
Function Glf_1211(args)
	On Error Resume Next
	    Glf_1211 = GetPlayerState("wizard_final_hit_count") = 16
	If Err Then Glf_1211 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 16}", "Glf_1211"
Function Glf_1212(args)
	On Error Resume Next
	    Glf_1212 = GetPlayerState("wizard_final_hit_count") = 15
	If Err Then Glf_1212 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 15}", "Glf_1212"
Function Glf_1213(args)
	On Error Resume Next
	    Glf_1213 = GetPlayerState("wizard_final_hit_count") = 14
	If Err Then Glf_1213 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 14}", "Glf_1213"
Function Glf_1214(args)
	On Error Resume Next
	    Glf_1214 = GetPlayerState("wizard_final_hit_count") = 13
	If Err Then Glf_1214 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 13}", "Glf_1214"
Function Glf_1215(args)
	On Error Resume Next
	    Glf_1215 = GetPlayerState("wizard_final_hit_count") = 12
	If Err Then Glf_1215 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 12}", "Glf_1215"
Function Glf_1216(args)
	On Error Resume Next
	    Glf_1216 = GetPlayerState("wizard_final_hit_count") = 11
	If Err Then Glf_1216 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 11}", "Glf_1216"
Function Glf_1217(args)
	On Error Resume Next
	    Glf_1217 = GetPlayerState("wizard_final_hit_count") = 10
	If Err Then Glf_1217 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 10}", "Glf_1217"
Function Glf_1218(args)
	On Error Resume Next
	    Glf_1218 = GetPlayerState("wizard_final_hit_count") = 9
	If Err Then Glf_1218 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 9}", "Glf_1218"
Function Glf_1219(args)
	On Error Resume Next
	    Glf_1219 = GetPlayerState("wizard_final_hit_count") = 8
	If Err Then Glf_1219 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 8}", "Glf_1219"
Function Glf_1220(args)
	On Error Resume Next
	    Glf_1220 = GetPlayerState("wizard_final_hit_count") = 7
	If Err Then Glf_1220 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 7}", "Glf_1220"
Function Glf_1221(args)
	On Error Resume Next
	    Glf_1221 = GetPlayerState("wizard_final_hit_count") = 6
	If Err Then Glf_1221 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 6}", "Glf_1221"
Function Glf_1222(args)
	On Error Resume Next
	    Glf_1222 = GetPlayerState("wizard_final_hit_count") = 5
	If Err Then Glf_1222 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 5}", "Glf_1222"
Function Glf_1223(args)
	On Error Resume Next
	    Glf_1223 = GetPlayerState("wizard_final_hit_count") = 4
	If Err Then Glf_1223 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 4}", "Glf_1223"
Function Glf_1224(args)
	On Error Resume Next
	    Glf_1224 = GetPlayerState("wizard_final_hit_count") = 3
	If Err Then Glf_1224 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 3}", "Glf_1224"
Function Glf_1225(args)
	On Error Resume Next
	    Glf_1225 = GetPlayerState("wizard_final_hit_count") = 2
	If Err Then Glf_1225 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 2}", "Glf_1225"
Function Glf_1226(args)
	On Error Resume Next
	    Glf_1226 = GetPlayerState("wizard_final_hit_count") = 1
	If Err Then Glf_1226 = False
End Function
glf_funcRefMap.Add "update_fwwiz_score{current_player.wizard_final_hit_count == 1}", "Glf_1226"
Function Glf_1227(args)
	On Error Resume Next
	    Glf_1227 = GetPlayerState("wizard_final_hit_count") > 1
	If Err Then Glf_1227 = False
End Function
glf_funcRefMap.Add "s_DTMeteor1_active{current_player.wizard_final_hit_count > 1}", "Glf_1227"
Function Glf_1228(args)
	On Error Resume Next
	    Glf_1228 = GetPlayerState("wizard_final_hit_count") > 1
	If Err Then Glf_1228 = False
End Function
glf_funcRefMap.Add "s_DTMeteor2_active{current_player.wizard_final_hit_count > 1}", "Glf_1228"
Function Glf_1229(args)
	On Error Resume Next
	    Glf_1229 = GetPlayerState("wizard_final_hit_count") > 1
	If Err Then Glf_1229 = False
End Function
glf_funcRefMap.Add "s_DTMeteor3_active{current_player.wizard_final_hit_count > 1}", "Glf_1229"
Function Glf_1230(args)
	On Error Resume Next
	    Glf_1230 = GetPlayerState("wizard_final_hit_count") > 1
	If Err Then Glf_1230 = False
End Function
glf_funcRefMap.Add "s_DTMeteor4_active{current_player.wizard_final_hit_count > 1}", "Glf_1230"
Function Glf_1231(args)
	On Error Resume Next
	    Glf_1231 = GetPlayerState("wizard_final_hit_count") > 1
	If Err Then Glf_1231 = False
End Function
glf_funcRefMap.Add "timer_fwwiz_add_meteor_complete{current_player.wizard_final_hit_count > 1}", "Glf_1231"
Function Glf_1232(args)
	On Error Resume Next
	    Glf_1232 = glf_timers("asteroid_explodes").GetValue("ticks") = 4
	If Err Then Glf_1232 = False
End Function
glf_funcRefMap.Add "timer_asteroid_explodes_tick{devices.timers.asteroid_explodes.ticks == 4}", "Glf_1232"
Function Glf_1233(args)
	On Error Resume Next
	    Glf_1233 = glf_timers("final_wave_gi").GetValue("ticks") = 1
	If Err Then Glf_1233 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 1}", "Glf_1233"
Function Glf_1234(args)
	On Error Resume Next
	    Glf_1234 = glf_timers("final_wave_gi").GetValue("ticks") = 2
	If Err Then Glf_1234 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 2}", "Glf_1234"
Function Glf_1235(args)
	On Error Resume Next
	    Glf_1235 = glf_timers("final_wave_gi").GetValue("ticks") = 3
	If Err Then Glf_1235 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 3}", "Glf_1235"
Function Glf_1236(args)
	On Error Resume Next
	    Glf_1236 = glf_timers("final_wave_gi").GetValue("ticks") = 4
	If Err Then Glf_1236 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 4}", "Glf_1236"
Function Glf_1237(args)
	On Error Resume Next
	    Glf_1237 = glf_timers("final_wave_gi").GetValue("ticks") = 5
	If Err Then Glf_1237 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 5}", "Glf_1237"
Function Glf_1238(args)
	On Error Resume Next
	    Glf_1238 = glf_timers("final_wave_gi").GetValue("ticks") = 6
	If Err Then Glf_1238 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 6}", "Glf_1238"
Function Glf_1239(args)
	On Error Resume Next
	    Glf_1239 = glf_timers("final_wave_gi").GetValue("ticks") = 7
	If Err Then Glf_1239 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 7}", "Glf_1239"
Function Glf_1240(args)
	On Error Resume Next
	    Glf_1240 = glf_timers("final_wave_gi").GetValue("ticks") = 8
	If Err Then Glf_1240 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 8}", "Glf_1240"
Function Glf_1241(args)
	On Error Resume Next
	    Glf_1241 = glf_timers("final_wave_gi").GetValue("ticks") = 9
	If Err Then Glf_1241 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 9}", "Glf_1241"
Function Glf_1242(args)
	On Error Resume Next
	    Glf_1242 = glf_timers("final_wave_gi").GetValue("ticks") = 10
	If Err Then Glf_1242 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 10}", "Glf_1242"
Function Glf_1243(args)
	On Error Resume Next
	    Glf_1243 = glf_timers("final_wave_gi").GetValue("ticks") = 11
	If Err Then Glf_1243 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 11}", "Glf_1243"
Function Glf_1244(args)
	On Error Resume Next
	    Glf_1244 = glf_timers("final_wave_gi").GetValue("ticks") = 12
	If Err Then Glf_1244 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 12}", "Glf_1244"
Function Glf_1245(args)
	On Error Resume Next
	    Glf_1245 = glf_timers("final_wave_gi").GetValue("ticks") = 13
	If Err Then Glf_1245 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 13}", "Glf_1245"
Function Glf_1246(args)
	On Error Resume Next
	    Glf_1246 = glf_timers("final_wave_gi").GetValue("ticks") = 14
	If Err Then Glf_1246 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 14}", "Glf_1246"
Function Glf_1247(args)
	On Error Resume Next
	    Glf_1247 = glf_timers("final_wave_gi").GetValue("ticks") = 15
	If Err Then Glf_1247 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 15}", "Glf_1247"
Function Glf_1248(args)
	On Error Resume Next
	    Glf_1248 = glf_timers("final_wave_gi").GetValue("ticks") = 16
	If Err Then Glf_1248 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 16}", "Glf_1248"
Function Glf_1249(args)
	On Error Resume Next
	    Glf_1249 = glf_timers("final_wave_gi").GetValue("ticks") = 17
	If Err Then Glf_1249 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 17}", "Glf_1249"
Function Glf_1250(args)
	On Error Resume Next
	    Glf_1250 = glf_timers("final_wave_gi").GetValue("ticks") = 18
	If Err Then Glf_1250 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 18}", "Glf_1250"
Function Glf_1251(args)
	On Error Resume Next
	    Glf_1251 = glf_timers("final_wave_gi").GetValue("ticks") = 19
	If Err Then Glf_1251 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 19}", "Glf_1251"
Function Glf_1252(args)
	On Error Resume Next
	    Glf_1252 = glf_timers("final_wave_gi").GetValue("ticks") = 20
	If Err Then Glf_1252 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 20}", "Glf_1252"
Function Glf_1253(args)
	On Error Resume Next
	    Glf_1253 = glf_timers("final_wave_gi").GetValue("ticks") = 21
	If Err Then Glf_1253 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 21}", "Glf_1253"
Function Glf_1254(args)
	On Error Resume Next
	    Glf_1254 = glf_timers("final_wave_gi").GetValue("ticks") = 22
	If Err Then Glf_1254 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 22}", "Glf_1254"
Function Glf_1255(args)
	On Error Resume Next
	    Glf_1255 = glf_timers("final_wave_gi").GetValue("ticks") = 23
	If Err Then Glf_1255 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 23}", "Glf_1255"
Function Glf_1256(args)
	On Error Resume Next
	    Glf_1256 = glf_timers("final_wave_gi").GetValue("ticks") = 24
	If Err Then Glf_1256 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 24}", "Glf_1256"
Function Glf_1257(args)
	On Error Resume Next
	    Glf_1257 = glf_timers("final_wave_gi").GetValue("ticks") = 25
	If Err Then Glf_1257 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 25}", "Glf_1257"
Function Glf_1258(args)
	On Error Resume Next
	    Glf_1258 = glf_timers("final_wave_gi").GetValue("ticks") = 26
	If Err Then Glf_1258 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 26}", "Glf_1258"
Function Glf_1259(args)
	On Error Resume Next
	    Glf_1259 = glf_timers("final_wave_gi").GetValue("ticks") = 27
	If Err Then Glf_1259 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 27}", "Glf_1259"
Function Glf_1260(args)
	On Error Resume Next
	    Glf_1260 = glf_timers("final_wave_gi").GetValue("ticks") = 28
	If Err Then Glf_1260 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 28}", "Glf_1260"
Function Glf_1261(args)
	On Error Resume Next
	    Glf_1261 = glf_timers("final_wave_gi").GetValue("ticks") = 29
	If Err Then Glf_1261 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 29}", "Glf_1261"
Function Glf_1262(args)
	On Error Resume Next
	    Glf_1262 = glf_timers("final_wave_gi").GetValue("ticks") = 30
	If Err Then Glf_1262 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 30}", "Glf_1262"
Function Glf_1263(args)
	On Error Resume Next
	    Glf_1263 = glf_timers("final_wave_gi").GetValue("ticks") = 31
	If Err Then Glf_1263 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 31}", "Glf_1263"
Function Glf_1264(args)
	On Error Resume Next
	    Glf_1264 = glf_timers("final_wave_gi").GetValue("ticks") = 32
	If Err Then Glf_1264 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 32}", "Glf_1264"
Function Glf_1265(args)
	On Error Resume Next
	    Glf_1265 = glf_timers("final_wave_gi").GetValue("ticks") = 33
	If Err Then Glf_1265 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 33}", "Glf_1265"
Function Glf_1266(args)
	On Error Resume Next
	    Glf_1266 = glf_timers("final_wave_gi").GetValue("ticks") = 34
	If Err Then Glf_1266 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 34}", "Glf_1266"
Function Glf_1267(args)
	On Error Resume Next
	    Glf_1267 = glf_timers("final_wave_gi").GetValue("ticks") = 35
	If Err Then Glf_1267 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 35}", "Glf_1267"
Function Glf_1268(args)
	On Error Resume Next
	    Glf_1268 = glf_timers("final_wave_gi").GetValue("ticks") = 36
	If Err Then Glf_1268 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 36}", "Glf_1268"
Function Glf_1269(args)
	On Error Resume Next
	    Glf_1269 = glf_timers("final_wave_gi").GetValue("ticks") = 37
	If Err Then Glf_1269 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 37}", "Glf_1269"
Function Glf_1270(args)
	On Error Resume Next
	    Glf_1270 = glf_timers("final_wave_gi").GetValue("ticks") = 38
	If Err Then Glf_1270 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 38}", "Glf_1270"
Function Glf_1271(args)
	On Error Resume Next
	    Glf_1271 = glf_timers("final_wave_gi").GetValue("ticks") = 39
	If Err Then Glf_1271 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 39}", "Glf_1271"
Function Glf_1272(args)
	On Error Resume Next
	    Glf_1272 = glf_timers("final_wave_gi").GetValue("ticks") = 40
	If Err Then Glf_1272 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 40}", "Glf_1272"
Function Glf_1273(args)
	On Error Resume Next
	    Glf_1273 = glf_timers("final_wave_gi").GetValue("ticks") = 41
	If Err Then Glf_1273 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 41}", "Glf_1273"
Function Glf_1274(args)
	On Error Resume Next
	    Glf_1274 = glf_timers("final_wave_gi").GetValue("ticks") = 42
	If Err Then Glf_1274 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 42}", "Glf_1274"
Function Glf_1275(args)
	On Error Resume Next
	    Glf_1275 = glf_timers("final_wave_gi").GetValue("ticks") = 43
	If Err Then Glf_1275 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 43}", "Glf_1275"
Function Glf_1276(args)
	On Error Resume Next
	    Glf_1276 = glf_timers("final_wave_gi").GetValue("ticks") = 44
	If Err Then Glf_1276 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 44}", "Glf_1276"
Function Glf_1277(args)
	On Error Resume Next
	    Glf_1277 = glf_timers("final_wave_gi").GetValue("ticks") = 45
	If Err Then Glf_1277 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 45}", "Glf_1277"
Function Glf_1278(args)
	On Error Resume Next
	    Glf_1278 = glf_timers("final_wave_gi").GetValue("ticks") = 46
	If Err Then Glf_1278 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 46}", "Glf_1278"
Function Glf_1279(args)
	On Error Resume Next
	    Glf_1279 = glf_timers("final_wave_gi").GetValue("ticks") = 47
	If Err Then Glf_1279 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 47}", "Glf_1279"
Function Glf_1280(args)
	On Error Resume Next
	    Glf_1280 = glf_timers("final_wave_gi").GetValue("ticks") = 48
	If Err Then Glf_1280 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 48}", "Glf_1280"
Function Glf_1281(args)
	On Error Resume Next
	    Glf_1281 = glf_timers("final_wave_gi").GetValue("ticks") = 49
	If Err Then Glf_1281 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 49}", "Glf_1281"
Function Glf_1282(args)
	On Error Resume Next
	    Glf_1282 = glf_timers("final_wave_gi").GetValue("ticks") = 50
	If Err Then Glf_1282 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 50}", "Glf_1282"
Function Glf_1283(args)
	On Error Resume Next
	    Glf_1283 = glf_timers("final_wave_gi").GetValue("ticks") = 51
	If Err Then Glf_1283 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 51}", "Glf_1283"
Function Glf_1284(args)
	On Error Resume Next
	    Glf_1284 = glf_timers("final_wave_gi").GetValue("ticks") = 52
	If Err Then Glf_1284 = False
End Function
glf_funcRefMap.Add "timer_final_wave_gi_tick{devices.timers.final_wave_gi.ticks == 52}", "Glf_1284"
Function Glf_1285(args)
	On Error Resume Next
	    Glf_1285 = glf_timers("final_wave_flicker").GetValue("ticks") = 1
	If Err Then Glf_1285 = False
End Function
glf_funcRefMap.Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 1}", "Glf_1285"
Function Glf_1286(args)
	On Error Resume Next
	    Glf_1286 = glf_timers("final_wave_flicker").GetValue("ticks") = 7
	If Err Then Glf_1286 = False
End Function
glf_funcRefMap.Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 7}", "Glf_1286"
Function Glf_1287(args)
	On Error Resume Next
	    Glf_1287 = glf_timers("final_wave_flicker").GetValue("ticks") = 10
	If Err Then Glf_1287 = False
End Function
glf_funcRefMap.Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 10}", "Glf_1287"
Function Glf_1288(args)
	On Error Resume Next
	    Glf_1288 = glf_timers("final_wave_flicker").GetValue("ticks") = 15
	If Err Then Glf_1288 = False
End Function
glf_funcRefMap.Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 15}", "Glf_1288"
Function Glf_1289(args)
	On Error Resume Next
	    Glf_1289 = glf_timers("final_wave_flicker").GetValue("ticks") = 22
	If Err Then Glf_1289 = False
End Function
glf_funcRefMap.Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 22}", "Glf_1289"
Function Glf_1290(args)
	On Error Resume Next
	    Glf_1290 = glf_timers("final_wave_flicker").GetValue("ticks") = 24
	If Err Then Glf_1290 = False
End Function
glf_funcRefMap.Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 24}", "Glf_1290"
Function Glf_1291(args)
	On Error Resume Next
	    Glf_1291 = glf_timers("final_wave_flicker").GetValue("ticks") = 29
	If Err Then Glf_1291 = False
End Function
glf_funcRefMap.Add "timer_final_wave_flicker_tick{devices.timers.final_wave_flicker.ticks == 29}", "Glf_1291"
Function Glf_1292(args)
	On Error Resume Next
	    Glf_1292 = GetPlayerState("shot_fwwiz_meteor1") = 0
	If Err Then Glf_1292 = False
End Function
glf_funcRefMap.Add "meteor1_raise{current_player.shot_fwwiz_meteor1 == 0}", "Glf_1292"
Function Glf_1293(args)
	On Error Resume Next
	    Glf_1293 = GetPlayerState("shot_fwwiz_meteor2") = 0
	If Err Then Glf_1293 = False
End Function
glf_funcRefMap.Add "meteor2_raise{current_player.shot_fwwiz_meteor2 == 0}", "Glf_1293"
Function Glf_1294(args)
	On Error Resume Next
	    Glf_1294 = GetPlayerState("shot_fwwiz_meteor3") = 0
	If Err Then Glf_1294 = False
End Function
glf_funcRefMap.Add "meteor3_raise{current_player.shot_fwwiz_meteor3 == 0}", "Glf_1294"
Function Glf_1295(args)
	On Error Resume Next
	    Glf_1295 = GetPlayerState("shot_fwwiz_meteor4") = 0
	If Err Then Glf_1295 = False
End Function
glf_funcRefMap.Add "meteor4_raise{current_player.shot_fwwiz_meteor4 == 0}", "Glf_1295"
Function Glf_1296(args)
	On Error Resume Next
	    Glf_1296 = glf_modes("final_wave_wizard").GetValue("active") And GetPlayerState("wizard_final_hit_count") = 0
	If Err Then Glf_1296 = False
End Function
glf_funcRefMap.Add "balldevice_trough_ball_eject_attempt{modes.final_wave_wizard.active && current_player.wizard_final_hit_count == 0}", "Glf_1296"
Function Glf_1297(args)
	Glf_1297 = 60000
End Function
glf_funcRefMap.Add "60000", "Glf_1297"
Function Glf_1298(args)
	On Error Resume Next
	    Glf_1298 = glf_timers("final_wave_message").GetValue("ticks") = 2
	If Err Then Glf_1298 = False
End Function
glf_funcRefMap.Add "timer_final_wave_message_tick{devices.timers.final_wave_message.ticks == 2}", "Glf_1298"
Function Glf_1299(args)
	Glf_1299 = -10
End Function
glf_funcRefMap.Add "-10", "Glf_1299"
Function Glf_1300(args)
	On Error Resume Next
	    Glf_1300 = GetPlayerState("wizard_final_hit_count") < 0
	If Err Then Glf_1300 = False
End Function
glf_funcRefMap.Add "detonate_nuke.2{current_player.wizard_final_hit_count < 0}", "Glf_1300"
Function Glf_1301(args)
	Glf_1301 = 50
End Function
glf_funcRefMap.Add "50", "Glf_1301"
Function Glf_1302(args)
	Glf_1302 = 53
End Function
glf_funcRefMap.Add "53", "Glf_1302"
Function Glf_1303(args)
	Glf_1303 = 30
End Function
glf_funcRefMap.Add "30", "Glf_1303"
Function Glf_1304(args)
	Glf_1304 = "  THE  "
End Function
glf_funcRefMap.Add """  THE  """, "Glf_1304"
Function Glf_1305(args)
	Glf_1305 = " FINAL "
End Function
glf_funcRefMap.Add """ FINAL """, "Glf_1305"
Function Glf_1306(args)
	Glf_1306 = "  WAVE  "
End Function
glf_funcRefMap.Add """  WAVE  """, "Glf_1306"
Function Glf_1307(args)
	Glf_1307 = "IS HERE "
End Function
glf_funcRefMap.Add """IS HERE """, "Glf_1307"
Function Glf_1308(args)
	On Error Resume Next
	    Glf_1308 = glf_timers("final_wave_message").GetValue("ticks") = 1
	If Err Then Glf_1308 = False
End Function
glf_funcRefMap.Add "timer_final_wave_message_tick{devices.timers.final_wave_message.ticks == 1}", "Glf_1308"
Function Glf_1309(args)
	Glf_1309 = " RAMPS "
End Function
glf_funcRefMap.Add """ RAMPS """, "Glf_1309"
Function Glf_1310(args)
	Glf_1310 = " ADD A  "
End Function
glf_funcRefMap.Add """ ADD A  """, "Glf_1310"
Function Glf_1311(args)
	Glf_1311 = "  BALL  "
End Function
glf_funcRefMap.Add """  BALL  """, "Glf_1311"
Function Glf_1312(args)
	Glf_1312 = "--------"
End Function
glf_funcRefMap.Add """--------""", "Glf_1312"
Function Glf_1313(args)
	Glf_1313 = "DESTROY"
End Function
glf_funcRefMap.Add """DESTROY""", "Glf_1313"
Function Glf_1314(args)
	Glf_1314 = "HITSLEFT"
End Function
glf_funcRefMap.Add """HITSLEFT""", "Glf_1314"
Function Glf_1315(args)
	Glf_1315 = Glf_FormatValue(GetPlayerState("wizard_final_hit_count"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.wizard_final_hit_count:0>2}", "Glf_1315"
Function Glf_1316(args)
	On Error Resume Next
	    Glf_1316 = glf_modes("final_wave_wizard").GetValue("active")
	If Err Then Glf_1316 = False
End Function
glf_funcRefMap.Add "mode_victory_lap_started{modes.final_wave_wizard.active}", "Glf_1316"
Function Glf_1317(args)
	On Error Resume Next
	    Glf_1317 = GetPlayerState("victory_lap_running") = 0
	If Err Then Glf_1317 = False
End Function
glf_funcRefMap.Add "ball_launch_hit{current_player.victory_lap_running == 0}", "Glf_1317"
Function Glf_1318(args)
	On Error Resume Next
	    Glf_1318 = GetPlayerState("victory_lap_running") = 0
	If Err Then Glf_1318 = False
End Function
glf_funcRefMap.Add "s_Plunger1_active{current_player.victory_lap_running == 0}", "Glf_1318"
Function Glf_1319(args)
	Glf_1319 = 13000
End Function
glf_funcRefMap.Add "13000", "Glf_1319"
Function Glf_1320(args)
	Glf_1320 = 45000
End Function
glf_funcRefMap.Add "45000", "Glf_1320"
Function Glf_1321(args)
	Glf_1321 = " YOU "
End Function
glf_funcRefMap.Add """ YOU """, "Glf_1321"
Function Glf_1322(args)
	Glf_1322 = " SAVED "
End Function
glf_funcRefMap.Add """ SAVED """, "Glf_1322"
Function Glf_1323(args)
	Glf_1323 = "US  "
End Function
glf_funcRefMap.Add """US  """, "Glf_1323"
Function Glf_1324(args)
	Glf_1324 = "ALL "
End Function
glf_funcRefMap.Add """ALL """, "Glf_1324"
Function Glf_1325(args)
	Glf_1325 = Glf_FormatValue(glf_timers("victory_countdown").GetValue("ticks"), "0>2")
End Function
glf_funcRefMap.Add "{devices.timers.victory_countdown.ticks:0>2}", "Glf_1325"
Function Glf_1326(args)
	Glf_1326 = 150
End Function
glf_funcRefMap.Add "150", "Glf_1326"
Function Glf_1327(args)
	Glf_1327 = 4000
End Function
glf_funcRefMap.Add "4000", "Glf_1327"
Function Glf_1328(args)
	Glf_1328 = 65000
End Function
glf_funcRefMap.Add "65000", "Glf_1328"
Function Glf_1329(args)
	Glf_1329 = 1000
End Function
glf_funcRefMap.Add "1000", "Glf_1329"
Function Glf_1330(args)
	On Error Resume Next
	    Glf_1330 = glf_ball_devices("moon_lock").GetValue("balls") > 0
	If Err Then Glf_1330 = False
End Function
glf_funcRefMap.Add "game_ended{devices.ball_devices.moon_lock.balls > 0}", "Glf_1330"
Function Glf_1331(args)
	Glf_1331 = 250
End Function
glf_funcRefMap.Add "250", "Glf_1331"
Dim glf_gi17_lmarr : glf_gi17_lmarr = Array(lm_gi_gi17_bs2,lm_gi_gi17_bmpbot,lm_gi_gi17_parts,lm_gi_gi17_playfield)
glf_lightMaps.Add "gi17", glf_gi17_lmarr
Dim glf_giapron_lmarr : glf_giapron_lmarr = Array(lm_gi_giapron_lflip,lm_gi_giapron_lflipu,lm_gi_giapron_parts,lm_gi_giapron_playfield,lm_gi_giapron_rflip,lm_gi_giapron_rflipu,lm_gi_giapron_rsling1,lm_gi_giapron_rsling2,lm_gi_giapron_rsling3,lm_gi_giapron_screen,lm_gi_giapron_trustpost,lm_gi_giapron_underpf,lm_gi_giapron_swp1)
glf_lightMaps.Add "giapron", glf_giapron_lmarr
Dim glf_gi22_lmarr : glf_gi22_lmarr = Array(lm_gi_gi22_asteroid1,lm_gi_gi22_asteroid2,lm_gi_gi22_asteroid3,lm_gi_gi22_asteroid4,lm_gi_gi22_br2,lm_gi_gi22_br3,lm_gi_gi22_bs2,lm_gi_gi22_bs3,lm_gi_gi22_bmpbot,lm_gi_gi22_layer1,lm_gi_gi22_parts,lm_gi_gi22_playfield,lm_gi_gi22_tm4,lm_gi_gi22_underpf,lm_gi_gi22_swc3,lm_gi_gi22_swr2)
glf_lightMaps.Add "gi22", glf_gi22_lmarr
Dim glf_LStars_lmarr : glf_LStars_lmarr = Array()
glf_lightMaps.Add "LStars", glf_LStars_lmarr
Dim glf_gi20_lmarr : glf_gi20_lmarr = Array(lm_gi_gi20_asteroid1,lm_gi_gi20_asteroid2,lm_gi_gi20_asteroid3,lm_gi_gi20_asteroid4,lm_gi_gi20_bs1,lm_gi_gi20_gatel,lm_gi_gi20_parts,lm_gi_gi20_playfield,lm_gi_gi20_ramp,lm_gi_gi20_spin,lm_gi_gi20_spinu,lm_gi_gi20_spinwire,lm_gi_gi20_tm2,lm_gi_gi20_underpf,lm_gi_gi20_swi1,lm_gi_gi20_swl1,lm_gi_gi20_swl2)
glf_lightMaps.Add "gi20", glf_gi20_lmarr
Dim glf_gi21_lmarr : glf_gi21_lmarr = Array(lm_gi_gi21_asteroid1,lm_gi_gi21_asteroid2,lm_gi_gi21_asteroid3,lm_gi_gi21_asteroid4,lm_gi_gi21_gatel,lm_gi_gi21_parts,lm_gi_gi21_playfield,lm_gi_gi21_ramp,lm_gi_gi21_spin,lm_gi_gi21_spinu,lm_gi_gi21_spinwire,lm_gi_gi21_swl1,lm_gi_gi21_swl2)
glf_lightMaps.Add "gi21", glf_gi21_lmarr
Dim glf_gi19_lmarr : glf_gi19_lmarr = Array(lm_gi_gi19_lockpin,lm_gi_gi19_parts,lm_gi_gi19_playfield,lm_gi_gi19_rflip1,lm_gi_gi19_rflip1u,lm_gi_gi19_underpf)
glf_lightMaps.Add "gi19", glf_gi19_lmarr
Dim glf_gi18_lmarr : glf_gi18_lmarr = Array(lm_gi_gi18_parts,lm_gi_gi18_playfield)
glf_lightMaps.Add "gi18", glf_gi18_lmarr
Dim glf_gi16_lmarr : glf_gi16_lmarr = Array(lm_gi_gi16_parts,lm_gi_gi16_playfield,lm_gi_gi16_ramp)
glf_lightMaps.Add "gi16", glf_gi16_lmarr
Dim glf_gi15_lmarr : glf_gi15_lmarr = Array(lm_gi_gi15_lockpin,lm_gi_gi15_parts,lm_gi_gi15_playfield,lm_gi_gi15_rflip1,lm_gi_gi15_rflip1u,lm_gi_gi15_underpf,lm_gi_gi15_swr1)
glf_lightMaps.Add "gi15", glf_gi15_lmarr
Dim glf_gi14_lmarr : glf_gi14_lmarr = Array(lm_gi_gi14_gate2,lm_gi_gi14_lockpin,lm_gi_gi14_parts,lm_gi_gi14_playfield,lm_gi_gi14_rflip1,lm_gi_gi14_rflip1u)
glf_lightMaps.Add "gi14", glf_gi14_lmarr
Dim glf_gi13_lmarr : glf_gi13_lmarr = Array(lm_gi_gi13_br2,lm_gi_gi13_br3,lm_gi_gi13_bs2,lm_gi_gi13_bs3,lm_gi_gi13_bmpbot,lm_gi_gi13_parts,lm_gi_gi13_playfield,lm_gi_gi13_rflip1,lm_gi_gi13_rflip1u,lm_gi_gi13_tm4,lm_gi_gi13_tm5,lm_gi_gi13_underpf,lm_gi_gi13_swr1)
glf_lightMaps.Add "gi13", glf_gi13_lmarr
Dim glf_gi12_lmarr : glf_gi12_lmarr = Array(lm_gi_gi12_bmpbot,lm_gi_gi12_parts,lm_gi_gi12_playfield)
glf_lightMaps.Add "gi12", glf_gi12_lmarr
Dim glf_gi11_lmarr : glf_gi11_lmarr = Array(lm_gi_gi11_bs1,lm_gi_gi11_parts,lm_gi_gi11_playfield)
glf_lightMaps.Add "gi11", glf_gi11_lmarr
Dim glf_gi10_lmarr : glf_gi10_lmarr = Array(lm_gi_gi10_gate2,lm_gi_gi10_parts,lm_gi_gi10_playfield,lm_gi_gi10_rarm,lm_gi_gi10_rflip1u,lm_gi_gi10_ts1,lm_gi_gi10_ts2,lm_gi_gi10_ts3,lm_gi_gi10_underpf,lm_gi_gi10_swro)
glf_lightMaps.Add "gi10", glf_gi10_lmarr
Dim glf_gi09_lmarr : glf_gi09_lmarr = Array(lm_gi_gi09_parts,lm_gi_gi09_playfield,lm_gi_gi09_rarm,lm_gi_gi09_swli)
glf_lightMaps.Add "gi09", glf_gi09_lmarr
Dim glf_gi08_lmarr : glf_gi08_lmarr = Array(lm_gi_gi08_lsling3,lm_gi_gi08_parts,lm_gi_gi08_playfield,lm_gi_gi08_rarm,lm_gi_gi08_rflip,lm_gi_gi08_rflipu,lm_gi_gi08_rsling1,lm_gi_gi08_rsling2,lm_gi_gi08_rsling3,lm_gi_gi08_underpf,lm_gi_gi08_swri,lm_gi_gi08_swro)
glf_lightMaps.Add "gi08", glf_gi08_lmarr
Dim glf_gi07_lmarr : glf_gi07_lmarr = Array(lm_gi_gi07_lflip,lm_gi_gi07_lflipu,lm_gi_gi07_lsling2,lm_gi_gi07_lsling3,lm_gi_gi07_parts,lm_gi_gi07_playfield,lm_gi_gi07_rarm,lm_gi_gi07_rflip,lm_gi_gi07_rflipu,lm_gi_gi07_rsling1,lm_gi_gi07_rsling2,lm_gi_gi07_rsling3,lm_gi_gi07_swri)
glf_lightMaps.Add "gi07", glf_gi07_lmarr
Dim glf_gi06_lmarr : glf_gi06_lmarr = Array(lm_gi_gi06_parts,lm_gi_gi06_playfield,lm_gi_gi06_rarm,lm_gi_gi06_rflip,lm_gi_gi06_rflipu,lm_gi_gi06_rsling1,lm_gi_gi06_rsling2,lm_gi_gi06_rsling3,lm_gi_gi06_swri,lm_gi_gi06_swro)
glf_lightMaps.Add "gi06", glf_gi06_lmarr
Dim glf_gi05_lmarr : glf_gi05_lmarr = Array(lm_gi_gi05_lflip,lm_gi_gi05_lflipu,lm_gi_gi05_parts,lm_gi_gi05_playfield,lm_gi_gi05_rarm,lm_gi_gi05_rflip,lm_gi_gi05_rflipu,lm_gi_gi05_rsling1,lm_gi_gi05_rsling2,lm_gi_gi05_rsling3,lm_gi_gi05_underpf,lm_gi_gi05_swri,lm_gi_gi05_swro)
glf_lightMaps.Add "gi05", glf_gi05_lmarr
Dim glf_gi04_lmarr : glf_gi04_lmarr = Array(lm_gi_gi04_larm,lm_gi_gi04_lflip,lm_gi_gi04_lflipu,lm_gi_gi04_lsling1,lm_gi_gi04_lsling2,lm_gi_gi04_lsling3,lm_gi_gi04_parts,lm_gi_gi04_playfield,lm_gi_gi04_rsling3,lm_gi_gi04_underpf,lm_gi_gi04_swli,lm_gi_gi04_swlo)
glf_lightMaps.Add "gi04", glf_gi04_lmarr
Dim glf_gi03_lmarr : glf_gi03_lmarr = Array(lm_gi_gi03_larm,lm_gi_gi03_lflip,lm_gi_gi03_lflipu,lm_gi_gi03_lsling1,lm_gi_gi03_lsling2,lm_gi_gi03_lsling3,lm_gi_gi03_parts,lm_gi_gi03_playfield,lm_gi_gi03_rflip,lm_gi_gi03_rflipu,lm_gi_gi03_rsling2,lm_gi_gi03_rsling3,lm_gi_gi03_swli)
glf_lightMaps.Add "gi03", glf_gi03_lmarr
Dim glf_gi02_lmarr : glf_gi02_lmarr = Array(lm_gi_gi02_br1,lm_gi_gi02_larm,lm_gi_gi02_lflip,lm_gi_gi02_lflipu,lm_gi_gi02_lsling1,lm_gi_gi02_lsling2,lm_gi_gi02_lsling3,lm_gi_gi02_parts,lm_gi_gi02_playfield,lm_gi_gi02_rarm,lm_gi_gi02_rflip,lm_gi_gi02_rflipu,lm_gi_gi02_rsling3,lm_gi_gi02_underpf,lm_gi_gi02_swli,lm_gi_gi02_swlo)
glf_lightMaps.Add "gi02", glf_gi02_lmarr
Dim glf_gi01_lmarr : glf_gi01_lmarr = Array(lm_gi_gi01_larm,lm_gi_gi01_lflip,lm_gi_gi01_lflipu,lm_gi_gi01_lsling1,lm_gi_gi01_lsling2,lm_gi_gi01_lsling3,lm_gi_gi01_parts,lm_gi_gi01_playfield,lm_gi_gi01_rarm,lm_gi_gi01_rflip,lm_gi_gi01_rflipu,lm_gi_gi01_rsling1,lm_gi_gi01_rsling3,lm_gi_gi01_underpf,lm_gi_gi01_swli,lm_gi_gi01_swlo)
glf_lightMaps.Add "gi01", glf_gi01_lmarr
Dim glf_LPF_lmarr : glf_LPF_lmarr = Array(lm_l_lpf_asteroid1,lm_l_lpf_asteroid2,lm_l_lpf_asteroid3,lm_l_lpf_asteroid4,lm_l_lpf_parts,lm_l_lpf_playfield,lm_l_lpf_tm3,lm_l_lpf_underpf)
glf_lightMaps.Add "LPF", glf_LPF_lmarr
Dim glf_LEBR_lmarr : glf_LEBR_lmarr = Array(lm_l_lebr_parts,lm_l_lebr_playfield,lm_l_lebr_underpf)
glf_lightMaps.Add "LEBR", glf_LEBR_lmarr
Dim glf_LS5_lmarr : glf_LS5_lmarr = Array(lm_l_ls5_parts,lm_l_ls5_playfield,lm_l_ls5_rflip1u,lm_l_ls5_underpf)
glf_lightMaps.Add "LS5", glf_LS5_lmarr
Dim glf_LS1_lmarr : glf_LS1_lmarr = Array(lm_l_ls1_bs1,lm_l_ls1_parts,lm_l_ls1_playfield,lm_l_ls1_tm1,lm_l_ls1_underpf)
glf_lightMaps.Add "LS1", glf_LS1_lmarr
Dim glf_LS2_lmarr : glf_LS2_lmarr = Array(lm_l_ls2_bs1,lm_l_ls2_bmpbot,lm_l_ls2_parts,lm_l_ls2_playfield,lm_l_ls2_underpf)
glf_lightMaps.Add "LS2", glf_LS2_lmarr
Dim glf_LS3_lmarr : glf_LS3_lmarr = Array(lm_l_ls3_parts,lm_l_ls3_playfield,lm_l_ls3_underpf)
glf_lightMaps.Add "LS3", glf_LS3_lmarr
Dim glf_LS4_lmarr : glf_LS4_lmarr = Array(lm_l_ls4_parts,lm_l_ls4_playfield,lm_l_ls4_underpf)
glf_lightMaps.Add "LS4", glf_LS4_lmarr
Dim glf_LS6_lmarr : glf_LS6_lmarr = Array(lm_l_ls6_parts,lm_l_ls6_playfield,lm_l_ls6_rflip1,lm_l_ls6_rflip1u,lm_l_ls6_underpf)
glf_lightMaps.Add "LS6", glf_LS6_lmarr
Dim glf_LSwC3_lmarr : glf_LSwC3_lmarr = Array(lm_l_lswc3_asteroid1,lm_l_lswc3_asteroid2,lm_l_lswc3_asteroid3,lm_l_lswc3_asteroid4,lm_l_lswc3_parts,lm_l_lswc3_playfield,lm_l_lswc3_underpf,lm_l_lswc3_swc2,lm_l_lswc3_swc3)
glf_lightMaps.Add "LSwC3", glf_LSwC3_lmarr
Dim glf_LSwC2_lmarr : glf_LSwC2_lmarr = Array(lm_l_lswc2_asteroid1,lm_l_lswc2_asteroid2,lm_l_lswc2_asteroid3,lm_l_lswc2_asteroid4,lm_l_lswc2_parts,lm_l_lswc2_playfield,lm_l_lswc2_tm3,lm_l_lswc2_underpf,lm_l_lswc2_swc1,lm_l_lswc2_swc2)
glf_lightMaps.Add "LSwC2", glf_LSwC2_lmarr
Dim glf_LSwC1_lmarr : glf_LSwC1_lmarr = Array(lm_l_lswc1_asteroid1,lm_l_lswc1_asteroid2,lm_l_lswc1_asteroid3,lm_l_lswc1_asteroid4,lm_l_lswc1_parts,lm_l_lswc1_playfield,lm_l_lswc1_underpf,lm_l_lswc1_swc1,lm_l_lswc1_swc2)
glf_lightMaps.Add "LSwC1", glf_LSwC1_lmarr
Dim glf_LCWiz_lmarr : glf_LCWiz_lmarr = Array(lm_l_lcwiz_parts,lm_l_lcwiz_playfield,lm_l_lcwiz_underpf)
glf_lightMaps.Add "LCWiz", glf_LCWiz_lmarr
Dim glf_LLWiz_lmarr : glf_LLWiz_lmarr = Array(lm_l_llwiz_parts,lm_l_llwiz_playfield,lm_l_llwiz_underpf)
glf_lightMaps.Add "LLWiz", glf_LLWiz_lmarr
Dim glf_LC1_lmarr : glf_LC1_lmarr = Array(lm_l_lc1_lflip,lm_l_lc1_lflipu,lm_l_lc1_lsling1,lm_l_lc1_lsling2,lm_l_lc1_lsling3,lm_l_lc1_parts,lm_l_lc1_playfield,lm_l_lc1_underpf)
glf_lightMaps.Add "LC1", glf_LC1_lmarr
Dim glf_LC2_lmarr : glf_LC2_lmarr = Array(lm_l_lc2_lflip,lm_l_lc2_lflipu,lm_l_lc2_playfield,lm_l_lc2_underpf)
glf_lightMaps.Add "LC2", glf_LC2_lmarr
Dim glf_LC3_lmarr : glf_LC3_lmarr = Array(lm_l_lc3_lflip,lm_l_lc3_lflipu,lm_l_lc3_playfield,lm_l_lc3_rflipu,lm_l_lc3_underpf)
glf_lightMaps.Add "LC3", glf_LC3_lmarr
Dim glf_LC4_lmarr : glf_LC4_lmarr = Array(lm_l_lc4_lflip,lm_l_lc4_lflipu,lm_l_lc4_playfield,lm_l_lc4_rflipu,lm_l_lc4_underpf)
glf_lightMaps.Add "LC4", glf_LC4_lmarr
Dim glf_LC5_lmarr : glf_LC5_lmarr = Array(lm_l_lc5_lflipu,lm_l_lc5_playfield,lm_l_lc5_rflip,lm_l_lc5_rflipu,lm_l_lc5_underpf)
glf_lightMaps.Add "LC5", glf_LC5_lmarr
Dim glf_LC6_lmarr : glf_LC6_lmarr = Array(lm_l_lc6_lflipu,lm_l_lc6_playfield,lm_l_lc6_rflip,lm_l_lc6_rflipu,lm_l_lc6_underpf)
glf_lightMaps.Add "LC6", glf_LC6_lmarr
Dim glf_LC7_lmarr : glf_LC7_lmarr = Array(lm_l_lc7_playfield,lm_l_lc7_rflip,lm_l_lc7_rflipu,lm_l_lc7_underpf)
glf_lightMaps.Add "LC7", glf_LC7_lmarr
Dim glf_LC8_lmarr : glf_LC8_lmarr = Array(lm_l_lc8_parts,lm_l_lc8_playfield,lm_l_lc8_rflip,lm_l_lc8_rflipu,lm_l_lc8_rsling1,lm_l_lc8_rsling2,lm_l_lc8_rsling3,lm_l_lc8_underpf)
glf_lightMaps.Add "LC8", glf_LC8_lmarr
Dim glf_LWiz_lmarr : glf_LWiz_lmarr = Array(lm_l_lwiz_parts,lm_l_lwiz_playfield,lm_l_lwiz_underpf)
glf_lightMaps.Add "LWiz", glf_LWiz_lmarr
Dim glf_LW9_lmarr : glf_LW9_lmarr = Array(lm_l_lw9_parts,lm_l_lw9_playfield,lm_l_lw9_underpf)
glf_lightMaps.Add "LW9", glf_LW9_lmarr
Dim glf_LW8_lmarr : glf_LW8_lmarr = Array(lm_l_lw8_parts,lm_l_lw8_playfield,lm_l_lw8_underpf)
glf_lightMaps.Add "LW8", glf_LW8_lmarr
Dim glf_LW7_lmarr : glf_LW7_lmarr = Array(lm_l_lw7_parts,lm_l_lw7_playfield,lm_l_lw7_underpf)
glf_lightMaps.Add "LW7", glf_LW7_lmarr
Dim glf_LW6_lmarr : glf_LW6_lmarr = Array(lm_l_lw6_parts,lm_l_lw6_playfield,lm_l_lw6_underpf)
glf_lightMaps.Add "LW6", glf_LW6_lmarr
Dim glf_LW5_lmarr : glf_LW5_lmarr = Array(lm_l_lw5_parts,lm_l_lw5_playfield,lm_l_lw5_underpf)
glf_lightMaps.Add "LW5", glf_LW5_lmarr
Dim glf_LW4_lmarr : glf_LW4_lmarr = Array(lm_l_lw4_parts,lm_l_lw4_playfield,lm_l_lw4_underpf)
glf_lightMaps.Add "LW4", glf_LW4_lmarr
Dim glf_LW3_lmarr : glf_LW3_lmarr = Array(lm_l_lw3_parts,lm_l_lw3_playfield,lm_l_lw3_underpf)
glf_lightMaps.Add "LW3", glf_LW3_lmarr
Dim glf_LW2_lmarr : glf_LW2_lmarr = Array(lm_l_lw2_parts,lm_l_lw2_playfield,lm_l_lw2_underpf)
glf_lightMaps.Add "LW2", glf_LW2_lmarr
Dim glf_LW1_lmarr : glf_LW1_lmarr = Array(lm_l_lw1_parts,lm_l_lw1_playfield,lm_l_lw1_underpf)
glf_lightMaps.Add "LW1", glf_LW1_lmarr
Dim glf_LMLR_lmarr : glf_LMLR_lmarr = Array(lm_l_lmlr_parts,lm_l_lmlr_playfield,lm_l_lmlr_underpf)
glf_lightMaps.Add "LMLR", glf_LMLR_lmarr
Dim glf_LMR_lmarr : glf_LMR_lmarr = Array(lm_l_lmr_parts,lm_l_lmr_playfield,lm_l_lmr_underpf)
glf_lightMaps.Add "LMR", glf_LMR_lmarr
Dim glf_LX_lmarr : glf_LX_lmarr = Array(lm_l_lx_gater,lm_l_lx_parts,lm_l_lx_playfield,lm_l_lx_tm4,lm_l_lx_underpf)
glf_lightMaps.Add "LX", glf_LX_lmarr
Dim glf_LPC5_lmarr : glf_LPC5_lmarr = Array(lm_l_lpc5_asteroid1,lm_l_lpc5_asteroid2,lm_l_lpc5_asteroid3,lm_l_lpc5_asteroid4,lm_l_lpc5_parts,lm_l_lpc5_playfield,lm_l_lpc5_tm3,lm_l_lpc5_tm4,lm_l_lpc5_underpf,lm_l_lpc5_swc3)
glf_lightMaps.Add "LPC5", glf_LPC5_lmarr
Dim glf_LPC4_lmarr : glf_LPC4_lmarr = Array(lm_l_lpc4_asteroid1,lm_l_lpc4_asteroid2,lm_l_lpc4_asteroid3,lm_l_lpc4_asteroid4,lm_l_lpc4_parts,lm_l_lpc4_playfield,lm_l_lpc4_ramp,lm_l_lpc4_tm3,lm_l_lpc4_underpf,lm_l_lpc4_swc1)
glf_lightMaps.Add "LPC4", glf_LPC4_lmarr
Dim glf_LSC3_lmarr : glf_LSC3_lmarr = Array(lm_l_lsc3_parts,lm_l_lsc3_playfield,lm_l_lsc3_ts3,lm_l_lsc3_underpf)
glf_lightMaps.Add "LSC3", glf_LSC3_lmarr
Dim glf_LSC2_lmarr : glf_LSC2_lmarr = Array(lm_l_lsc2_parts,lm_l_lsc2_playfield,lm_l_lsc2_ts1,lm_l_lsc2_ts2,lm_l_lsc2_ts3,lm_l_lsc2_underpf)
glf_lightMaps.Add "LSC2", glf_LSC2_lmarr
Dim glf_LSC1_lmarr : glf_LSC1_lmarr = Array(lm_l_lsc1_parts,lm_l_lsc1_playfield,lm_l_lsc1_ts1,lm_l_lsc1_ts2,lm_l_lsc1_underpf)
glf_lightMaps.Add "LSC1", glf_LSC1_lmarr
Dim glf_LF3_lmarr : glf_LF3_lmarr = Array(lm_l_lf3_parts,lm_l_lf3_playfield,lm_l_lf3_tm5,lm_l_lf3_underpf)
glf_lightMaps.Add "LF3", glf_LF3_lmarr
Dim glf_LF2_lmarr : glf_LF2_lmarr = Array(lm_l_lf2_parts,lm_l_lf2_playfield,lm_l_lf2_tm5,lm_l_lf2_underpf)
glf_lightMaps.Add "LF2", glf_LF2_lmarr
Dim glf_LF1_lmarr : glf_LF1_lmarr = Array(lm_l_lf1_parts,lm_l_lf1_playfield,lm_l_lf1_underpf,lm_l_lf1_swr1)
glf_lightMaps.Add "LF1", glf_LF1_lmarr
Dim glf_LPC3_lmarr : glf_LPC3_lmarr = Array(lm_l_lpc3_parts,lm_l_lpc3_playfield,lm_l_lpc3_underpf)
glf_lightMaps.Add "LPC3", glf_LPC3_lmarr
Dim glf_LPC2_lmarr : glf_LPC2_lmarr = Array(lm_l_lpc2_parts,lm_l_lpc2_playfield,lm_l_lpc2_tm2,lm_l_lpc2_underpf)
glf_lightMaps.Add "LPC2", glf_LPC2_lmarr
Dim glf_LPC1_lmarr : glf_LPC1_lmarr = Array(lm_l_lpc1_asteroid1,lm_l_lpc1_gatel,lm_l_lpc1_parts,lm_l_lpc1_playfield,lm_l_lpc1_ramp,lm_l_lpc1_tm2,lm_l_lpc1_underpf)
glf_lightMaps.Add "LPC1", glf_LPC1_lmarr
Dim glf_LTW2_lmarr : glf_LTW2_lmarr = Array(lm_l_ltw2_parts,lm_l_ltw2_playfield,lm_l_ltw2_underpf)
glf_lightMaps.Add "LTW2", glf_LTW2_lmarr
Dim glf_LTW1_lmarr : glf_LTW1_lmarr = Array(lm_l_ltw1_parts,lm_l_ltw1_playfield,lm_l_ltw1_ramp,lm_l_ltw1_underpf)
glf_lightMaps.Add "LTW1", glf_LTW1_lmarr
Dim glf_LCC3_lmarr : glf_LCC3_lmarr = Array(lm_l_lcc3_parts,lm_l_lcc3_playfield,lm_l_lcc3_underpf)
glf_lightMaps.Add "LCC3", glf_LCC3_lmarr
Dim glf_LCC2_lmarr : glf_LCC2_lmarr = Array(lm_l_lcc2_parts,lm_l_lcc2_playfield,lm_l_lcc2_underpf)
glf_lightMaps.Add "LCC2", glf_LCC2_lmarr
Dim glf_LCC1_lmarr : glf_LCC1_lmarr = Array(lm_l_lcc1_parts,lm_l_lcc1_playfield,lm_l_lcc1_ramp,lm_l_lcc1_underpf,lm_l_lcc1_swl1)
glf_lightMaps.Add "LCC1", glf_LCC1_lmarr
Dim glf_LMet4_lmarr : glf_LMet4_lmarr = Array(lm_l_lmet4_parts,lm_l_lmet4_playfield,lm_l_lmet4_tmet4,lm_l_lmet4_underpf)
glf_lightMaps.Add "LMet4", glf_LMet4_lmarr
Dim glf_LMet3_lmarr : glf_LMet3_lmarr = Array(lm_l_lmet3_parts,lm_l_lmet3_playfield,lm_l_lmet3_tmet3,lm_l_lmet3_underpf)
glf_lightMaps.Add "LMet3", glf_LMet3_lmarr
Dim glf_LMet2_lmarr : glf_LMet2_lmarr = Array(lm_l_lmet2_bmpbot,lm_l_lmet2_parts,lm_l_lmet2_playfield,lm_l_lmet2_tmet2,lm_l_lmet2_underpf)
glf_lightMaps.Add "LMet2", glf_LMet2_lmarr
Dim glf_LMet1_lmarr : glf_LMet1_lmarr = Array(lm_l_lmet1_br1,lm_l_lmet1_bs1,lm_l_lmet1_parts,lm_l_lmet1_playfield,lm_l_lmet1_tmet1,lm_l_lmet1_underpf)
glf_lightMaps.Add "LMet1", glf_LMet1_lmarr
Dim glf_LM5_lmarr : glf_LM5_lmarr = Array(lm_l_lm5_parts,lm_l_lm5_playfield,lm_l_lm5_tm5,lm_l_lm5_underpf)
glf_lightMaps.Add "LM5", glf_LM5_lmarr
Dim glf_LM4_lmarr : glf_LM4_lmarr = Array(lm_l_lm4_parts,lm_l_lm4_playfield,lm_l_lm4_tm4,lm_l_lm4_underpf)
glf_lightMaps.Add "LM4", glf_LM4_lmarr
Dim glf_LM3_lmarr : glf_LM3_lmarr = Array(lm_l_lm3_asteroid1,lm_l_lm3_asteroid2,lm_l_lm3_asteroid3,lm_l_lm3_asteroid4,lm_l_lm3_playfield,lm_l_lm3_tm3,lm_l_lm3_underpf)
glf_lightMaps.Add "LM3", glf_LM3_lmarr
Dim glf_LM2_lmarr : glf_LM2_lmarr = Array(lm_l_lm2_parts,lm_l_lm2_playfield,lm_l_lm2_tm2,lm_l_lm2_underpf)
glf_lightMaps.Add "LM2", glf_LM2_lmarr
Dim glf_LM1_lmarr : glf_LM1_lmarr = Array(lm_l_lm1_parts,lm_l_lm1_playfield,lm_l_lm1_tm1,lm_l_lm1_underpf)
glf_lightMaps.Add "LM1", glf_LM1_lmarr
Dim glf_LSA_lmarr : glf_LSA_lmarr = Array(lm_l_lsa_lflip,lm_l_lsa_lflipu,lm_l_lsa_playfield,lm_l_lsa_rflip,lm_l_lsa_rflipu,lm_l_lsa_trustpost,lm_l_lsa_underpf)
glf_lightMaps.Add "LSA", glf_LSA_lmarr
Dim glf_LH9_lmarr : glf_LH9_lmarr = Array(lm_l_lh9_parts,lm_l_lh9_playfield,lm_l_lh9_rflip,lm_l_lh9_rflipu,lm_l_lh9_rsling1,lm_l_lh9_rsling2,lm_l_lh9_rsling3,lm_l_lh9_underpf)
glf_lightMaps.Add "LH9", glf_LH9_lmarr
Dim glf_LH8_lmarr : glf_LH8_lmarr = Array(lm_l_lh8_playfield,lm_l_lh8_rflip,lm_l_lh8_rflipu,lm_l_lh8_rsling1,lm_l_lh8_rsling2,lm_l_lh8_rsling3,lm_l_lh8_underpf)
glf_lightMaps.Add "LH8", glf_LH8_lmarr
Dim glf_LH7_lmarr : glf_LH7_lmarr = Array(lm_l_lh7_playfield,lm_l_lh7_rflip,lm_l_lh7_rflipu,lm_l_lh7_underpf)
glf_lightMaps.Add "LH7", glf_LH7_lmarr
Dim glf_LH6_lmarr : glf_LH6_lmarr = Array(lm_l_lh6_lflipu,lm_l_lh6_playfield,lm_l_lh6_rflip,lm_l_lh6_rflipu,lm_l_lh6_underpf)
glf_lightMaps.Add "LH6", glf_LH6_lmarr
Dim glf_LH5_lmarr : glf_LH5_lmarr = Array(lm_l_lh5_lflip,lm_l_lh5_lflipu,lm_l_lh5_parts,lm_l_lh5_playfield,lm_l_lh5_rflip,lm_l_lh5_rflipu,lm_l_lh5_underpf)
glf_lightMaps.Add "LH5", glf_LH5_lmarr
Dim glf_LH4_lmarr : glf_LH4_lmarr = Array(lm_l_lh4_lflip,lm_l_lh4_lflipu,lm_l_lh4_playfield,lm_l_lh4_rflipu,lm_l_lh4_underpf)
glf_lightMaps.Add "LH4", glf_LH4_lmarr
Dim glf_LH3_lmarr : glf_LH3_lmarr = Array(lm_l_lh3_lflip,lm_l_lh3_lflipu,lm_l_lh3_parts,lm_l_lh3_playfield,lm_l_lh3_underpf)
glf_lightMaps.Add "LH3", glf_LH3_lmarr
Dim glf_LH2_lmarr : glf_LH2_lmarr = Array(lm_l_lh2_lflip,lm_l_lh2_lflipu,lm_l_lh2_lsling1,lm_l_lh2_lsling2,lm_l_lh2_lsling3,lm_l_lh2_parts,lm_l_lh2_playfield,lm_l_lh2_underpf)
glf_lightMaps.Add "LH2", glf_LH2_lmarr
Dim glf_LH1_lmarr : glf_LH1_lmarr = Array(lm_l_lh1_lflip,lm_l_lh1_lflipu,lm_l_lh1_lsling1,lm_l_lh1_lsling2,lm_l_lh1_lsling3,lm_l_lh1_parts,lm_l_lh1_playfield,lm_l_lh1_underpf)
glf_lightMaps.Add "LH1", glf_LH1_lmarr
Dim glf_LPR1_lmarr : glf_LPR1_lmarr = Array(lm_l_lpr1_parts,lm_l_lpr1_playfield,lm_l_lpr1_underpf)
glf_lightMaps.Add "LPR1", glf_LPR1_lmarr
Dim glf_LPR3_lmarr : glf_LPR3_lmarr = Array(lm_l_lpr3_parts,lm_l_lpr3_playfield,lm_l_lpr3_underpf)
glf_lightMaps.Add "LPR3", glf_LPR3_lmarr
Dim glf_LPR2_lmarr : glf_LPR2_lmarr = Array(lm_l_lpr2_parts,lm_l_lpr2_playfield,lm_l_lpr2_underpf)
glf_lightMaps.Add "LPR2", glf_LPR2_lmarr
Dim glf_LPR6_lmarr : glf_LPR6_lmarr = Array(lm_l_lpr6_parts,lm_l_lpr6_playfield,lm_l_lpr6_rflipu,lm_l_lpr6_underpf)
glf_lightMaps.Add "LPR6", glf_LPR6_lmarr
Dim glf_LPR5_lmarr : glf_LPR5_lmarr = Array(lm_l_lpr5_lflipu,lm_l_lpr5_playfield,lm_l_lpr5_rflipu,lm_l_lpr5_underpf)
glf_lightMaps.Add "LPR5", glf_LPR5_lmarr
Dim glf_LPR4_lmarr : glf_LPR4_lmarr = Array(lm_l_lpr4_lflip,lm_l_lpr4_lflipu,lm_l_lpr4_parts,lm_l_lpr4_playfield,lm_l_lpr4_underpf)
glf_lightMaps.Add "LPR4", glf_LPR4_lmarr
Dim glf_LMR2_lmarr : glf_LMR2_lmarr = Array(lm_l_lmr2_parts,lm_l_lmr2_playfield,lm_l_lmr2_rsling1,lm_l_lmr2_rsling2,lm_l_lmr2_rsling3,lm_l_lmr2_underpf)
glf_lightMaps.Add "LMR2", glf_LMR2_lmarr
Dim glf_LMR1_lmarr : glf_LMR1_lmarr = Array(lm_l_lmr1_parts,lm_l_lmr1_playfield,lm_l_lmr1_rarm,lm_l_lmr1_rsling3,lm_l_lmr1_underpf)
glf_lightMaps.Add "LMR1", glf_LMR1_lmarr
Dim glf_LCR2_lmarr : glf_LCR2_lmarr = Array(lm_l_lcr2_lsling1,lm_l_lcr2_lsling2,lm_l_lcr2_lsling3,lm_l_lcr2_parts,lm_l_lcr2_playfield,lm_l_lcr2_underpf)
glf_lightMaps.Add "LCR2", glf_LCR2_lmarr
Dim glf_LCR1_lmarr : glf_LCR1_lmarr = Array(lm_l_lcr1_parts,lm_l_lcr1_playfield,lm_l_lcr1_underpf)
glf_lightMaps.Add "LCR1", glf_LCR1_lmarr
Dim glf_LRI_lmarr : glf_LRI_lmarr = Array(lm_l_lri_parts,lm_l_lri_playfield,lm_l_lri_rarm,lm_l_lri_rsling1,lm_l_lri_rsling2,lm_l_lri_rsling3,lm_l_lri_underpf,lm_l_lri_swri)
glf_lightMaps.Add "LRI", glf_LRI_lmarr
Dim glf_LRO_lmarr : glf_LRO_lmarr = Array(lm_l_lro_parts,lm_l_lro_playfield,lm_l_lro_underpf,lm_l_lro_swro)
glf_lightMaps.Add "LRO", glf_LRO_lmarr
Dim glf_LLI_lmarr : glf_LLI_lmarr = Array(lm_l_lli_lsling1,lm_l_lli_lsling2,lm_l_lli_lsling3,lm_l_lli_parts,lm_l_lli_playfield,lm_l_lli_underpf,lm_l_lli_swli,lm_l_lli_swlo)
glf_lightMaps.Add "LLI", glf_LLI_lmarr
Dim glf_LLO_lmarr : glf_LLO_lmarr = Array(lm_l_llo_parts,lm_l_llo_playfield,lm_l_llo_underpf,lm_l_llo_swlo)
glf_lightMaps.Add "LLO", glf_LLO_lmarr
Dim glf_LSR_lmarr : glf_LSR_lmarr = Array(lm_l_lsr_parts,lm_l_lsr_playfield,lm_l_lsr_underpf)
glf_lightMaps.Add "LSR", glf_LSR_lmarr
Dim glf_LSL_lmarr : glf_LSL_lmarr = Array(lm_l_lsl_parts,lm_l_lsl_playfield,lm_l_lsl_underpf)
glf_lightMaps.Add "LSL", glf_LSL_lmarr
Dim glf_LB2_lmarr : glf_LB2_lmarr = Array(lm_l_lb2_asteroid1,lm_l_lb2_asteroid2,lm_l_lb2_asteroid3,lm_l_lb2_asteroid4,lm_l_lb2_br2,lm_l_lb2_br3,lm_l_lb2_bs2,lm_l_lb2_bs3,lm_l_lb2_bmpbot,lm_l_lb2_diverterpin,lm_l_lb2_layer1,lm_l_lb2_parts,lm_l_lb2_playfield,lm_l_lb2_underpf,lm_l_lb2_swr2)
glf_lightMaps.Add "LB2", glf_LB2_lmarr
Dim glf_LB3_lmarr : glf_LB3_lmarr = Array(lm_l_lb3_asteroid1,lm_l_lb3_asteroid2,lm_l_lb3_asteroid3,lm_l_lb3_asteroid4,lm_l_lb3_br2,lm_l_lb3_br3,lm_l_lb3_bs2,lm_l_lb3_bs3,lm_l_lb3_bmpbot,lm_l_lb3_diverterpin,lm_l_lb3_layer1,lm_l_lb3_parts,lm_l_lb3_playfield,lm_l_lb3_tm4,lm_l_lb3_underpf,lm_l_lb3_swc3,lm_l_lb3_swi2)
glf_lightMaps.Add "LB3", glf_LB3_lmarr
Dim glf_LShip_lmarr : glf_LShip_lmarr = Array(lm_l_lship_parts,lm_l_lship_ship)
glf_lightMaps.Add "LShip", glf_LShip_lmarr
Dim glf_LSpot2_lmarr : glf_LSpot2_lmarr = Array()
glf_lightMaps.Add "LSpot2", glf_LSpot2_lmarr
Dim glf_LSpot2a_lmarr : glf_LSpot2a_lmarr = Array()
glf_lightMaps.Add "LSpot2a", glf_LSpot2a_lmarr
Dim glf_LSpot1_lmarr : glf_LSpot1_lmarr = Array(lm_l_lspot1_asteroid1,lm_l_lspot1_asteroid2,lm_l_lspot1_asteroid3,lm_l_lspot1_asteroid4,lm_l_lspot1_br2,lm_l_lspot1_bs3,lm_l_lspot1_bmpbot,lm_l_lspot1_gater,lm_l_lspot1_layer1,lm_l_lspot1_parts,lm_l_lspot1_playfield,lm_l_lspot1_ramp,lm_l_lspot1_spin,lm_l_lspot1_spinu,lm_l_lspot1_spinwire,lm_l_lspot1_tm3,lm_l_lspot1_tm4,lm_l_lspot1_underpf,lm_l_lspot1_swc1,lm_l_lspot1_swc2,lm_l_lspot1_swc3,lm_l_lspot1_swi2)
glf_lightMaps.Add "LSpot1", glf_LSpot1_lmarr
Dim glf_LB1_lmarr : glf_LB1_lmarr = Array(lm_l_lb1_br1,lm_l_lb1_bs1,lm_l_lb1_bmpbot,lm_l_lb1_parts,lm_l_lb1_playfield,lm_l_lb1_ship,lm_l_lb1_tm1,lm_l_lb1_swlb)
glf_lightMaps.Add "LB1", glf_LB1_lmarr
Dim glf_LB4_lmarr : glf_LB4_lmarr = Array()
glf_lightMaps.Add "LB4", glf_LB4_lmarr
Dim glf_FL6_lmarr : glf_FL6_lmarr = Array()
glf_lightMaps.Add "FL6", glf_FL6_lmarr
Dim glf_FL4_lmarr : glf_FL4_lmarr = Array(lm_f_fl4_asteroid1,lm_f_fl4_asteroid2,lm_f_fl4_asteroid3,lm_f_fl4_asteroid4,lm_f_fl4_bs3,lm_f_fl4_bmpbot,lm_f_fl4_layer1,lm_f_fl4_parts,lm_f_fl4_playfield,lm_f_fl4_rflip1,lm_f_fl4_rflip1u,lm_f_fl4_ramp,lm_f_fl4_spin,lm_f_fl4_spinu,lm_f_fl4_tm2,lm_f_fl4_tm3,lm_f_fl4_tm4,lm_f_fl4_underpf,lm_f_fl4_swc1,lm_f_fl4_swc2,lm_f_fl4_swc3)
glf_lightMaps.Add "FL4", glf_FL4_lmarr
Dim glf_FL5_lmarr : glf_FL5_lmarr = Array()
glf_lightMaps.Add "FL5", glf_FL5_lmarr
Dim glf_FL1_lmarr : glf_FL1_lmarr = Array(lm_f_fl1_asteroid1,lm_f_fl1_asteroid2,lm_f_fl1_asteroid3,lm_f_fl1_asteroid4,lm_f_fl1_br2,lm_f_fl1_br3,lm_f_fl1_bs2,lm_f_fl1_bs3,lm_f_fl1_bmpbot,lm_f_fl1_lockpin,lm_f_fl1_parts,lm_f_fl1_playfield,lm_f_fl1_rflip1,lm_f_fl1_rflip1u,lm_f_fl1_tm4,lm_f_fl1_tm5,lm_f_fl1_underpf,lm_f_fl1_swc3,lm_f_fl1_swr1,lm_f_fl1_swr2)
glf_lightMaps.Add "FL1", glf_FL1_lmarr
Dim glf_FL2_lmarr : glf_FL2_lmarr = Array(lm_f_fl2_asteroid1,lm_f_fl2_asteroid2,lm_f_fl2_asteroid3,lm_f_fl2_asteroid4,lm_f_fl2_bs2,lm_f_fl2_bs3,lm_f_fl2_bmpbot,lm_f_fl2_gatel,lm_f_fl2_parts,lm_f_fl2_playfield,lm_f_fl2_ramp,lm_f_fl2_spin,lm_f_fl2_spinu,lm_f_fl2_spinwire,lm_f_fl2_tm3,lm_f_fl2_swc1,lm_f_fl2_swi1,lm_f_fl2_swi2,lm_f_fl2_swl2,lm_f_fl2_swr2)
glf_lightMaps.Add "FL2", glf_FL2_lmarr
Dim glf_FL3_lmarr : glf_FL3_lmarr = Array(lm_f_fl3_asteroid1,lm_f_fl3_asteroid2,lm_f_fl3_asteroid3,lm_f_fl3_asteroid4,lm_f_fl3_br2,lm_f_fl3_br3,lm_f_fl3_bs2,lm_f_fl3_bs3,lm_f_fl3_bmpbot,lm_f_fl3_diverterpin,lm_f_fl3_parts,lm_f_fl3_playfield,lm_f_fl3_ramp,lm_f_fl3_spin,lm_f_fl3_spinu,lm_f_fl3_tm2,lm_f_fl3_tm3,lm_f_fl3_underpf,lm_f_fl3_swc1,lm_f_fl3_swc2,lm_f_fl3_swc3,lm_f_fl3_swi1,lm_f_fl3_swi2,lm_f_fl3_swl2,lm_f_fl3_swr1)
glf_lightMaps.Add "FL3", glf_FL3_lmarr
Dim glf_LDS_lmarr : glf_LDS_lmarr = Array(lm_l_lds_gate2,lm_l_lds_parts,lm_l_lds_playfield,lm_l_lds_rflip1,lm_l_lds_rflip1u,lm_l_lds_underpf)
glf_lightMaps.Add "LDS", glf_LDS_lmarr
Dim glf_LDP_lmarr : glf_LDP_lmarr = Array(lm_l_ldp_br2,lm_l_ldp_br3,lm_l_ldp_bs2,lm_l_ldp_bs3,lm_l_ldp_bmpbot,lm_l_ldp_diverterpin,lm_l_ldp_parts,lm_l_ldp_playfield,lm_l_ldp_underpf)
glf_lightMaps.Add "LDP", glf_LDP_lmarr
Dim glf_FL7a_lmarr : glf_FL7a_lmarr = Array(lm_f_fl7a_asteroid1,lm_f_fl7a_asteroid2,lm_f_fl7a_asteroid3,lm_f_fl7a_asteroid4,lm_f_fl7a_br2,lm_f_fl7a_br3,lm_f_fl7a_bs2,lm_f_fl7a_bs3,lm_f_fl7a_bmpbot,lm_f_fl7a_diverterpin,lm_f_fl7a_gatel,lm_f_fl7a_gater,lm_f_fl7a_layer1,lm_f_fl7a_parts,lm_f_fl7a_playfield,lm_f_fl7a_ramp,lm_f_fl7a_ship,lm_f_fl7a_spin,lm_f_fl7a_spinu,lm_f_fl7a_spinwire,lm_f_fl7a_tm2,lm_f_fl7a_tm3,lm_f_fl7a_tm4,lm_f_fl7a_underpf,lm_f_fl7a_swc1,lm_f_fl7a_swc2,lm_f_fl7a_swc3,lm_f_fl7a_swi1,lm_f_fl7a_swi2,lm_f_fl7a_swl1,lm_f_fl7a_swr1)
glf_lightMaps.Add "FL7a", glf_FL7a_lmarr
Dim glf_FL5a_lmarr : glf_FL5a_lmarr = Array(lm_f_fl5a_larm,lm_f_fl5a_lflip,lm_f_fl5a_lflipu,lm_f_fl5a_lsling1,lm_f_fl5a_lsling2,lm_f_fl5a_lsling3,lm_f_fl5a_parts,lm_f_fl5a_playfield,lm_f_fl5a_rflip,lm_f_fl5a_rflipu,lm_f_fl5a_underpf,lm_f_fl5a_swlo)
glf_lightMaps.Add "FL5a", glf_FL5a_lmarr
Dim glf_FL6a_lmarr : glf_FL6a_lmarr = Array(lm_f_fl6a_lflip,lm_f_fl6a_lflipu,lm_f_fl6a_parts,lm_f_fl6a_playfield,lm_f_fl6a_rarm,lm_f_fl6a_rflip,lm_f_fl6a_rflipu,lm_f_fl6a_rsling1,lm_f_fl6a_rsling2,lm_f_fl6a_rsling3)
glf_lightMaps.Add "FL6a", glf_FL6a_lmarr
Dim glf_FL6h_lmarr : glf_FL6h_lmarr = Array(lm_f_fl6h_parts,lm_f_fl6h_playfield,lm_f_fl6h_rarm,lm_f_fl6h_rflip,lm_f_fl6h_rflipu,lm_f_fl6h_rsling1,lm_f_fl6h_rsling2,lm_f_fl6h_rsling3)
glf_lightMaps.Add "FL6h", glf_FL6h_lmarr
Dim glf_FL6g_lmarr : glf_FL6g_lmarr = Array(lm_f_fl6g_lflipu,lm_f_fl6g_parts,lm_f_fl6g_playfield,lm_f_fl6g_rarm,lm_f_fl6g_rflipu,lm_f_fl6g_rsling1,lm_f_fl6g_rsling2,lm_f_fl6g_rsling3)
glf_lightMaps.Add "FL6g", glf_FL6g_lmarr
Dim glf_FL6f_lmarr : glf_FL6f_lmarr = Array(lm_f_fl6f_parts,lm_f_fl6f_playfield,lm_f_fl6f_rarm,lm_f_fl6f_rflip,lm_f_fl6f_rflipu,lm_f_fl6f_rsling1,lm_f_fl6f_rsling2,lm_f_fl6f_rsling3)
glf_lightMaps.Add "FL6f", glf_FL6f_lmarr
Dim glf_FL6e_lmarr : glf_FL6e_lmarr = Array(lm_f_fl6e_parts,lm_f_fl6e_playfield,lm_f_fl6e_rarm,lm_f_fl6e_rflip,lm_f_fl6e_rflipu,lm_f_fl6e_rsling1,lm_f_fl6e_rsling2,lm_f_fl6e_rsling3)
glf_lightMaps.Add "FL6e", glf_FL6e_lmarr
Dim glf_FL6d_lmarr : glf_FL6d_lmarr = Array(lm_f_fl6d_parts,lm_f_fl6d_playfield,lm_f_fl6d_rarm,lm_f_fl6d_rflip,lm_f_fl6d_rflipu,lm_f_fl6d_rsling1,lm_f_fl6d_rsling2,lm_f_fl6d_rsling3)
glf_lightMaps.Add "FL6d", glf_FL6d_lmarr
Dim glf_FL6c_lmarr : glf_FL6c_lmarr = Array(lm_f_fl6c_parts,lm_f_fl6c_playfield,lm_f_fl6c_rarm,lm_f_fl6c_rflip,lm_f_fl6c_rflipu,lm_f_fl6c_rsling1,lm_f_fl6c_rsling2,lm_f_fl6c_rsling3)
glf_lightMaps.Add "FL6c", glf_FL6c_lmarr
Dim glf_FL6b_lmarr : glf_FL6b_lmarr = Array(lm_f_fl6b_lflip,lm_f_fl6b_lflipu,lm_f_fl6b_parts,lm_f_fl6b_playfield,lm_f_fl6b_rarm,lm_f_fl6b_rflip,lm_f_fl6b_rflipu,lm_f_fl6b_rsling1,lm_f_fl6b_rsling2,lm_f_fl6b_rsling3)
glf_lightMaps.Add "FL6b", glf_FL6b_lmarr
Dim glf_FL5h_lmarr : glf_FL5h_lmarr = Array(lm_f_fl5h_larm,lm_f_fl5h_lflip,lm_f_fl5h_lflipu,lm_f_fl5h_lsling1,lm_f_fl5h_lsling2,lm_f_fl5h_lsling3,lm_f_fl5h_parts,lm_f_fl5h_playfield,lm_f_fl5h_rflipu,lm_f_fl5h_underpf,lm_f_fl5h_swli,lm_f_fl5h_swlo)
glf_lightMaps.Add "FL5h", glf_FL5h_lmarr
Dim glf_FL5g_lmarr : glf_FL5g_lmarr = Array(lm_f_fl5g_larm,lm_f_fl5g_lflip,lm_f_fl5g_lflipu,lm_f_fl5g_lsling1,lm_f_fl5g_lsling2,lm_f_fl5g_lsling3,lm_f_fl5g_parts,lm_f_fl5g_playfield,lm_f_fl5g_underpf,lm_f_fl5g_swlo)
glf_lightMaps.Add "FL5g", glf_FL5g_lmarr
Dim glf_FL5f_lmarr : glf_FL5f_lmarr = Array(lm_f_fl5f_larm,lm_f_fl5f_lflip,lm_f_fl5f_lflipu,lm_f_fl5f_lsling1,lm_f_fl5f_lsling2,lm_f_fl5f_lsling3,lm_f_fl5f_parts,lm_f_fl5f_playfield,lm_f_fl5f_underpf)
glf_lightMaps.Add "FL5f", glf_FL5f_lmarr
Dim glf_FL5e_lmarr : glf_FL5e_lmarr = Array(lm_f_fl5e_br1,lm_f_fl5e_larm,lm_f_fl5e_lflip,lm_f_fl5e_lflipu,lm_f_fl5e_lsling1,lm_f_fl5e_lsling2,lm_f_fl5e_lsling3,lm_f_fl5e_parts,lm_f_fl5e_playfield,lm_f_fl5e_underpf)
glf_lightMaps.Add "FL5e", glf_FL5e_lmarr
Dim glf_FL5d_lmarr : glf_FL5d_lmarr = Array(lm_f_fl5d_larm,lm_f_fl5d_lflip,lm_f_fl5d_lflipu,lm_f_fl5d_lsling1,lm_f_fl5d_lsling2,lm_f_fl5d_lsling3,lm_f_fl5d_parts,lm_f_fl5d_playfield,lm_f_fl5d_underpf)
glf_lightMaps.Add "FL5d", glf_FL5d_lmarr
Dim glf_FL5c_lmarr : glf_FL5c_lmarr = Array(lm_f_fl5c_larm,lm_f_fl5c_lflip,lm_f_fl5c_lflipu,lm_f_fl5c_lsling1,lm_f_fl5c_lsling2,lm_f_fl5c_lsling3,lm_f_fl5c_parts,lm_f_fl5c_playfield,lm_f_fl5c_underpf)
glf_lightMaps.Add "FL5c", glf_FL5c_lmarr
Dim glf_FL5b_lmarr : glf_FL5b_lmarr = Array(lm_f_fl5b_br1,lm_f_fl5b_larm,lm_f_fl5b_lflip,lm_f_fl5b_lflipu,lm_f_fl5b_lsling1,lm_f_fl5b_lsling2,lm_f_fl5b_lsling3,lm_f_fl5b_parts,lm_f_fl5b_playfield,lm_f_fl5b_rflipu,lm_f_fl5b_underpf)
glf_lightMaps.Add "FL5b", glf_FL5b_lmarr
Dim glf_ball_seg30_lmarr : glf_ball_seg30_lmarr = Array(p_ball_seg30_vr)
glf_lightMaps.Add "ball_seg30", glf_ball_seg30_lmarr
Dim glf_p4_seg120_lmarr : glf_p4_seg120_lmarr = Array(p_p4_seg120_,p_p4_seg120_vr)
glf_lightMaps.Add "p4_seg120", glf_p4_seg120_lmarr
Dim glf_p4_seg119_lmarr : glf_p4_seg119_lmarr = Array(p_p4_seg119_,p_p4_seg119_vr)
glf_lightMaps.Add "p4_seg119", glf_p4_seg119_lmarr
Dim glf_p4_seg118_lmarr : glf_p4_seg118_lmarr = Array(p_p4_seg118_,p_p4_seg118_vr)
glf_lightMaps.Add "p4_seg118", glf_p4_seg118_lmarr
Dim glf_p4_seg117_lmarr : glf_p4_seg117_lmarr = Array(p_p4_seg117_,p_p4_seg117_vr)
glf_lightMaps.Add "p4_seg117", glf_p4_seg117_lmarr
Dim glf_p4_seg116_lmarr : glf_p4_seg116_lmarr = Array(p_p4_seg116_,p_p4_seg116_vr)
glf_lightMaps.Add "p4_seg116", glf_p4_seg116_lmarr
Dim glf_p4_seg115_lmarr : glf_p4_seg115_lmarr = Array(p_p4_seg115_,p_p4_seg115_vr)
glf_lightMaps.Add "p4_seg115", glf_p4_seg115_lmarr
Dim glf_p4_seg114_lmarr : glf_p4_seg114_lmarr = Array(p_p4_seg114_,p_p4_seg114_vr)
glf_lightMaps.Add "p4_seg114", glf_p4_seg114_lmarr
Dim glf_p4_seg113_lmarr : glf_p4_seg113_lmarr = Array(p_p4_seg113_,p_p4_seg113_vr)
glf_lightMaps.Add "p4_seg113", glf_p4_seg113_lmarr
Dim glf_p4_seg112_lmarr : glf_p4_seg112_lmarr = Array(p_p4_seg112_,p_p4_seg112_vr)
glf_lightMaps.Add "p4_seg112", glf_p4_seg112_lmarr
Dim glf_p4_seg111_lmarr : glf_p4_seg111_lmarr = Array(p_p4_seg111_,p_p4_seg111_vr)
glf_lightMaps.Add "p4_seg111", glf_p4_seg111_lmarr
Dim glf_p4_seg110_lmarr : glf_p4_seg110_lmarr = Array(p_p4_seg110_,p_p4_seg110_vr)
glf_lightMaps.Add "p4_seg110", glf_p4_seg110_lmarr
Dim glf_p4_seg109_lmarr : glf_p4_seg109_lmarr = Array(p_p4_seg109_,p_p4_seg109_vr)
glf_lightMaps.Add "p4_seg109", glf_p4_seg109_lmarr
Dim glf_p4_seg108_lmarr : glf_p4_seg108_lmarr = Array(p_p4_seg108_,p_p4_seg108_vr)
glf_lightMaps.Add "p4_seg108", glf_p4_seg108_lmarr
Dim glf_p4_seg107_lmarr : glf_p4_seg107_lmarr = Array(p_p4_seg107_,p_p4_seg107_vr)
glf_lightMaps.Add "p4_seg107", glf_p4_seg107_lmarr
Dim glf_p4_seg106_lmarr : glf_p4_seg106_lmarr = Array(p_p4_seg106_,p_p4_seg106_vr)
glf_lightMaps.Add "p4_seg106", glf_p4_seg106_lmarr
Dim glf_p3_seg120_lmarr : glf_p3_seg120_lmarr = Array(p_p3_seg120_,p_p3_seg120_vr)
glf_lightMaps.Add "p3_seg120", glf_p3_seg120_lmarr
Dim glf_p3_seg119_lmarr : glf_p3_seg119_lmarr = Array(p_p3_seg119_,p_p3_seg119_vr)
glf_lightMaps.Add "p3_seg119", glf_p3_seg119_lmarr
Dim glf_p3_seg118_lmarr : glf_p3_seg118_lmarr = Array(p_p3_seg118_,p_p3_seg118_vr)
glf_lightMaps.Add "p3_seg118", glf_p3_seg118_lmarr
Dim glf_p3_seg117_lmarr : glf_p3_seg117_lmarr = Array(p_p3_seg117_,p_p3_seg117_vr)
glf_lightMaps.Add "p3_seg117", glf_p3_seg117_lmarr
Dim glf_p3_seg116_lmarr : glf_p3_seg116_lmarr = Array(p_p3_seg116_,p_p3_seg116_vr)
glf_lightMaps.Add "p3_seg116", glf_p3_seg116_lmarr
Dim glf_p3_seg115_lmarr : glf_p3_seg115_lmarr = Array(p_p3_seg115_,p_p3_seg115_vr)
glf_lightMaps.Add "p3_seg115", glf_p3_seg115_lmarr
Dim glf_p3_seg114_lmarr : glf_p3_seg114_lmarr = Array(p_p3_seg114_,p_p3_seg114_vr)
glf_lightMaps.Add "p3_seg114", glf_p3_seg114_lmarr
Dim glf_p3_seg113_lmarr : glf_p3_seg113_lmarr = Array(p_p3_seg113_,p_p3_seg113_vr)
glf_lightMaps.Add "p3_seg113", glf_p3_seg113_lmarr
Dim glf_p3_seg112_lmarr : glf_p3_seg112_lmarr = Array(p_p3_seg112_,p_p3_seg112_vr)
glf_lightMaps.Add "p3_seg112", glf_p3_seg112_lmarr
Dim glf_p3_seg111_lmarr : glf_p3_seg111_lmarr = Array(p_p3_seg111_,p_p3_seg111_vr)
glf_lightMaps.Add "p3_seg111", glf_p3_seg111_lmarr
Dim glf_p3_seg110_lmarr : glf_p3_seg110_lmarr = Array(p_p3_seg110_,p_p3_seg110_vr)
glf_lightMaps.Add "p3_seg110", glf_p3_seg110_lmarr
Dim glf_p3_seg109_lmarr : glf_p3_seg109_lmarr = Array(p_p3_seg109_,p_p3_seg109_vr)
glf_lightMaps.Add "p3_seg109", glf_p3_seg109_lmarr
Dim glf_p3_seg108_lmarr : glf_p3_seg108_lmarr = Array(p_p3_seg108_,p_p3_seg108_vr)
glf_lightMaps.Add "p3_seg108", glf_p3_seg108_lmarr
Dim glf_p3_seg107_lmarr : glf_p3_seg107_lmarr = Array(p_p3_seg107_,p_p3_seg107_vr)
glf_lightMaps.Add "p3_seg107", glf_p3_seg107_lmarr
Dim glf_p3_seg106_lmarr : glf_p3_seg106_lmarr = Array(p_p3_seg106_,p_p3_seg106_vr)
glf_lightMaps.Add "p3_seg106", glf_p3_seg106_lmarr
Dim glf_p2_seg120_lmarr : glf_p2_seg120_lmarr = Array(p_p2_seg120_,p_p2_seg120_vr)
glf_lightMaps.Add "p2_seg120", glf_p2_seg120_lmarr
Dim glf_p2_seg119_lmarr : glf_p2_seg119_lmarr = Array(p_p2_seg119_,p_p2_seg119_vr)
glf_lightMaps.Add "p2_seg119", glf_p2_seg119_lmarr
Dim glf_p2_seg118_lmarr : glf_p2_seg118_lmarr = Array(p_p2_seg118_,p_p2_seg118_vr)
glf_lightMaps.Add "p2_seg118", glf_p2_seg118_lmarr
Dim glf_p2_seg117_lmarr : glf_p2_seg117_lmarr = Array(p_p2_seg117_,p_p2_seg117_vr)
glf_lightMaps.Add "p2_seg117", glf_p2_seg117_lmarr
Dim glf_p2_seg116_lmarr : glf_p2_seg116_lmarr = Array(p_p2_seg116_,p_p2_seg116_vr)
glf_lightMaps.Add "p2_seg116", glf_p2_seg116_lmarr
Dim glf_p2_seg115_lmarr : glf_p2_seg115_lmarr = Array(p_p2_seg115_,p_p2_seg115_vr)
glf_lightMaps.Add "p2_seg115", glf_p2_seg115_lmarr
Dim glf_p2_seg114_lmarr : glf_p2_seg114_lmarr = Array(p_p2_seg114_,p_p2_seg114_vr)
glf_lightMaps.Add "p2_seg114", glf_p2_seg114_lmarr
Dim glf_p2_seg113_lmarr : glf_p2_seg113_lmarr = Array(p_p2_seg113_,p_p2_seg113_vr)
glf_lightMaps.Add "p2_seg113", glf_p2_seg113_lmarr
Dim glf_p2_seg112_lmarr : glf_p2_seg112_lmarr = Array(p_p2_seg112_,p_p2_seg112_vr)
glf_lightMaps.Add "p2_seg112", glf_p2_seg112_lmarr
Dim glf_p2_seg111_lmarr : glf_p2_seg111_lmarr = Array(p_p2_seg111_,p_p2_seg111_vr)
glf_lightMaps.Add "p2_seg111", glf_p2_seg111_lmarr
Dim glf_p2_seg110_lmarr : glf_p2_seg110_lmarr = Array(p_p2_seg110_,p_p2_seg110_vr)
glf_lightMaps.Add "p2_seg110", glf_p2_seg110_lmarr
Dim glf_p2_seg109_lmarr : glf_p2_seg109_lmarr = Array(p_p2_seg109_,p_p2_seg109_vr)
glf_lightMaps.Add "p2_seg109", glf_p2_seg109_lmarr
Dim glf_p2_seg108_lmarr : glf_p2_seg108_lmarr = Array(p_p2_seg108_,p_p2_seg108_vr)
glf_lightMaps.Add "p2_seg108", glf_p2_seg108_lmarr
Dim glf_p2_seg107_lmarr : glf_p2_seg107_lmarr = Array(p_p2_seg107_,p_p2_seg107_vr)
glf_lightMaps.Add "p2_seg107", glf_p2_seg107_lmarr
Dim glf_p2_seg106_lmarr : glf_p2_seg106_lmarr = Array(p_p2_seg106_,p_p2_seg106_vr)
glf_lightMaps.Add "p2_seg106", glf_p2_seg106_lmarr
Dim glf_p1_seg120_lmarr : glf_p1_seg120_lmarr = Array(p_p1_seg120_,p_p1_seg120_vr)
glf_lightMaps.Add "p1_seg120", glf_p1_seg120_lmarr
Dim glf_p1_seg119_lmarr : glf_p1_seg119_lmarr = Array(p_p1_seg119_,p_p1_seg119_vr)
glf_lightMaps.Add "p1_seg119", glf_p1_seg119_lmarr
Dim glf_p1_seg118_lmarr : glf_p1_seg118_lmarr = Array(p_p1_seg118_,p_p1_seg118_vr)
glf_lightMaps.Add "p1_seg118", glf_p1_seg118_lmarr
Dim glf_p1_seg117_lmarr : glf_p1_seg117_lmarr = Array(p_p1_seg117_,p_p1_seg117_vr)
glf_lightMaps.Add "p1_seg117", glf_p1_seg117_lmarr
Dim glf_p1_seg116_lmarr : glf_p1_seg116_lmarr = Array(p_p1_seg116_,p_p1_seg116_vr)
glf_lightMaps.Add "p1_seg116", glf_p1_seg116_lmarr
Dim glf_p1_seg115_lmarr : glf_p1_seg115_lmarr = Array(p_p1_seg115_,p_p1_seg115_vr)
glf_lightMaps.Add "p1_seg115", glf_p1_seg115_lmarr
Dim glf_p1_seg114_lmarr : glf_p1_seg114_lmarr = Array(p_p1_seg114_,p_p1_seg114_vr)
glf_lightMaps.Add "p1_seg114", glf_p1_seg114_lmarr
Dim glf_p1_seg113_lmarr : glf_p1_seg113_lmarr = Array(p_p1_seg113_,p_p1_seg113_vr)
glf_lightMaps.Add "p1_seg113", glf_p1_seg113_lmarr
Dim glf_p1_seg112_lmarr : glf_p1_seg112_lmarr = Array(p_p1_seg112_,p_p1_seg112_vr)
glf_lightMaps.Add "p1_seg112", glf_p1_seg112_lmarr
Dim glf_p1_seg111_lmarr : glf_p1_seg111_lmarr = Array(p_p1_seg111_,p_p1_seg111_vr)
glf_lightMaps.Add "p1_seg111", glf_p1_seg111_lmarr
Dim glf_p1_seg110_lmarr : glf_p1_seg110_lmarr = Array(p_p1_seg110_,p_p1_seg110_vr)
glf_lightMaps.Add "p1_seg110", glf_p1_seg110_lmarr
Dim glf_p1_seg109_lmarr : glf_p1_seg109_lmarr = Array(p_p1_seg109_,p_p1_seg109_vr)
glf_lightMaps.Add "p1_seg109", glf_p1_seg109_lmarr
Dim glf_p1_seg108_lmarr : glf_p1_seg108_lmarr = Array(p_p1_seg108_,p_p1_seg108_vr)
glf_lightMaps.Add "p1_seg108", glf_p1_seg108_lmarr
Dim glf_p1_seg107_lmarr : glf_p1_seg107_lmarr = Array(p_p1_seg107_,p_p1_seg107_vr)
glf_lightMaps.Add "p1_seg107", glf_p1_seg107_lmarr
Dim glf_p1_seg106_lmarr : glf_p1_seg106_lmarr = Array(p_p1_seg106_,p_p1_seg106_vr)
glf_lightMaps.Add "p1_seg106", glf_p1_seg106_lmarr
Dim glf_p4_seg105_lmarr : glf_p4_seg105_lmarr = Array(p_p4_seg105_,p_p4_seg105_vr)
glf_lightMaps.Add "p4_seg105", glf_p4_seg105_lmarr
Dim glf_p3_seg105_lmarr : glf_p3_seg105_lmarr = Array(p_p3_seg105_,p_p3_seg105_vr)
glf_lightMaps.Add "p3_seg105", glf_p3_seg105_lmarr
Dim glf_p2_seg105_lmarr : glf_p2_seg105_lmarr = Array(p_p2_seg105_,p_p2_seg105_vr)
glf_lightMaps.Add "p2_seg105", glf_p2_seg105_lmarr
Dim glf_p4_seg104_lmarr : glf_p4_seg104_lmarr = Array(p_p4_seg104_,p_p4_seg104_vr)
glf_lightMaps.Add "p4_seg104", glf_p4_seg104_lmarr
Dim glf_p3_seg104_lmarr : glf_p3_seg104_lmarr = Array(p_p3_seg104_,p_p3_seg104_vr)
glf_lightMaps.Add "p3_seg104", glf_p3_seg104_lmarr
Dim glf_p2_seg104_lmarr : glf_p2_seg104_lmarr = Array(p_p2_seg104_,p_p2_seg104_vr)
glf_lightMaps.Add "p2_seg104", glf_p2_seg104_lmarr
Dim glf_p4_seg103_lmarr : glf_p4_seg103_lmarr = Array(p_p4_seg103_,p_p4_seg103_vr)
glf_lightMaps.Add "p4_seg103", glf_p4_seg103_lmarr
Dim glf_p3_seg103_lmarr : glf_p3_seg103_lmarr = Array(p_p3_seg103_,p_p3_seg103_vr)
glf_lightMaps.Add "p3_seg103", glf_p3_seg103_lmarr
Dim glf_p2_seg103_lmarr : glf_p2_seg103_lmarr = Array(p_p2_seg103_,p_p2_seg103_vr)
glf_lightMaps.Add "p2_seg103", glf_p2_seg103_lmarr
Dim glf_p4_seg102_lmarr : glf_p4_seg102_lmarr = Array(p_p4_seg102_,p_p4_seg102_vr)
glf_lightMaps.Add "p4_seg102", glf_p4_seg102_lmarr
Dim glf_p3_seg102_lmarr : glf_p3_seg102_lmarr = Array(p_p3_seg102_,p_p3_seg102_vr)
glf_lightMaps.Add "p3_seg102", glf_p3_seg102_lmarr
Dim glf_p2_seg102_lmarr : glf_p2_seg102_lmarr = Array(p_p2_seg102_,p_p2_seg102_vr)
glf_lightMaps.Add "p2_seg102", glf_p2_seg102_lmarr
Dim glf_p4_seg101_lmarr : glf_p4_seg101_lmarr = Array(p_p4_seg101_,p_p4_seg101_vr)
glf_lightMaps.Add "p4_seg101", glf_p4_seg101_lmarr
Dim glf_p3_seg101_lmarr : glf_p3_seg101_lmarr = Array(p_p3_seg101_,p_p3_seg101_vr)
glf_lightMaps.Add "p3_seg101", glf_p3_seg101_lmarr
Dim glf_p2_seg101_lmarr : glf_p2_seg101_lmarr = Array(p_p2_seg101_,p_p2_seg101_vr)
glf_lightMaps.Add "p2_seg101", glf_p2_seg101_lmarr
Dim glf_p4_seg100_lmarr : glf_p4_seg100_lmarr = Array(p_p4_seg100_,p_p4_seg100_vr)
glf_lightMaps.Add "p4_seg100", glf_p4_seg100_lmarr
Dim glf_p3_seg100_lmarr : glf_p3_seg100_lmarr = Array(p_p3_seg100_,p_p3_seg100_vr)
glf_lightMaps.Add "p3_seg100", glf_p3_seg100_lmarr
Dim glf_p2_seg100_lmarr : glf_p2_seg100_lmarr = Array(p_p2_seg100_,p_p2_seg100_vr)
glf_lightMaps.Add "p2_seg100", glf_p2_seg100_lmarr
Dim glf_p4_seg99_lmarr : glf_p4_seg99_lmarr = Array(p_p4_seg99_,p_p4_seg99_vr)
glf_lightMaps.Add "p4_seg99", glf_p4_seg99_lmarr
Dim glf_p3_seg99_lmarr : glf_p3_seg99_lmarr = Array(p_p3_seg99_,p_p3_seg99_vr)
glf_lightMaps.Add "p3_seg99", glf_p3_seg99_lmarr
Dim glf_p2_seg99_lmarr : glf_p2_seg99_lmarr = Array(p_p2_seg99_,p_p2_seg99_vr)
glf_lightMaps.Add "p2_seg99", glf_p2_seg99_lmarr
Dim glf_p4_seg98_lmarr : glf_p4_seg98_lmarr = Array(p_p4_seg98_,p_p4_seg98_vr)
glf_lightMaps.Add "p4_seg98", glf_p4_seg98_lmarr
Dim glf_p3_seg98_lmarr : glf_p3_seg98_lmarr = Array(p_p3_seg98_,p_p3_seg98_vr)
glf_lightMaps.Add "p3_seg98", glf_p3_seg98_lmarr
Dim glf_p2_seg98_lmarr : glf_p2_seg98_lmarr = Array(p_p2_seg98_,p_p2_seg98_vr)
glf_lightMaps.Add "p2_seg98", glf_p2_seg98_lmarr
Dim glf_p4_seg97_lmarr : glf_p4_seg97_lmarr = Array(p_p4_seg97_,p_p4_seg97_vr)
glf_lightMaps.Add "p4_seg97", glf_p4_seg97_lmarr
Dim glf_p3_seg97_lmarr : glf_p3_seg97_lmarr = Array(p_p3_seg97_,p_p3_seg97_vr)
glf_lightMaps.Add "p3_seg97", glf_p3_seg97_lmarr
Dim glf_p2_seg97_lmarr : glf_p2_seg97_lmarr = Array(p_p2_seg97_,p_p2_seg97_vr)
glf_lightMaps.Add "p2_seg97", glf_p2_seg97_lmarr
Dim glf_p4_seg96_lmarr : glf_p4_seg96_lmarr = Array(p_p4_seg96_,p_p4_seg96_vr)
glf_lightMaps.Add "p4_seg96", glf_p4_seg96_lmarr
Dim glf_p3_seg96_lmarr : glf_p3_seg96_lmarr = Array(p_p3_seg96_,p_p3_seg96_vr)
glf_lightMaps.Add "p3_seg96", glf_p3_seg96_lmarr
Dim glf_p2_seg96_lmarr : glf_p2_seg96_lmarr = Array(p_p2_seg96_,p_p2_seg96_vr)
glf_lightMaps.Add "p2_seg96", glf_p2_seg96_lmarr
Dim glf_p4_seg95_lmarr : glf_p4_seg95_lmarr = Array(p_p4_seg95_,p_p4_seg95_vr)
glf_lightMaps.Add "p4_seg95", glf_p4_seg95_lmarr
Dim glf_p3_seg95_lmarr : glf_p3_seg95_lmarr = Array(p_p3_seg95_,p_p3_seg95_vr)
glf_lightMaps.Add "p3_seg95", glf_p3_seg95_lmarr
Dim glf_p2_seg95_lmarr : glf_p2_seg95_lmarr = Array(p_p2_seg95_,p_p2_seg95_vr)
glf_lightMaps.Add "p2_seg95", glf_p2_seg95_lmarr
Dim glf_p4_seg94_lmarr : glf_p4_seg94_lmarr = Array(p_p4_seg94_,p_p4_seg94_vr)
glf_lightMaps.Add "p4_seg94", glf_p4_seg94_lmarr
Dim glf_p3_seg94_lmarr : glf_p3_seg94_lmarr = Array(p_p3_seg94_,p_p3_seg94_vr)
glf_lightMaps.Add "p3_seg94", glf_p3_seg94_lmarr
Dim glf_p2_seg94_lmarr : glf_p2_seg94_lmarr = Array(p_p2_seg94_,p_p2_seg94_vr)
glf_lightMaps.Add "p2_seg94", glf_p2_seg94_lmarr
Dim glf_p4_seg93_lmarr : glf_p4_seg93_lmarr = Array(p_p4_seg93_,p_p4_seg93_vr)
glf_lightMaps.Add "p4_seg93", glf_p4_seg93_lmarr
Dim glf_p3_seg93_lmarr : glf_p3_seg93_lmarr = Array(p_p3_seg93_,p_p3_seg93_vr)
glf_lightMaps.Add "p3_seg93", glf_p3_seg93_lmarr
Dim glf_p2_seg93_lmarr : glf_p2_seg93_lmarr = Array(p_p2_seg93_,p_p2_seg93_vr)
glf_lightMaps.Add "p2_seg93", glf_p2_seg93_lmarr
Dim glf_p4_seg92_lmarr : glf_p4_seg92_lmarr = Array(p_p4_seg92_,p_p4_seg92_vr)
glf_lightMaps.Add "p4_seg92", glf_p4_seg92_lmarr
Dim glf_p3_seg92_lmarr : glf_p3_seg92_lmarr = Array(p_p3_seg92_,p_p3_seg92_vr)
glf_lightMaps.Add "p3_seg92", glf_p3_seg92_lmarr
Dim glf_p2_seg92_lmarr : glf_p2_seg92_lmarr = Array(p_p2_seg92_,p_p2_seg92_vr)
glf_lightMaps.Add "p2_seg92", glf_p2_seg92_lmarr
Dim glf_p4_seg91_lmarr : glf_p4_seg91_lmarr = Array(p_p4_seg91_,p_p4_seg91_vr)
glf_lightMaps.Add "p4_seg91", glf_p4_seg91_lmarr
Dim glf_p3_seg91_lmarr : glf_p3_seg91_lmarr = Array(p_p3_seg91_,p_p3_seg91_vr)
glf_lightMaps.Add "p3_seg91", glf_p3_seg91_lmarr
Dim glf_p2_seg91_lmarr : glf_p2_seg91_lmarr = Array(p_p2_seg91_,p_p2_seg91_vr)
glf_lightMaps.Add "p2_seg91", glf_p2_seg91_lmarr
Dim glf_p4_seg90_lmarr : glf_p4_seg90_lmarr = Array(p_p4_seg90_,p_p4_seg90_vr)
glf_lightMaps.Add "p4_seg90", glf_p4_seg90_lmarr
Dim glf_p3_seg90_lmarr : glf_p3_seg90_lmarr = Array(p_p3_seg90_,p_p3_seg90_vr)
glf_lightMaps.Add "p3_seg90", glf_p3_seg90_lmarr
Dim glf_p2_seg90_lmarr : glf_p2_seg90_lmarr = Array(p_p2_seg90_,p_p2_seg90_vr)
glf_lightMaps.Add "p2_seg90", glf_p2_seg90_lmarr
Dim glf_p4_seg89_lmarr : glf_p4_seg89_lmarr = Array(p_p4_seg89_,p_p4_seg89_vr)
glf_lightMaps.Add "p4_seg89", glf_p4_seg89_lmarr
Dim glf_p3_seg89_lmarr : glf_p3_seg89_lmarr = Array(p_p3_seg89_,p_p3_seg89_vr)
glf_lightMaps.Add "p3_seg89", glf_p3_seg89_lmarr
Dim glf_p2_seg89_lmarr : glf_p2_seg89_lmarr = Array(p_p2_seg89_,p_p2_seg89_vr)
glf_lightMaps.Add "p2_seg89", glf_p2_seg89_lmarr
Dim glf_p4_seg88_lmarr : glf_p4_seg88_lmarr = Array(p_p4_seg88_,p_p4_seg88_vr)
glf_lightMaps.Add "p4_seg88", glf_p4_seg88_lmarr
Dim glf_p3_seg88_lmarr : glf_p3_seg88_lmarr = Array(p_p3_seg88_,p_p3_seg88_vr)
glf_lightMaps.Add "p3_seg88", glf_p3_seg88_lmarr
Dim glf_p2_seg88_lmarr : glf_p2_seg88_lmarr = Array(p_p2_seg88_,p_p2_seg88_vr)
glf_lightMaps.Add "p2_seg88", glf_p2_seg88_lmarr
Dim glf_p4_seg87_lmarr : glf_p4_seg87_lmarr = Array(p_p4_seg87_,p_p4_seg87_vr)
glf_lightMaps.Add "p4_seg87", glf_p4_seg87_lmarr
Dim glf_p3_seg87_lmarr : glf_p3_seg87_lmarr = Array(p_p3_seg87_,p_p3_seg87_vr)
glf_lightMaps.Add "p3_seg87", glf_p3_seg87_lmarr
Dim glf_p2_seg87_lmarr : glf_p2_seg87_lmarr = Array(p_p2_seg87_,p_p2_seg87_vr)
glf_lightMaps.Add "p2_seg87", glf_p2_seg87_lmarr
Dim glf_p4_seg86_lmarr : glf_p4_seg86_lmarr = Array(p_p4_seg86_,p_p4_seg86_vr)
glf_lightMaps.Add "p4_seg86", glf_p4_seg86_lmarr
Dim glf_p3_seg86_lmarr : glf_p3_seg86_lmarr = Array(p_p3_seg86_,p_p3_seg86_vr)
glf_lightMaps.Add "p3_seg86", glf_p3_seg86_lmarr
Dim glf_p2_seg86_lmarr : glf_p2_seg86_lmarr = Array(p_p2_seg86_,p_p2_seg86_vr)
glf_lightMaps.Add "p2_seg86", glf_p2_seg86_lmarr
Dim glf_p4_seg85_lmarr : glf_p4_seg85_lmarr = Array(p_p4_seg85_,p_p4_seg85_vr)
glf_lightMaps.Add "p4_seg85", glf_p4_seg85_lmarr
Dim glf_p3_seg85_lmarr : glf_p3_seg85_lmarr = Array(p_p3_seg85_,p_p3_seg85_vr)
glf_lightMaps.Add "p3_seg85", glf_p3_seg85_lmarr
Dim glf_p2_seg85_lmarr : glf_p2_seg85_lmarr = Array(p_p2_seg85_,p_p2_seg85_vr)
glf_lightMaps.Add "p2_seg85", glf_p2_seg85_lmarr
Dim glf_p4_seg84_lmarr : glf_p4_seg84_lmarr = Array(p_p4_seg84_,p_p4_seg84_vr)
glf_lightMaps.Add "p4_seg84", glf_p4_seg84_lmarr
Dim glf_p3_seg84_lmarr : glf_p3_seg84_lmarr = Array(p_p3_seg84_,p_p3_seg84_vr)
glf_lightMaps.Add "p3_seg84", glf_p3_seg84_lmarr
Dim glf_p2_seg84_lmarr : glf_p2_seg84_lmarr = Array(p_p2_seg84_,p_p2_seg84_vr)
glf_lightMaps.Add "p2_seg84", glf_p2_seg84_lmarr
Dim glf_p4_seg83_lmarr : glf_p4_seg83_lmarr = Array(p_p4_seg83_,p_p4_seg83_vr)
glf_lightMaps.Add "p4_seg83", glf_p4_seg83_lmarr
Dim glf_p3_seg83_lmarr : glf_p3_seg83_lmarr = Array(p_p3_seg83_,p_p3_seg83_vr)
glf_lightMaps.Add "p3_seg83", glf_p3_seg83_lmarr
Dim glf_p2_seg83_lmarr : glf_p2_seg83_lmarr = Array(p_p2_seg83_,p_p2_seg83_vr)
glf_lightMaps.Add "p2_seg83", glf_p2_seg83_lmarr
Dim glf_p4_seg82_lmarr : glf_p4_seg82_lmarr = Array(p_p4_seg82_,p_p4_seg82_vr)
glf_lightMaps.Add "p4_seg82", glf_p4_seg82_lmarr
Dim glf_p3_seg82_lmarr : glf_p3_seg82_lmarr = Array(p_p3_seg82_,p_p3_seg82_vr)
glf_lightMaps.Add "p3_seg82", glf_p3_seg82_lmarr
Dim glf_p2_seg82_lmarr : glf_p2_seg82_lmarr = Array(p_p2_seg82_,p_p2_seg82_vr)
glf_lightMaps.Add "p2_seg82", glf_p2_seg82_lmarr
Dim glf_p4_seg81_lmarr : glf_p4_seg81_lmarr = Array(p_p4_seg81_,p_p4_seg81_vr)
glf_lightMaps.Add "p4_seg81", glf_p4_seg81_lmarr
Dim glf_p3_seg81_lmarr : glf_p3_seg81_lmarr = Array(p_p3_seg81_,p_p3_seg81_vr)
glf_lightMaps.Add "p3_seg81", glf_p3_seg81_lmarr
Dim glf_p2_seg81_lmarr : glf_p2_seg81_lmarr = Array(p_p2_seg81_,p_p2_seg81_vr)
glf_lightMaps.Add "p2_seg81", glf_p2_seg81_lmarr
Dim glf_p4_seg80_lmarr : glf_p4_seg80_lmarr = Array(p_p4_seg80_,p_p4_seg80_vr)
glf_lightMaps.Add "p4_seg80", glf_p4_seg80_lmarr
Dim glf_p3_seg80_lmarr : glf_p3_seg80_lmarr = Array(p_p3_seg80_,p_p3_seg80_vr)
glf_lightMaps.Add "p3_seg80", glf_p3_seg80_lmarr
Dim glf_p2_seg80_lmarr : glf_p2_seg80_lmarr = Array(p_p2_seg80_,p_p2_seg80_vr)
glf_lightMaps.Add "p2_seg80", glf_p2_seg80_lmarr
Dim glf_p4_seg79_lmarr : glf_p4_seg79_lmarr = Array(p_p4_seg79_,p_p4_seg79_vr)
glf_lightMaps.Add "p4_seg79", glf_p4_seg79_lmarr
Dim glf_p3_seg79_lmarr : glf_p3_seg79_lmarr = Array(p_p3_seg79_,p_p3_seg79_vr)
glf_lightMaps.Add "p3_seg79", glf_p3_seg79_lmarr
Dim glf_p2_seg79_lmarr : glf_p2_seg79_lmarr = Array(p_p2_seg79_,p_p2_seg79_vr)
glf_lightMaps.Add "p2_seg79", glf_p2_seg79_lmarr
Dim glf_p4_seg78_lmarr : glf_p4_seg78_lmarr = Array(p_p4_seg78_,p_p4_seg78_vr)
glf_lightMaps.Add "p4_seg78", glf_p4_seg78_lmarr
Dim glf_p3_seg78_lmarr : glf_p3_seg78_lmarr = Array(p_p3_seg78_,p_p3_seg78_vr)
glf_lightMaps.Add "p3_seg78", glf_p3_seg78_lmarr
Dim glf_p2_seg78_lmarr : glf_p2_seg78_lmarr = Array(p_p2_seg78_,p_p2_seg78_vr)
glf_lightMaps.Add "p2_seg78", glf_p2_seg78_lmarr
Dim glf_p4_seg77_lmarr : glf_p4_seg77_lmarr = Array(p_p4_seg77_,p_p4_seg77_vr)
glf_lightMaps.Add "p4_seg77", glf_p4_seg77_lmarr
Dim glf_p3_seg77_lmarr : glf_p3_seg77_lmarr = Array(p_p3_seg77_,p_p3_seg77_vr)
glf_lightMaps.Add "p3_seg77", glf_p3_seg77_lmarr
Dim glf_p2_seg77_lmarr : glf_p2_seg77_lmarr = Array(p_p2_seg77_,p_p2_seg77_vr)
glf_lightMaps.Add "p2_seg77", glf_p2_seg77_lmarr
Dim glf_p4_seg76_lmarr : glf_p4_seg76_lmarr = Array(p_p4_seg76_,p_p4_seg76_vr)
glf_lightMaps.Add "p4_seg76", glf_p4_seg76_lmarr
Dim glf_p3_seg76_lmarr : glf_p3_seg76_lmarr = Array(p_p3_seg76_,p_p3_seg76_vr)
glf_lightMaps.Add "p3_seg76", glf_p3_seg76_lmarr
Dim glf_p2_seg76_lmarr : glf_p2_seg76_lmarr = Array(p_p2_seg76_,p_p2_seg76_vr)
glf_lightMaps.Add "p2_seg76", glf_p2_seg76_lmarr
Dim glf_p4_seg75_lmarr : glf_p4_seg75_lmarr = Array(p_p4_seg75_,p_p4_seg75_vr)
glf_lightMaps.Add "p4_seg75", glf_p4_seg75_lmarr
Dim glf_p3_seg75_lmarr : glf_p3_seg75_lmarr = Array(p_p3_seg75_,p_p3_seg75_vr)
glf_lightMaps.Add "p3_seg75", glf_p3_seg75_lmarr
Dim glf_p2_seg75_lmarr : glf_p2_seg75_lmarr = Array(p_p2_seg75_,p_p2_seg75_vr)
glf_lightMaps.Add "p2_seg75", glf_p2_seg75_lmarr
Dim glf_p4_seg74_lmarr : glf_p4_seg74_lmarr = Array(p_p4_seg74_,p_p4_seg74_vr)
glf_lightMaps.Add "p4_seg74", glf_p4_seg74_lmarr
Dim glf_p3_seg74_lmarr : glf_p3_seg74_lmarr = Array(p_p3_seg74_,p_p3_seg74_vr)
glf_lightMaps.Add "p3_seg74", glf_p3_seg74_lmarr
Dim glf_p2_seg74_lmarr : glf_p2_seg74_lmarr = Array(p_p2_seg74_,p_p2_seg74_vr)
glf_lightMaps.Add "p2_seg74", glf_p2_seg74_lmarr
Dim glf_p4_seg73_lmarr : glf_p4_seg73_lmarr = Array(p_p4_seg73_,p_p4_seg73_vr)
glf_lightMaps.Add "p4_seg73", glf_p4_seg73_lmarr
Dim glf_p3_seg73_lmarr : glf_p3_seg73_lmarr = Array(p_p3_seg73_,p_p3_seg73_vr)
glf_lightMaps.Add "p3_seg73", glf_p3_seg73_lmarr
Dim glf_p2_seg73_lmarr : glf_p2_seg73_lmarr = Array(p_p2_seg73_,p_p2_seg73_vr)
glf_lightMaps.Add "p2_seg73", glf_p2_seg73_lmarr
Dim glf_p4_seg72_lmarr : glf_p4_seg72_lmarr = Array(p_p4_seg72_,p_p4_seg72_vr)
glf_lightMaps.Add "p4_seg72", glf_p4_seg72_lmarr
Dim glf_p3_seg72_lmarr : glf_p3_seg72_lmarr = Array(p_p3_seg72_,p_p3_seg72_vr)
glf_lightMaps.Add "p3_seg72", glf_p3_seg72_lmarr
Dim glf_p2_seg72_lmarr : glf_p2_seg72_lmarr = Array(p_p2_seg72_,p_p2_seg72_vr)
glf_lightMaps.Add "p2_seg72", glf_p2_seg72_lmarr
Dim glf_p4_seg71_lmarr : glf_p4_seg71_lmarr = Array(p_p4_seg71_,p_p4_seg71_vr)
glf_lightMaps.Add "p4_seg71", glf_p4_seg71_lmarr
Dim glf_p3_seg71_lmarr : glf_p3_seg71_lmarr = Array(p_p3_seg71_,p_p3_seg71_vr)
glf_lightMaps.Add "p3_seg71", glf_p3_seg71_lmarr
Dim glf_p2_seg71_lmarr : glf_p2_seg71_lmarr = Array(p_p2_seg71_,p_p2_seg71_vr)
glf_lightMaps.Add "p2_seg71", glf_p2_seg71_lmarr
Dim glf_p4_seg70_lmarr : glf_p4_seg70_lmarr = Array(p_p4_seg70_,p_p4_seg70_vr)
glf_lightMaps.Add "p4_seg70", glf_p4_seg70_lmarr
Dim glf_p3_seg70_lmarr : glf_p3_seg70_lmarr = Array(p_p3_seg70_,p_p3_seg70_vr)
glf_lightMaps.Add "p3_seg70", glf_p3_seg70_lmarr
Dim glf_p2_seg70_lmarr : glf_p2_seg70_lmarr = Array(p_p2_seg70_,p_p2_seg70_vr)
glf_lightMaps.Add "p2_seg70", glf_p2_seg70_lmarr
Dim glf_p4_seg69_lmarr : glf_p4_seg69_lmarr = Array(p_p4_seg69_,p_p4_seg69_vr)
glf_lightMaps.Add "p4_seg69", glf_p4_seg69_lmarr
Dim glf_p3_seg69_lmarr : glf_p3_seg69_lmarr = Array(p_p3_seg69_,p_p3_seg69_vr)
glf_lightMaps.Add "p3_seg69", glf_p3_seg69_lmarr
Dim glf_p2_seg69_lmarr : glf_p2_seg69_lmarr = Array(p_p2_seg69_,p_p2_seg69_vr)
glf_lightMaps.Add "p2_seg69", glf_p2_seg69_lmarr
Dim glf_p4_seg68_lmarr : glf_p4_seg68_lmarr = Array(p_p4_seg68_,p_p4_seg68_vr)
glf_lightMaps.Add "p4_seg68", glf_p4_seg68_lmarr
Dim glf_p3_seg68_lmarr : glf_p3_seg68_lmarr = Array(p_p3_seg68_,p_p3_seg68_vr)
glf_lightMaps.Add "p3_seg68", glf_p3_seg68_lmarr
Dim glf_p2_seg68_lmarr : glf_p2_seg68_lmarr = Array(p_p2_seg68_,p_p2_seg68_vr)
glf_lightMaps.Add "p2_seg68", glf_p2_seg68_lmarr
Dim glf_p4_seg67_lmarr : glf_p4_seg67_lmarr = Array(p_p4_seg67_,p_p4_seg67_vr)
glf_lightMaps.Add "p4_seg67", glf_p4_seg67_lmarr
Dim glf_p3_seg67_lmarr : glf_p3_seg67_lmarr = Array(p_p3_seg67_,p_p3_seg67_vr)
glf_lightMaps.Add "p3_seg67", glf_p3_seg67_lmarr
Dim glf_p2_seg67_lmarr : glf_p2_seg67_lmarr = Array(p_p2_seg67_,p_p2_seg67_vr)
glf_lightMaps.Add "p2_seg67", glf_p2_seg67_lmarr
Dim glf_p4_seg66_lmarr : glf_p4_seg66_lmarr = Array(p_p4_seg66_,p_p4_seg66_vr)
glf_lightMaps.Add "p4_seg66", glf_p4_seg66_lmarr
Dim glf_p3_seg66_lmarr : glf_p3_seg66_lmarr = Array(p_p3_seg66_,p_p3_seg66_vr)
glf_lightMaps.Add "p3_seg66", glf_p3_seg66_lmarr
Dim glf_p2_seg66_lmarr : glf_p2_seg66_lmarr = Array(p_p2_seg66_,p_p2_seg66_vr)
glf_lightMaps.Add "p2_seg66", glf_p2_seg66_lmarr
Dim glf_p4_seg65_lmarr : glf_p4_seg65_lmarr = Array(p_p4_seg65_,p_p4_seg65_vr)
glf_lightMaps.Add "p4_seg65", glf_p4_seg65_lmarr
Dim glf_p3_seg65_lmarr : glf_p3_seg65_lmarr = Array(p_p3_seg65_,p_p3_seg65_vr)
glf_lightMaps.Add "p3_seg65", glf_p3_seg65_lmarr
Dim glf_p2_seg65_lmarr : glf_p2_seg65_lmarr = Array(p_p2_seg65_,p_p2_seg65_vr)
glf_lightMaps.Add "p2_seg65", glf_p2_seg65_lmarr
Dim glf_p4_seg64_lmarr : glf_p4_seg64_lmarr = Array(p_p4_seg64_,p_p4_seg64_vr)
glf_lightMaps.Add "p4_seg64", glf_p4_seg64_lmarr
Dim glf_p3_seg64_lmarr : glf_p3_seg64_lmarr = Array(p_p3_seg64_,p_p3_seg64_vr)
glf_lightMaps.Add "p3_seg64", glf_p3_seg64_lmarr
Dim glf_p2_seg64_lmarr : glf_p2_seg64_lmarr = Array(p_p2_seg64_,p_p2_seg64_vr)
glf_lightMaps.Add "p2_seg64", glf_p2_seg64_lmarr
Dim glf_p4_seg63_lmarr : glf_p4_seg63_lmarr = Array(p_p4_seg63_,p_p4_seg63_vr)
glf_lightMaps.Add "p4_seg63", glf_p4_seg63_lmarr
Dim glf_p3_seg63_lmarr : glf_p3_seg63_lmarr = Array(p_p3_seg63_,p_p3_seg63_vr)
glf_lightMaps.Add "p3_seg63", glf_p3_seg63_lmarr
Dim glf_p2_seg63_lmarr : glf_p2_seg63_lmarr = Array(p_p2_seg63_,p_p2_seg63_vr)
glf_lightMaps.Add "p2_seg63", glf_p2_seg63_lmarr
Dim glf_p4_seg62_lmarr : glf_p4_seg62_lmarr = Array(p_p4_seg62_,p_p4_seg62_vr)
glf_lightMaps.Add "p4_seg62", glf_p4_seg62_lmarr
Dim glf_p3_seg62_lmarr : glf_p3_seg62_lmarr = Array(p_p3_seg62_,p_p3_seg62_vr)
glf_lightMaps.Add "p3_seg62", glf_p3_seg62_lmarr
Dim glf_p2_seg62_lmarr : glf_p2_seg62_lmarr = Array(p_p2_seg62_,p_p2_seg62_vr)
glf_lightMaps.Add "p2_seg62", glf_p2_seg62_lmarr
Dim glf_p4_seg61_lmarr : glf_p4_seg61_lmarr = Array(p_p4_seg61_,p_p4_seg61_vr)
glf_lightMaps.Add "p4_seg61", glf_p4_seg61_lmarr
Dim glf_p3_seg61_lmarr : glf_p3_seg61_lmarr = Array(p_p3_seg61_,p_p3_seg61_vr)
glf_lightMaps.Add "p3_seg61", glf_p3_seg61_lmarr
Dim glf_p2_seg61_lmarr : glf_p2_seg61_lmarr = Array(p_p2_seg61_,p_p2_seg61_vr)
glf_lightMaps.Add "p2_seg61", glf_p2_seg61_lmarr
Dim glf_p4_seg60_lmarr : glf_p4_seg60_lmarr = Array(p_p4_seg60_,p_p4_seg60_vr)
glf_lightMaps.Add "p4_seg60", glf_p4_seg60_lmarr
Dim glf_p3_seg60_lmarr : glf_p3_seg60_lmarr = Array(p_p3_seg60_,p_p3_seg60_vr)
glf_lightMaps.Add "p3_seg60", glf_p3_seg60_lmarr
Dim glf_p2_seg60_lmarr : glf_p2_seg60_lmarr = Array(p_p2_seg60_,p_p2_seg60_vr)
glf_lightMaps.Add "p2_seg60", glf_p2_seg60_lmarr
Dim glf_p4_seg59_lmarr : glf_p4_seg59_lmarr = Array(p_p4_seg59_,p_p4_seg59_vr)
glf_lightMaps.Add "p4_seg59", glf_p4_seg59_lmarr
Dim glf_p3_seg59_lmarr : glf_p3_seg59_lmarr = Array(p_p3_seg59_,p_p3_seg59_vr)
glf_lightMaps.Add "p3_seg59", glf_p3_seg59_lmarr
Dim glf_p2_seg59_lmarr : glf_p2_seg59_lmarr = Array(p_p2_seg59_,p_p2_seg59_vr)
glf_lightMaps.Add "p2_seg59", glf_p2_seg59_lmarr
Dim glf_p4_seg58_lmarr : glf_p4_seg58_lmarr = Array(p_p4_seg58_,p_p4_seg58_vr)
glf_lightMaps.Add "p4_seg58", glf_p4_seg58_lmarr
Dim glf_p3_seg58_lmarr : glf_p3_seg58_lmarr = Array(p_p3_seg58_,p_p3_seg58_vr)
glf_lightMaps.Add "p3_seg58", glf_p3_seg58_lmarr
Dim glf_p2_seg58_lmarr : glf_p2_seg58_lmarr = Array(p_p2_seg58_,p_p2_seg58_vr)
glf_lightMaps.Add "p2_seg58", glf_p2_seg58_lmarr
Dim glf_p4_seg57_lmarr : glf_p4_seg57_lmarr = Array(p_p4_seg57_,p_p4_seg57_vr)
glf_lightMaps.Add "p4_seg57", glf_p4_seg57_lmarr
Dim glf_p3_seg57_lmarr : glf_p3_seg57_lmarr = Array(p_p3_seg57_,p_p3_seg57_vr)
glf_lightMaps.Add "p3_seg57", glf_p3_seg57_lmarr
Dim glf_p2_seg57_lmarr : glf_p2_seg57_lmarr = Array(p_p2_seg57_,p_p2_seg57_vr)
glf_lightMaps.Add "p2_seg57", glf_p2_seg57_lmarr
Dim glf_p4_seg56_lmarr : glf_p4_seg56_lmarr = Array(p_p4_seg56_,p_p4_seg56_vr)
glf_lightMaps.Add "p4_seg56", glf_p4_seg56_lmarr
Dim glf_p3_seg56_lmarr : glf_p3_seg56_lmarr = Array(p_p3_seg56_,p_p3_seg56_vr)
glf_lightMaps.Add "p3_seg56", glf_p3_seg56_lmarr
Dim glf_p2_seg56_lmarr : glf_p2_seg56_lmarr = Array(p_p2_seg56_,p_p2_seg56_vr)
glf_lightMaps.Add "p2_seg56", glf_p2_seg56_lmarr
Dim glf_p4_seg55_lmarr : glf_p4_seg55_lmarr = Array(p_p4_seg55_,p_p4_seg55_vr)
glf_lightMaps.Add "p4_seg55", glf_p4_seg55_lmarr
Dim glf_p3_seg55_lmarr : glf_p3_seg55_lmarr = Array(p_p3_seg55_,p_p3_seg55_vr)
glf_lightMaps.Add "p3_seg55", glf_p3_seg55_lmarr
Dim glf_p2_seg55_lmarr : glf_p2_seg55_lmarr = Array(p_p2_seg55_,p_p2_seg55_vr)
glf_lightMaps.Add "p2_seg55", glf_p2_seg55_lmarr
Dim glf_p4_seg54_lmarr : glf_p4_seg54_lmarr = Array(p_p4_seg54_,p_p4_seg54_vr)
glf_lightMaps.Add "p4_seg54", glf_p4_seg54_lmarr
Dim glf_p3_seg54_lmarr : glf_p3_seg54_lmarr = Array(p_p3_seg54_,p_p3_seg54_vr)
glf_lightMaps.Add "p3_seg54", glf_p3_seg54_lmarr
Dim glf_p2_seg54_lmarr : glf_p2_seg54_lmarr = Array(p_p2_seg54_,p_p2_seg54_vr)
glf_lightMaps.Add "p2_seg54", glf_p2_seg54_lmarr
Dim glf_p4_seg53_lmarr : glf_p4_seg53_lmarr = Array(p_p4_seg53_,p_p4_seg53_vr)
glf_lightMaps.Add "p4_seg53", glf_p4_seg53_lmarr
Dim glf_p3_seg53_lmarr : glf_p3_seg53_lmarr = Array(p_p3_seg53_,p_p3_seg53_vr)
glf_lightMaps.Add "p3_seg53", glf_p3_seg53_lmarr
Dim glf_p2_seg53_lmarr : glf_p2_seg53_lmarr = Array(p_p2_seg53_,p_p2_seg53_vr)
glf_lightMaps.Add "p2_seg53", glf_p2_seg53_lmarr
Dim glf_p4_seg52_lmarr : glf_p4_seg52_lmarr = Array(p_p4_seg52_,p_p4_seg52_vr)
glf_lightMaps.Add "p4_seg52", glf_p4_seg52_lmarr
Dim glf_p3_seg52_lmarr : glf_p3_seg52_lmarr = Array(p_p3_seg52_,p_p3_seg52_vr)
glf_lightMaps.Add "p3_seg52", glf_p3_seg52_lmarr
Dim glf_p2_seg52_lmarr : glf_p2_seg52_lmarr = Array(p_p2_seg52_,p_p2_seg52_vr)
glf_lightMaps.Add "p2_seg52", glf_p2_seg52_lmarr
Dim glf_p4_seg51_lmarr : glf_p4_seg51_lmarr = Array(p_p4_seg51_,p_p4_seg51_vr)
glf_lightMaps.Add "p4_seg51", glf_p4_seg51_lmarr
Dim glf_p3_seg51_lmarr : glf_p3_seg51_lmarr = Array(p_p3_seg51_,p_p3_seg51_vr)
glf_lightMaps.Add "p3_seg51", glf_p3_seg51_lmarr
Dim glf_p2_seg51_lmarr : glf_p2_seg51_lmarr = Array(p_p2_seg51_,p_p2_seg51_vr)
glf_lightMaps.Add "p2_seg51", glf_p2_seg51_lmarr
Dim glf_p4_seg50_lmarr : glf_p4_seg50_lmarr = Array(p_p4_seg50_,p_p4_seg50_vr)
glf_lightMaps.Add "p4_seg50", glf_p4_seg50_lmarr
Dim glf_p3_seg50_lmarr : glf_p3_seg50_lmarr = Array(p_p3_seg50_,p_p3_seg50_vr)
glf_lightMaps.Add "p3_seg50", glf_p3_seg50_lmarr
Dim glf_p2_seg50_lmarr : glf_p2_seg50_lmarr = Array(p_p2_seg50_,p_p2_seg50_vr)
glf_lightMaps.Add "p2_seg50", glf_p2_seg50_lmarr
Dim glf_p4_seg49_lmarr : glf_p4_seg49_lmarr = Array(p_p4_seg49_,p_p4_seg49_vr)
glf_lightMaps.Add "p4_seg49", glf_p4_seg49_lmarr
Dim glf_p3_seg49_lmarr : glf_p3_seg49_lmarr = Array(p_p3_seg49_,p_p3_seg49_vr)
glf_lightMaps.Add "p3_seg49", glf_p3_seg49_lmarr
Dim glf_p2_seg49_lmarr : glf_p2_seg49_lmarr = Array(p_p2_seg49_,p_p2_seg49_vr)
glf_lightMaps.Add "p2_seg49", glf_p2_seg49_lmarr
Dim glf_p4_seg48_lmarr : glf_p4_seg48_lmarr = Array(p_p4_seg48_,p_p4_seg48_vr)
glf_lightMaps.Add "p4_seg48", glf_p4_seg48_lmarr
Dim glf_p3_seg48_lmarr : glf_p3_seg48_lmarr = Array(p_p3_seg48_,p_p3_seg48_vr)
glf_lightMaps.Add "p3_seg48", glf_p3_seg48_lmarr
Dim glf_p2_seg48_lmarr : glf_p2_seg48_lmarr = Array(p_p2_seg48_,p_p2_seg48_vr)
glf_lightMaps.Add "p2_seg48", glf_p2_seg48_lmarr
Dim glf_p4_seg47_lmarr : glf_p4_seg47_lmarr = Array(p_p4_seg47_,p_p4_seg47_vr)
glf_lightMaps.Add "p4_seg47", glf_p4_seg47_lmarr
Dim glf_p3_seg47_lmarr : glf_p3_seg47_lmarr = Array(p_p3_seg47_,p_p3_seg47_vr)
glf_lightMaps.Add "p3_seg47", glf_p3_seg47_lmarr
Dim glf_p2_seg47_lmarr : glf_p2_seg47_lmarr = Array(p_p2_seg47_,p_p2_seg47_vr)
glf_lightMaps.Add "p2_seg47", glf_p2_seg47_lmarr
Dim glf_p4_seg46_lmarr : glf_p4_seg46_lmarr = Array(p_p4_seg46_,p_p4_seg46_vr)
glf_lightMaps.Add "p4_seg46", glf_p4_seg46_lmarr
Dim glf_p3_seg46_lmarr : glf_p3_seg46_lmarr = Array(p_p3_seg46_,p_p3_seg46_vr)
glf_lightMaps.Add "p3_seg46", glf_p3_seg46_lmarr
Dim glf_p2_seg46_lmarr : glf_p2_seg46_lmarr = Array(p_p2_seg46_,p_p2_seg46_vr)
glf_lightMaps.Add "p2_seg46", glf_p2_seg46_lmarr
Dim glf_p4_seg45_lmarr : glf_p4_seg45_lmarr = Array(p_p4_seg45_,p_p4_seg45_vr)
glf_lightMaps.Add "p4_seg45", glf_p4_seg45_lmarr
Dim glf_p3_seg45_lmarr : glf_p3_seg45_lmarr = Array(p_p3_seg45_,p_p3_seg45_vr)
glf_lightMaps.Add "p3_seg45", glf_p3_seg45_lmarr
Dim glf_p2_seg45_lmarr : glf_p2_seg45_lmarr = Array(p_p2_seg45_,p_p2_seg45_vr)
glf_lightMaps.Add "p2_seg45", glf_p2_seg45_lmarr
Dim glf_p4_seg44_lmarr : glf_p4_seg44_lmarr = Array(p_p4_seg44_,p_p4_seg44_vr)
glf_lightMaps.Add "p4_seg44", glf_p4_seg44_lmarr
Dim glf_p3_seg44_lmarr : glf_p3_seg44_lmarr = Array(p_p3_seg44_,p_p3_seg44_vr)
glf_lightMaps.Add "p3_seg44", glf_p3_seg44_lmarr
Dim glf_p2_seg44_lmarr : glf_p2_seg44_lmarr = Array(p_p2_seg44_,p_p2_seg44_vr)
glf_lightMaps.Add "p2_seg44", glf_p2_seg44_lmarr
Dim glf_p4_seg43_lmarr : glf_p4_seg43_lmarr = Array(p_p4_seg43_,p_p4_seg43_vr)
glf_lightMaps.Add "p4_seg43", glf_p4_seg43_lmarr
Dim glf_p3_seg43_lmarr : glf_p3_seg43_lmarr = Array(p_p3_seg43_,p_p3_seg43_vr)
glf_lightMaps.Add "p3_seg43", glf_p3_seg43_lmarr
Dim glf_p2_seg43_lmarr : glf_p2_seg43_lmarr = Array(p_p2_seg43_,p_p2_seg43_vr)
glf_lightMaps.Add "p2_seg43", glf_p2_seg43_lmarr
Dim glf_p4_seg42_lmarr : glf_p4_seg42_lmarr = Array(p_p4_seg42_,p_p4_seg42_vr)
glf_lightMaps.Add "p4_seg42", glf_p4_seg42_lmarr
Dim glf_p3_seg42_lmarr : glf_p3_seg42_lmarr = Array(p_p3_seg42_,p_p3_seg42_vr)
glf_lightMaps.Add "p3_seg42", glf_p3_seg42_lmarr
Dim glf_p2_seg42_lmarr : glf_p2_seg42_lmarr = Array(p_p2_seg42_,p_p2_seg42_vr)
glf_lightMaps.Add "p2_seg42", glf_p2_seg42_lmarr
Dim glf_p4_seg41_lmarr : glf_p4_seg41_lmarr = Array(p_p4_seg41_,p_p4_seg41_vr)
glf_lightMaps.Add "p4_seg41", glf_p4_seg41_lmarr
Dim glf_p3_seg41_lmarr : glf_p3_seg41_lmarr = Array(p_p3_seg41_,p_p3_seg41_vr)
glf_lightMaps.Add "p3_seg41", glf_p3_seg41_lmarr
Dim glf_p2_seg41_lmarr : glf_p2_seg41_lmarr = Array(p_p2_seg41_,p_p2_seg41_vr)
glf_lightMaps.Add "p2_seg41", glf_p2_seg41_lmarr
Dim glf_p4_seg40_lmarr : glf_p4_seg40_lmarr = Array(p_p4_seg40_,p_p4_seg40_vr)
glf_lightMaps.Add "p4_seg40", glf_p4_seg40_lmarr
Dim glf_p3_seg40_lmarr : glf_p3_seg40_lmarr = Array(p_p3_seg40_,p_p3_seg40_vr)
glf_lightMaps.Add "p3_seg40", glf_p3_seg40_lmarr
Dim glf_p2_seg40_lmarr : glf_p2_seg40_lmarr = Array(p_p2_seg40_,p_p2_seg40_vr)
glf_lightMaps.Add "p2_seg40", glf_p2_seg40_lmarr
Dim glf_p4_seg39_lmarr : glf_p4_seg39_lmarr = Array(p_p4_seg39_,p_p4_seg39_vr)
glf_lightMaps.Add "p4_seg39", glf_p4_seg39_lmarr
Dim glf_p3_seg39_lmarr : glf_p3_seg39_lmarr = Array(p_p3_seg39_,p_p3_seg39_vr)
glf_lightMaps.Add "p3_seg39", glf_p3_seg39_lmarr
Dim glf_p2_seg39_lmarr : glf_p2_seg39_lmarr = Array(p_p2_seg39_,p_p2_seg39_vr)
glf_lightMaps.Add "p2_seg39", glf_p2_seg39_lmarr
Dim glf_p4_seg38_lmarr : glf_p4_seg38_lmarr = Array(p_p4_seg38_,p_p4_seg38_vr)
glf_lightMaps.Add "p4_seg38", glf_p4_seg38_lmarr
Dim glf_p3_seg38_lmarr : glf_p3_seg38_lmarr = Array(p_p3_seg38_,p_p3_seg38_vr)
glf_lightMaps.Add "p3_seg38", glf_p3_seg38_lmarr
Dim glf_p2_seg38_lmarr : glf_p2_seg38_lmarr = Array(p_p2_seg38_,p_p2_seg38_vr)
glf_lightMaps.Add "p2_seg38", glf_p2_seg38_lmarr
Dim glf_p4_seg37_lmarr : glf_p4_seg37_lmarr = Array(p_p4_seg37_,p_p4_seg37_vr)
glf_lightMaps.Add "p4_seg37", glf_p4_seg37_lmarr
Dim glf_p3_seg37_lmarr : glf_p3_seg37_lmarr = Array(p_p3_seg37_,p_p3_seg37_vr)
glf_lightMaps.Add "p3_seg37", glf_p3_seg37_lmarr
Dim glf_p2_seg37_lmarr : glf_p2_seg37_lmarr = Array(p_p2_seg37_,p_p2_seg37_vr)
glf_lightMaps.Add "p2_seg37", glf_p2_seg37_lmarr
Dim glf_p4_seg36_lmarr : glf_p4_seg36_lmarr = Array(p_p4_seg36_,p_p4_seg36_vr)
glf_lightMaps.Add "p4_seg36", glf_p4_seg36_lmarr
Dim glf_p3_seg36_lmarr : glf_p3_seg36_lmarr = Array(p_p3_seg36_,p_p3_seg36_vr)
glf_lightMaps.Add "p3_seg36", glf_p3_seg36_lmarr
Dim glf_p2_seg36_lmarr : glf_p2_seg36_lmarr = Array(p_p2_seg36_,p_p2_seg36_vr)
glf_lightMaps.Add "p2_seg36", glf_p2_seg36_lmarr
Dim glf_p4_seg35_lmarr : glf_p4_seg35_lmarr = Array(p_p4_seg35_,p_p4_seg35_vr)
glf_lightMaps.Add "p4_seg35", glf_p4_seg35_lmarr
Dim glf_p3_seg35_lmarr : glf_p3_seg35_lmarr = Array(p_p3_seg35_,p_p3_seg35_vr)
glf_lightMaps.Add "p3_seg35", glf_p3_seg35_lmarr
Dim glf_p2_seg35_lmarr : glf_p2_seg35_lmarr = Array(p_p2_seg35_,p_p2_seg35_vr)
glf_lightMaps.Add "p2_seg35", glf_p2_seg35_lmarr
Dim glf_p4_seg34_lmarr : glf_p4_seg34_lmarr = Array(p_p4_seg34_,p_p4_seg34_vr)
glf_lightMaps.Add "p4_seg34", glf_p4_seg34_lmarr
Dim glf_p3_seg34_lmarr : glf_p3_seg34_lmarr = Array(p_p3_seg34_,p_p3_seg34_vr)
glf_lightMaps.Add "p3_seg34", glf_p3_seg34_lmarr
Dim glf_p2_seg34_lmarr : glf_p2_seg34_lmarr = Array(p_p2_seg34_,p_p2_seg34_vr)
glf_lightMaps.Add "p2_seg34", glf_p2_seg34_lmarr
Dim glf_p4_seg33_lmarr : glf_p4_seg33_lmarr = Array(p_p4_seg33_,p_p4_seg33_vr)
glf_lightMaps.Add "p4_seg33", glf_p4_seg33_lmarr
Dim glf_p3_seg33_lmarr : glf_p3_seg33_lmarr = Array(p_p3_seg33_,p_p3_seg33_vr)
glf_lightMaps.Add "p3_seg33", glf_p3_seg33_lmarr
Dim glf_p2_seg33_lmarr : glf_p2_seg33_lmarr = Array(p_p2_seg33_,p_p2_seg33_vr)
glf_lightMaps.Add "p2_seg33", glf_p2_seg33_lmarr
Dim glf_p4_seg32_lmarr : glf_p4_seg32_lmarr = Array(p_p4_seg32_,p_p4_seg32_vr)
glf_lightMaps.Add "p4_seg32", glf_p4_seg32_lmarr
Dim glf_p3_seg32_lmarr : glf_p3_seg32_lmarr = Array(p_p3_seg32_,p_p3_seg32_vr)
glf_lightMaps.Add "p3_seg32", glf_p3_seg32_lmarr
Dim glf_p2_seg32_lmarr : glf_p2_seg32_lmarr = Array(p_p2_seg32_,p_p2_seg32_vr)
glf_lightMaps.Add "p2_seg32", glf_p2_seg32_lmarr
Dim glf_p4_seg31_lmarr : glf_p4_seg31_lmarr = Array(p_p4_seg31_,p_p4_seg31_vr)
glf_lightMaps.Add "p4_seg31", glf_p4_seg31_lmarr
Dim glf_p3_seg31_lmarr : glf_p3_seg31_lmarr = Array(p_p3_seg31_,p_p3_seg31_vr)
glf_lightMaps.Add "p3_seg31", glf_p3_seg31_lmarr
Dim glf_p2_seg31_lmarr : glf_p2_seg31_lmarr = Array(p_p2_seg31_,p_p2_seg31_vr)
glf_lightMaps.Add "p2_seg31", glf_p2_seg31_lmarr
Dim glf_p4_seg30_lmarr : glf_p4_seg30_lmarr = Array(p_p4_seg30_,p_p4_seg30_vr)
glf_lightMaps.Add "p4_seg30", glf_p4_seg30_lmarr
Dim glf_p3_seg30_lmarr : glf_p3_seg30_lmarr = Array(p_p3_seg30_,p_p3_seg30_vr)
glf_lightMaps.Add "p3_seg30", glf_p3_seg30_lmarr
Dim glf_p2_seg30_lmarr : glf_p2_seg30_lmarr = Array(p_p2_seg30_,p_p2_seg30_vr)
glf_lightMaps.Add "p2_seg30", glf_p2_seg30_lmarr
Dim glf_p4_seg29_lmarr : glf_p4_seg29_lmarr = Array(p_p4_seg29_,p_p4_seg29_vr)
glf_lightMaps.Add "p4_seg29", glf_p4_seg29_lmarr
Dim glf_p3_seg29_lmarr : glf_p3_seg29_lmarr = Array(p_p3_seg29_,p_p3_seg29_vr)
glf_lightMaps.Add "p3_seg29", glf_p3_seg29_lmarr
Dim glf_p2_seg29_lmarr : glf_p2_seg29_lmarr = Array(p_p2_seg29_,p_p2_seg29_vr)
glf_lightMaps.Add "p2_seg29", glf_p2_seg29_lmarr
Dim glf_p4_seg28_lmarr : glf_p4_seg28_lmarr = Array(p_p4_seg28_,p_p4_seg28_vr)
glf_lightMaps.Add "p4_seg28", glf_p4_seg28_lmarr
Dim glf_p3_seg28_lmarr : glf_p3_seg28_lmarr = Array(p_p3_seg28_,p_p3_seg28_vr)
glf_lightMaps.Add "p3_seg28", glf_p3_seg28_lmarr
Dim glf_p2_seg28_lmarr : glf_p2_seg28_lmarr = Array(p_p2_seg28_,p_p2_seg28_vr)
glf_lightMaps.Add "p2_seg28", glf_p2_seg28_lmarr
Dim glf_p4_seg27_lmarr : glf_p4_seg27_lmarr = Array(p_p4_seg27_,p_p4_seg27_vr)
glf_lightMaps.Add "p4_seg27", glf_p4_seg27_lmarr
Dim glf_p3_seg27_lmarr : glf_p3_seg27_lmarr = Array(p_p3_seg27_,p_p3_seg27_vr)
glf_lightMaps.Add "p3_seg27", glf_p3_seg27_lmarr
Dim glf_p2_seg27_lmarr : glf_p2_seg27_lmarr = Array(p_p2_seg27_,p_p2_seg27_vr)
glf_lightMaps.Add "p2_seg27", glf_p2_seg27_lmarr
Dim glf_p4_seg26_lmarr : glf_p4_seg26_lmarr = Array(p_p4_seg26_,p_p4_seg26_vr)
glf_lightMaps.Add "p4_seg26", glf_p4_seg26_lmarr
Dim glf_p3_seg26_lmarr : glf_p3_seg26_lmarr = Array(p_p3_seg26_,p_p3_seg26_vr)
glf_lightMaps.Add "p3_seg26", glf_p3_seg26_lmarr
Dim glf_p2_seg26_lmarr : glf_p2_seg26_lmarr = Array(p_p2_seg26_,p_p2_seg26_vr)
glf_lightMaps.Add "p2_seg26", glf_p2_seg26_lmarr
Dim glf_p4_seg25_lmarr : glf_p4_seg25_lmarr = Array(p_p4_seg25_,p_p4_seg25_vr)
glf_lightMaps.Add "p4_seg25", glf_p4_seg25_lmarr
Dim glf_p3_seg25_lmarr : glf_p3_seg25_lmarr = Array(p_p3_seg25_,p_p3_seg25_vr)
glf_lightMaps.Add "p3_seg25", glf_p3_seg25_lmarr
Dim glf_p2_seg25_lmarr : glf_p2_seg25_lmarr = Array(p_p2_seg25_,p_p2_seg25_vr)
glf_lightMaps.Add "p2_seg25", glf_p2_seg25_lmarr
Dim glf_p4_seg24_lmarr : glf_p4_seg24_lmarr = Array(p_p4_seg24_,p_p4_seg24_vr)
glf_lightMaps.Add "p4_seg24", glf_p4_seg24_lmarr
Dim glf_p3_seg24_lmarr : glf_p3_seg24_lmarr = Array(p_p3_seg24_,p_p3_seg24_vr)
glf_lightMaps.Add "p3_seg24", glf_p3_seg24_lmarr
Dim glf_p2_seg24_lmarr : glf_p2_seg24_lmarr = Array(p_p2_seg24_,p_p2_seg24_vr)
glf_lightMaps.Add "p2_seg24", glf_p2_seg24_lmarr
Dim glf_p4_seg23_lmarr : glf_p4_seg23_lmarr = Array(p_p4_seg23_,p_p4_seg23_vr)
glf_lightMaps.Add "p4_seg23", glf_p4_seg23_lmarr
Dim glf_p3_seg23_lmarr : glf_p3_seg23_lmarr = Array(p_p3_seg23_,p_p3_seg23_vr)
glf_lightMaps.Add "p3_seg23", glf_p3_seg23_lmarr
Dim glf_p2_seg23_lmarr : glf_p2_seg23_lmarr = Array(p_p2_seg23_,p_p2_seg23_vr)
glf_lightMaps.Add "p2_seg23", glf_p2_seg23_lmarr
Dim glf_p4_seg22_lmarr : glf_p4_seg22_lmarr = Array(p_p4_seg22_,p_p4_seg22_vr)
glf_lightMaps.Add "p4_seg22", glf_p4_seg22_lmarr
Dim glf_p3_seg22_lmarr : glf_p3_seg22_lmarr = Array(p_p3_seg22_,p_p3_seg22_vr)
glf_lightMaps.Add "p3_seg22", glf_p3_seg22_lmarr
Dim glf_p2_seg22_lmarr : glf_p2_seg22_lmarr = Array(p_p2_seg22_,p_p2_seg22_vr)
glf_lightMaps.Add "p2_seg22", glf_p2_seg22_lmarr
Dim glf_p4_seg21_lmarr : glf_p4_seg21_lmarr = Array(p_p4_seg21_,p_p4_seg21_vr)
glf_lightMaps.Add "p4_seg21", glf_p4_seg21_lmarr
Dim glf_p3_seg21_lmarr : glf_p3_seg21_lmarr = Array(p_p3_seg21_,p_p3_seg21_vr)
glf_lightMaps.Add "p3_seg21", glf_p3_seg21_lmarr
Dim glf_p2_seg21_lmarr : glf_p2_seg21_lmarr = Array(p_p2_seg21_,p_p2_seg21_vr)
glf_lightMaps.Add "p2_seg21", glf_p2_seg21_lmarr
Dim glf_p4_seg20_lmarr : glf_p4_seg20_lmarr = Array(p_p4_seg20_,p_p4_seg20_vr)
glf_lightMaps.Add "p4_seg20", glf_p4_seg20_lmarr
Dim glf_p3_seg20_lmarr : glf_p3_seg20_lmarr = Array(p_p3_seg20_,p_p3_seg20_vr)
glf_lightMaps.Add "p3_seg20", glf_p3_seg20_lmarr
Dim glf_p2_seg20_lmarr : glf_p2_seg20_lmarr = Array(p_p2_seg20_,p_p2_seg20_vr)
glf_lightMaps.Add "p2_seg20", glf_p2_seg20_lmarr
Dim glf_p4_seg19_lmarr : glf_p4_seg19_lmarr = Array(p_p4_seg19_,p_p4_seg19_vr)
glf_lightMaps.Add "p4_seg19", glf_p4_seg19_lmarr
Dim glf_p3_seg19_lmarr : glf_p3_seg19_lmarr = Array(p_p3_seg19_,p_p3_seg19_vr)
glf_lightMaps.Add "p3_seg19", glf_p3_seg19_lmarr
Dim glf_p2_seg19_lmarr : glf_p2_seg19_lmarr = Array(p_p2_seg19_,p_p2_seg19_vr)
glf_lightMaps.Add "p2_seg19", glf_p2_seg19_lmarr
Dim glf_p4_seg18_lmarr : glf_p4_seg18_lmarr = Array(p_p4_seg18_,p_p4_seg18_vr)
glf_lightMaps.Add "p4_seg18", glf_p4_seg18_lmarr
Dim glf_p3_seg18_lmarr : glf_p3_seg18_lmarr = Array(p_p3_seg18_,p_p3_seg18_vr)
glf_lightMaps.Add "p3_seg18", glf_p3_seg18_lmarr
Dim glf_p2_seg18_lmarr : glf_p2_seg18_lmarr = Array(p_p2_seg18_,p_p2_seg18_vr)
glf_lightMaps.Add "p2_seg18", glf_p2_seg18_lmarr
Dim glf_p4_seg17_lmarr : glf_p4_seg17_lmarr = Array(p_p4_seg17_,p_p4_seg17_vr)
glf_lightMaps.Add "p4_seg17", glf_p4_seg17_lmarr
Dim glf_p3_seg17_lmarr : glf_p3_seg17_lmarr = Array(p_p3_seg17_,p_p3_seg17_vr)
glf_lightMaps.Add "p3_seg17", glf_p3_seg17_lmarr
Dim glf_p2_seg17_lmarr : glf_p2_seg17_lmarr = Array(p_p2_seg17_,p_p2_seg17_vr)
glf_lightMaps.Add "p2_seg17", glf_p2_seg17_lmarr
Dim glf_p4_seg16_lmarr : glf_p4_seg16_lmarr = Array(p_p4_seg16_,p_p4_seg16_vr)
glf_lightMaps.Add "p4_seg16", glf_p4_seg16_lmarr
Dim glf_p3_seg16_lmarr : glf_p3_seg16_lmarr = Array(p_p3_seg16_,p_p3_seg16_vr)
glf_lightMaps.Add "p3_seg16", glf_p3_seg16_lmarr
Dim glf_p2_seg16_lmarr : glf_p2_seg16_lmarr = Array(p_p2_seg16_,p_p2_seg16_vr)
glf_lightMaps.Add "p2_seg16", glf_p2_seg16_lmarr
Dim glf_p4_seg15_lmarr : glf_p4_seg15_lmarr = Array(p_p4_seg15_,p_p4_seg15_vr)
glf_lightMaps.Add "p4_seg15", glf_p4_seg15_lmarr
Dim glf_p3_seg15_lmarr : glf_p3_seg15_lmarr = Array(p_p3_seg15_,p_p3_seg15_vr)
glf_lightMaps.Add "p3_seg15", glf_p3_seg15_lmarr
Dim glf_p2_seg15_lmarr : glf_p2_seg15_lmarr = Array(p_p2_seg15_,p_p2_seg15_vr)
glf_lightMaps.Add "p2_seg15", glf_p2_seg15_lmarr
Dim glf_p4_seg14_lmarr : glf_p4_seg14_lmarr = Array(p_p4_seg14_,p_p4_seg14_vr)
glf_lightMaps.Add "p4_seg14", glf_p4_seg14_lmarr
Dim glf_p3_seg14_lmarr : glf_p3_seg14_lmarr = Array(p_p3_seg14_,p_p3_seg14_vr)
glf_lightMaps.Add "p3_seg14", glf_p3_seg14_lmarr
Dim glf_p2_seg14_lmarr : glf_p2_seg14_lmarr = Array(p_p2_seg14_,p_p2_seg14_vr)
glf_lightMaps.Add "p2_seg14", glf_p2_seg14_lmarr
Dim glf_p4_seg13_lmarr : glf_p4_seg13_lmarr = Array(p_p4_seg13_,p_p4_seg13_vr)
glf_lightMaps.Add "p4_seg13", glf_p4_seg13_lmarr
Dim glf_p3_seg13_lmarr : glf_p3_seg13_lmarr = Array(p_p3_seg13_,p_p3_seg13_vr)
glf_lightMaps.Add "p3_seg13", glf_p3_seg13_lmarr
Dim glf_p2_seg13_lmarr : glf_p2_seg13_lmarr = Array(p_p2_seg13_,p_p2_seg13_vr)
glf_lightMaps.Add "p2_seg13", glf_p2_seg13_lmarr
Dim glf_p4_seg12_lmarr : glf_p4_seg12_lmarr = Array(p_p4_seg12_,p_p4_seg12_vr)
glf_lightMaps.Add "p4_seg12", glf_p4_seg12_lmarr
Dim glf_p3_seg12_lmarr : glf_p3_seg12_lmarr = Array(p_p3_seg12_,p_p3_seg12_vr)
glf_lightMaps.Add "p3_seg12", glf_p3_seg12_lmarr
Dim glf_p2_seg12_lmarr : glf_p2_seg12_lmarr = Array(p_p2_seg12_,p_p2_seg12_vr)
glf_lightMaps.Add "p2_seg12", glf_p2_seg12_lmarr
Dim glf_p4_seg11_lmarr : glf_p4_seg11_lmarr = Array(p_p4_seg11_,p_p4_seg11_vr)
glf_lightMaps.Add "p4_seg11", glf_p4_seg11_lmarr
Dim glf_p3_seg11_lmarr : glf_p3_seg11_lmarr = Array(p_p3_seg11_,p_p3_seg11_vr)
glf_lightMaps.Add "p3_seg11", glf_p3_seg11_lmarr
Dim glf_p2_seg11_lmarr : glf_p2_seg11_lmarr = Array(p_p2_seg11_,p_p2_seg11_vr)
glf_lightMaps.Add "p2_seg11", glf_p2_seg11_lmarr
Dim glf_p4_seg10_lmarr : glf_p4_seg10_lmarr = Array(p_p4_seg10_,p_p4_seg10_vr)
glf_lightMaps.Add "p4_seg10", glf_p4_seg10_lmarr
Dim glf_p3_seg10_lmarr : glf_p3_seg10_lmarr = Array(p_p3_seg10_,p_p3_seg10_vr)
glf_lightMaps.Add "p3_seg10", glf_p3_seg10_lmarr
Dim glf_p2_seg10_lmarr : glf_p2_seg10_lmarr = Array(p_p2_seg10_,p_p2_seg10_vr)
glf_lightMaps.Add "p2_seg10", glf_p2_seg10_lmarr
Dim glf_p4_seg9_lmarr : glf_p4_seg9_lmarr = Array(p_p4_seg9_,p_p4_seg9_vr)
glf_lightMaps.Add "p4_seg9", glf_p4_seg9_lmarr
Dim glf_p3_seg9_lmarr : glf_p3_seg9_lmarr = Array(p_p3_seg9_,p_p3_seg9_vr)
glf_lightMaps.Add "p3_seg9", glf_p3_seg9_lmarr
Dim glf_p2_seg9_lmarr : glf_p2_seg9_lmarr = Array(p_p2_seg9_,p_p2_seg9_vr)
glf_lightMaps.Add "p2_seg9", glf_p2_seg9_lmarr
Dim glf_p4_seg8_lmarr : glf_p4_seg8_lmarr = Array(p_p4_seg8_,p_p4_seg8_vr)
glf_lightMaps.Add "p4_seg8", glf_p4_seg8_lmarr
Dim glf_p3_seg8_lmarr : glf_p3_seg8_lmarr = Array(p_p3_seg8_,p_p3_seg8_vr)
glf_lightMaps.Add "p3_seg8", glf_p3_seg8_lmarr
Dim glf_p2_seg8_lmarr : glf_p2_seg8_lmarr = Array(p_p2_seg8_,p_p2_seg8_vr)
glf_lightMaps.Add "p2_seg8", glf_p2_seg8_lmarr
Dim glf_p4_seg7_lmarr : glf_p4_seg7_lmarr = Array(p_p4_seg7_,p_p4_seg7_vr)
glf_lightMaps.Add "p4_seg7", glf_p4_seg7_lmarr
Dim glf_p3_seg7_lmarr : glf_p3_seg7_lmarr = Array(p_p3_seg7_,p_p3_seg7_vr)
glf_lightMaps.Add "p3_seg7", glf_p3_seg7_lmarr
Dim glf_p2_seg7_lmarr : glf_p2_seg7_lmarr = Array(p_p2_seg7_,p_p2_seg7_vr)
glf_lightMaps.Add "p2_seg7", glf_p2_seg7_lmarr
Dim glf_p4_seg6_lmarr : glf_p4_seg6_lmarr = Array(p_p4_seg6_,p_p4_seg6_vr)
glf_lightMaps.Add "p4_seg6", glf_p4_seg6_lmarr
Dim glf_p3_seg6_lmarr : glf_p3_seg6_lmarr = Array(p_p3_seg6_,p_p3_seg6_vr)
glf_lightMaps.Add "p3_seg6", glf_p3_seg6_lmarr
Dim glf_p2_seg6_lmarr : glf_p2_seg6_lmarr = Array(p_p2_seg6_,p_p2_seg6_vr)
glf_lightMaps.Add "p2_seg6", glf_p2_seg6_lmarr
Dim glf_p4_seg5_lmarr : glf_p4_seg5_lmarr = Array(p_p4_seg5_,p_p4_seg5_vr)
glf_lightMaps.Add "p4_seg5", glf_p4_seg5_lmarr
Dim glf_p3_seg5_lmarr : glf_p3_seg5_lmarr = Array(p_p3_seg5_,p_p3_seg5_vr)
glf_lightMaps.Add "p3_seg5", glf_p3_seg5_lmarr
Dim glf_p2_seg5_lmarr : glf_p2_seg5_lmarr = Array(p_p2_seg5_,p_p2_seg5_vr)
glf_lightMaps.Add "p2_seg5", glf_p2_seg5_lmarr
Dim glf_p4_seg4_lmarr : glf_p4_seg4_lmarr = Array(p_p4_seg4_,p_p4_seg4_vr)
glf_lightMaps.Add "p4_seg4", glf_p4_seg4_lmarr
Dim glf_p3_seg4_lmarr : glf_p3_seg4_lmarr = Array(p_p3_seg4_,p_p3_seg4_vr)
glf_lightMaps.Add "p3_seg4", glf_p3_seg4_lmarr
Dim glf_p2_seg4_lmarr : glf_p2_seg4_lmarr = Array(p_p2_seg4_,p_p2_seg4_vr)
glf_lightMaps.Add "p2_seg4", glf_p2_seg4_lmarr
Dim glf_p4_seg3_lmarr : glf_p4_seg3_lmarr = Array(p_p4_seg3_,p_p4_seg3_vr)
glf_lightMaps.Add "p4_seg3", glf_p4_seg3_lmarr
Dim glf_p3_seg3_lmarr : glf_p3_seg3_lmarr = Array(p_p3_seg3_,p_p3_seg3_vr)
glf_lightMaps.Add "p3_seg3", glf_p3_seg3_lmarr
Dim glf_p2_seg3_lmarr : glf_p2_seg3_lmarr = Array(p_p2_seg3_,p_p2_seg3_vr)
glf_lightMaps.Add "p2_seg3", glf_p2_seg3_lmarr
Dim glf_p4_seg2_lmarr : glf_p4_seg2_lmarr = Array(p_p4_seg2_,p_p4_seg2_vr)
glf_lightMaps.Add "p4_seg2", glf_p4_seg2_lmarr
Dim glf_p3_seg2_lmarr : glf_p3_seg2_lmarr = Array(p_p3_seg2_,p_p3_seg2_vr)
glf_lightMaps.Add "p3_seg2", glf_p3_seg2_lmarr
Dim glf_p2_seg2_lmarr : glf_p2_seg2_lmarr = Array(p_p2_seg2_,p_p2_seg2_vr)
glf_lightMaps.Add "p2_seg2", glf_p2_seg2_lmarr
Dim glf_p4_seg1_lmarr : glf_p4_seg1_lmarr = Array(p_p4_seg1_,p_p4_seg1_vr)
glf_lightMaps.Add "p4_seg1", glf_p4_seg1_lmarr
Dim glf_p3_seg1_lmarr : glf_p3_seg1_lmarr = Array(p_p3_seg1_,p_p3_seg1_vr)
glf_lightMaps.Add "p3_seg1", glf_p3_seg1_lmarr
Dim glf_p2_seg1_lmarr : glf_p2_seg1_lmarr = Array(p_p2_seg1_,p_p2_seg1_vr)
glf_lightMaps.Add "p2_seg1", glf_p2_seg1_lmarr
Dim glf_ball_seg29_lmarr : glf_ball_seg29_lmarr = Array(p_ball_seg29_vr)
glf_lightMaps.Add "ball_seg29", glf_ball_seg29_lmarr
Dim glf_ball_seg28_lmarr : glf_ball_seg28_lmarr = Array(p_ball_seg28_vr)
glf_lightMaps.Add "ball_seg28", glf_ball_seg28_lmarr
Dim glf_ball_seg27_lmarr : glf_ball_seg27_lmarr = Array(p_ball_seg27_vr)
glf_lightMaps.Add "ball_seg27", glf_ball_seg27_lmarr
Dim glf_ball_seg26_lmarr : glf_ball_seg26_lmarr = Array(p_ball_seg26_vr)
glf_lightMaps.Add "ball_seg26", glf_ball_seg26_lmarr
Dim glf_ball_seg25_lmarr : glf_ball_seg25_lmarr = Array(p_ball_seg25_vr)
glf_lightMaps.Add "ball_seg25", glf_ball_seg25_lmarr
Dim glf_ball_seg24_lmarr : glf_ball_seg24_lmarr = Array(p_ball_seg24_vr)
glf_lightMaps.Add "ball_seg24", glf_ball_seg24_lmarr
Dim glf_ball_seg23_lmarr : glf_ball_seg23_lmarr = Array(p_ball_seg23_vr)
glf_lightMaps.Add "ball_seg23", glf_ball_seg23_lmarr
Dim glf_ball_seg22_lmarr : glf_ball_seg22_lmarr = Array(p_ball_seg22_vr)
glf_lightMaps.Add "ball_seg22", glf_ball_seg22_lmarr
Dim glf_ball_seg21_lmarr : glf_ball_seg21_lmarr = Array(p_ball_seg21_vr)
glf_lightMaps.Add "ball_seg21", glf_ball_seg21_lmarr
Dim glf_ball_seg20_lmarr : glf_ball_seg20_lmarr = Array(p_ball_seg20_vr)
glf_lightMaps.Add "ball_seg20", glf_ball_seg20_lmarr
Dim glf_ball_seg19_lmarr : glf_ball_seg19_lmarr = Array(p_ball_seg19_vr)
glf_lightMaps.Add "ball_seg19", glf_ball_seg19_lmarr
Dim glf_ball_seg18_lmarr : glf_ball_seg18_lmarr = Array(p_ball_seg18_vr)
glf_lightMaps.Add "ball_seg18", glf_ball_seg18_lmarr
Dim glf_ball_seg17_lmarr : glf_ball_seg17_lmarr = Array(p_ball_seg17_vr)
glf_lightMaps.Add "ball_seg17", glf_ball_seg17_lmarr
Dim glf_ball_seg16_lmarr : glf_ball_seg16_lmarr = Array(p_ball_seg16_vr)
glf_lightMaps.Add "ball_seg16", glf_ball_seg16_lmarr
Dim glf_ball_seg15_lmarr : glf_ball_seg15_lmarr = Array(p_ball_seg15_vr)
glf_lightMaps.Add "ball_seg15", glf_ball_seg15_lmarr
Dim glf_ball_seg14_lmarr : glf_ball_seg14_lmarr = Array(p_ball_seg14_vr)
glf_lightMaps.Add "ball_seg14", glf_ball_seg14_lmarr
Dim glf_ball_seg13_lmarr : glf_ball_seg13_lmarr = Array(p_ball_seg13_vr)
glf_lightMaps.Add "ball_seg13", glf_ball_seg13_lmarr
Dim glf_ball_seg12_lmarr : glf_ball_seg12_lmarr = Array(p_ball_seg12_vr)
glf_lightMaps.Add "ball_seg12", glf_ball_seg12_lmarr
Dim glf_ball_seg11_lmarr : glf_ball_seg11_lmarr = Array(p_ball_seg11_vr)
glf_lightMaps.Add "ball_seg11", glf_ball_seg11_lmarr
Dim glf_ball_seg10_lmarr : glf_ball_seg10_lmarr = Array(p_ball_seg10_vr)
glf_lightMaps.Add "ball_seg10", glf_ball_seg10_lmarr
Dim glf_ball_seg9_lmarr : glf_ball_seg9_lmarr = Array(p_ball_seg9_vr)
glf_lightMaps.Add "ball_seg9", glf_ball_seg9_lmarr
Dim glf_ball_seg8_lmarr : glf_ball_seg8_lmarr = Array(p_ball_seg8_vr)
glf_lightMaps.Add "ball_seg8", glf_ball_seg8_lmarr
Dim glf_ball_seg7_lmarr : glf_ball_seg7_lmarr = Array(p_ball_seg7_vr)
glf_lightMaps.Add "ball_seg7", glf_ball_seg7_lmarr
Dim glf_ball_seg6_lmarr : glf_ball_seg6_lmarr = Array(p_ball_seg6_vr)
glf_lightMaps.Add "ball_seg6", glf_ball_seg6_lmarr
Dim glf_ball_seg5_lmarr : glf_ball_seg5_lmarr = Array(p_ball_seg5_vr)
glf_lightMaps.Add "ball_seg5", glf_ball_seg5_lmarr
Dim glf_ball_seg4_lmarr : glf_ball_seg4_lmarr = Array(p_ball_seg4_vr)
glf_lightMaps.Add "ball_seg4", glf_ball_seg4_lmarr
Dim glf_ball_seg3_lmarr : glf_ball_seg3_lmarr = Array(p_ball_seg3_vr)
glf_lightMaps.Add "ball_seg3", glf_ball_seg3_lmarr
Dim glf_ball_seg2_lmarr : glf_ball_seg2_lmarr = Array(p_ball_seg2_vr)
glf_lightMaps.Add "ball_seg2", glf_ball_seg2_lmarr
Dim glf_ball_seg1_lmarr : glf_ball_seg1_lmarr = Array(p_ball_seg1_vr)
glf_lightMaps.Add "ball_seg1", glf_ball_seg1_lmarr
Dim glf_p1_seg105_lmarr : glf_p1_seg105_lmarr = Array(p_p1_seg105_,p_p1_seg105_vr)
glf_lightMaps.Add "p1_seg105", glf_p1_seg105_lmarr
Dim glf_p1_seg104_lmarr : glf_p1_seg104_lmarr = Array(p_p1_seg104_,p_p1_seg104_vr)
glf_lightMaps.Add "p1_seg104", glf_p1_seg104_lmarr
Dim glf_p1_seg103_lmarr : glf_p1_seg103_lmarr = Array(p_p1_seg103_,p_p1_seg103_vr)
glf_lightMaps.Add "p1_seg103", glf_p1_seg103_lmarr
Dim glf_p1_seg102_lmarr : glf_p1_seg102_lmarr = Array(p_p1_seg102_,p_p1_seg102_vr)
glf_lightMaps.Add "p1_seg102", glf_p1_seg102_lmarr
Dim glf_p1_seg101_lmarr : glf_p1_seg101_lmarr = Array(p_p1_seg101_,p_p1_seg101_vr)
glf_lightMaps.Add "p1_seg101", glf_p1_seg101_lmarr
Dim glf_p1_seg100_lmarr : glf_p1_seg100_lmarr = Array(p_p1_seg100_,p_p1_seg100_vr)
glf_lightMaps.Add "p1_seg100", glf_p1_seg100_lmarr
Dim glf_p1_seg99_lmarr : glf_p1_seg99_lmarr = Array(p_p1_seg99_,p_p1_seg99_vr)
glf_lightMaps.Add "p1_seg99", glf_p1_seg99_lmarr
Dim glf_p1_seg98_lmarr : glf_p1_seg98_lmarr = Array(p_p1_seg98_,p_p1_seg98_vr)
glf_lightMaps.Add "p1_seg98", glf_p1_seg98_lmarr
Dim glf_p1_seg97_lmarr : glf_p1_seg97_lmarr = Array(p_p1_seg97_,p_p1_seg97_vr)
glf_lightMaps.Add "p1_seg97", glf_p1_seg97_lmarr
Dim glf_p1_seg96_lmarr : glf_p1_seg96_lmarr = Array(p_p1_seg96_,p_p1_seg96_vr)
glf_lightMaps.Add "p1_seg96", glf_p1_seg96_lmarr
Dim glf_p1_seg95_lmarr : glf_p1_seg95_lmarr = Array(p_p1_seg95_,p_p1_seg95_vr)
glf_lightMaps.Add "p1_seg95", glf_p1_seg95_lmarr
Dim glf_p1_seg94_lmarr : glf_p1_seg94_lmarr = Array(p_p1_seg94_,p_p1_seg94_vr)
glf_lightMaps.Add "p1_seg94", glf_p1_seg94_lmarr
Dim glf_p1_seg93_lmarr : glf_p1_seg93_lmarr = Array(p_p1_seg93_,p_p1_seg93_vr)
glf_lightMaps.Add "p1_seg93", glf_p1_seg93_lmarr
Dim glf_p1_seg92_lmarr : glf_p1_seg92_lmarr = Array(p_p1_seg92_,p_p1_seg92_vr)
glf_lightMaps.Add "p1_seg92", glf_p1_seg92_lmarr
Dim glf_p1_seg91_lmarr : glf_p1_seg91_lmarr = Array(p_p1_seg91_,p_p1_seg91_vr)
glf_lightMaps.Add "p1_seg91", glf_p1_seg91_lmarr
Dim glf_p1_seg90_lmarr : glf_p1_seg90_lmarr = Array(p_p1_seg90_,p_p1_seg90_vr)
glf_lightMaps.Add "p1_seg90", glf_p1_seg90_lmarr
Dim glf_p1_seg89_lmarr : glf_p1_seg89_lmarr = Array(p_p1_seg89_,p_p1_seg89_vr)
glf_lightMaps.Add "p1_seg89", glf_p1_seg89_lmarr
Dim glf_p1_seg88_lmarr : glf_p1_seg88_lmarr = Array(p_p1_seg88_,p_p1_seg88_vr)
glf_lightMaps.Add "p1_seg88", glf_p1_seg88_lmarr
Dim glf_p1_seg87_lmarr : glf_p1_seg87_lmarr = Array(p_p1_seg87_,p_p1_seg87_vr)
glf_lightMaps.Add "p1_seg87", glf_p1_seg87_lmarr
Dim glf_p1_seg86_lmarr : glf_p1_seg86_lmarr = Array(p_p1_seg86_,p_p1_seg86_vr)
glf_lightMaps.Add "p1_seg86", glf_p1_seg86_lmarr
Dim glf_p1_seg85_lmarr : glf_p1_seg85_lmarr = Array(p_p1_seg85_,p_p1_seg85_vr)
glf_lightMaps.Add "p1_seg85", glf_p1_seg85_lmarr
Dim glf_p1_seg84_lmarr : glf_p1_seg84_lmarr = Array(p_p1_seg84_,p_p1_seg84_vr)
glf_lightMaps.Add "p1_seg84", glf_p1_seg84_lmarr
Dim glf_p1_seg83_lmarr : glf_p1_seg83_lmarr = Array(p_p1_seg83_,p_p1_seg83_vr)
glf_lightMaps.Add "p1_seg83", glf_p1_seg83_lmarr
Dim glf_p1_seg82_lmarr : glf_p1_seg82_lmarr = Array(p_p1_seg82_,p_p1_seg82_vr)
glf_lightMaps.Add "p1_seg82", glf_p1_seg82_lmarr
Dim glf_p1_seg81_lmarr : glf_p1_seg81_lmarr = Array(p_p1_seg81_,p_p1_seg81_vr)
glf_lightMaps.Add "p1_seg81", glf_p1_seg81_lmarr
Dim glf_p1_seg80_lmarr : glf_p1_seg80_lmarr = Array(p_p1_seg80_,p_p1_seg80_vr)
glf_lightMaps.Add "p1_seg80", glf_p1_seg80_lmarr
Dim glf_p1_seg79_lmarr : glf_p1_seg79_lmarr = Array(p_p1_seg79_,p_p1_seg79_vr)
glf_lightMaps.Add "p1_seg79", glf_p1_seg79_lmarr
Dim glf_p1_seg78_lmarr : glf_p1_seg78_lmarr = Array(p_p1_seg78_,p_p1_seg78_vr)
glf_lightMaps.Add "p1_seg78", glf_p1_seg78_lmarr
Dim glf_p1_seg77_lmarr : glf_p1_seg77_lmarr = Array(p_p1_seg77_,p_p1_seg77_vr)
glf_lightMaps.Add "p1_seg77", glf_p1_seg77_lmarr
Dim glf_p1_seg76_lmarr : glf_p1_seg76_lmarr = Array(p_p1_seg76_,p_p1_seg76_vr)
glf_lightMaps.Add "p1_seg76", glf_p1_seg76_lmarr
Dim glf_p1_seg75_lmarr : glf_p1_seg75_lmarr = Array(p_p1_seg75_,p_p1_seg75_vr)
glf_lightMaps.Add "p1_seg75", glf_p1_seg75_lmarr
Dim glf_p1_seg74_lmarr : glf_p1_seg74_lmarr = Array(p_p1_seg74_,p_p1_seg74_vr)
glf_lightMaps.Add "p1_seg74", glf_p1_seg74_lmarr
Dim glf_p1_seg73_lmarr : glf_p1_seg73_lmarr = Array(p_p1_seg73_,p_p1_seg73_vr)
glf_lightMaps.Add "p1_seg73", glf_p1_seg73_lmarr
Dim glf_p1_seg72_lmarr : glf_p1_seg72_lmarr = Array(p_p1_seg72_,p_p1_seg72_vr)
glf_lightMaps.Add "p1_seg72", glf_p1_seg72_lmarr
Dim glf_p1_seg71_lmarr : glf_p1_seg71_lmarr = Array(p_p1_seg71_,p_p1_seg71_vr)
glf_lightMaps.Add "p1_seg71", glf_p1_seg71_lmarr
Dim glf_p1_seg70_lmarr : glf_p1_seg70_lmarr = Array(p_p1_seg70_,p_p1_seg70_vr)
glf_lightMaps.Add "p1_seg70", glf_p1_seg70_lmarr
Dim glf_p1_seg69_lmarr : glf_p1_seg69_lmarr = Array(p_p1_seg69_,p_p1_seg69_vr)
glf_lightMaps.Add "p1_seg69", glf_p1_seg69_lmarr
Dim glf_p1_seg68_lmarr : glf_p1_seg68_lmarr = Array(p_p1_seg68_,p_p1_seg68_vr)
glf_lightMaps.Add "p1_seg68", glf_p1_seg68_lmarr
Dim glf_p1_seg67_lmarr : glf_p1_seg67_lmarr = Array(p_p1_seg67_,p_p1_seg67_vr)
glf_lightMaps.Add "p1_seg67", glf_p1_seg67_lmarr
Dim glf_p1_seg66_lmarr : glf_p1_seg66_lmarr = Array(p_p1_seg66_,p_p1_seg66_vr)
glf_lightMaps.Add "p1_seg66", glf_p1_seg66_lmarr
Dim glf_p1_seg65_lmarr : glf_p1_seg65_lmarr = Array(p_p1_seg65_,p_p1_seg65_vr)
glf_lightMaps.Add "p1_seg65", glf_p1_seg65_lmarr
Dim glf_p1_seg64_lmarr : glf_p1_seg64_lmarr = Array(p_p1_seg64_,p_p1_seg64_vr)
glf_lightMaps.Add "p1_seg64", glf_p1_seg64_lmarr
Dim glf_p1_seg63_lmarr : glf_p1_seg63_lmarr = Array(p_p1_seg63_,p_p1_seg63_vr)
glf_lightMaps.Add "p1_seg63", glf_p1_seg63_lmarr
Dim glf_p1_seg62_lmarr : glf_p1_seg62_lmarr = Array(p_p1_seg62_,p_p1_seg62_vr)
glf_lightMaps.Add "p1_seg62", glf_p1_seg62_lmarr
Dim glf_p1_seg61_lmarr : glf_p1_seg61_lmarr = Array(p_p1_seg61_,p_p1_seg61_vr)
glf_lightMaps.Add "p1_seg61", glf_p1_seg61_lmarr
Dim glf_p1_seg60_lmarr : glf_p1_seg60_lmarr = Array(p_p1_seg60_,p_p1_seg60_vr)
glf_lightMaps.Add "p1_seg60", glf_p1_seg60_lmarr
Dim glf_p1_seg59_lmarr : glf_p1_seg59_lmarr = Array(p_p1_seg59_,p_p1_seg59_vr)
glf_lightMaps.Add "p1_seg59", glf_p1_seg59_lmarr
Dim glf_p1_seg58_lmarr : glf_p1_seg58_lmarr = Array(p_p1_seg58_,p_p1_seg58_vr)
glf_lightMaps.Add "p1_seg58", glf_p1_seg58_lmarr
Dim glf_p1_seg57_lmarr : glf_p1_seg57_lmarr = Array(p_p1_seg57_,p_p1_seg57_vr)
glf_lightMaps.Add "p1_seg57", glf_p1_seg57_lmarr
Dim glf_p1_seg56_lmarr : glf_p1_seg56_lmarr = Array(p_p1_seg56_,p_p1_seg56_vr)
glf_lightMaps.Add "p1_seg56", glf_p1_seg56_lmarr
Dim glf_p1_seg55_lmarr : glf_p1_seg55_lmarr = Array(p_p1_seg55_,p_p1_seg55_vr)
glf_lightMaps.Add "p1_seg55", glf_p1_seg55_lmarr
Dim glf_p1_seg54_lmarr : glf_p1_seg54_lmarr = Array(p_p1_seg54_,p_p1_seg54_vr)
glf_lightMaps.Add "p1_seg54", glf_p1_seg54_lmarr
Dim glf_p1_seg53_lmarr : glf_p1_seg53_lmarr = Array(p_p1_seg53_,p_p1_seg53_vr)
glf_lightMaps.Add "p1_seg53", glf_p1_seg53_lmarr
Dim glf_p1_seg52_lmarr : glf_p1_seg52_lmarr = Array(p_p1_seg52_,p_p1_seg52_vr)
glf_lightMaps.Add "p1_seg52", glf_p1_seg52_lmarr
Dim glf_p1_seg51_lmarr : glf_p1_seg51_lmarr = Array(p_p1_seg51_,p_p1_seg51_vr)
glf_lightMaps.Add "p1_seg51", glf_p1_seg51_lmarr
Dim glf_p1_seg50_lmarr : glf_p1_seg50_lmarr = Array(p_p1_seg50_,p_p1_seg50_vr)
glf_lightMaps.Add "p1_seg50", glf_p1_seg50_lmarr
Dim glf_p1_seg49_lmarr : glf_p1_seg49_lmarr = Array(p_p1_seg49_,p_p1_seg49_vr)
glf_lightMaps.Add "p1_seg49", glf_p1_seg49_lmarr
Dim glf_p1_seg48_lmarr : glf_p1_seg48_lmarr = Array(p_p1_seg48_,p_p1_seg48_vr)
glf_lightMaps.Add "p1_seg48", glf_p1_seg48_lmarr
Dim glf_p1_seg47_lmarr : glf_p1_seg47_lmarr = Array(p_p1_seg47_,p_p1_seg47_vr)
glf_lightMaps.Add "p1_seg47", glf_p1_seg47_lmarr
Dim glf_p1_seg46_lmarr : glf_p1_seg46_lmarr = Array(p_p1_seg46_,p_p1_seg46_vr)
glf_lightMaps.Add "p1_seg46", glf_p1_seg46_lmarr
Dim glf_p1_seg45_lmarr : glf_p1_seg45_lmarr = Array(p_p1_seg45_,p_p1_seg45_vr)
glf_lightMaps.Add "p1_seg45", glf_p1_seg45_lmarr
Dim glf_p1_seg44_lmarr : glf_p1_seg44_lmarr = Array(p_p1_seg44_,p_p1_seg44_vr)
glf_lightMaps.Add "p1_seg44", glf_p1_seg44_lmarr
Dim glf_p1_seg43_lmarr : glf_p1_seg43_lmarr = Array(p_p1_seg43_,p_p1_seg43_vr)
glf_lightMaps.Add "p1_seg43", glf_p1_seg43_lmarr
Dim glf_p1_seg42_lmarr : glf_p1_seg42_lmarr = Array(p_p1_seg42_,p_p1_seg42_vr)
glf_lightMaps.Add "p1_seg42", glf_p1_seg42_lmarr
Dim glf_p1_seg41_lmarr : glf_p1_seg41_lmarr = Array(p_p1_seg41_,p_p1_seg41_vr)
glf_lightMaps.Add "p1_seg41", glf_p1_seg41_lmarr
Dim glf_p1_seg40_lmarr : glf_p1_seg40_lmarr = Array(p_p1_seg40_,p_p1_seg40_vr)
glf_lightMaps.Add "p1_seg40", glf_p1_seg40_lmarr
Dim glf_p1_seg39_lmarr : glf_p1_seg39_lmarr = Array(p_p1_seg39_,p_p1_seg39_vr)
glf_lightMaps.Add "p1_seg39", glf_p1_seg39_lmarr
Dim glf_p1_seg38_lmarr : glf_p1_seg38_lmarr = Array(p_p1_seg38_,p_p1_seg38_vr)
glf_lightMaps.Add "p1_seg38", glf_p1_seg38_lmarr
Dim glf_p1_seg37_lmarr : glf_p1_seg37_lmarr = Array(p_p1_seg37_,p_p1_seg37_vr)
glf_lightMaps.Add "p1_seg37", glf_p1_seg37_lmarr
Dim glf_p1_seg36_lmarr : glf_p1_seg36_lmarr = Array(p_p1_seg36_,p_p1_seg36_vr)
glf_lightMaps.Add "p1_seg36", glf_p1_seg36_lmarr
Dim glf_p1_seg35_lmarr : glf_p1_seg35_lmarr = Array(p_p1_seg35_,p_p1_seg35_vr)
glf_lightMaps.Add "p1_seg35", glf_p1_seg35_lmarr
Dim glf_p1_seg34_lmarr : glf_p1_seg34_lmarr = Array(p_p1_seg34_,p_p1_seg34_vr)
glf_lightMaps.Add "p1_seg34", glf_p1_seg34_lmarr
Dim glf_p1_seg33_lmarr : glf_p1_seg33_lmarr = Array(p_p1_seg33_,p_p1_seg33_vr)
glf_lightMaps.Add "p1_seg33", glf_p1_seg33_lmarr
Dim glf_p1_seg32_lmarr : glf_p1_seg32_lmarr = Array(p_p1_seg32_,p_p1_seg32_vr)
glf_lightMaps.Add "p1_seg32", glf_p1_seg32_lmarr
Dim glf_p1_seg31_lmarr : glf_p1_seg31_lmarr = Array(p_p1_seg31_,p_p1_seg31_vr)
glf_lightMaps.Add "p1_seg31", glf_p1_seg31_lmarr
Dim glf_p1_seg30_lmarr : glf_p1_seg30_lmarr = Array(p_p1_seg30_,p_p1_seg30_vr)
glf_lightMaps.Add "p1_seg30", glf_p1_seg30_lmarr
Dim glf_p1_seg29_lmarr : glf_p1_seg29_lmarr = Array(p_p1_seg29_,p_p1_seg29_vr)
glf_lightMaps.Add "p1_seg29", glf_p1_seg29_lmarr
Dim glf_p1_seg28_lmarr : glf_p1_seg28_lmarr = Array(p_p1_seg28_,p_p1_seg28_vr)
glf_lightMaps.Add "p1_seg28", glf_p1_seg28_lmarr
Dim glf_p1_seg27_lmarr : glf_p1_seg27_lmarr = Array(p_p1_seg27_,p_p1_seg27_vr)
glf_lightMaps.Add "p1_seg27", glf_p1_seg27_lmarr
Dim glf_p1_seg26_lmarr : glf_p1_seg26_lmarr = Array(p_p1_seg26_,p_p1_seg26_vr)
glf_lightMaps.Add "p1_seg26", glf_p1_seg26_lmarr
Dim glf_p1_seg25_lmarr : glf_p1_seg25_lmarr = Array(p_p1_seg25_,p_p1_seg25_vr)
glf_lightMaps.Add "p1_seg25", glf_p1_seg25_lmarr
Dim glf_p1_seg24_lmarr : glf_p1_seg24_lmarr = Array(p_p1_seg24_,p_p1_seg24_vr)
glf_lightMaps.Add "p1_seg24", glf_p1_seg24_lmarr
Dim glf_p1_seg23_lmarr : glf_p1_seg23_lmarr = Array(p_p1_seg23_,p_p1_seg23_vr)
glf_lightMaps.Add "p1_seg23", glf_p1_seg23_lmarr
Dim glf_p1_seg22_lmarr : glf_p1_seg22_lmarr = Array(p_p1_seg22_,p_p1_seg22_vr)
glf_lightMaps.Add "p1_seg22", glf_p1_seg22_lmarr
Dim glf_p1_seg21_lmarr : glf_p1_seg21_lmarr = Array(p_p1_seg21_,p_p1_seg21_vr)
glf_lightMaps.Add "p1_seg21", glf_p1_seg21_lmarr
Dim glf_p1_seg20_lmarr : glf_p1_seg20_lmarr = Array(p_p1_seg20_,p_p1_seg20_vr)
glf_lightMaps.Add "p1_seg20", glf_p1_seg20_lmarr
Dim glf_p1_seg19_lmarr : glf_p1_seg19_lmarr = Array(p_p1_seg19_,p_p1_seg19_vr)
glf_lightMaps.Add "p1_seg19", glf_p1_seg19_lmarr
Dim glf_p1_seg18_lmarr : glf_p1_seg18_lmarr = Array(p_p1_seg18_,p_p1_seg18_vr)
glf_lightMaps.Add "p1_seg18", glf_p1_seg18_lmarr
Dim glf_p1_seg17_lmarr : glf_p1_seg17_lmarr = Array(p_p1_seg17_,p_p1_seg17_vr)
glf_lightMaps.Add "p1_seg17", glf_p1_seg17_lmarr
Dim glf_p1_seg16_lmarr : glf_p1_seg16_lmarr = Array(p_p1_seg16_,p_p1_seg16_vr)
glf_lightMaps.Add "p1_seg16", glf_p1_seg16_lmarr
Dim glf_p1_seg15_lmarr : glf_p1_seg15_lmarr = Array(p_p1_seg15_,p_p1_seg15_vr)
glf_lightMaps.Add "p1_seg15", glf_p1_seg15_lmarr
Dim glf_p1_seg14_lmarr : glf_p1_seg14_lmarr = Array(p_p1_seg14_,p_p1_seg14_vr)
glf_lightMaps.Add "p1_seg14", glf_p1_seg14_lmarr
Dim glf_p1_seg13_lmarr : glf_p1_seg13_lmarr = Array(p_p1_seg13_,p_p1_seg13_vr)
glf_lightMaps.Add "p1_seg13", glf_p1_seg13_lmarr
Dim glf_p1_seg12_lmarr : glf_p1_seg12_lmarr = Array(p_p1_seg12_,p_p1_seg12_vr)
glf_lightMaps.Add "p1_seg12", glf_p1_seg12_lmarr
Dim glf_p1_seg11_lmarr : glf_p1_seg11_lmarr = Array(p_p1_seg11_,p_p1_seg11_vr)
glf_lightMaps.Add "p1_seg11", glf_p1_seg11_lmarr
Dim glf_p1_seg10_lmarr : glf_p1_seg10_lmarr = Array(p_p1_seg10_,p_p1_seg10_vr)
glf_lightMaps.Add "p1_seg10", glf_p1_seg10_lmarr
Dim glf_p1_seg9_lmarr : glf_p1_seg9_lmarr = Array(p_p1_seg9_,p_p1_seg9_vr)
glf_lightMaps.Add "p1_seg9", glf_p1_seg9_lmarr
Dim glf_p1_seg8_lmarr : glf_p1_seg8_lmarr = Array(p_p1_seg8_,p_p1_seg8_vr)
glf_lightMaps.Add "p1_seg8", glf_p1_seg8_lmarr
Dim glf_p1_seg7_lmarr : glf_p1_seg7_lmarr = Array(p_p1_seg7_,p_p1_seg7_vr)
glf_lightMaps.Add "p1_seg7", glf_p1_seg7_lmarr
Dim glf_p1_seg6_lmarr : glf_p1_seg6_lmarr = Array(p_p1_seg6_,p_p1_seg6_vr)
glf_lightMaps.Add "p1_seg6", glf_p1_seg6_lmarr
Dim glf_p1_seg5_lmarr : glf_p1_seg5_lmarr = Array(p_p1_seg5_,p_p1_seg5_vr)
glf_lightMaps.Add "p1_seg5", glf_p1_seg5_lmarr
Dim glf_p1_seg4_lmarr : glf_p1_seg4_lmarr = Array(p_p1_seg4_,p_p1_seg4_vr)
glf_lightMaps.Add "p1_seg4", glf_p1_seg4_lmarr
Dim glf_p1_seg3_lmarr : glf_p1_seg3_lmarr = Array(p_p1_seg3_,p_p1_seg3_vr)
glf_lightMaps.Add "p1_seg3", glf_p1_seg3_lmarr
Dim glf_p1_seg2_lmarr : glf_p1_seg2_lmarr = Array(p_p1_seg2_,p_p1_seg2_vr)
glf_lightMaps.Add "p1_seg2", glf_p1_seg2_lmarr
Dim glf_p1_seg1_lmarr : glf_p1_seg1_lmarr = Array(p_p1_seg1_,p_p1_seg1_vr)
glf_lightMaps.Add "p1_seg1", glf_p1_seg1_lmarr
Dim glf_pf_seg30_lmarr : glf_pf_seg30_lmarr = Array(p_pf_seg30_)
glf_lightMaps.Add "pf_seg30", glf_pf_seg30_lmarr
Dim glf_pf_seg29_lmarr : glf_pf_seg29_lmarr = Array(p_pf_seg29_)
glf_lightMaps.Add "pf_seg29", glf_pf_seg29_lmarr
Dim glf_pf_seg28_lmarr : glf_pf_seg28_lmarr = Array(p_pf_seg28_)
glf_lightMaps.Add "pf_seg28", glf_pf_seg28_lmarr
Dim glf_pf_seg27_lmarr : glf_pf_seg27_lmarr = Array(p_pf_seg27_)
glf_lightMaps.Add "pf_seg27", glf_pf_seg27_lmarr
Dim glf_pf_seg26_lmarr : glf_pf_seg26_lmarr = Array(p_pf_seg26_)
glf_lightMaps.Add "pf_seg26", glf_pf_seg26_lmarr
Dim glf_pf_seg25_lmarr : glf_pf_seg25_lmarr = Array(p_pf_seg25_)
glf_lightMaps.Add "pf_seg25", glf_pf_seg25_lmarr
Dim glf_pf_seg24_lmarr : glf_pf_seg24_lmarr = Array(p_pf_seg24_)
glf_lightMaps.Add "pf_seg24", glf_pf_seg24_lmarr
Dim glf_pf_seg23_lmarr : glf_pf_seg23_lmarr = Array(p_pf_seg23_)
glf_lightMaps.Add "pf_seg23", glf_pf_seg23_lmarr
Dim glf_pf_seg22_lmarr : glf_pf_seg22_lmarr = Array(p_pf_seg22_)
glf_lightMaps.Add "pf_seg22", glf_pf_seg22_lmarr
Dim glf_pf_seg21_lmarr : glf_pf_seg21_lmarr = Array(p_pf_seg21_)
glf_lightMaps.Add "pf_seg21", glf_pf_seg21_lmarr
Dim glf_pf_seg20_lmarr : glf_pf_seg20_lmarr = Array(p_pf_seg20_)
glf_lightMaps.Add "pf_seg20", glf_pf_seg20_lmarr
Dim glf_pf_seg19_lmarr : glf_pf_seg19_lmarr = Array(p_pf_seg19_)
glf_lightMaps.Add "pf_seg19", glf_pf_seg19_lmarr
Dim glf_pf_seg18_lmarr : glf_pf_seg18_lmarr = Array(p_pf_seg18_)
glf_lightMaps.Add "pf_seg18", glf_pf_seg18_lmarr
Dim glf_pf_seg17_lmarr : glf_pf_seg17_lmarr = Array(p_pf_seg17_)
glf_lightMaps.Add "pf_seg17", glf_pf_seg17_lmarr
Dim glf_pf_seg16_lmarr : glf_pf_seg16_lmarr = Array(p_pf_seg16_)
glf_lightMaps.Add "pf_seg16", glf_pf_seg16_lmarr
Dim glf_pf_seg15_lmarr : glf_pf_seg15_lmarr = Array(p_pf_seg15_)
glf_lightMaps.Add "pf_seg15", glf_pf_seg15_lmarr
Dim glf_pf_seg14_lmarr : glf_pf_seg14_lmarr = Array(p_pf_seg14_)
glf_lightMaps.Add "pf_seg14", glf_pf_seg14_lmarr
Dim glf_pf_seg13_lmarr : glf_pf_seg13_lmarr = Array(p_pf_seg13_)
glf_lightMaps.Add "pf_seg13", glf_pf_seg13_lmarr
Dim glf_pf_seg12_lmarr : glf_pf_seg12_lmarr = Array(p_pf_seg12_)
glf_lightMaps.Add "pf_seg12", glf_pf_seg12_lmarr
Dim glf_pf_seg11_lmarr : glf_pf_seg11_lmarr = Array(p_pf_seg11_)
glf_lightMaps.Add "pf_seg11", glf_pf_seg11_lmarr
Dim glf_pf_seg10_lmarr : glf_pf_seg10_lmarr = Array(p_pf_seg10_)
glf_lightMaps.Add "pf_seg10", glf_pf_seg10_lmarr
Dim glf_pf_seg9_lmarr : glf_pf_seg9_lmarr = Array(p_pf_seg9_)
glf_lightMaps.Add "pf_seg9", glf_pf_seg9_lmarr
Dim glf_pf_seg8_lmarr : glf_pf_seg8_lmarr = Array(p_pf_seg8_)
glf_lightMaps.Add "pf_seg8", glf_pf_seg8_lmarr
Dim glf_pf_seg7_lmarr : glf_pf_seg7_lmarr = Array(p_pf_seg7_)
glf_lightMaps.Add "pf_seg7", glf_pf_seg7_lmarr
Dim glf_pf_seg6_lmarr : glf_pf_seg6_lmarr = Array(p_pf_seg6_)
glf_lightMaps.Add "pf_seg6", glf_pf_seg6_lmarr
Dim glf_pf_seg5_lmarr : glf_pf_seg5_lmarr = Array(p_pf_seg5_)
glf_lightMaps.Add "pf_seg5", glf_pf_seg5_lmarr
Dim glf_pf_seg4_lmarr : glf_pf_seg4_lmarr = Array(p_pf_seg4_)
glf_lightMaps.Add "pf_seg4", glf_pf_seg4_lmarr
Dim glf_pf_seg3_lmarr : glf_pf_seg3_lmarr = Array(p_pf_seg3_)
glf_lightMaps.Add "pf_seg3", glf_pf_seg3_lmarr
Dim glf_pf_seg2_lmarr : glf_pf_seg2_lmarr = Array(p_pf_seg2_)
glf_lightMaps.Add "pf_seg2", glf_pf_seg2_lmarr
Dim glf_pf_seg1_lmarr : glf_pf_seg1_lmarr = Array(p_pf_seg1_)
glf_lightMaps.Add "pf_seg1", glf_pf_seg1_lmarr
Dim glf_LBG08_lmarr : glf_LBG08_lmarr = Array(f_lbg08_)
glf_lightMaps.Add "LBG08", glf_LBG08_lmarr
Dim glf_LBG16_lmarr : glf_LBG16_lmarr = Array(f_lbg16_)
glf_lightMaps.Add "LBG16", glf_LBG16_lmarr
Dim glf_LBG15_lmarr : glf_LBG15_lmarr = Array(f_lbg15_)
glf_lightMaps.Add "LBG15", glf_LBG15_lmarr
Dim glf_LBG14_lmarr : glf_LBG14_lmarr = Array(f_lbg14_)
glf_lightMaps.Add "LBG14", glf_LBG14_lmarr
Dim glf_LBG13_lmarr : glf_LBG13_lmarr = Array(f_lbg13_)
glf_lightMaps.Add "LBG13", glf_LBG13_lmarr
Dim glf_LBG12_lmarr : glf_LBG12_lmarr = Array(f_lbg12_)
glf_lightMaps.Add "LBG12", glf_LBG12_lmarr
Dim glf_LBG11_lmarr : glf_LBG11_lmarr = Array(f_lbg11_)
glf_lightMaps.Add "LBG11", glf_LBG11_lmarr
Dim glf_LBG10_lmarr : glf_LBG10_lmarr = Array(f_lbg10_)
glf_lightMaps.Add "LBG10", glf_LBG10_lmarr
Dim glf_LBG09_lmarr : glf_LBG09_lmarr = Array(f_lbg09_)
glf_lightMaps.Add "LBG09", glf_LBG09_lmarr
Dim glf_LBG07_lmarr : glf_LBG07_lmarr = Array(f_lbg07_)
glf_lightMaps.Add "LBG07", glf_LBG07_lmarr
Dim glf_LBG06_lmarr : glf_LBG06_lmarr = Array(f_lbg06_)
glf_lightMaps.Add "LBG06", glf_LBG06_lmarr
Dim glf_LBG05_lmarr : glf_LBG05_lmarr = Array(f_lbg05_)
glf_lightMaps.Add "LBG05", glf_LBG05_lmarr
Dim glf_LBG04_lmarr : glf_LBG04_lmarr = Array(f_lbg04_)
glf_lightMaps.Add "LBG04", glf_LBG04_lmarr
Dim glf_LBG03_lmarr : glf_LBG03_lmarr = Array(f_lbg03_)
glf_lightMaps.Add "LBG03", glf_LBG03_lmarr
Dim glf_LBG02_lmarr : glf_LBG02_lmarr = Array(f_lbg02_a,f_lbg02_b,f_lbg02_c,f_lbg02_d)
glf_lightMaps.Add "LBG02", glf_LBG02_lmarr
Dim glf_LBG01_lmarr : glf_LBG01_lmarr = Array(f_lbg01_a,f_lbg01_b,f_lbg01_c,f_lbg01_d)
glf_lightMaps.Add "LBG01", glf_LBG01_lmarr
Dim glf_LL_lmarr : glf_LL_lmarr = Array(lm_l_ll_parts,lm_l_ll_playfield,lm_l_ll_underpf)
glf_lightMaps.Add "LL", glf_LL_lmarr

