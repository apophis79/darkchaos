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
