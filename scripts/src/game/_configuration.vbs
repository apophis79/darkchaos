
'******************************************************
'	ZGCF:  GLF Configurations
'******************************************************

' Light color settings
Const GIColorWhite = "ffffff"
Const GIColor2700k = "ffA957"
Const GIColor3000k = "ffb46b"

Const TimewarpColor = "ccccdd"
Const ShipSaveColor = "0500ee"
Const ShieldsColor = "0010cc"
Const ProtonColor = "00dddd"
Const MysteryColor = "aa33aa"
Const MoonColor = "ccbb00"
Const ClusterBombColor = "dd00dd"
Const CombosColor = "ffb46b"
Const TrainingColor = "ff4c00"
Const HealthColor1 = "00dd00"
Const HealthColor2 = "d14c00"
Const HealthColor3 = "ff0300"
Const SkillshotColor = "33dd33"
Const AlienColor = "ff0300"
Const AlienFlashColor = "ffb2a6"
Const DoubleScoringColor = "ff3300"

Const MeteorCoolColor = "ffA957"
Const MeteorWarmColor = "edb600"
Const MeteorHotColor = "ed1800"
Const MeteorWaveColor = "dd0400"
Const MeteorFlashColor = "ffe7a6"

Const EarthHitColor = "ff0909"
Const EarthHitColor2 = "880303"

Const SegmentsColor = "ff0000"

Const SlingDomePowerUpBrightness = 100  '0 to 100

Dim RainbowColors
RainbowColors = Array(MeteorWaveColor,TrainingColor,MoonColor,HealthColor1,ProtonColor,ShieldsColor,ClusterBombColor,TimewarpColor)

' Playfield display light names
Dim PFDisplayLightNames
PFDisplayLightNames = Array("pf_seg1", "pf_seg2", "pf_seg3", "pf_seg4", "pf_seg5", "pf_seg6", "pf_seg7", "pf_seg8", "pf_seg9", "pf_seg10","pf_seg11","pf_seg12","pf_seg13","pf_seg14","pf_seg15", _
                            "pf_seg16","pf_seg17","pf_seg18","pf_seg19","pf_seg20","pf_seg21","pf_seg22","pf_seg23","pf_seg24","pf_seg25","pf_seg26","pf_seg27","pf_seg28","pf_seg29","pf_seg30")

' Array of main shots and associated light names (used for combos and training modes)
Dim MainShotNames, MainShotLightNames
MainShotNames = Array("left_side_up","left_orbit","left_ramp","inner_orbit","center_orbit_left","center_orbit_right","right_ramp","right_orbit")
MainShotLightNames = Array("LS1","LS2","LS3","LS4","LPC4","LPC5","LS5","LS6")

' Array of rollover shots and associated light names
Dim RolloverSwitches, RolloverLightNames
RolloverSwitches = Array("s_LeftBumper1","s_LeftBumper2","s_CenterOrb1","s_CenterOrb2","s_CenterOrb3")
RolloverLightNames = Array("LSwL1","LSwL2","LSwC1","LSwC2","LSwC3")

' Array of training selection shots and associated info
Const TrainingTicks = 69  'uses 1000 ms interval
Dim TrainingSelectionNames, TrainingSelectionLightNames, TrainingColors
TrainingSelectionNames = Array("heal","cluster_bomb","proton_cannon","moon_missile","ship_save","shields","skip")
TrainingSelectionLightNames = Array("tHeal","tClusterAll","tProtonAll","tMoonAll","tSaver","tShields","gi22")
TrainingColors = Array(HealthColor1,ClusterBombColor,ProtonColor,MoonColor,ShipSaveColor,ShieldsColor,GIColorWhite)

' Meteor wave qualify settings
Const MeteorWaveDelayTicks = 45  'uses 1000 ms interval

' Meteor wave settings
Const MeteorTimerInitTickInterval = 500
Const MeteorTimerTickInterval = 1000
Const MeteorDropTicks = 2
Const MeteorCoolTicks = 4
Const MeteorWarmTicks = 4
Const MeteorHotTicks = 4

