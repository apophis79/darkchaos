' 
'  ______  _______  ______ _     _      _______ _     _ _______  _____  _______
'  |     \ |_____| |_____/ |____/       |       |_____| |_____| |     | |______
'  |_____/ |     | |    \_ |    \_      |_____  |     | |     | |_____| ______|
'
'
'                          An Original Game By
'                                APOPHIS
'                                 2025
'
' ------------------------------------------------------------------------------
'
' Defenders and Destroyers
'   * Apophis: Game design, modeling, and coding.
'   * Unsavory: Music and audio design. Art design support.
'   * Flux: Game logic framework. Coding support.

' Special Thanks
'   * Idigstuff: Ideation and music support.
'   * Niwak: Blender toolkit.
'   * VPW testers: Bug hunting and advice.
'
' ------------------------------------------------------------------------------
'
'
'
' ZTOC : File table of contents
' ------------------------------
' ZVLM : VLM  Arrays
' ZVAR : Table Variables
' ZINI : Table Initialization
' ZOPT : User Options
' ZKEY : Key Press Handling
' ZTIM : General Timers
' ZANI : Misc Animations
' ZAST : Asteroid Animation
' ZSHP : Ship Wobble Animations
' ZBBR : Ball Brightness
' ZSHD : Ball shadows
' ZDRT : Drop target 
' ZFLE : Fleep sounds
' ZFLP : Flippers
' ZMAT : General Math Functions
' ZMIS : Miscellaneous support function
' ZCOR : Flipper, slingshot, rubber and corrections
' ZROL : Ball rolling and ramp sounds
' ZRBR : Room Brightness
' ZSLN : Slingshots
' ZSOL : Other Solenoids
' ZSUT : Stand-up targets
' ZVRR : VR Room / VR Cabinet
' ZGCF : GLF Configurations
' ZGLF : Game Logic Framework (GLF)
'
'
'
'
' B2S Backglass IDs
' ------------
' E001 0/1 DARK  
' E002 0/1 CHAOS
' E003 0/1 Fire cluster bombs
' E004 0/1 Shields
' E005 0/1 Wave incoming
' E006 0/1 Ball
' E007 0/1 Fire moon missiles
' E008 0/1 Left ship
' E009 0/1 Right ship
' E010 0/1 Main window left
' E011 0/1 Right window bottom
' E012 0/1 Right window top
' E013 0/1 Left window
' E014 0/1 Right cockpit
' E015 0/1 Main window right
' E016 0/1 Left cockpit
'
'
' DOF IDs
' ------------
' E101 0/1 LeftFlipper
' E102 0/1 RightFlipper
' E103 2 Leftslingshot
' E104 2 Rightslingshot
' E105 2 side bumper
' E106 2 top bumper left 
' E107 2 top bumper center
' E108 2 top bumper right
' E109 2 scoop solenoid
' E110 2 plunger auto fire
' E111 2 diverter pin
' E112 2 lock pin
' E113 2 knocker





Option Explicit
Randomize

On Error Resume Next
ExecuteGlobal GetTextFile("controller.vbs")
If Err Then MsgBox "You need the controller.vbs in order to run this table, available in the vp10 package"
On Error Goto 0

Sub LoadCoreFiles
	On Error Resume Next
	ExecuteGlobal GetTextFile("core.vbs")
	If Err Then MsgBox "Can't open core.vbs"
	On Error Goto 0
End Sub