Dim MeteorTotalTicks
MeteorTotalTicks = MeteorDropTicks + MeteorCoolTicks + MeteorWarmTicks + MeteorHotTicks

' Meteor wave multiball settings
Const MeteorMBShootAgainTime = 6000


' Array of rollover shots and associated light names
Dim MoonQualifySwitches, MoonQualifyLightNames
MoonQualifySwitches = Array("s_LeftOutlane","s_LeftInlane","s_RightInlane","s_RightOutlane")
MoonQualifyLightNames = Array("LLO","LLI","LRI","LRO")

' Health settings
Const BumperHitsPerRepair = 9
Const BumperHitsPerRepairTrain = 3

' Ship save settings (more shoot again time)
Const ShipSaveShootAgainTime = 15000

' Timewarp settings
Const TimeWarpPauseTicks = 10
Const TimeWarpTickInterval = 1000

' Combos settings
Const CombosTickInterval = 1000
Const CombosTickLimit = 7
Const CombosTickLimitRelaxed = 11

Const CombosDecayTickInterval = 200
Const CombosDecayTickLimit = 4
Const CombosDecayTickLimitRelaxed = 7

' Skillshots settings
Const SkillshotsTickInterval = 1000
Const SkillshotsTickLimit = 5

' Alien Attack settings
Const AlienTickInterval = 3800

' Mystery settings
Const MysteryShowLength = 4000

' Extra Ball settings
Const EBShowLength = 4000

' Double Scoring settings
Const DoubleScoringShowLength = 5000
Const DoubleScoringTickInterval = 1000
Const DoubleScoringMaxTicks = 60

' Super Spinner Scoring settings
Const SuperSpinnerShowLength = 5000
Const SuperSpinnerTickInterval = 1000
Const SuperSpinnerMaxTicks = 60

' Super Pops Scoring settings
Const SuperPopsShowLength = 5000
Const SuperPopsTickInterval = 1000
Const SuperPopsMaxTicks = 60

' Fully Loaded Wizard settings
Const FLWizMessageInterval = 3000

' Combo Command Wizard settings
Const CCWizMessageInterval = 3000

' Final Wave Wizard settings
Const FWWizMessageInterval = 3000
Const FWWizStartMeteorsInterval = 30000
Const FWWizBallSaveTime = 60000
Const FWWizMaxAsteroidHits = 20

' Victory Lap settings
Const VictoryLapTime = 45 'seconds

' Bonus settings
Const BonusTimerTickInterval = 333
Const BonusrWaveMultiplier = 50000
Const BonusPerTraining = 250000
Const BonusPerClusterBomb = 250000
Const BonusPerMoonMissile = 250000
Const BonusPerProtonRound = 50000



Sub ConfigureGlfDevices

    ' Load up the shows
    CreateGeneralShows()
    CreateGIShows()
    CreateInsertShows()
    CreateAttractShows()
    CreateLeftSlingShows()
    CreateRightSlingShows()
    CreateMeteorWaveShows()
    CreateEarthHitShows()
    CreateClusterBombShows()
    CreateShieldShows()
    CreateTimeWarpShows()
    CreateSkillshotShows()
    CreateMoonShows()
    CreateShipSaverBombShows()
    CreateMysteryShows()
    CreateExtraBallShows()
    CreateComboCommandShows()
    CreateFullyLoadedShows()
    CreateFinalWaveWizardShows()
    CreatePostGameShows()

    ' Sound effects bus
    CreateSounds()
   
    With CreateGlfSoundBus("sfx")
        .SimultaneousSounds = 8
        .Volume = 0.5
    End With

    With CreateGlfSoundBus("voc")
        .SimultaneousSounds = 2
        .Volume = 1
    End With

    With CreateGlfSoundBus("mus")
        .SimultaneousSounds = 4
        .Volume = 0.8
    End With

    With EnableGlfHighScores()
        With .Categories()
            .Add "score", Array("GRAND CHAMPION", "HIGH SCORE 1", "HIGH SCORE 2", "HIGH SCORE 3") 
        End With
        With .Defaults("score")
            .Add "DAN", 9000000
            .Add "MPC", 7000000
            .Add "AVE", 5000000
            .Add "DIG", 3000000
        End With
        .EnterInitialsTimeout = 65000
    End With


    ' Ball search
    With EnableGlfBallSearch()
        .Timeout = 15000
        .SearchInterval = 300
        .BallSearchWaitAfterIteration = 5000
        .Debug = True
    End With


    ' Plunger
    With CreateGlfBallDevice("plunger")
        .BallSwitches = Array("s_Plunger1")
        .EjectTimeout = 10
        .MechanicalEject = True
        .DefaultDevice = True
        .EjectAllEvents = Array("plunger_eject")
		.EjectCallback = "PlungerEjectCallback"
    End With


    ' Scoop
    With CreateGlfBallDevice("scoop")
        .BallSwitches = Array("s_Scoop")
        .EjectTimeout = 2000
        .MechanicalEject = True
		.EjectCallback = "ScoopEjectCallback"
    End With


    ' Moon Lock
    With CreateGlfBallDevice("moon_lock")
        .BallSwitches = Array("s_Lock1","s_Lock2", "s_Lock3")
    End With

    With CreateGlfDiverter("lock_pin")
        .EnableEvents = Array(GLF_BALL_STARTED)
        .ActivateEvents = Array("release_moon_ball", "multiball_moon_started")
        .DeactivateEvents = Array("raise_lock_pin")
        '.ActivationTime = "230 if devices.ball_devices.moon_lock.balls > 0 else 2000"
        .ActivationTime = "3000"
        .ActionCallback = "DropLockPin"
        .ExcludeFromBallSearch = True
    End With

    With CreateGlfDiverter("lock_pin_game_over")
        .EnableEvents = Array(GLF_GAME_STARTED)
        .ActivateEvents = Array("game_ended{devices.ball_devices.moon_lock.balls > 0}")
        .ActivationTime = "3000"
        .ActionCallback = "DropLockPin"
        .ExcludeFromBallSearch = True
    End With


    ' Diverter above pop bumpers
    With CreateGlfDiverter("divert_pin")
        .EnableEvents = Array("reset_complete","enable_diverter",GLF_BALL_STARTED)
        .ActivateEvents = Array("raise_diverter") '"start_meteor_wave","start_training_heal"
        .DeactivateEvents = Array("drop_diverter",GLF_BALL_ENDED) '"stop_meteor_wave","stop_training"
        .ActionCallback = "RaiseDiverterPin"
    End With


    ' Asteroid motor
    With CreateGlfDiverter("asteroid_motor")
        .EnableEvents = Array("reset_complete","enable_asteroid_motor")
        .ActivateEvents = Array("run_asteroid_motor") '"start_meteor_wave","start_training_heal"
        .DeactivateEvents = Array("stop_asteroid_motor") '"stop_meteor_wave","stop_training"
        .ActionCallback = "SolSpinAsteroid"
    End With


    ' Flippers
    With CreateGlfFlipper("left")
        .Switch = "s_left_flipper"
        .ActionCallback = "LeftFlipperAction"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array(GLF_BALL_STARTED,"enable_flippers")
    End With

    With CreateGlfFlipper("right")
        .Switch = "s_right_flipper"
        .ActionCallback = "RightFlipperAction"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array(GLF_BALL_STARTED,"enable_flippers")
    End With

    With CreateGlfFlipper("upper_right")
        .Switch = "s_right_staged_flipper_key"
        .ActionCallback = "RightFlipper1Action"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array(GLF_BALL_STARTED,"enable_flippers")
    End With


    ' Slingshots
    With CreateGlfAutoFireDevice("left_sling")
        .Switch = "s_LeftSlingshot"
        .ActionCallback = "LeftSlingshotAction"
        .DisabledCallback = "LeftSlingshotDisabled"
        .EnabledCallback = "LeftSlingshotEnabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array(GLF_BALL_STARTED,"enable_flippers")
    End With

    With CreateGlfAutoFireDevice("right_sling")
        .Switch = "s_RightSlingshot"
        .ActionCallback = "RightSlingshotAction"
        .DisabledCallback = "RightSlingshotDisabled"
        .EnabledCallback = "RightSlingshotEnabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array(GLF_BALL_STARTED,"enable_flippers")
    End With


    ' Bumpers
    With CreateGlfAutoFireDevice("bumper1")
        .Switch = "s_Bumper1"
        .ActionCallback = "Bumper1Action"
        .DisabledCallback = "Bumper1Disabled"
        .EnabledCallback = "Bumper1Enabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array(GLF_BALL_STARTED,"enable_flippers")
    End With

    With CreateGlfAutoFireDevice("bumper2")
        .Switch = "s_Bumper2"
        .ActionCallback = "Bumper2Action"
        .DisabledCallback = "Bumper2Disabled"
        .EnabledCallback = "Bumper2Enabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array(GLF_BALL_STARTED,"enable_flippers")
    End With

    With CreateGlfAutoFireDevice("bumper3")
        .Switch = "s_Bumper3"
        .ActionCallback = "Bumper3Action"
        .DisabledCallback = "Bumper3Disabled"
        .EnabledCallback = "Bumper3Enabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array(GLF_BALL_STARTED,"enable_flippers")
    End With

    With CreateGlfAutoFireDevice("bumper4")
        .Switch = "s_Bumper4"
        .ActionCallback = "Bumper4Action"
        .DisabledCallback = "Bumper4Disabled"
        .EnabledCallback = "Bumper4Enabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array(GLF_BALL_STARTED,"enable_flippers")
    End With


    ' Magnet
    With CreateGlfMagnet("mag1")
        .GrabSwitch = "s_TargetMystery5"
        .ReleaseBallEvents = Array("magnet_mag1_grabbed_ball")
        .GrabTime = 1000
        .ActionCallback = "GrabMagnetAction"
    End With


    ' Drop Targets
    With CreateGlfDroptarget("drop1")
        .Switch = "s_DTMeteor1"
        .KnockdownEvents = Array("meteor1_knockdown",GLF_GAME_START)
        .ResetEvents = Array("meteor1_raise")
        .ActionCallback = "DTMeteor1Callback"
        .ExcludeFromBallSearch = True
    End With

    With CreateGlfDroptarget("drop2")
        .Switch = "s_DTMeteor2"
        .KnockdownEvents = Array("meteor2_knockdown",GLF_GAME_START)
        .ResetEvents = Array("meteor2_raise")
        .ActionCallback = "DTMeteor2Callback"
        .ExcludeFromBallSearch = True
    End With

    With CreateGlfDroptarget("drop3")
        .Switch = "s_DTMeteor3"
        .KnockdownEvents = Array("meteor3_knockdown",GLF_GAME_START)
        .ResetEvents = Array("meteor3_raise")
        .ActionCallback = "DTMeteor3Callback"
        .ExcludeFromBallSearch = True
    End With

    With CreateGlfDroptarget("drop4")
        .Switch = "s_DTMeteor4"
        .KnockdownEvents = Array("meteor4_knockdown",GLF_GAME_START)
        .ResetEvents = Array("meteor4_raise")
        .ActionCallback = "DTMeteor4Callback"
        .ExcludeFromBallSearch = True
    End With


    ' Alphanumeric displays

    Dim segment_display_pf
    Set segment_display_pf = (New GlfLightSegmentDisplay)("pf")

    segment_display_pf.SegmentType = "14Segment"
    segment_display_pf.SegmentSize = 2
    segment_display_pf.UpdateMethod = "stack"
    segment_display_pf.DefaultColor = SegmentsColor
    segment_display_pf.LightGroup = "pf_seg"

    Dim segment_display_ball
    Set segment_display_ball = (New GlfLightSegmentDisplay)("ball")

    segment_display_ball.SegmentType = "14Segment"
    segment_display_ball.SegmentSize = 2
    segment_display_ball.DefaultColor = SegmentsColor
    segment_display_ball.LightGroup = "ball_seg"

    Dim segment_display_p1
    Set segment_display_p1 = (New GlfLightSegmentDisplay)("player1")

    segment_display_p1.SegmentType = "14Segment"
    segment_display_p1.SegmentSize = 8
    segment_display_p1.LightGroup = "p1_seg"
    segment_display_p1.UpdateMethod = "stack"
    segment_display_p1.DefaultColor = SegmentsColor
    segment_display_p1.UseDotsForCommas = True
    segment_display_p1.ExternalFlexDmdSegmentIndex = 0

    Dim segment_display_p2
    Set segment_display_p2 = (New GlfLightSegmentDisplay)("player2")

    segment_display_p2.SegmentType = "14Segment"
    segment_display_p2.SegmentSize = 8
    segment_display_p2.LightGroup = "p2_seg"
    segment_display_p2.UpdateMethod = "stack"
    segment_display_p2.DefaultColor = SegmentsColor
    segment_display_p2.UseDotsForCommas = True
    segment_display_p2.ExternalFlexDmdSegmentIndex = 8

    Dim segment_display_p3
    Set segment_display_p3 = (New GlfLightSegmentDisplay)("player3")

    segment_display_p3.SegmentType = "14Segment"
    segment_display_p3.SegmentSize = 8
    segment_display_p3.LightGroup = "p3_seg"
    segment_display_p3.UpdateMethod = "stack"
    segment_display_p3.DefaultColor = SegmentsColor
    segment_display_p3.UseDotsForCommas = True
    segment_display_p3.ExternalFlexDmdSegmentIndex = 16

    Dim segment_display_p4
    Set segment_display_p4 = (New GlfLightSegmentDisplay)("player4")

    segment_display_p4.SegmentType = "14Segment"
    segment_display_p4.SegmentSize = 8
    segment_display_p4.LightGroup = "p4_seg"
    segment_display_p4.UpdateMethod = "stack"
    segment_display_p4.DefaultColor = SegmentsColor
    segment_display_p4.UseDotsForCommas = True
    segment_display_p4.ExternalFlexDmdSegmentIndex = 24

    Dim segment_display_all
    Set segment_display_all = (New GlfLightSegmentDisplay)("all")
    
    segment_display_all.SegmentType = "14Segment"
    segment_display_all.SegmentSize = 32
    segment_display_all.LightGroups = Array("p1_seg", "p2_seg", "p3_seg", "p4_seg")
    segment_display_all.UpdateMethod = "stack"
    segment_display_all.DefaultColor = SegmentsColor
    segment_display_all.UseDotsForCommas = True
    segment_display_all.DefaultTransitionUpdateHz = 10
    segment_display_all.ExternalFlexDmdSegmentIndex = 0

    Dim segment_display_p1p2
    Set segment_display_p1p2 = (New GlfLightSegmentDisplay)("p1p2")
    segment_display_p1p2.SegmentType = "14Segment"
    segment_display_p1p2.SegmentSize = 16
    segment_display_p1p2.LightGroups = Array("p1_seg", "p2_seg")
    segment_display_p1p2.UpdateMethod = "stack"
    segment_display_p1p2.DefaultColor = SegmentsColor
    segment_display_p1p2.UseDotsForCommas = True
    segment_display_p1p2.DefaultTransitionUpdateHz = 10
    segment_display_p1p2.ExternalFlexDmdSegmentIndex = 0

    ' Dim segment_display_p3p4
    ' Set segment_display_p3p4 = (New GlfLightSegmentDisplay)("p3p4")
    ' segment_display_p3p4.SegmentType = "14Segment"
    ' segment_display_p3p4.SegmentSize = 16
    ' segment_display_p3p4.LightGroups = Array("p3_seg", "p4_seg")
    ' segment_display_p3p4.UpdateMethod = "stack"
    ' segment_display_p3p4.DefaultColor = SegmentsColor
    ' segment_display_p3p4.UseDotsForCommas = True
    ' segment_display_p3p4.DefaultTransitionUpdateHz = 10
    ' segment_display_p3p4.ExternalFlexDmdSegmentIndex = 0


    ' Trough sound effects
    AddPinEventListener "trough_eject",  "on_trough_eject",  "OnTroughEject", 2000, Null
    AddPinEventListener GLF_BALL_DRAIN, "ball_drain_sound", "BallDrainSound", 100, Null

    
    ' Machine variables
    With CreateMachineVar("high_score_initials")
        .InitialValue = ""
        .ValueType = "string"
        .Persist = False
    End With
    With CreateMachineVar("high_score_initials_index")
        .InitialValue = 0
        .ValueType = "int"
        .Persist = False
    End With
    With CreateMachineVar("high_score_initials_chars")
        .InitialValue = 0
        .ValueType = "int"
        .Persist = False
    End With
    
    With CreateMachineVar("won_game")
        .InitialValue = 0
        .ValueType = "int"
        .Persist = True
    End With
    With CreateMachineVar("message_num")
        .InitialValue = 0
        .ValueType = "int"
        .Persist = True
    End With


    ' Initial Vars
    Glf_SetInitialPlayerVar "flag_ss", 0
    Glf_SetInitialPlayerVar "flag_sss_mystery", 0
    Glf_SetInitialPlayerVar "ball_just_started", 1
    Glf_SetInitialPlayerVar "meteor_wave_running", 0
    Glf_SetInitialPlayerVar "meteor_countdown_value", MeteorWaveDelayTicks
    Glf_SetInitialPlayerVar "meteor_mb_shootagain_time", MeteorMBShootAgainTime
    Glf_SetInitialPlayerVar "num_training_shots", 2
    Glf_SetInitialPlayerVar "num_waves_completed", 0
    Glf_SetInitialPlayerVar "num_waves_completed_this_ball", 0
    Glf_SetInitialPlayerVar "num_training_shots_hit", 2
    Glf_SetInitialPlayerVar "meteors_per_wave", 7
    Glf_SetInitialPlayerVar "disable_moon_launch", 0
    ' Glf_SetInitialPlayerVar "s_Lock1_on", 0
    ' Glf_SetInitialPlayerVar "s_Lock2_on", 0
    ' Glf_SetInitialPlayerVar "s_Lock3_on", 0
    Glf_SetInitialPlayerVar "warping", 0
    Glf_SetInitialPlayerVar "light_the_eb", 0
    Glf_SetInitialPlayerVar "alien_tick_count", -1
    Glf_SetInitialPlayerVar "alien_attack_dir", 0
    Glf_SetInitialPlayerVar "alien_attack_done", 0
    Glf_SetInitialPlayerVar "alien_grace_time", 0
    Glf_SetInitialPlayerVar "scoring_multiplier", 1
    Glf_SetInitialPlayerVar "pop_multiplier", 1
    Glf_SetInitialPlayerVar "spin_multiplier", 1
    Glf_SetInitialPlayerVar "bonus_multiplier", 1
    Glf_SetInitialPlayerVar "combo_ticks", CombosTickLimit
    Glf_SetInitialPlayerVar "combo_decay_ticks", CombosDecayTickLimit
    Glf_SetInitialPlayerVar "training_just_finished", 0
    Glf_SetInitialPlayerVar "training_heal_achieved", 0
    Glf_SetInitialPlayerVar "training_cluster_bomb_achieved", 0
    Glf_SetInitialPlayerVar "training_proton_cannon_achieved", 0
    Glf_SetInitialPlayerVar "training_moon_missile_achieved", 0
    Glf_SetInitialPlayerVar "training_ship_save_achieved", 0
    Glf_SetInitialPlayerVar "training_shields_achieved", 0
    Glf_SetInitialPlayerVar "training_total_achieved", 0
    Glf_SetInitialPlayerVar "wizard_mode_is_ready", 0
    Glf_SetInitialPlayerVar "wizard_combo_command_phase", 0
    Glf_SetInitialPlayerVar "wizard_fully_loaded_phase", 0
    Glf_SetInitialPlayerVar "fwwiz_add_ball_ready", 0
    Glf_SetInitialPlayerVar "ccwiz_super_jp", 0
    Glf_SetInitialPlayerVar "flwiz_super_jp", 0
    Glf_SetInitialPlayerVar "wizard_final_hit_count", FWWizMaxAsteroidHits
    Glf_SetInitialPlayerVar "victory", 0
    Glf_SetInitialPlayerVar "bonus_waves", 0
    Glf_SetInitialPlayerVar "bonus_training", 0
    Glf_SetInitialPlayerVar "bonus_bombs", 0
    Glf_SetInitialPlayerVar "bonus_missiles", 0
    Glf_SetInitialPlayerVar "bonus_protons", 0
    Glf_SetInitialPlayerVar "bonus_total", 0
    Glf_SetInitialPlayerVar "flippers_are_dead", 0
    Glf_SetInitialPlayerVar "hs_input_ready", 1



    'Shot Profiles
    CreateSharedShotProfiles

    ' Modes                         Priority        Active during waves
    '-------                        --------        -------------------
    CreateBasementMode              ' 100           Active all the time
    CreateAttractMode               ' 120           No
    CreateBonusMode                 ' 150           No
    CreatePostGameMode              ' 180           No
    CreateScoreMode                 ' 2000          Always active during a game
    CreateHighScoreMode             ' 120

    CreateBaseMode                  ' 200           No
    CreateSkillshotsMode            ' 500           No
    CreateAlienAttackMode           ' 500           No
    CreateShieldsMode               ' 510           No
    CreateShipSaveMode              ' 520           No
    CreateCombosMode                ' 530           No
    CreateTimewarpMode              ' 550           No
    CreateExtraBallMode             ' 560           No
    CreateMysteryMode               ' 580           No
    CreateMoonMultiballQualifyMode  ' 590           No
    CreateMoonMultiballMode         ' 600           Yes
    CreateDoubleScoringMode         ' 700           Yes
    CreateSuperSpinnerMode          ' 700           Yes
    CreateSuperPopsMode             ' 700           Yes
    CreateHealthMode                ' 800           Yes
    CreateProtonCannonMode          ' 900           Yes
    CreateClusterBombMode           ' 1000          Yes

    CreateTrainingQualifyMode       ' 513           No
    CreateTrainingSelectMode        ' 600           No
    CreateTrainingHealMode          ' 700           No
    CreateTrainingClusterBombMode   ' 700           No
    CreateTrainingProtonCannonMode  ' 700           No
    CreateTrainingMoonMissileMode   ' 700           No
    CreateTrainingShipSaveMode      ' 700           No
    CreateTrainingShieldsMode       ' 700           No

    CreateMeteorWaveQualifyMode     ' 1100          No
    CreateMeteorWaveMode            ' 1000          Yes
    CreateMeteorMultiballMode       ' 1000          Yes

    CreateFullyLoadedWizardMode     ' 2000          No
    CreateComboCommandWizardMode    ' 3000          No
    CreateFinalWaveWizardMode       ' 4000          No
    CreateVictoryLapMode            ' 9999          No

    CreateTiltMode                  ' 10000         Yes
    
End Sub


' Event callbacks
Function OnTroughEject(args)
	RandomSoundBallRelease swTrough1
	DOF 110, DOFPulse
End Function

Function BallDrainSound(args)
    RandomSoundDrain Drain 
    BallDrainSound = args(1)
End Function 



' Shared profiles
Public Sub CreateSharedShotProfiles()

    With GlfShotProfiles("off_on_color")
        With .States("unlit")
            .Show = "off"
            .Key = "key_off_a"
        End With
        With .States("on")
            .Show = "led_color"
            .Key = "key_on_a"
        End With
    End With

    With GlfShotProfiles("flicker_on_flicker_off")
        With .States("lit")
            .Show = "flicker_color_on"
            .Key = "key_off_z"
            .Speed = 3
        End With
        With .States("unlit")
            .Show = "flicker_color_off"
            .Speed = 3
            .Key = "key_on_z"
        End With
    End With

    With GlfShotProfiles("flicker_on")
        With .States("unlit")
            .Show = "off"
            .Key = "key_off_b"
        End With
        With .States("on")
            .Show = "flicker_color_on"
            .Key = "key_on_b"
            .Speed = 4
        End With
    End With

    With GlfShotProfiles("powerups")
        With .States("unlit")
            .Show = "off"
            .Key = "key_off_c"
        End With
        With .States("ready")
            .Show = "flash_color_with_fade"
            .Key = "key_ready_c"
            .Speed = 4
            With .Tokens()
                .Add "fade", 400
            End With
        End With
        With .States("collected")
            .Show = "led_color"
            .Key = "key_collected_c"
        End With
    End With

    With GlfShotProfiles("training_powerups")
        With .States("ready")
            .Show = "flash_color_with_fade"
            .Key = "key_ready_zc"
            .Speed = 12
            With .Tokens()
                .Add "fade", 100
            End With
        End With
        With .States("collected")
            .Show = "led_color"
            .Key = "key_collected_zc"
        End With
    End With

    With GlfShotProfiles("qualified_shot")
        With .States("unlit")
            .Show = "off"
            .Key = "key_off_d"
        End With
        With .States("ready")
            .Show = "flash_color_with_fade"
            .Key = "key_on_d"
            .Speed = 2
            With .Tokens()
                .Add "fade", 100
            End With
        End With
    End With

    
    With GlfShotProfiles("shoot_again")
      With .States("unlit")
          .Show = "off"
          .Key = "key_off_e"
          .Priority = 5000
          With .Tokens()
              .Add "lights", "LSA"
          End With
      End With
      With .States("flashing")
          .Show = "flash_color_with_fade"
          .Key = "key_flashing_e"
          .Speed = 2
          .Priority = 5000
          With .Tokens()
              .Add "lights", "LSA"
              .Add "fade", 500
          End With
      End With
      With .States("hurry")
          .Show = "flash_color"
          .Key = "key_hurry_e"
          .Speed = 7
          .Priority = 5000
          With .Tokens()
              .Add "lights", "LSA"
          End With
      End With
    End With


    With GlfShotProfiles("health_shot_ready")
        With .States("unlit")
            .Key = "h_shot_not_ready"
            .Show = "off"
            With .Tokens()
                .Add "lights", "LDP"
            End With
        End With
        With .States("ready")
            .Key = "h_shot_is_ready"
            .Show = "flash_color_with_fade"
            .Speed = 2
            With .Tokens()
                .Add "fade", 500
                .Add "color", HealthColor1
                .Add "lights", "LDP"
            End With
        End With
    End With

    With GlfShotProfiles("extraball")
        With .States("unlit")
            .Show = "off"
            .Key = "key_eb_unlit"
            With .Tokens()
                .Add "lights", "LSA"
            End With
        End With
        With .States("lit")
            .Show = "led_color"
            .Key = "key_eb_lit"
            With .Tokens()
                .Add "lights", "LSA"
                .Add "color", ShipSaveColor
            End With
        End With
    End With


    With GlfShotProfiles("wizard_ready1")
        With .States("unlit")
            .Show = "off"
            .Key = "key_off_f"
        End With
        With .States("ready")
            .Show = "flash_color_with_fade"
            .Key = "key_ready_f"
            .Speed = 8
            With .Tokens()
                .Add "fade", 400
            End With
        End With
        With .States("collected")
            .Show = "led_color"
            .Key = "key_collected_f"
        End With
    End With
      

End Sub

