'
'
' ZTOC : File table of contents
' ------------------------------
' ZVLM : VLM  Arrays
' ZVAR : Table Variables
' ZPLA : Player intialization and game state
' ZTIM : General Timers
' ZQUE : Advanced queuing system
' ZMIS : Miscellaneous support function
' ZINI : Table Initialization
' ZOPT : User Options
' ZBBR : Ball Brightness
' ZRBR : Room Brightness
' ZDRA : Drain, Trough, and Ball Release, ballsave
' ZKEY : Key Press Handling
' ZTLT : Tilt
' ZATT : Attract mode
' ZLUT : LUT selection code
' ZSCO : Scoring
' ZHIG : Highscores
' ZFLP : Flippers
' ZBMP : Bumpers
' ZSLN : Slingshots
' ZSOL : Other Solenoids
' ZSWI : Switch hits and handling
' ZSPN : Spinners
' ZTAR : Targets
' ZGIL : GI Lights
' ZSHD : Dynamic ball shadows
' ZMAT : General Math Functions
' ZCOR : Flipper, slingshot, rubber and corrections
' ZDRT : Drop target 
' ZSUT : Stand-up targets
' ZROL : Ball rolling and ramp sounds
' ZFLE : Fleep sounds
' ZBLS : Blinking light system
' ZFLA : Flupper domes and bumpers
' ZVRR : VR Room / VR Cabinet
' ZCAL : Callouts Code
' ZSNG : Song Code
' ZLIF : Game Lifecycle
' ZGAM : Game code
' ZTAB : Table object code (THIS WILL GET EXPANDED AS WE ADD STUFF)
' ZANI : Misc Animations
' ZAST : Asteroid Animation
' ZSHP :  Ship Wobble Animations
' ZGCF :  GLF Configurations
' ZGLF :  Game Logic Framework (GLF)



' RULES:
'   https://www.dropbox.com/scl/fi/f42vrl8zeduq423sokh07/Dark-Chaos-Rules.paper?dl=0&rlkey=61a0q34fa0cozf0jkf97ih9q0


' Known Bugs
' - blink trail not working on health when health is low?
' - Perhaps make one mystery award that fully loads protons, and one that fully loads clusters




' TODO
' - FIXME's and TODO's
'
' - Proton Cannon			- DONE
' - Cluster Bomb			- DONE
' - Moon Based Missiles		- DONE
' - Defense Fortification	- DONE
' - Shields 				- DONE
' - Time Warp				- DONE
' - Repair					- DONE
' - Waves					- DONE
' - Training
' - Replenish Mode			
' - Wizard: Combo Command	- Combos implemented. Need to do wizard mode
' - Wizard: Fully Loaded	
' - Wizard: Earth Killer	
' - Mystery Awards			- DONE
' - Extra Balls				- DONE
' - Skill Shots				- DONE


' - LED display				- DONE
' - DMD
' - High Scores				
' - Attract 				
' - Flashers				
' - GI						
' - Callouts				- Remove
' - Music					
' - Sound effects			
' - DOF						
' - Queuing System			- DONE
' - GLF

' - Check/update physicals stuff agianst bakemaps (incl ramps)  - DOME
' - Fix flasher timers 		- DONE

' - Animations:
'   - Asteroid				- Requires blender fix
'   - Bumper rings			- DONE
'   - Bumper skirts			- On Hold?
'   - Diverter				- DONE
'   - Drop targets			- DONE
'   - Flippers 				- DONE
'   - Gates					- DONE
'   - Lockpin				- DONE
'   - Ship					- DONE
'   - Slingshots			- DONE
'   - Spinner				- DONE
'   - Switches				- DONE
'   - Standup Targets		- DONE
'
' - Options
'	- Trust post
'	- Rails

' BLENDER
' - Fix insert cups					- DONE
' - Fix asteroid sizes in blender	- DONE
' - Plastic ramp too milky			- DONE
' - Unwrap sideawalls				- DONE
' - Fix asteroid normal map			- DONE
' - Fix backwall stars  			- DONE



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

'*****************************************************************************************************************************************
'  ZVLM : VLM  Arrays
'*****************************************************************************************************************************************


' VLM  Arrays - Start
' Arrays per baked part
Dim BP_Asteroid1: BP_Asteroid1=Array(BM_Asteroid1, LM_F_FL1_Asteroid1, LM_F_FL2_Asteroid1, LM_F_FL3_Asteroid1, LM_F_FL4_Asteroid1, LM_F_FL7_Asteroid1, LM_L_LB2_Asteroid1, LM_L_LB3_Asteroid1, LM_L_LB4_Asteroid1, LM_L_LM3_Asteroid1, LM_L_LPC1_Asteroid1, LM_L_LPC4_Asteroid1, LM_L_LPC5_Asteroid1, LM_L_LPF_Asteroid1, LM_L_LSwC1_Asteroid1, LM_L_LSwC2_Asteroid1, LM_L_LSwC3_Asteroid1, LM_L_Lspot1_Asteroid1, LM_GI_gi16_Asteroid1, LM_GI_gi20_Asteroid1, LM_GI_gi21_Asteroid1)
Dim BP_Asteroid2: BP_Asteroid2=Array(LM_F_FL1_Asteroid2, LM_F_FL2_Asteroid2, LM_F_FL3_Asteroid2, LM_F_FL4_Asteroid2, LM_F_FL7_Asteroid2, LM_L_LB2_Asteroid2, LM_L_LB3_Asteroid2, LM_L_LB4_Asteroid2, LM_L_LM3_Asteroid2, LM_L_LPC4_Asteroid2, LM_L_LPC5_Asteroid2, LM_L_LPF_Asteroid2, LM_L_LSwC1_Asteroid2, LM_L_LSwC2_Asteroid2, LM_L_LSwC3_Asteroid2, LM_L_Lspot1_Asteroid2, LM_GI_gi16_Asteroid2, LM_GI_gi20_Asteroid2, LM_GI_gi21_Asteroid2)
Dim BP_Asteroid3: BP_Asteroid3=Array(LM_F_FL1_Asteroid3, LM_F_FL2_Asteroid3, LM_F_FL3_Asteroid3, LM_F_FL4_Asteroid3, LM_F_FL7_Asteroid3, LM_L_LB2_Asteroid3, LM_L_LB3_Asteroid3, LM_L_LB4_Asteroid3, LM_L_LM3_Asteroid3, LM_L_LPC4_Asteroid3, LM_L_LPC5_Asteroid3, LM_L_LPF_Asteroid3, LM_L_LSwC1_Asteroid3, LM_L_LSwC2_Asteroid3, LM_L_LSwC3_Asteroid3, LM_L_Lspot1_Asteroid3, LM_GI_gi16_Asteroid3, LM_GI_gi20_Asteroid3, LM_GI_gi21_Asteroid3)
Dim BP_Asteroid4: BP_Asteroid4=Array(LM_F_FL1_Asteroid4, LM_F_FL2_Asteroid4, LM_F_FL3_Asteroid4, LM_F_FL4_Asteroid4, LM_F_FL7_Asteroid4, LM_L_LB2_Asteroid4, LM_L_LB3_Asteroid4, LM_L_LB4_Asteroid4, LM_L_LM3_Asteroid4, LM_L_LPC1_Asteroid4, LM_L_LPC4_Asteroid4, LM_L_LPC5_Asteroid4, LM_L_LPF_Asteroid4, LM_L_LSwC1_Asteroid4, LM_L_LSwC2_Asteroid4, LM_L_LSwC3_Asteroid4, LM_L_Lspot1_Asteroid4, LM_GI_gi16_Asteroid4, LM_GI_gi20_Asteroid4, LM_GI_gi21_Asteroid4)
Dim BP_BR1: BP_BR1=Array(BM_BR1, LM_F_FL5_BR1, LM_F_FL6_BR1, LM_L_LB1_BR1, LM_L_LMet1_BR1, LM_L_LSwL1_BR1)
Dim BP_BR2: BP_BR2=Array(BM_BR2, LM_F_FL1_BR2, LM_F_FL2_BR2, LM_F_FL3_BR2, LM_F_FL7_BR2, LM_L_LB2_BR2, LM_L_LB3_BR2, LM_L_LB4_BR2, LM_GI_gi16_BR2, LM_GI_gi17_BR2)
Dim BP_BR3: BP_BR3=Array(BM_BR3, LM_F_FL1_BR3, LM_F_FL2_BR3, LM_F_FL3_BR3, LM_F_FL7_BR3, LM_L_LB2_BR3, LM_L_LB3_BR3, LM_L_LB4_BR3, LM_GI_gi16_BR3)
Dim BP_BR4: BP_BR4=Array(BM_BR4, LM_F_FL1_BR4, LM_F_FL2_BR4, LM_F_FL3_BR4, LM_F_FL5_BR4, LM_F_FL7_BR4, LM_L_LB2_BR4, LM_L_LB3_BR4, LM_L_LB4_BR4, LM_L_Lspot1_BR4, LM_GI_gi13_BR4, LM_GI_gi16_BR4)
Dim BP_BS1: BP_BS1=Array(BM_BS1, LM_F_FL6_BS1, LM_L_LB1_BS1, LM_L_LMet1_BS1, LM_L_LSwL1_BS1, LM_L_LSwL2_BS1)
Dim BP_BS2: BP_BS2=Array(BM_BS2, LM_F_FL1_BS2, LM_F_FL2_BS2, LM_F_FL3_BS2, LM_F_FL7_BS2, LM_L_LB2_BS2, LM_L_LB3_BS2, LM_L_LB4_BS2, LM_GI_gi13_BS2, LM_GI_gi16_BS2)
Dim BP_BS3: BP_BS3=Array(BM_BS3, LM_F_FL1_BS3, LM_F_FL2_BS3, LM_F_FL3_BS3, LM_F_FL7_BS3, LM_L_LB2_BS3, LM_L_LB3_BS3, LM_L_LB4_BS3, LM_GI_gi16_BS3)
Dim BP_BS4: BP_BS4=Array(BM_BS4, LM_F_FL1_BS4, LM_F_FL2_BS4, LM_F_FL3_BS4, LM_F_FL7_BS4, LM_L_LB2_BS4, LM_L_LB3_BS4, LM_L_LB4_BS4, LM_L_Lspot1_BS4, LM_GI_gi13_BS4, LM_GI_gi16_BS4)
Dim BP_BmpBot: BP_BmpBot=Array(BM_BmpBot, LM_F_FL1_BmpBot, LM_F_FL2_BmpBot, LM_F_FL3_BmpBot, LM_F_FL7_BmpBot, LM_L_LB1_BmpBot, LM_L_LB2_BmpBot, LM_L_LB3_BmpBot, LM_L_LB4_BmpBot, LM_L_LSwL2_BmpBot, LM_GI_gi13_BmpBot, LM_GI_gi16_BmpBot)
Dim BP_BmpTopB: BP_BmpTopB=Array(BM_BmpTopB, LM_F_FL1_BmpTopB, LM_F_FL2_BmpTopB, LM_F_FL3_BmpTopB, LM_F_FL4_BmpTopB, LM_F_FL7_BmpTopB, LM_L_LB2_BmpTopB, LM_L_LB3_BmpTopB, LM_L_LB4_BmpTopB, LM_L_LSwC2_BmpTopB, LM_L_Lspot1_BmpTopB, LM_GI_gi13_BmpTopB, LM_GI_gi16_BmpTopB)
Dim BP_BmpTopR: BP_BmpTopR=Array(BM_BmpTopR, LM_L_LB1_BmpTopR, LM_L_LMet1_BmpTopR, LM_L_LMet2_BmpTopR, LM_L_LS1_BmpTopR, LM_L_LS2_BmpTopR, LM_L_LSwL1_BmpTopR, LM_L_LSwL2_BmpTopR, LM_L_LW6_BmpTopR, LM_L_LW7_BmpTopR, LM_L_LW8_BmpTopR, LM_GI_gi04_BmpTopR)
Dim BP_DiverterPin: BP_DiverterPin=Array(BM_DiverterPin, LM_F_FL1_DiverterPin, LM_F_FL2_DiverterPin, LM_F_FL3_DiverterPin, LM_F_FL7_DiverterPin, LM_L_LB2_DiverterPin, LM_L_LB3_DiverterPin)
Dim BP_Gate2: BP_Gate2=Array(BM_Gate2, LM_F_FL1_Gate2, LM_GI_gi10_Gate2, LM_GI_gi14_Gate2)
Dim BP_GateL: BP_GateL=Array(BM_GateL, LM_F_FL2_GateL, LM_F_FL3_GateL, LM_F_FL7_GateL, LM_L_LPC1_GateL, LM_L_Lspot2_GateL, LM_GI_gi20_GateL, LM_GI_gi21_GateL)
Dim BP_GateR: BP_GateR=Array(BM_GateR, LM_F_FL1_GateR, LM_F_FL2_GateR, LM_F_FL3_GateR, LM_F_FL4_GateR, LM_F_FL7_GateR, LM_L_LB4_GateR, LM_L_LMR_GateR, LM_GI_gi13_GateR, LM_GI_gi16_GateR)
Dim BP_LArm: BP_LArm=Array(BM_LArm, LM_F_FL1_LArm, LM_F_FL5_LArm, LM_F_FL6_LArm, LM_L_Lspot2_LArm, LM_GI_gi01_LArm, LM_GI_gi02_LArm, LM_GI_gi03_LArm, LM_GI_gi04_LArm)
Dim BP_LFlip: BP_LFlip=Array(BM_LFlip, LM_F_FL5_LFlip, LM_F_FL6_LFlip, LM_L_LC1_LFlip, LM_L_LC2_LFlip, LM_L_LH1_LFlip, LM_L_LH2_LFlip, LM_L_LH3_LFlip, LM_L_LH4_LFlip, LM_L_LPR4_LFlip, LM_L_LSA_LFlip, LM_L_Lspot2_LFlip, LM_D_a15_LFlip, LM_GI_gi01_LFlip, LM_GI_gi02_LFlip, LM_GI_gi03_LFlip, LM_GI_gi04_LFlip, LM_GI_gi07_LFlip, LM_GI_giapron_LFlip)
Dim BP_LFlipU: BP_LFlipU=Array(BM_LFlipU, LM_F_FL5_LFlipU, LM_F_FL6_LFlipU, LM_L_LC1_LFlipU, LM_L_LC2_LFlipU, LM_L_LC3_LFlipU, LM_L_LC4_LFlipU, LM_L_LH1_LFlipU, LM_L_LH2_LFlipU, LM_L_LH3_LFlipU, LM_L_LH4_LFlipU, LM_L_LH5_LFlipU, LM_L_LPR4_LFlipU, LM_L_LPR5_LFlipU, LM_L_LSA_LFlipU, LM_L_Lspot2_LFlipU, LM_D_a15_LFlipU, LM_GI_gi01_LFlipU, LM_GI_gi02_LFlipU, LM_GI_gi03_LFlipU, LM_GI_gi04_LFlipU, LM_GI_gi07_LFlipU, LM_GI_giapron_LFlipU)
Dim BP_LockPin: BP_LockPin=Array(BM_LockPin, LM_F_FL1_LockPin, LM_F_FL2_LockPin, LM_F_FL3_LockPin, LM_F_FL7_LockPin, LM_L_LB1_LockPin, LM_L_Lspot2_LockPin, LM_GI_gi14_LockPin, LM_GI_gi15_LockPin, LM_GI_gi19_LockPin)
Dim BP_Lsling1: BP_Lsling1=Array(BM_Lsling1, LM_F_FL1_Lsling1, LM_F_FL5_Lsling1, LM_F_FL6_Lsling1, LM_L_LCR1_Lsling1, LM_L_LCR2_Lsling1, LM_L_Lspot2_Lsling1, LM_GI_gi01_Lsling1, LM_GI_gi03_Lsling1, LM_GI_gi04_Lsling1, LM_GI_giapron_Lsling1)
Dim BP_Lsling2: BP_Lsling2=Array(BM_Lsling2, LM_F_FL5_Lsling2, LM_F_FL6_Lsling2, LM_L_LCR1_Lsling2, LM_L_LCR2_Lsling2, LM_L_Lspot2_Lsling2, LM_GI_gi01_Lsling2, LM_GI_gi03_Lsling2, LM_GI_gi04_Lsling2, LM_GI_gi07_Lsling2, LM_GI_giapron_Lsling2)
Dim BP_Parts: BP_Parts=Array(BM_Parts, LM_L_LShip_Parts, LM_F_FL1_Parts, LM_F_FL2_Parts, LM_F_FL3_Parts, LM_F_FL4_Parts, LM_F_FL5_Parts, LM_F_FL6_Parts, LM_F_FL7_Parts, LM_L_LB1_Parts, LM_L_LB2_Parts, LM_L_LB3_Parts, LM_L_LB4_Parts, LM_L_LC1_Parts, LM_L_LC2_Parts, LM_L_LC8_Parts, LM_L_LCC1_Parts, LM_L_LCC2_Parts, LM_L_LCC3_Parts, LM_L_LCR1_Parts, LM_L_LCR2_Parts, LM_L_LCWiz_Parts, LM_L_LEBR_Parts, LM_L_LF1_Parts, LM_L_LF2_Parts, LM_L_LF3_Parts, LM_L_LH1_Parts, LM_L_LH9_Parts, LM_L_LLI_Parts, LM_L_LLO_Parts, LM_L_LLWiz_Parts, LM_L_LM1_Parts, LM_L_LM2_Parts, LM_L_LM4_Parts, LM_L_LM5_Parts, LM_L_LMLR_Parts, LM_L_LMR1_Parts, LM_L_LMR2_Parts, LM_L_LMR_Parts, LM_L_LMet1_Parts, LM_L_LMet2_Parts, LM_L_LMet3_Parts, LM_L_LMet4_Parts, LM_L_LPC1_Parts, LM_L_LPC2_Parts, LM_L_LPC3_Parts, LM_L_LPC4_Parts, LM_L_LPC5_Parts, LM_L_LPR1_Parts, LM_L_LPR2_Parts, LM_L_LPR3_Parts, LM_L_LPR4_Parts, LM_L_LPR5_Parts, LM_L_LPR6_Parts, LM_L_LRI_Parts, LM_L_LRO_Parts, LM_L_LS1_Parts, LM_L_LS2_Parts, LM_L_LS3_Parts, LM_L_LS4_Parts, _
	LM_L_LS5_Parts, LM_L_LS6_Parts, LM_L_LSC1_Parts, LM_L_LSC2_Parts, LM_L_LSC3_Parts, LM_L_LSC4_Parts, LM_L_LSL_Parts, LM_L_LSR_Parts, LM_Stars_Parts, LM_L_LSwC1_Parts, LM_L_LSwC2_Parts, LM_L_LSwC3_Parts, LM_L_LSwL1_Parts, LM_L_LSwL2_Parts, LM_L_LTW1_Parts, LM_L_LTW2_Parts, LM_L_LTW3_Parts, LM_L_LTW4_Parts, LM_L_LW1_Parts, LM_L_LW2_Parts, LM_L_LW3_Parts, LM_L_LW4_Parts, LM_L_LW5_Parts, LM_L_LW6_Parts, LM_L_LW7_Parts, LM_L_LW8_Parts, LM_L_LW9_Parts, LM_L_LWiz_Parts, LM_L_LX_Parts, LM_L_Lspot1_Parts, LM_L_Lspot2_Parts, LM_D_a00_Parts, LM_D_a01_Parts, LM_D_a02_Parts, LM_D_a03_Parts, LM_D_a04_Parts, LM_D_a05_Parts, LM_D_a06_Parts, LM_D_a10_Parts, LM_D_a11_Parts, LM_D_a12_Parts, LM_D_a13_Parts, LM_D_a14_Parts, LM_D_a15_Parts, LM_D_a16_Parts, LM_GI_gi01_Parts, LM_GI_gi02_Parts, LM_GI_gi03_Parts, LM_GI_gi04_Parts, LM_GI_gi05_Parts, LM_GI_gi06_Parts, LM_GI_gi07_Parts, LM_GI_gi08_Parts, LM_GI_gi09_Parts, LM_GI_gi10_Parts, LM_GI_gi11_Parts, LM_GI_gi12_Parts, LM_GI_gi13_Parts, LM_GI_gi14_Parts, LM_GI_gi15_Parts, _
	LM_GI_gi16_Parts, LM_GI_gi17_Parts, LM_GI_gi18_Parts, LM_GI_gi19_Parts, LM_GI_gi20_Parts, LM_GI_gi21_Parts, LM_GI_giapron_Parts)
Dim BP_Playfield: BP_Playfield=Array(BM_Playfield, LM_F_FL1_Playfield, LM_F_FL2_Playfield, LM_F_FL3_Playfield, LM_F_FL4_Playfield, LM_F_FL5_Playfield, LM_F_FL6_Playfield, LM_F_FL7_Playfield, LM_L_LB1_Playfield, LM_L_LB2_Playfield, LM_L_LB3_Playfield, LM_L_LB4_Playfield, LM_L_LC1_Playfield, LM_L_LC2_Playfield, LM_L_LC3_Playfield, LM_L_LC4_Playfield, LM_L_LC5_Playfield, LM_L_LC6_Playfield, LM_L_LC7_Playfield, LM_L_LC8_Playfield, LM_L_LCC1_Playfield, LM_L_LCC2_Playfield, LM_L_LCC3_Playfield, LM_L_LCR1_Playfield, LM_L_LCR2_Playfield, LM_L_LCWiz_Playfield, LM_L_LEBR_Playfield, LM_L_LF1_Playfield, LM_L_LF2_Playfield, LM_L_LF3_Playfield, LM_L_LH1_Playfield, LM_L_LH2_Playfield, LM_L_LH3_Playfield, LM_L_LH4_Playfield, LM_L_LH5_Playfield, LM_L_LH6_Playfield, LM_L_LH7_Playfield, LM_L_LH8_Playfield, LM_L_LH9_Playfield, LM_L_LLI_Playfield, LM_L_LLO_Playfield, LM_L_LLWiz_Playfield, LM_L_LM1_Playfield, LM_L_LM2_Playfield, LM_L_LM3_Playfield, LM_L_LM4_Playfield, LM_L_LM5_Playfield, LM_L_LMLR_Playfield, LM_L_LMR1_Playfield, _
	LM_L_LMR2_Playfield, LM_L_LMR_Playfield, LM_L_LMet1_Playfield, LM_L_LMet2_Playfield, LM_L_LMet3_Playfield, LM_L_LMet4_Playfield, LM_L_LPC1_Playfield, LM_L_LPC2_Playfield, LM_L_LPC3_Playfield, LM_L_LPC4_Playfield, LM_L_LPC5_Playfield, LM_L_LPF_Playfield, LM_L_LPR1_Playfield, LM_L_LPR2_Playfield, LM_L_LPR3_Playfield, LM_L_LPR4_Playfield, LM_L_LPR5_Playfield, LM_L_LPR6_Playfield, LM_L_LRI_Playfield, LM_L_LRO_Playfield, LM_L_LS1_Playfield, LM_L_LS2_Playfield, LM_L_LS3_Playfield, LM_L_LS4_Playfield, LM_L_LS5_Playfield, LM_L_LS6_Playfield, LM_L_LSA_Playfield, LM_L_LSC1_Playfield, LM_L_LSC2_Playfield, LM_L_LSC3_Playfield, LM_L_LSC4_Playfield, LM_L_LSL_Playfield, LM_L_LSR_Playfield, LM_L_LSwC1_Playfield, LM_L_LSwC2_Playfield, LM_L_LSwC3_Playfield, LM_L_LSwL1_Playfield, LM_L_LSwL2_Playfield, LM_L_LTW1_Playfield, LM_L_LTW2_Playfield, LM_L_LTW3_Playfield, LM_L_LTW4_Playfield, LM_L_LW1_Playfield, LM_L_LW2_Playfield, LM_L_LW3_Playfield, LM_L_LW4_Playfield, LM_L_LW5_Playfield, LM_L_LW6_Playfield, LM_L_LW7_Playfield, _
	LM_L_LW8_Playfield, LM_L_LW9_Playfield, LM_L_LWiz_Playfield, LM_L_LX_Playfield, LM_L_Lspot1_Playfield, LM_L_Lspot2_Playfield, LM_D_a00_Playfield, LM_D_a01_Playfield, LM_D_a02_Playfield, LM_D_a03_Playfield, LM_D_a04_Playfield, LM_D_a05_Playfield, LM_D_a06_Playfield, LM_D_a10_Playfield, LM_D_a11_Playfield, LM_D_a12_Playfield, LM_D_a13_Playfield, LM_D_a14_Playfield, LM_D_a15_Playfield, LM_D_a16_Playfield, LM_GI_gi01_Playfield, LM_GI_gi02_Playfield, LM_GI_gi03_Playfield, LM_GI_gi04_Playfield, LM_GI_gi05_Playfield, LM_GI_gi06_Playfield, LM_GI_gi07_Playfield, LM_GI_gi08_Playfield, LM_GI_gi09_Playfield, LM_GI_gi10_Playfield, LM_GI_gi11_Playfield, LM_GI_gi12_Playfield, LM_GI_gi13_Playfield, LM_GI_gi14_Playfield, LM_GI_gi15_Playfield, LM_GI_gi16_Playfield, LM_GI_gi17_Playfield, LM_GI_gi18_Playfield, LM_GI_gi19_Playfield, LM_GI_gi20_Playfield, LM_GI_gi21_Playfield, LM_GI_giapron_Playfield)
Dim BP_RArm: BP_RArm=Array(BM_RArm, LM_F_FL5_RArm, LM_F_FL6_RArm, LM_L_Lspot2_RArm, LM_GI_gi05_RArm, LM_GI_gi06_RArm, LM_GI_gi07_RArm, LM_GI_gi08_RArm)
Dim BP_RFlip: BP_RFlip=Array(BM_RFlip, LM_F_FL5_RFlip, LM_F_FL6_RFlip, LM_L_LC8_RFlip, LM_L_LH7_RFlip, LM_L_LH8_RFlip, LM_L_LH9_RFlip, LM_L_LSA_RFlip, LM_L_Lspot2_RFlip, LM_GI_gi01_RFlip, LM_GI_gi02_RFlip, LM_GI_gi03_RFlip, LM_GI_gi05_RFlip, LM_GI_gi06_RFlip, LM_GI_gi07_RFlip, LM_GI_gi08_RFlip, LM_GI_giapron_RFlip)
Dim BP_RFlip1: BP_RFlip1=Array(BM_RFlip1, LM_F_FL1_RFlip1, LM_F_FL4_RFlip1, LM_L_LB1_RFlip1, LM_L_LS6_RFlip1, LM_GI_gi14_RFlip1, LM_GI_gi15_RFlip1, LM_GI_gi19_RFlip1)
Dim BP_RFlip1U: BP_RFlip1U=Array(BM_RFlip1U, LM_F_FL1_RFlip1U, LM_F_FL4_RFlip1U, LM_L_LB1_RFlip1U, LM_L_LF3_RFlip1U, LM_L_LS5_RFlip1U, LM_L_LS6_RFlip1U, LM_GI_gi10_RFlip1U, LM_GI_gi13_RFlip1U, LM_GI_gi14_RFlip1U, LM_GI_gi15_RFlip1U, LM_GI_gi19_RFlip1U)
Dim BP_RFlipU: BP_RFlipU=Array(BM_RFlipU, LM_F_FL5_RFlipU, LM_F_FL6_RFlipU, LM_L_LC5_RFlipU, LM_L_LC6_RFlipU, LM_L_LC7_RFlipU, LM_L_LC8_RFlipU, LM_L_LH5_RFlipU, LM_L_LH6_RFlipU, LM_L_LH7_RFlipU, LM_L_LH8_RFlipU, LM_L_LH9_RFlipU, LM_L_LPR5_RFlipU, LM_L_LPR6_RFlipU, LM_L_LSA_RFlipU, LM_L_Lspot2_RFlipU, LM_D_a00_RFlipU, LM_D_a01_RFlipU, LM_D_a06_RFlipU, LM_GI_gi01_RFlipU, LM_GI_gi02_RFlipU, LM_GI_gi03_RFlipU, LM_GI_gi05_RFlipU, LM_GI_gi06_RFlipU, LM_GI_gi07_RFlipU, LM_GI_gi08_RFlipU, LM_GI_giapron_RFlipU)
Dim BP_Rails: BP_Rails=Array(BM_Rails, LM_F_FL1_Rails)
Dim BP_Ramp: BP_Ramp=Array(BM_Ramp, LM_F_FL1_Ramp, LM_F_FL2_Ramp, LM_F_FL3_Ramp, LM_F_FL4_Ramp, LM_F_FL6_Ramp, LM_F_FL7_Ramp, LM_L_LB1_Ramp, LM_L_LCC1_Ramp, LM_L_LPC1_Ramp, LM_L_LPC4_Ramp, LM_Stars_Ramp, LM_L_LTW1_Ramp, LM_L_LTW2_Ramp, LM_L_Lspot1_Ramp, LM_L_Lspot2_Ramp, LM_GI_gi16_Ramp, LM_GI_gi20_Ramp, LM_GI_gi21_Ramp)
Dim BP_Rsling1: BP_Rsling1=Array(BM_Rsling1, LM_F_FL5_Rsling1, LM_F_FL6_Rsling1, LM_L_LB1_Rsling1, LM_L_LMR1_Rsling1, LM_L_LMR2_Rsling1, LM_L_Lspot2_Rsling1, LM_GI_gi05_Rsling1, LM_GI_gi06_Rsling1, LM_GI_gi07_Rsling1, LM_GI_gi08_Rsling1, LM_GI_giapron_Rsling1)
Dim BP_Rsling2: BP_Rsling2=Array(BM_Rsling2, LM_F_FL1_Rsling2, LM_F_FL5_Rsling2, LM_F_FL6_Rsling2, LM_L_LB1_Rsling2, LM_L_LMR1_Rsling2, LM_L_LMR2_Rsling2, LM_L_Lspot2_Rsling2, LM_GI_gi05_Rsling2, LM_GI_gi07_Rsling2, LM_GI_gi08_Rsling2, LM_GI_giapron_Rsling2)
Dim BP_Ship: BP_Ship=Array(BM_Ship, LM_L_LShip_Ship, LM_F_FL1_Ship, LM_F_FL2_Ship, LM_F_FL3_Ship, LM_F_FL7_Ship, LM_L_LB1_Ship, LM_L_LS3_Ship)
Dim BP_Spin: BP_Spin=Array(BM_Spin, LM_F_FL1_Spin, LM_F_FL2_Spin, LM_F_FL3_Spin, LM_F_FL4_Spin, LM_F_FL7_Spin, LM_L_LB3_Spin, LM_L_Lspot1_Spin, LM_GI_gi20_Spin, LM_GI_gi21_Spin)
Dim BP_SpinU: BP_SpinU=Array(BM_SpinU, LM_F_FL1_SpinU, LM_F_FL2_SpinU, LM_F_FL3_SpinU, LM_F_FL4_SpinU, LM_F_FL7_SpinU, LM_L_LPC1_SpinU, LM_L_Lspot1_SpinU, LM_GI_gi20_SpinU, LM_GI_gi21_SpinU)
Dim BP_SpinWire: BP_SpinWire=Array(BM_SpinWire, LM_F_FL2_SpinWire, LM_F_FL3_SpinWire, LM_F_FL7_SpinWire, LM_L_Lspot1_SpinWire, LM_GI_gi20_SpinWire, LM_GI_gi21_SpinWire)
Dim BP_TM1: BP_TM1=Array(BM_TM1, LM_F_FL5_TM1, LM_L_LB1_TM1, LM_L_LM1_TM1, LM_L_LS1_TM1, LM_L_LSwL1_TM1)
Dim BP_TM2: BP_TM2=Array(BM_TM2, LM_F_FL1_TM2, LM_F_FL2_TM2, LM_F_FL4_TM2, LM_F_FL7_TM2, LM_L_LB1_TM2, LM_L_LM2_TM2, LM_L_LPC1_TM2, LM_L_LPC2_TM2, LM_GI_gi20_TM2, LM_GI_gi21_TM2)
Dim BP_TM3: BP_TM3=Array(BM_TM3, LM_F_FL1_TM3, LM_F_FL2_TM3, LM_F_FL3_TM3, LM_F_FL4_TM3, LM_F_FL7_TM3, LM_L_LB3_TM3, LM_L_LM3_TM3, LM_L_LPC4_TM3, LM_L_LPC5_TM3, LM_L_LPF_TM3, LM_L_LSwC2_TM3, LM_L_Lspot1_TM3)
Dim BP_TM4: BP_TM4=Array(BM_TM4, LM_F_FL1_TM4, LM_F_FL2_TM4, LM_F_FL3_TM4, LM_F_FL4_TM4, LM_F_FL7_TM4, LM_L_LB3_TM4, LM_L_LB4_TM4, LM_L_LEBR_TM4, LM_L_LM4_TM4, LM_L_LMR_TM4, LM_L_LPC5_TM4, LM_L_Lspot1_TM4, LM_GI_gi13_TM4, LM_GI_gi16_TM4)
Dim BP_TM5: BP_TM5=Array(BM_TM5, LM_F_FL1_TM5, LM_F_FL7_TM5, LM_L_LF2_TM5, LM_L_LF3_TM5, LM_L_LM5_TM5, LM_L_LMLR_TM5, LM_GI_gi13_TM5, LM_GI_gi14_TM5, LM_GI_gi19_TM5)
Dim BP_TMet1: BP_TMet1=Array(BM_TMet1, LM_L_LB1_TMet1, LM_L_LMet1_TMet1)
Dim BP_TMet2: BP_TMet2=Array(BM_TMet2, LM_L_LMet2_TMet2, LM_L_LS3_TMet2)
Dim BP_TMet3: BP_TMet3=Array(BM_TMet3, LM_L_LMet3_TMet3)
Dim BP_TMet4: BP_TMet4=Array(BM_TMet4, LM_L_LMet4_TMet4)
Dim BP_TS1: BP_TS1=Array(BM_TS1, LM_L_LSC1_TS1, LM_L_LSC2_TS1, LM_GI_gi10_TS1)
Dim BP_TS2: BP_TS2=Array(BM_TS2, LM_F_FL6_TS2, LM_L_LB1_TS2, LM_L_LSC1_TS2, LM_L_LSC2_TS2, LM_L_LSC3_TS2, LM_GI_gi10_TS2)
Dim BP_TS3: BP_TS3=Array(BM_TS3, LM_F_FL6_TS3, LM_L_LSC2_TS3, LM_L_LSC3_TS3, LM_GI_gi10_TS3)
Dim BP_TS4: BP_TS4=Array(BM_TS4, LM_F_FL6_TS4, LM_L_LSC3_TS4, LM_L_LSC4_TS4, LM_GI_gi10_TS4)
Dim BP_TrustPost: BP_TrustPost=Array(BM_TrustPost, LM_F_FL5_TrustPost, LM_F_FL6_TrustPost, LM_L_LSA_TrustPost, LM_GI_giapron_TrustPost)
Dim BP_UnderPF: BP_UnderPF=Array(BM_UnderPF, LM_F_FL1_UnderPF, LM_F_FL2_UnderPF, LM_F_FL3_UnderPF, LM_F_FL4_UnderPF, LM_F_FL5_UnderPF, LM_F_FL6_UnderPF, LM_F_FL7_UnderPF, LM_L_LB1_UnderPF, LM_L_LB3_UnderPF, LM_L_LB4_UnderPF, LM_L_LC1_UnderPF, LM_L_LC2_UnderPF, LM_L_LC3_UnderPF, LM_L_LC4_UnderPF, LM_L_LC5_UnderPF, LM_L_LC6_UnderPF, LM_L_LC7_UnderPF, LM_L_LC8_UnderPF, LM_L_LCC1_UnderPF, LM_L_LCC2_UnderPF, LM_L_LCC3_UnderPF, LM_L_LCR1_UnderPF, LM_L_LCR2_UnderPF, LM_L_LCWiz_UnderPF, LM_L_LEBR_UnderPF, LM_L_LF1_UnderPF, LM_L_LF2_UnderPF, LM_L_LF3_UnderPF, LM_L_LH1_UnderPF, LM_L_LH2_UnderPF, LM_L_LH3_UnderPF, LM_L_LH4_UnderPF, LM_L_LH5_UnderPF, LM_L_LH6_UnderPF, LM_L_LH7_UnderPF, LM_L_LH8_UnderPF, LM_L_LH9_UnderPF, LM_L_LLI_UnderPF, LM_L_LLO_UnderPF, LM_L_LLWiz_UnderPF, LM_L_LM1_UnderPF, LM_L_LM2_UnderPF, LM_L_LM3_UnderPF, LM_L_LM4_UnderPF, LM_L_LM5_UnderPF, LM_L_LMLR_UnderPF, LM_L_LMR1_UnderPF, LM_L_LMR2_UnderPF, LM_L_LMR_UnderPF, LM_L_LMet1_UnderPF, LM_L_LMet2_UnderPF, LM_L_LMet3_UnderPF, LM_L_LMet4_UnderPF, _
	LM_L_LPC1_UnderPF, LM_L_LPC2_UnderPF, LM_L_LPC3_UnderPF, LM_L_LPC4_UnderPF, LM_L_LPC5_UnderPF, LM_L_LPF_UnderPF, LM_L_LPR1_UnderPF, LM_L_LPR2_UnderPF, LM_L_LPR3_UnderPF, LM_L_LPR4_UnderPF, LM_L_LPR5_UnderPF, LM_L_LPR6_UnderPF, LM_L_LRI_UnderPF, LM_L_LRO_UnderPF, LM_L_LS1_UnderPF, LM_L_LS2_UnderPF, LM_L_LS3_UnderPF, LM_L_LS4_UnderPF, LM_L_LS5_UnderPF, LM_L_LS6_UnderPF, LM_L_LSA_UnderPF, LM_L_LSC1_UnderPF, LM_L_LSC2_UnderPF, LM_L_LSC3_UnderPF, LM_L_LSC4_UnderPF, LM_L_LSL_UnderPF, LM_L_LSR_UnderPF, LM_L_LSwC1_UnderPF, LM_L_LSwC2_UnderPF, LM_L_LSwC3_UnderPF, LM_L_LSwL1_UnderPF, LM_L_LSwL2_UnderPF, LM_L_LTW1_UnderPF, LM_L_LTW2_UnderPF, LM_L_LTW3_UnderPF, LM_L_LTW4_UnderPF, LM_L_LW1_UnderPF, LM_L_LW2_UnderPF, LM_L_LW3_UnderPF, LM_L_LW4_UnderPF, LM_L_LW5_UnderPF, LM_L_LW6_UnderPF, LM_L_LW7_UnderPF, LM_L_LW8_UnderPF, LM_L_LW9_UnderPF, LM_L_LWiz_UnderPF, LM_L_LX_UnderPF, LM_L_Lspot1_UnderPF, LM_L_Lspot2_UnderPF, LM_D_a00_UnderPF, LM_D_a01_UnderPF, LM_D_a05_UnderPF, LM_D_a10_UnderPF, LM_D_a11_UnderPF, LM_D_a15_UnderPF, _
	LM_GI_gi01_UnderPF, LM_GI_gi02_UnderPF, LM_GI_gi03_UnderPF, LM_GI_gi04_UnderPF, LM_GI_gi05_UnderPF, LM_GI_gi06_UnderPF, LM_GI_gi07_UnderPF, LM_GI_gi08_UnderPF, LM_GI_gi10_UnderPF, LM_GI_gi13_UnderPF, LM_GI_gi15_UnderPF, LM_GI_gi16_UnderPF, LM_GI_gi19_UnderPF, LM_GI_gi20_UnderPF)
Dim BP_swC1: BP_swC1=Array(BM_swC1, LM_F_FL2_swC1, LM_F_FL3_swC1, LM_F_FL4_swC1, LM_F_FL6_swC1, LM_F_FL7_swC1, LM_L_LPC4_swC1, LM_L_LSwC1_swC1, LM_L_Lspot1_swC1, LM_GI_gi20_swC1)
Dim BP_swC2: BP_swC2=Array(BM_swC2, LM_F_FL2_swC2, LM_F_FL3_swC2, LM_F_FL4_swC2, LM_F_FL7_swC2, LM_L_LSwC1_swC2, LM_L_LSwC2_swC2, LM_L_LSwC3_swC2, LM_L_Lspot1_swC2)
Dim BP_swC3: BP_swC3=Array(BM_swC3, LM_F_FL1_swC3, LM_F_FL2_swC3, LM_F_FL3_swC3, LM_F_FL4_swC3, LM_F_FL7_swC3, LM_L_LB3_swC3, LM_L_LB4_swC3, LM_L_LPC5_swC3, LM_L_LSwC3_swC3, LM_L_Lspot1_swC3, LM_GI_gi16_swC3)
Dim BP_swI1: BP_swI1=Array(BM_swI1, LM_F_FL2_swI1, LM_F_FL3_swI1, LM_F_FL7_swI1, LM_GI_gi20_swI1)
Dim BP_swI2: BP_swI2=Array(BM_swI2, LM_F_FL1_swI2, LM_F_FL2_swI2, LM_F_FL3_swI2, LM_F_FL7_swI2, LM_L_LB3_swI2, LM_L_Lspot1_swI2)
Dim BP_swL1: BP_swL1=Array(BM_swL1, LM_F_FL2_swL1, LM_F_FL3_swL1, LM_F_FL7_swL1, LM_GI_gi20_swL1, LM_GI_gi21_swL1)
Dim BP_swL2: BP_swL2=Array(BM_swL2, LM_F_FL2_swL2, LM_F_FL3_swL2, LM_F_FL7_swL2, LM_GI_gi20_swL2, LM_GI_gi21_swL2)
Dim BP_swLB1: BP_swLB1=Array(BM_swLB1, LM_F_FL5_swLB1, LM_L_LB1_swLB1, LM_L_LS1_swLB1, LM_L_LSwL1_swLB1, LM_L_Lspot2_swLB1)
Dim BP_swLB2: BP_swLB2=Array(BM_swLB2, LM_L_LB1_swLB2, LM_L_LSwL2_swLB2)
Dim BP_swLI: BP_swLI=Array(BM_swLI, LM_F_FL5_swLI, LM_L_LLI_swLI, LM_GI_gi01_swLI, LM_GI_gi02_swLI, LM_GI_gi03_swLI, LM_GI_gi04_swLI, LM_GI_gi09_swLI)
Dim BP_swLO: BP_swLO=Array(BM_swLO, LM_F_FL5_swLO, LM_L_LLO_swLO, LM_L_LSL_swLO, LM_L_Lspot2_swLO, LM_GI_gi01_swLO, LM_GI_gi02_swLO, LM_GI_gi03_swLO, LM_GI_gi04_swLO)
Dim BP_swP1: BP_swP1=Array(BM_swP1)
Dim BP_swP2: BP_swP2=Array(BM_swP2)
Dim BP_swR1: BP_swR1=Array(BM_swR1, LM_F_FL1_swR1, LM_F_FL3_swR1, LM_F_FL7_swR1, LM_L_LB4_swR1, LM_L_LF1_swR1, LM_L_LF2_swR1)
Dim BP_swR2: BP_swR2=Array(BM_swR2, LM_F_FL1_swR2, LM_F_FL2_swR2, LM_F_FL3_swR2, LM_F_FL7_swR2, LM_L_LB2_swR2)
Dim BP_swRI: BP_swRI=Array(BM_swRI, LM_F_FL5_swRI, LM_F_FL6_swRI, LM_L_LRI_swRI, LM_GI_gi05_swRI, LM_GI_gi06_swRI, LM_GI_gi07_swRI, LM_GI_gi08_swRI)
Dim BP_swRO: BP_swRO=Array(BM_swRO, LM_F_FL6_swRO, LM_L_LRO_swRO, LM_L_LSR_swRO, LM_GI_gi07_swRO)
' Arrays per lighting scenario
Dim BL_D_a00: BL_D_a00=Array(LM_D_a00_Parts, LM_D_a00_Playfield, LM_D_a00_RFlipU, LM_D_a00_UnderPF)
Dim BL_D_a01: BL_D_a01=Array(LM_D_a01_Parts, LM_D_a01_Playfield, LM_D_a01_RFlipU, LM_D_a01_UnderPF)
Dim BL_D_a02: BL_D_a02=Array(LM_D_a02_Parts, LM_D_a02_Playfield)
Dim BL_D_a03: BL_D_a03=Array(LM_D_a03_Parts, LM_D_a03_Playfield)
Dim BL_D_a04: BL_D_a04=Array(LM_D_a04_Parts, LM_D_a04_Playfield)
Dim BL_D_a05: BL_D_a05=Array(LM_D_a05_Parts, LM_D_a05_Playfield, LM_D_a05_UnderPF)
Dim BL_D_a06: BL_D_a06=Array(LM_D_a06_Parts, LM_D_a06_Playfield, LM_D_a06_RFlipU)
Dim BL_D_a10: BL_D_a10=Array(LM_D_a10_Parts, LM_D_a10_Playfield, LM_D_a10_UnderPF)
Dim BL_D_a11: BL_D_a11=Array(LM_D_a11_Parts, LM_D_a11_Playfield, LM_D_a11_UnderPF)
Dim BL_D_a12: BL_D_a12=Array(LM_D_a12_Parts, LM_D_a12_Playfield)
Dim BL_D_a13: BL_D_a13=Array(LM_D_a13_Parts, LM_D_a13_Playfield)
Dim BL_D_a14: BL_D_a14=Array(LM_D_a14_Parts, LM_D_a14_Playfield)
Dim BL_D_a15: BL_D_a15=Array(LM_D_a15_LFlip, LM_D_a15_LFlipU, LM_D_a15_Parts, LM_D_a15_Playfield, LM_D_a15_UnderPF)
Dim BL_D_a16: BL_D_a16=Array(LM_D_a16_Parts, LM_D_a16_Playfield)
Dim BL_F_FL1: BL_F_FL1=Array(LM_F_FL1_Asteroid1, LM_F_FL1_Asteroid2, LM_F_FL1_Asteroid3, LM_F_FL1_Asteroid4, LM_F_FL1_BR2, LM_F_FL1_BR3, LM_F_FL1_BR4, LM_F_FL1_BS2, LM_F_FL1_BS3, LM_F_FL1_BS4, LM_F_FL1_BmpBot, LM_F_FL1_BmpTopB, LM_F_FL1_DiverterPin, LM_F_FL1_Gate2, LM_F_FL1_GateR, LM_F_FL1_LArm, LM_F_FL1_LockPin, LM_F_FL1_Lsling1, LM_F_FL1_Parts, LM_F_FL1_Playfield, LM_F_FL1_RFlip1, LM_F_FL1_RFlip1U, LM_F_FL1_Rails, LM_F_FL1_Ramp, LM_F_FL1_Rsling2, LM_F_FL1_Ship, LM_F_FL1_Spin, LM_F_FL1_SpinU, LM_F_FL1_TM2, LM_F_FL1_TM3, LM_F_FL1_TM4, LM_F_FL1_TM5, LM_F_FL1_UnderPF, LM_F_FL1_swC3, LM_F_FL1_swI2, LM_F_FL1_swR1, LM_F_FL1_swR2)
Dim BL_F_FL2: BL_F_FL2=Array(LM_F_FL2_Asteroid1, LM_F_FL2_Asteroid2, LM_F_FL2_Asteroid3, LM_F_FL2_Asteroid4, LM_F_FL2_BR2, LM_F_FL2_BR3, LM_F_FL2_BR4, LM_F_FL2_BS2, LM_F_FL2_BS3, LM_F_FL2_BS4, LM_F_FL2_BmpBot, LM_F_FL2_BmpTopB, LM_F_FL2_DiverterPin, LM_F_FL2_GateL, LM_F_FL2_GateR, LM_F_FL2_LockPin, LM_F_FL2_Parts, LM_F_FL2_Playfield, LM_F_FL2_Ramp, LM_F_FL2_Ship, LM_F_FL2_Spin, LM_F_FL2_SpinU, LM_F_FL2_SpinWire, LM_F_FL2_TM2, LM_F_FL2_TM3, LM_F_FL2_TM4, LM_F_FL2_UnderPF, LM_F_FL2_swC1, LM_F_FL2_swC2, LM_F_FL2_swC3, LM_F_FL2_swI1, LM_F_FL2_swI2, LM_F_FL2_swL1, LM_F_FL2_swL2, LM_F_FL2_swR2)
Dim BL_F_FL3: BL_F_FL3=Array(LM_F_FL3_Asteroid1, LM_F_FL3_Asteroid2, LM_F_FL3_Asteroid3, LM_F_FL3_Asteroid4, LM_F_FL3_BR2, LM_F_FL3_BR3, LM_F_FL3_BR4, LM_F_FL3_BS2, LM_F_FL3_BS3, LM_F_FL3_BS4, LM_F_FL3_BmpBot, LM_F_FL3_BmpTopB, LM_F_FL3_DiverterPin, LM_F_FL3_GateL, LM_F_FL3_GateR, LM_F_FL3_LockPin, LM_F_FL3_Parts, LM_F_FL3_Playfield, LM_F_FL3_Ramp, LM_F_FL3_Ship, LM_F_FL3_Spin, LM_F_FL3_SpinU, LM_F_FL3_SpinWire, LM_F_FL3_TM3, LM_F_FL3_TM4, LM_F_FL3_UnderPF, LM_F_FL3_swC1, LM_F_FL3_swC2, LM_F_FL3_swC3, LM_F_FL3_swI1, LM_F_FL3_swI2, LM_F_FL3_swL1, LM_F_FL3_swL2, LM_F_FL3_swR1, LM_F_FL3_swR2)
Dim BL_F_FL4: BL_F_FL4=Array(LM_F_FL4_Asteroid1, LM_F_FL4_Asteroid2, LM_F_FL4_Asteroid3, LM_F_FL4_Asteroid4, LM_F_FL4_BmpTopB, LM_F_FL4_GateR, LM_F_FL4_Parts, LM_F_FL4_Playfield, LM_F_FL4_RFlip1, LM_F_FL4_RFlip1U, LM_F_FL4_Ramp, LM_F_FL4_Spin, LM_F_FL4_SpinU, LM_F_FL4_TM2, LM_F_FL4_TM3, LM_F_FL4_TM4, LM_F_FL4_UnderPF, LM_F_FL4_swC1, LM_F_FL4_swC2, LM_F_FL4_swC3)
Dim BL_F_FL5: BL_F_FL5=Array(LM_F_FL5_BR1, LM_F_FL5_BR4, LM_F_FL5_LArm, LM_F_FL5_LFlip, LM_F_FL5_LFlipU, LM_F_FL5_Lsling1, LM_F_FL5_Lsling2, LM_F_FL5_Parts, LM_F_FL5_Playfield, LM_F_FL5_RArm, LM_F_FL5_RFlip, LM_F_FL5_RFlipU, LM_F_FL5_Rsling1, LM_F_FL5_Rsling2, LM_F_FL5_TM1, LM_F_FL5_TrustPost, LM_F_FL5_UnderPF, LM_F_FL5_swLB1, LM_F_FL5_swLI, LM_F_FL5_swLO, LM_F_FL5_swRI)
Dim BL_F_FL6: BL_F_FL6=Array(LM_F_FL6_BR1, LM_F_FL6_BS1, LM_F_FL6_LArm, LM_F_FL6_LFlip, LM_F_FL6_LFlipU, LM_F_FL6_Lsling1, LM_F_FL6_Lsling2, LM_F_FL6_Parts, LM_F_FL6_Playfield, LM_F_FL6_RArm, LM_F_FL6_RFlip, LM_F_FL6_RFlipU, LM_F_FL6_Ramp, LM_F_FL6_Rsling1, LM_F_FL6_Rsling2, LM_F_FL6_TS2, LM_F_FL6_TS3, LM_F_FL6_TS4, LM_F_FL6_TrustPost, LM_F_FL6_UnderPF, LM_F_FL6_swC1, LM_F_FL6_swRI, LM_F_FL6_swRO)
Dim BL_F_FL7: BL_F_FL7=Array(LM_F_FL7_Asteroid1, LM_F_FL7_Asteroid2, LM_F_FL7_Asteroid3, LM_F_FL7_Asteroid4, LM_F_FL7_BR2, LM_F_FL7_BR3, LM_F_FL7_BR4, LM_F_FL7_BS2, LM_F_FL7_BS3, LM_F_FL7_BS4, LM_F_FL7_BmpBot, LM_F_FL7_BmpTopB, LM_F_FL7_DiverterPin, LM_F_FL7_GateL, LM_F_FL7_GateR, LM_F_FL7_LockPin, LM_F_FL7_Parts, LM_F_FL7_Playfield, LM_F_FL7_Ramp, LM_F_FL7_Ship, LM_F_FL7_Spin, LM_F_FL7_SpinU, LM_F_FL7_SpinWire, LM_F_FL7_TM2, LM_F_FL7_TM3, LM_F_FL7_TM4, LM_F_FL7_TM5, LM_F_FL7_UnderPF, LM_F_FL7_swC1, LM_F_FL7_swC2, LM_F_FL7_swC3, LM_F_FL7_swI1, LM_F_FL7_swI2, LM_F_FL7_swL1, LM_F_FL7_swL2, LM_F_FL7_swR1, LM_F_FL7_swR2)
Dim BL_GI_gi01: BL_GI_gi01=Array(LM_GI_gi01_LArm, LM_GI_gi01_LFlip, LM_GI_gi01_LFlipU, LM_GI_gi01_Lsling1, LM_GI_gi01_Lsling2, LM_GI_gi01_Parts, LM_GI_gi01_Playfield, LM_GI_gi01_RFlip, LM_GI_gi01_RFlipU, LM_GI_gi01_UnderPF, LM_GI_gi01_swLI, LM_GI_gi01_swLO)
Dim BL_GI_gi02: BL_GI_gi02=Array(LM_GI_gi02_LArm, LM_GI_gi02_LFlip, LM_GI_gi02_LFlipU, LM_GI_gi02_Parts, LM_GI_gi02_Playfield, LM_GI_gi02_RFlip, LM_GI_gi02_RFlipU, LM_GI_gi02_UnderPF, LM_GI_gi02_swLI, LM_GI_gi02_swLO)
Dim BL_GI_gi03: BL_GI_gi03=Array(LM_GI_gi03_LArm, LM_GI_gi03_LFlip, LM_GI_gi03_LFlipU, LM_GI_gi03_Lsling1, LM_GI_gi03_Lsling2, LM_GI_gi03_Parts, LM_GI_gi03_Playfield, LM_GI_gi03_RFlip, LM_GI_gi03_RFlipU, LM_GI_gi03_UnderPF, LM_GI_gi03_swLI, LM_GI_gi03_swLO)
Dim BL_GI_gi04: BL_GI_gi04=Array(LM_GI_gi04_BmpTopR, LM_GI_gi04_LArm, LM_GI_gi04_LFlip, LM_GI_gi04_LFlipU, LM_GI_gi04_Lsling1, LM_GI_gi04_Lsling2, LM_GI_gi04_Parts, LM_GI_gi04_Playfield, LM_GI_gi04_UnderPF, LM_GI_gi04_swLI, LM_GI_gi04_swLO)
Dim BL_GI_gi05: BL_GI_gi05=Array(LM_GI_gi05_Parts, LM_GI_gi05_Playfield, LM_GI_gi05_RArm, LM_GI_gi05_RFlip, LM_GI_gi05_RFlipU, LM_GI_gi05_Rsling1, LM_GI_gi05_Rsling2, LM_GI_gi05_UnderPF, LM_GI_gi05_swRI)
Dim BL_GI_gi06: BL_GI_gi06=Array(LM_GI_gi06_Parts, LM_GI_gi06_Playfield, LM_GI_gi06_RArm, LM_GI_gi06_RFlip, LM_GI_gi06_RFlipU, LM_GI_gi06_Rsling1, LM_GI_gi06_UnderPF, LM_GI_gi06_swRI)
Dim BL_GI_gi07: BL_GI_gi07=Array(LM_GI_gi07_LFlip, LM_GI_gi07_LFlipU, LM_GI_gi07_Lsling2, LM_GI_gi07_Parts, LM_GI_gi07_Playfield, LM_GI_gi07_RArm, LM_GI_gi07_RFlip, LM_GI_gi07_RFlipU, LM_GI_gi07_Rsling1, LM_GI_gi07_Rsling2, LM_GI_gi07_UnderPF, LM_GI_gi07_swRI, LM_GI_gi07_swRO)
Dim BL_GI_gi08: BL_GI_gi08=Array(LM_GI_gi08_Parts, LM_GI_gi08_Playfield, LM_GI_gi08_RArm, LM_GI_gi08_RFlip, LM_GI_gi08_RFlipU, LM_GI_gi08_Rsling1, LM_GI_gi08_Rsling2, LM_GI_gi08_UnderPF, LM_GI_gi08_swRI)
Dim BL_GI_gi09: BL_GI_gi09=Array(LM_GI_gi09_Parts, LM_GI_gi09_Playfield, LM_GI_gi09_swLI)
Dim BL_GI_gi10: BL_GI_gi10=Array(LM_GI_gi10_Gate2, LM_GI_gi10_Parts, LM_GI_gi10_Playfield, LM_GI_gi10_RFlip1U, LM_GI_gi10_TS1, LM_GI_gi10_TS2, LM_GI_gi10_TS3, LM_GI_gi10_TS4, LM_GI_gi10_UnderPF)
Dim BL_GI_gi11: BL_GI_gi11=Array(LM_GI_gi11_Parts, LM_GI_gi11_Playfield)
Dim BL_GI_gi12: BL_GI_gi12=Array(LM_GI_gi12_Parts, LM_GI_gi12_Playfield)
Dim BL_GI_gi13: BL_GI_gi13=Array(LM_GI_gi13_BR4, LM_GI_gi13_BS2, LM_GI_gi13_BS4, LM_GI_gi13_BmpBot, LM_GI_gi13_BmpTopB, LM_GI_gi13_GateR, LM_GI_gi13_Parts, LM_GI_gi13_Playfield, LM_GI_gi13_RFlip1U, LM_GI_gi13_TM4, LM_GI_gi13_TM5, LM_GI_gi13_UnderPF)
Dim BL_GI_gi14: BL_GI_gi14=Array(LM_GI_gi14_Gate2, LM_GI_gi14_LockPin, LM_GI_gi14_Parts, LM_GI_gi14_Playfield, LM_GI_gi14_RFlip1, LM_GI_gi14_RFlip1U, LM_GI_gi14_TM5)
Dim BL_GI_gi15: BL_GI_gi15=Array(LM_GI_gi15_LockPin, LM_GI_gi15_Parts, LM_GI_gi15_Playfield, LM_GI_gi15_RFlip1, LM_GI_gi15_RFlip1U, LM_GI_gi15_UnderPF)
Dim BL_GI_gi16: BL_GI_gi16=Array(LM_GI_gi16_Asteroid1, LM_GI_gi16_Asteroid2, LM_GI_gi16_Asteroid3, LM_GI_gi16_Asteroid4, LM_GI_gi16_BR2, LM_GI_gi16_BR3, LM_GI_gi16_BR4, LM_GI_gi16_BS2, LM_GI_gi16_BS3, LM_GI_gi16_BS4, LM_GI_gi16_BmpBot, LM_GI_gi16_BmpTopB, LM_GI_gi16_GateR, LM_GI_gi16_Parts, LM_GI_gi16_Playfield, LM_GI_gi16_Ramp, LM_GI_gi16_TM4, LM_GI_gi16_UnderPF, LM_GI_gi16_swC3)
Dim BL_GI_gi17: BL_GI_gi17=Array(LM_GI_gi17_BR2, LM_GI_gi17_Parts, LM_GI_gi17_Playfield)
Dim BL_GI_gi18: BL_GI_gi18=Array(LM_GI_gi18_Parts, LM_GI_gi18_Playfield)
Dim BL_GI_gi19: BL_GI_gi19=Array(LM_GI_gi19_LockPin, LM_GI_gi19_Parts, LM_GI_gi19_Playfield, LM_GI_gi19_RFlip1, LM_GI_gi19_RFlip1U, LM_GI_gi19_TM5, LM_GI_gi19_UnderPF)
Dim BL_GI_gi20: BL_GI_gi20=Array(LM_GI_gi20_Asteroid1, LM_GI_gi20_Asteroid2, LM_GI_gi20_Asteroid3, LM_GI_gi20_Asteroid4, LM_GI_gi20_GateL, LM_GI_gi20_Parts, LM_GI_gi20_Playfield, LM_GI_gi20_Ramp, LM_GI_gi20_Spin, LM_GI_gi20_SpinU, LM_GI_gi20_SpinWire, LM_GI_gi20_TM2, LM_GI_gi20_UnderPF, LM_GI_gi20_swC1, LM_GI_gi20_swI1, LM_GI_gi20_swL1, LM_GI_gi20_swL2)
Dim BL_GI_gi21: BL_GI_gi21=Array(LM_GI_gi21_Asteroid1, LM_GI_gi21_Asteroid2, LM_GI_gi21_Asteroid3, LM_GI_gi21_Asteroid4, LM_GI_gi21_GateL, LM_GI_gi21_Parts, LM_GI_gi21_Playfield, LM_GI_gi21_Ramp, LM_GI_gi21_Spin, LM_GI_gi21_SpinU, LM_GI_gi21_SpinWire, LM_GI_gi21_TM2, LM_GI_gi21_swL1, LM_GI_gi21_swL2)
Dim BL_GI_giapron: BL_GI_giapron=Array(LM_GI_giapron_LFlip, LM_GI_giapron_LFlipU, LM_GI_giapron_Lsling1, LM_GI_giapron_Lsling2, LM_GI_giapron_Parts, LM_GI_giapron_Playfield, LM_GI_giapron_RFlip, LM_GI_giapron_RFlipU, LM_GI_giapron_Rsling1, LM_GI_giapron_Rsling2, LM_GI_giapron_TrustPost)
Dim BL_L_LB1: BL_L_LB1=Array(LM_L_LB1_BR1, LM_L_LB1_BS1, LM_L_LB1_BmpBot, LM_L_LB1_BmpTopR, LM_L_LB1_LockPin, LM_L_LB1_Parts, LM_L_LB1_Playfield, LM_L_LB1_RFlip1, LM_L_LB1_RFlip1U, LM_L_LB1_Ramp, LM_L_LB1_Rsling1, LM_L_LB1_Rsling2, LM_L_LB1_Ship, LM_L_LB1_TM1, LM_L_LB1_TM2, LM_L_LB1_TMet1, LM_L_LB1_TS2, LM_L_LB1_UnderPF, LM_L_LB1_swLB1, LM_L_LB1_swLB2)
Dim BL_L_LB2: BL_L_LB2=Array(LM_L_LB2_Asteroid1, LM_L_LB2_Asteroid2, LM_L_LB2_Asteroid3, LM_L_LB2_Asteroid4, LM_L_LB2_BR2, LM_L_LB2_BR3, LM_L_LB2_BR4, LM_L_LB2_BS2, LM_L_LB2_BS3, LM_L_LB2_BS4, LM_L_LB2_BmpBot, LM_L_LB2_BmpTopB, LM_L_LB2_DiverterPin, LM_L_LB2_Parts, LM_L_LB2_Playfield, LM_L_LB2_swR2)
Dim BL_L_LB3: BL_L_LB3=Array(LM_L_LB3_Asteroid1, LM_L_LB3_Asteroid2, LM_L_LB3_Asteroid3, LM_L_LB3_Asteroid4, LM_L_LB3_BR2, LM_L_LB3_BR3, LM_L_LB3_BR4, LM_L_LB3_BS2, LM_L_LB3_BS3, LM_L_LB3_BS4, LM_L_LB3_BmpBot, LM_L_LB3_BmpTopB, LM_L_LB3_DiverterPin, LM_L_LB3_Parts, LM_L_LB3_Playfield, LM_L_LB3_Spin, LM_L_LB3_TM3, LM_L_LB3_TM4, LM_L_LB3_UnderPF, LM_L_LB3_swC3, LM_L_LB3_swI2)
Dim BL_L_LB4: BL_L_LB4=Array(LM_L_LB4_Asteroid1, LM_L_LB4_Asteroid2, LM_L_LB4_Asteroid3, LM_L_LB4_Asteroid4, LM_L_LB4_BR2, LM_L_LB4_BR3, LM_L_LB4_BR4, LM_L_LB4_BS2, LM_L_LB4_BS3, LM_L_LB4_BS4, LM_L_LB4_BmpBot, LM_L_LB4_BmpTopB, LM_L_LB4_GateR, LM_L_LB4_Parts, LM_L_LB4_Playfield, LM_L_LB4_TM4, LM_L_LB4_UnderPF, LM_L_LB4_swC3, LM_L_LB4_swR1)
Dim BL_L_LC1: BL_L_LC1=Array(LM_L_LC1_LFlip, LM_L_LC1_LFlipU, LM_L_LC1_Parts, LM_L_LC1_Playfield, LM_L_LC1_UnderPF)
Dim BL_L_LC2: BL_L_LC2=Array(LM_L_LC2_LFlip, LM_L_LC2_LFlipU, LM_L_LC2_Parts, LM_L_LC2_Playfield, LM_L_LC2_UnderPF)
Dim BL_L_LC3: BL_L_LC3=Array(LM_L_LC3_LFlipU, LM_L_LC3_Playfield, LM_L_LC3_UnderPF)
Dim BL_L_LC4: BL_L_LC4=Array(LM_L_LC4_LFlipU, LM_L_LC4_Playfield, LM_L_LC4_UnderPF)
Dim BL_L_LC5: BL_L_LC5=Array(LM_L_LC5_Playfield, LM_L_LC5_RFlipU, LM_L_LC5_UnderPF)
Dim BL_L_LC6: BL_L_LC6=Array(LM_L_LC6_Playfield, LM_L_LC6_RFlipU, LM_L_LC6_UnderPF)
Dim BL_L_LC7: BL_L_LC7=Array(LM_L_LC7_Playfield, LM_L_LC7_RFlipU, LM_L_LC7_UnderPF)
Dim BL_L_LC8: BL_L_LC8=Array(LM_L_LC8_Parts, LM_L_LC8_Playfield, LM_L_LC8_RFlip, LM_L_LC8_RFlipU, LM_L_LC8_UnderPF)
Dim BL_L_LCC1: BL_L_LCC1=Array(LM_L_LCC1_Parts, LM_L_LCC1_Playfield, LM_L_LCC1_Ramp, LM_L_LCC1_UnderPF)
Dim BL_L_LCC2: BL_L_LCC2=Array(LM_L_LCC2_Parts, LM_L_LCC2_Playfield, LM_L_LCC2_UnderPF)
Dim BL_L_LCC3: BL_L_LCC3=Array(LM_L_LCC3_Parts, LM_L_LCC3_Playfield, LM_L_LCC3_UnderPF)
Dim BL_L_LCR1: BL_L_LCR1=Array(LM_L_LCR1_Lsling1, LM_L_LCR1_Lsling2, LM_L_LCR1_Parts, LM_L_LCR1_Playfield, LM_L_LCR1_UnderPF)
Dim BL_L_LCR2: BL_L_LCR2=Array(LM_L_LCR2_Lsling1, LM_L_LCR2_Lsling2, LM_L_LCR2_Parts, LM_L_LCR2_Playfield, LM_L_LCR2_UnderPF)
Dim BL_L_LCWiz: BL_L_LCWiz=Array(LM_L_LCWiz_Parts, LM_L_LCWiz_Playfield, LM_L_LCWiz_UnderPF)
Dim BL_L_LEBR: BL_L_LEBR=Array(LM_L_LEBR_Parts, LM_L_LEBR_Playfield, LM_L_LEBR_TM4, LM_L_LEBR_UnderPF)
Dim BL_L_LF1: BL_L_LF1=Array(LM_L_LF1_Parts, LM_L_LF1_Playfield, LM_L_LF1_UnderPF, LM_L_LF1_swR1)
Dim BL_L_LF2: BL_L_LF2=Array(LM_L_LF2_Parts, LM_L_LF2_Playfield, LM_L_LF2_TM5, LM_L_LF2_UnderPF, LM_L_LF2_swR1)
Dim BL_L_LF3: BL_L_LF3=Array(LM_L_LF3_Parts, LM_L_LF3_Playfield, LM_L_LF3_RFlip1U, LM_L_LF3_TM5, LM_L_LF3_UnderPF)
Dim BL_L_LH1: BL_L_LH1=Array(LM_L_LH1_LFlip, LM_L_LH1_LFlipU, LM_L_LH1_Parts, LM_L_LH1_Playfield, LM_L_LH1_UnderPF)
Dim BL_L_LH2: BL_L_LH2=Array(LM_L_LH2_LFlip, LM_L_LH2_LFlipU, LM_L_LH2_Playfield, LM_L_LH2_UnderPF)
Dim BL_L_LH3: BL_L_LH3=Array(LM_L_LH3_LFlip, LM_L_LH3_LFlipU, LM_L_LH3_Playfield, LM_L_LH3_UnderPF)
Dim BL_L_LH4: BL_L_LH4=Array(LM_L_LH4_LFlip, LM_L_LH4_LFlipU, LM_L_LH4_Playfield, LM_L_LH4_UnderPF)
Dim BL_L_LH5: BL_L_LH5=Array(LM_L_LH5_LFlipU, LM_L_LH5_Playfield, LM_L_LH5_RFlipU, LM_L_LH5_UnderPF)
Dim BL_L_LH6: BL_L_LH6=Array(LM_L_LH6_Playfield, LM_L_LH6_RFlipU, LM_L_LH6_UnderPF)
Dim BL_L_LH7: BL_L_LH7=Array(LM_L_LH7_Playfield, LM_L_LH7_RFlip, LM_L_LH7_RFlipU, LM_L_LH7_UnderPF)
Dim BL_L_LH8: BL_L_LH8=Array(LM_L_LH8_Playfield, LM_L_LH8_RFlip, LM_L_LH8_RFlipU, LM_L_LH8_UnderPF)
Dim BL_L_LH9: BL_L_LH9=Array(LM_L_LH9_Parts, LM_L_LH9_Playfield, LM_L_LH9_RFlip, LM_L_LH9_RFlipU, LM_L_LH9_UnderPF)
Dim BL_L_LLI: BL_L_LLI=Array(LM_L_LLI_Parts, LM_L_LLI_Playfield, LM_L_LLI_UnderPF, LM_L_LLI_swLI)
Dim BL_L_LLO: BL_L_LLO=Array(LM_L_LLO_Parts, LM_L_LLO_Playfield, LM_L_LLO_UnderPF, LM_L_LLO_swLO)
Dim BL_L_LLWiz: BL_L_LLWiz=Array(LM_L_LLWiz_Parts, LM_L_LLWiz_Playfield, LM_L_LLWiz_UnderPF)
Dim BL_L_LM1: BL_L_LM1=Array(LM_L_LM1_Parts, LM_L_LM1_Playfield, LM_L_LM1_TM1, LM_L_LM1_UnderPF)
Dim BL_L_LM2: BL_L_LM2=Array(LM_L_LM2_Parts, LM_L_LM2_Playfield, LM_L_LM2_TM2, LM_L_LM2_UnderPF)
Dim BL_L_LM3: BL_L_LM3=Array(LM_L_LM3_Asteroid1, LM_L_LM3_Asteroid2, LM_L_LM3_Asteroid3, LM_L_LM3_Asteroid4, LM_L_LM3_Playfield, LM_L_LM3_TM3, LM_L_LM3_UnderPF)
Dim BL_L_LM4: BL_L_LM4=Array(LM_L_LM4_Parts, LM_L_LM4_Playfield, LM_L_LM4_TM4, LM_L_LM4_UnderPF)
Dim BL_L_LM5: BL_L_LM5=Array(LM_L_LM5_Parts, LM_L_LM5_Playfield, LM_L_LM5_TM5, LM_L_LM5_UnderPF)
Dim BL_L_LMLR: BL_L_LMLR=Array(LM_L_LMLR_Parts, LM_L_LMLR_Playfield, LM_L_LMLR_TM5, LM_L_LMLR_UnderPF)
Dim BL_L_LMR: BL_L_LMR=Array(LM_L_LMR_GateR, LM_L_LMR_Parts, LM_L_LMR_Playfield, LM_L_LMR_TM4, LM_L_LMR_UnderPF)
Dim BL_L_LMR1: BL_L_LMR1=Array(LM_L_LMR1_Parts, LM_L_LMR1_Playfield, LM_L_LMR1_Rsling1, LM_L_LMR1_Rsling2, LM_L_LMR1_UnderPF)
Dim BL_L_LMR2: BL_L_LMR2=Array(LM_L_LMR2_Parts, LM_L_LMR2_Playfield, LM_L_LMR2_Rsling1, LM_L_LMR2_Rsling2, LM_L_LMR2_UnderPF)
Dim BL_L_LMet1: BL_L_LMet1=Array(LM_L_LMet1_BR1, LM_L_LMet1_BS1, LM_L_LMet1_BmpTopR, LM_L_LMet1_Parts, LM_L_LMet1_Playfield, LM_L_LMet1_TMet1, LM_L_LMet1_UnderPF)
Dim BL_L_LMet2: BL_L_LMet2=Array(LM_L_LMet2_BmpTopR, LM_L_LMet2_Parts, LM_L_LMet2_Playfield, LM_L_LMet2_TMet2, LM_L_LMet2_UnderPF)
Dim BL_L_LMet3: BL_L_LMet3=Array(LM_L_LMet3_Parts, LM_L_LMet3_Playfield, LM_L_LMet3_TMet3, LM_L_LMet3_UnderPF)
Dim BL_L_LMet4: BL_L_LMet4=Array(LM_L_LMet4_Parts, LM_L_LMet4_Playfield, LM_L_LMet4_TMet4, LM_L_LMet4_UnderPF)
Dim BL_L_LPC1: BL_L_LPC1=Array(LM_L_LPC1_Asteroid1, LM_L_LPC1_Asteroid4, LM_L_LPC1_GateL, LM_L_LPC1_Parts, LM_L_LPC1_Playfield, LM_L_LPC1_Ramp, LM_L_LPC1_SpinU, LM_L_LPC1_TM2, LM_L_LPC1_UnderPF)
Dim BL_L_LPC2: BL_L_LPC2=Array(LM_L_LPC2_Parts, LM_L_LPC2_Playfield, LM_L_LPC2_TM2, LM_L_LPC2_UnderPF)
Dim BL_L_LPC3: BL_L_LPC3=Array(LM_L_LPC3_Parts, LM_L_LPC3_Playfield, LM_L_LPC3_UnderPF)
Dim BL_L_LPC4: BL_L_LPC4=Array(LM_L_LPC4_Asteroid1, LM_L_LPC4_Asteroid2, LM_L_LPC4_Asteroid3, LM_L_LPC4_Asteroid4, LM_L_LPC4_Parts, LM_L_LPC4_Playfield, LM_L_LPC4_Ramp, LM_L_LPC4_TM3, LM_L_LPC4_UnderPF, LM_L_LPC4_swC1)
Dim BL_L_LPC5: BL_L_LPC5=Array(LM_L_LPC5_Asteroid1, LM_L_LPC5_Asteroid2, LM_L_LPC5_Asteroid3, LM_L_LPC5_Asteroid4, LM_L_LPC5_Parts, LM_L_LPC5_Playfield, LM_L_LPC5_TM3, LM_L_LPC5_TM4, LM_L_LPC5_UnderPF, LM_L_LPC5_swC3)
Dim BL_L_LPF: BL_L_LPF=Array(LM_L_LPF_Asteroid1, LM_L_LPF_Asteroid2, LM_L_LPF_Asteroid3, LM_L_LPF_Asteroid4, LM_L_LPF_Playfield, LM_L_LPF_TM3, LM_L_LPF_UnderPF)
Dim BL_L_LPR1: BL_L_LPR1=Array(LM_L_LPR1_Parts, LM_L_LPR1_Playfield, LM_L_LPR1_UnderPF)
Dim BL_L_LPR2: BL_L_LPR2=Array(LM_L_LPR2_Parts, LM_L_LPR2_Playfield, LM_L_LPR2_UnderPF)
Dim BL_L_LPR3: BL_L_LPR3=Array(LM_L_LPR3_Parts, LM_L_LPR3_Playfield, LM_L_LPR3_UnderPF)
Dim BL_L_LPR4: BL_L_LPR4=Array(LM_L_LPR4_LFlip, LM_L_LPR4_LFlipU, LM_L_LPR4_Parts, LM_L_LPR4_Playfield, LM_L_LPR4_UnderPF)
Dim BL_L_LPR5: BL_L_LPR5=Array(LM_L_LPR5_LFlipU, LM_L_LPR5_Parts, LM_L_LPR5_Playfield, LM_L_LPR5_RFlipU, LM_L_LPR5_UnderPF)
Dim BL_L_LPR6: BL_L_LPR6=Array(LM_L_LPR6_Parts, LM_L_LPR6_Playfield, LM_L_LPR6_RFlipU, LM_L_LPR6_UnderPF)
Dim BL_L_LRI: BL_L_LRI=Array(LM_L_LRI_Parts, LM_L_LRI_Playfield, LM_L_LRI_UnderPF, LM_L_LRI_swRI)
Dim BL_L_LRO: BL_L_LRO=Array(LM_L_LRO_Parts, LM_L_LRO_Playfield, LM_L_LRO_UnderPF, LM_L_LRO_swRO)
Dim BL_L_LS1: BL_L_LS1=Array(LM_L_LS1_BmpTopR, LM_L_LS1_Parts, LM_L_LS1_Playfield, LM_L_LS1_TM1, LM_L_LS1_UnderPF, LM_L_LS1_swLB1)
Dim BL_L_LS2: BL_L_LS2=Array(LM_L_LS2_BmpTopR, LM_L_LS2_Parts, LM_L_LS2_Playfield, LM_L_LS2_UnderPF)
Dim BL_L_LS3: BL_L_LS3=Array(LM_L_LS3_Parts, LM_L_LS3_Playfield, LM_L_LS3_Ship, LM_L_LS3_TMet2, LM_L_LS3_UnderPF)
Dim BL_L_LS4: BL_L_LS4=Array(LM_L_LS4_Parts, LM_L_LS4_Playfield, LM_L_LS4_UnderPF)
Dim BL_L_LS5: BL_L_LS5=Array(LM_L_LS5_Parts, LM_L_LS5_Playfield, LM_L_LS5_RFlip1U, LM_L_LS5_UnderPF)
Dim BL_L_LS6: BL_L_LS6=Array(LM_L_LS6_Parts, LM_L_LS6_Playfield, LM_L_LS6_RFlip1, LM_L_LS6_RFlip1U, LM_L_LS6_UnderPF)
Dim BL_L_LSA: BL_L_LSA=Array(LM_L_LSA_LFlip, LM_L_LSA_LFlipU, LM_L_LSA_Playfield, LM_L_LSA_RFlip, LM_L_LSA_RFlipU, LM_L_LSA_TrustPost, LM_L_LSA_UnderPF)
Dim BL_L_LSC1: BL_L_LSC1=Array(LM_L_LSC1_Parts, LM_L_LSC1_Playfield, LM_L_LSC1_TS1, LM_L_LSC1_TS2, LM_L_LSC1_UnderPF)
Dim BL_L_LSC2: BL_L_LSC2=Array(LM_L_LSC2_Parts, LM_L_LSC2_Playfield, LM_L_LSC2_TS1, LM_L_LSC2_TS2, LM_L_LSC2_TS3, LM_L_LSC2_UnderPF)
Dim BL_L_LSC3: BL_L_LSC3=Array(LM_L_LSC3_Parts, LM_L_LSC3_Playfield, LM_L_LSC3_TS2, LM_L_LSC3_TS3, LM_L_LSC3_TS4, LM_L_LSC3_UnderPF)
Dim BL_L_LSC4: BL_L_LSC4=Array(LM_L_LSC4_Parts, LM_L_LSC4_Playfield, LM_L_LSC4_TS4, LM_L_LSC4_UnderPF)
Dim BL_L_LSL: BL_L_LSL=Array(LM_L_LSL_Parts, LM_L_LSL_Playfield, LM_L_LSL_UnderPF, LM_L_LSL_swLO)
Dim BL_L_LSR: BL_L_LSR=Array(LM_L_LSR_Parts, LM_L_LSR_Playfield, LM_L_LSR_UnderPF, LM_L_LSR_swRO)
Dim BL_L_LShip: BL_L_LShip=Array(LM_L_LShip_Parts, LM_L_LShip_Ship)
Dim BL_L_LSwC1: BL_L_LSwC1=Array(LM_L_LSwC1_Asteroid1, LM_L_LSwC1_Asteroid2, LM_L_LSwC1_Asteroid3, LM_L_LSwC1_Asteroid4, LM_L_LSwC1_Parts, LM_L_LSwC1_Playfield, LM_L_LSwC1_UnderPF, LM_L_LSwC1_swC1, LM_L_LSwC1_swC2)
Dim BL_L_LSwC2: BL_L_LSwC2=Array(LM_L_LSwC2_Asteroid1, LM_L_LSwC2_Asteroid2, LM_L_LSwC2_Asteroid3, LM_L_LSwC2_Asteroid4, LM_L_LSwC2_BmpTopB, LM_L_LSwC2_Parts, LM_L_LSwC2_Playfield, LM_L_LSwC2_TM3, LM_L_LSwC2_UnderPF, LM_L_LSwC2_swC2)
Dim BL_L_LSwC3: BL_L_LSwC3=Array(LM_L_LSwC3_Asteroid1, LM_L_LSwC3_Asteroid2, LM_L_LSwC3_Asteroid3, LM_L_LSwC3_Asteroid4, LM_L_LSwC3_Parts, LM_L_LSwC3_Playfield, LM_L_LSwC3_UnderPF, LM_L_LSwC3_swC2, LM_L_LSwC3_swC3)
Dim BL_L_LSwL1: BL_L_LSwL1=Array(LM_L_LSwL1_BR1, LM_L_LSwL1_BS1, LM_L_LSwL1_BmpTopR, LM_L_LSwL1_Parts, LM_L_LSwL1_Playfield, LM_L_LSwL1_TM1, LM_L_LSwL1_UnderPF, LM_L_LSwL1_swLB1)
Dim BL_L_LSwL2: BL_L_LSwL2=Array(LM_L_LSwL2_BS1, LM_L_LSwL2_BmpBot, LM_L_LSwL2_BmpTopR, LM_L_LSwL2_Parts, LM_L_LSwL2_Playfield, LM_L_LSwL2_UnderPF, LM_L_LSwL2_swLB2)
Dim BL_L_LTW1: BL_L_LTW1=Array(LM_L_LTW1_Parts, LM_L_LTW1_Playfield, LM_L_LTW1_Ramp, LM_L_LTW1_UnderPF)
Dim BL_L_LTW2: BL_L_LTW2=Array(LM_L_LTW2_Parts, LM_L_LTW2_Playfield, LM_L_LTW2_Ramp, LM_L_LTW2_UnderPF)
Dim BL_L_LTW3: BL_L_LTW3=Array(LM_L_LTW3_Parts, LM_L_LTW3_Playfield, LM_L_LTW3_UnderPF)
Dim BL_L_LTW4: BL_L_LTW4=Array(LM_L_LTW4_Parts, LM_L_LTW4_Playfield, LM_L_LTW4_UnderPF)
Dim BL_L_LW1: BL_L_LW1=Array(LM_L_LW1_Parts, LM_L_LW1_Playfield, LM_L_LW1_UnderPF)
Dim BL_L_LW2: BL_L_LW2=Array(LM_L_LW2_Parts, LM_L_LW2_Playfield, LM_L_LW2_UnderPF)
Dim BL_L_LW3: BL_L_LW3=Array(LM_L_LW3_Parts, LM_L_LW3_Playfield, LM_L_LW3_UnderPF)
Dim BL_L_LW4: BL_L_LW4=Array(LM_L_LW4_Parts, LM_L_LW4_Playfield, LM_L_LW4_UnderPF)
Dim BL_L_LW5: BL_L_LW5=Array(LM_L_LW5_Parts, LM_L_LW5_Playfield, LM_L_LW5_UnderPF)
Dim BL_L_LW6: BL_L_LW6=Array(LM_L_LW6_BmpTopR, LM_L_LW6_Parts, LM_L_LW6_Playfield, LM_L_LW6_UnderPF)
Dim BL_L_LW7: BL_L_LW7=Array(LM_L_LW7_BmpTopR, LM_L_LW7_Parts, LM_L_LW7_Playfield, LM_L_LW7_UnderPF)
Dim BL_L_LW8: BL_L_LW8=Array(LM_L_LW8_BmpTopR, LM_L_LW8_Parts, LM_L_LW8_Playfield, LM_L_LW8_UnderPF)
Dim BL_L_LW9: BL_L_LW9=Array(LM_L_LW9_Parts, LM_L_LW9_Playfield, LM_L_LW9_UnderPF)
Dim BL_L_LWiz: BL_L_LWiz=Array(LM_L_LWiz_Parts, LM_L_LWiz_Playfield, LM_L_LWiz_UnderPF)
Dim BL_L_LX: BL_L_LX=Array(LM_L_LX_Parts, LM_L_LX_Playfield, LM_L_LX_UnderPF)
Dim BL_L_Lspot1: BL_L_Lspot1=Array(LM_L_Lspot1_Asteroid1, LM_L_Lspot1_Asteroid2, LM_L_Lspot1_Asteroid3, LM_L_Lspot1_Asteroid4, LM_L_Lspot1_BR4, LM_L_Lspot1_BS4, LM_L_Lspot1_BmpTopB, LM_L_Lspot1_Parts, LM_L_Lspot1_Playfield, LM_L_Lspot1_Ramp, LM_L_Lspot1_Spin, LM_L_Lspot1_SpinU, LM_L_Lspot1_SpinWire, LM_L_Lspot1_TM3, LM_L_Lspot1_TM4, LM_L_Lspot1_UnderPF, LM_L_Lspot1_swC1, LM_L_Lspot1_swC2, LM_L_Lspot1_swC3, LM_L_Lspot1_swI2)
Dim BL_L_Lspot2: BL_L_Lspot2=Array(LM_L_Lspot2_GateL, LM_L_Lspot2_LArm, LM_L_Lspot2_LFlip, LM_L_Lspot2_LFlipU, LM_L_Lspot2_LockPin, LM_L_Lspot2_Lsling1, LM_L_Lspot2_Lsling2, LM_L_Lspot2_Parts, LM_L_Lspot2_Playfield, LM_L_Lspot2_RArm, LM_L_Lspot2_RFlip, LM_L_Lspot2_RFlipU, LM_L_Lspot2_Ramp, LM_L_Lspot2_Rsling1, LM_L_Lspot2_Rsling2, LM_L_Lspot2_UnderPF, LM_L_Lspot2_swLB1, LM_L_Lspot2_swLO)
Dim BL_Stars: BL_Stars=Array(LM_Stars_Parts, LM_Stars_Ramp)
Dim BL_World: BL_World=Array(BM_Asteroid1, BM_BR1, BM_BR2, BM_BR3, BM_BR4, BM_BS1, BM_BS2, BM_BS3, BM_BS4, BM_BmpBot, BM_BmpTopB, BM_BmpTopR, BM_DiverterPin, BM_Gate2, BM_GateL, BM_GateR, BM_LArm, BM_LFlip, BM_LFlipU, BM_LockPin, BM_Lsling1, BM_Lsling2, BM_Parts, BM_Playfield, BM_RArm, BM_RFlip, BM_RFlip1, BM_RFlip1U, BM_RFlipU, BM_Rails, BM_Ramp, BM_Rsling1, BM_Rsling2, BM_Ship, BM_Spin, BM_SpinU, BM_SpinWire, BM_TM1, BM_TM2, BM_TM3, BM_TM4, BM_TM5, BM_TMet1, BM_TMet2, BM_TMet3, BM_TMet4, BM_TS1, BM_TS2, BM_TS3, BM_TS4, BM_TrustPost, BM_UnderPF, BM_swC1, BM_swC2, BM_swC3, BM_swI1, BM_swI2, BM_swL1, BM_swL2, BM_swLB1, BM_swLB2, BM_swLI, BM_swLO, BM_swP1, BM_swP2, BM_swR1, BM_swR2, BM_swRI, BM_swRO)
' Global arrays
Dim BG_Bakemap: BG_Bakemap=Array(BM_Asteroid1, BM_BR1, BM_BR2, BM_BR3, BM_BR4, BM_BS1, BM_BS2, BM_BS3, BM_BS4, BM_BmpBot, BM_BmpTopB, BM_BmpTopR, BM_DiverterPin, BM_Gate2, BM_GateL, BM_GateR, BM_LArm, BM_LFlip, BM_LFlipU, BM_LockPin, BM_Lsling1, BM_Lsling2, BM_Parts, BM_Playfield, BM_RArm, BM_RFlip, BM_RFlip1, BM_RFlip1U, BM_RFlipU, BM_Rails, BM_Ramp, BM_Rsling1, BM_Rsling2, BM_Ship, BM_Spin, BM_SpinU, BM_SpinWire, BM_TM1, BM_TM2, BM_TM3, BM_TM4, BM_TM5, BM_TMet1, BM_TMet2, BM_TMet3, BM_TMet4, BM_TS1, BM_TS2, BM_TS3, BM_TS4, BM_TrustPost, BM_UnderPF, BM_swC1, BM_swC2, BM_swC3, BM_swI1, BM_swI2, BM_swL1, BM_swL2, BM_swLB1, BM_swLB2, BM_swLI, BM_swLO, BM_swP1, BM_swP2, BM_swR1, BM_swR2, BM_swRI, BM_swRO)
Dim BG_Lightmap: BG_Lightmap=Array(LM_D_a00_Parts, LM_D_a00_Playfield, LM_D_a00_RFlipU, LM_D_a00_UnderPF, LM_D_a01_Parts, LM_D_a01_Playfield, LM_D_a01_RFlipU, LM_D_a01_UnderPF, LM_D_a02_Parts, LM_D_a02_Playfield, LM_D_a03_Parts, LM_D_a03_Playfield, LM_D_a04_Parts, LM_D_a04_Playfield, LM_D_a05_Parts, LM_D_a05_Playfield, LM_D_a05_UnderPF, LM_D_a06_Parts, LM_D_a06_Playfield, LM_D_a06_RFlipU, LM_D_a10_Parts, LM_D_a10_Playfield, LM_D_a10_UnderPF, LM_D_a11_Parts, LM_D_a11_Playfield, LM_D_a11_UnderPF, LM_D_a12_Parts, LM_D_a12_Playfield, LM_D_a13_Parts, LM_D_a13_Playfield, LM_D_a14_Parts, LM_D_a14_Playfield, LM_D_a15_LFlip, LM_D_a15_LFlipU, LM_D_a15_Parts, LM_D_a15_Playfield, LM_D_a15_UnderPF, LM_D_a16_Parts, LM_D_a16_Playfield, LM_F_FL1_Asteroid1, LM_F_FL1_Asteroid2, LM_F_FL1_Asteroid3, LM_F_FL1_Asteroid4, LM_F_FL1_BR2, LM_F_FL1_BR3, LM_F_FL1_BR4, LM_F_FL1_BS2, LM_F_FL1_BS3, LM_F_FL1_BS4, LM_F_FL1_BmpBot, LM_F_FL1_BmpTopB, LM_F_FL1_DiverterPin, LM_F_FL1_Gate2, LM_F_FL1_GateR, LM_F_FL1_LArm, LM_F_FL1_LockPin, _
	LM_F_FL1_Lsling1, LM_F_FL1_Parts, LM_F_FL1_Playfield, LM_F_FL1_RFlip1, LM_F_FL1_RFlip1U, LM_F_FL1_Rails, LM_F_FL1_Ramp, LM_F_FL1_Rsling2, LM_F_FL1_Ship, LM_F_FL1_Spin, LM_F_FL1_SpinU, LM_F_FL1_TM2, LM_F_FL1_TM3, LM_F_FL1_TM4, LM_F_FL1_TM5, LM_F_FL1_UnderPF, LM_F_FL1_swC3, LM_F_FL1_swI2, LM_F_FL1_swR1, LM_F_FL1_swR2, LM_F_FL2_Asteroid1, LM_F_FL2_Asteroid2, LM_F_FL2_Asteroid3, LM_F_FL2_Asteroid4, LM_F_FL2_BR2, LM_F_FL2_BR3, LM_F_FL2_BR4, LM_F_FL2_BS2, LM_F_FL2_BS3, LM_F_FL2_BS4, LM_F_FL2_BmpBot, LM_F_FL2_BmpTopB, LM_F_FL2_DiverterPin, LM_F_FL2_GateL, LM_F_FL2_GateR, LM_F_FL2_LockPin, LM_F_FL2_Parts, LM_F_FL2_Playfield, LM_F_FL2_Ramp, LM_F_FL2_Ship, LM_F_FL2_Spin, LM_F_FL2_SpinU, LM_F_FL2_SpinWire, LM_F_FL2_TM2, LM_F_FL2_TM3, LM_F_FL2_TM4, LM_F_FL2_UnderPF, LM_F_FL2_swC1, LM_F_FL2_swC2, LM_F_FL2_swC3, LM_F_FL2_swI1, LM_F_FL2_swI2, LM_F_FL2_swL1, LM_F_FL2_swL2, LM_F_FL2_swR2, LM_F_FL3_Asteroid1, LM_F_FL3_Asteroid2, LM_F_FL3_Asteroid3, LM_F_FL3_Asteroid4, LM_F_FL3_BR2, LM_F_FL3_BR3, LM_F_FL3_BR4, LM_F_FL3_BS2, _
	LM_F_FL3_BS3, LM_F_FL3_BS4, LM_F_FL3_BmpBot, LM_F_FL3_BmpTopB, LM_F_FL3_DiverterPin, LM_F_FL3_GateL, LM_F_FL3_GateR, LM_F_FL3_LockPin, LM_F_FL3_Parts, LM_F_FL3_Playfield, LM_F_FL3_Ramp, LM_F_FL3_Ship, LM_F_FL3_Spin, LM_F_FL3_SpinU, LM_F_FL3_SpinWire, LM_F_FL3_TM3, LM_F_FL3_TM4, LM_F_FL3_UnderPF, LM_F_FL3_swC1, LM_F_FL3_swC2, LM_F_FL3_swC3, LM_F_FL3_swI1, LM_F_FL3_swI2, LM_F_FL3_swL1, LM_F_FL3_swL2, LM_F_FL3_swR1, LM_F_FL3_swR2, LM_F_FL4_Asteroid1, LM_F_FL4_Asteroid2, LM_F_FL4_Asteroid3, LM_F_FL4_Asteroid4, LM_F_FL4_BmpTopB, LM_F_FL4_GateR, LM_F_FL4_Parts, LM_F_FL4_Playfield, LM_F_FL4_RFlip1, LM_F_FL4_RFlip1U, LM_F_FL4_Ramp, LM_F_FL4_Spin, LM_F_FL4_SpinU, LM_F_FL4_TM2, LM_F_FL4_TM3, LM_F_FL4_TM4, LM_F_FL4_UnderPF, LM_F_FL4_swC1, LM_F_FL4_swC2, LM_F_FL4_swC3, LM_F_FL5_BR1, LM_F_FL5_BR4, LM_F_FL5_LArm, LM_F_FL5_LFlip, LM_F_FL5_LFlipU, LM_F_FL5_Lsling1, LM_F_FL5_Lsling2, LM_F_FL5_Parts, LM_F_FL5_Playfield, LM_F_FL5_RArm, LM_F_FL5_RFlip, LM_F_FL5_RFlipU, LM_F_FL5_Rsling1, LM_F_FL5_Rsling2, LM_F_FL5_TM1, _
	LM_F_FL5_TrustPost, LM_F_FL5_UnderPF, LM_F_FL5_swLB1, LM_F_FL5_swLI, LM_F_FL5_swLO, LM_F_FL5_swRI, LM_F_FL6_BR1, LM_F_FL6_BS1, LM_F_FL6_LArm, LM_F_FL6_LFlip, LM_F_FL6_LFlipU, LM_F_FL6_Lsling1, LM_F_FL6_Lsling2, LM_F_FL6_Parts, LM_F_FL6_Playfield, LM_F_FL6_RArm, LM_F_FL6_RFlip, LM_F_FL6_RFlipU, LM_F_FL6_Ramp, LM_F_FL6_Rsling1, LM_F_FL6_Rsling2, LM_F_FL6_TS2, LM_F_FL6_TS3, LM_F_FL6_TS4, LM_F_FL6_TrustPost, LM_F_FL6_UnderPF, LM_F_FL6_swC1, LM_F_FL6_swRI, LM_F_FL6_swRO, LM_F_FL7_Asteroid1, LM_F_FL7_Asteroid2, LM_F_FL7_Asteroid3, LM_F_FL7_Asteroid4, LM_F_FL7_BR2, LM_F_FL7_BR3, LM_F_FL7_BR4, LM_F_FL7_BS2, LM_F_FL7_BS3, LM_F_FL7_BS4, LM_F_FL7_BmpBot, LM_F_FL7_BmpTopB, LM_F_FL7_DiverterPin, LM_F_FL7_GateL, LM_F_FL7_GateR, LM_F_FL7_LockPin, LM_F_FL7_Parts, LM_F_FL7_Playfield, LM_F_FL7_Ramp, LM_F_FL7_Ship, LM_F_FL7_Spin, LM_F_FL7_SpinU, LM_F_FL7_SpinWire, LM_F_FL7_TM2, LM_F_FL7_TM3, LM_F_FL7_TM4, LM_F_FL7_TM5, LM_F_FL7_UnderPF, LM_F_FL7_swC1, LM_F_FL7_swC2, LM_F_FL7_swC3, LM_F_FL7_swI1, LM_F_FL7_swI2, LM_F_FL7_swL1, _
	LM_F_FL7_swL2, LM_F_FL7_swR1, LM_F_FL7_swR2, LM_GI_gi01_LArm, LM_GI_gi01_LFlip, LM_GI_gi01_LFlipU, LM_GI_gi01_Lsling1, LM_GI_gi01_Lsling2, LM_GI_gi01_Parts, LM_GI_gi01_Playfield, LM_GI_gi01_RFlip, LM_GI_gi01_RFlipU, LM_GI_gi01_UnderPF, LM_GI_gi01_swLI, LM_GI_gi01_swLO, LM_GI_gi02_LArm, LM_GI_gi02_LFlip, LM_GI_gi02_LFlipU, LM_GI_gi02_Parts, LM_GI_gi02_Playfield, LM_GI_gi02_RFlip, LM_GI_gi02_RFlipU, LM_GI_gi02_UnderPF, LM_GI_gi02_swLI, LM_GI_gi02_swLO, LM_GI_gi03_LArm, LM_GI_gi03_LFlip, LM_GI_gi03_LFlipU, LM_GI_gi03_Lsling1, LM_GI_gi03_Lsling2, LM_GI_gi03_Parts, LM_GI_gi03_Playfield, LM_GI_gi03_RFlip, LM_GI_gi03_RFlipU, LM_GI_gi03_UnderPF, LM_GI_gi03_swLI, LM_GI_gi03_swLO, LM_GI_gi04_BmpTopR, LM_GI_gi04_LArm, LM_GI_gi04_LFlip, LM_GI_gi04_LFlipU, LM_GI_gi04_Lsling1, LM_GI_gi04_Lsling2, LM_GI_gi04_Parts, LM_GI_gi04_Playfield, LM_GI_gi04_UnderPF, LM_GI_gi04_swLI, LM_GI_gi04_swLO, LM_GI_gi05_Parts, LM_GI_gi05_Playfield, LM_GI_gi05_RArm, LM_GI_gi05_RFlip, LM_GI_gi05_RFlipU, LM_GI_gi05_Rsling1, LM_GI_gi05_Rsling2, _
	LM_GI_gi05_UnderPF, LM_GI_gi05_swRI, LM_GI_gi06_Parts, LM_GI_gi06_Playfield, LM_GI_gi06_RArm, LM_GI_gi06_RFlip, LM_GI_gi06_RFlipU, LM_GI_gi06_Rsling1, LM_GI_gi06_UnderPF, LM_GI_gi06_swRI, LM_GI_gi07_LFlip, LM_GI_gi07_LFlipU, LM_GI_gi07_Lsling2, LM_GI_gi07_Parts, LM_GI_gi07_Playfield, LM_GI_gi07_RArm, LM_GI_gi07_RFlip, LM_GI_gi07_RFlipU, LM_GI_gi07_Rsling1, LM_GI_gi07_Rsling2, LM_GI_gi07_UnderPF, LM_GI_gi07_swRI, LM_GI_gi07_swRO, LM_GI_gi08_Parts, LM_GI_gi08_Playfield, LM_GI_gi08_RArm, LM_GI_gi08_RFlip, LM_GI_gi08_RFlipU, LM_GI_gi08_Rsling1, LM_GI_gi08_Rsling2, LM_GI_gi08_UnderPF, LM_GI_gi08_swRI, LM_GI_gi09_Parts, LM_GI_gi09_Playfield, LM_GI_gi09_swLI, LM_GI_gi10_Gate2, LM_GI_gi10_Parts, LM_GI_gi10_Playfield, LM_GI_gi10_RFlip1U, LM_GI_gi10_TS1, LM_GI_gi10_TS2, LM_GI_gi10_TS3, LM_GI_gi10_TS4, LM_GI_gi10_UnderPF, LM_GI_gi11_Parts, LM_GI_gi11_Playfield, LM_GI_gi12_Parts, LM_GI_gi12_Playfield, LM_GI_gi13_BR4, LM_GI_gi13_BS2, LM_GI_gi13_BS4, LM_GI_gi13_BmpBot, LM_GI_gi13_BmpTopB, LM_GI_gi13_GateR, _
	LM_GI_gi13_Parts, LM_GI_gi13_Playfield, LM_GI_gi13_RFlip1U, LM_GI_gi13_TM4, LM_GI_gi13_TM5, LM_GI_gi13_UnderPF, LM_GI_gi14_Gate2, LM_GI_gi14_LockPin, LM_GI_gi14_Parts, LM_GI_gi14_Playfield, LM_GI_gi14_RFlip1, LM_GI_gi14_RFlip1U, LM_GI_gi14_TM5, LM_GI_gi15_LockPin, LM_GI_gi15_Parts, LM_GI_gi15_Playfield, LM_GI_gi15_RFlip1, LM_GI_gi15_RFlip1U, LM_GI_gi15_UnderPF, LM_GI_gi16_Asteroid1, LM_GI_gi16_Asteroid2, LM_GI_gi16_Asteroid3, LM_GI_gi16_Asteroid4, LM_GI_gi16_BR2, LM_GI_gi16_BR3, LM_GI_gi16_BR4, LM_GI_gi16_BS2, LM_GI_gi16_BS3, LM_GI_gi16_BS4, LM_GI_gi16_BmpBot, LM_GI_gi16_BmpTopB, LM_GI_gi16_GateR, LM_GI_gi16_Parts, LM_GI_gi16_Playfield, LM_GI_gi16_Ramp, LM_GI_gi16_TM4, LM_GI_gi16_UnderPF, LM_GI_gi16_swC3, LM_GI_gi17_BR2, LM_GI_gi17_Parts, LM_GI_gi17_Playfield, LM_GI_gi18_Parts, LM_GI_gi18_Playfield, LM_GI_gi19_LockPin, LM_GI_gi19_Parts, LM_GI_gi19_Playfield, LM_GI_gi19_RFlip1, LM_GI_gi19_RFlip1U, LM_GI_gi19_TM5, LM_GI_gi19_UnderPF, LM_GI_gi20_Asteroid1, LM_GI_gi20_Asteroid2, LM_GI_gi20_Asteroid3, _
	LM_GI_gi20_Asteroid4, LM_GI_gi20_GateL, LM_GI_gi20_Parts, LM_GI_gi20_Playfield, LM_GI_gi20_Ramp, LM_GI_gi20_Spin, LM_GI_gi20_SpinU, LM_GI_gi20_SpinWire, LM_GI_gi20_TM2, LM_GI_gi20_UnderPF, LM_GI_gi20_swC1, LM_GI_gi20_swI1, LM_GI_gi20_swL1, LM_GI_gi20_swL2, LM_GI_gi21_Asteroid1, LM_GI_gi21_Asteroid2, LM_GI_gi21_Asteroid3, LM_GI_gi21_Asteroid4, LM_GI_gi21_GateL, LM_GI_gi21_Parts, LM_GI_gi21_Playfield, LM_GI_gi21_Ramp, LM_GI_gi21_Spin, LM_GI_gi21_SpinU, LM_GI_gi21_SpinWire, LM_GI_gi21_TM2, LM_GI_gi21_swL1, LM_GI_gi21_swL2, LM_GI_giapron_LFlip, LM_GI_giapron_LFlipU, LM_GI_giapron_Lsling1, LM_GI_giapron_Lsling2, LM_GI_giapron_Parts, LM_GI_giapron_Playfield, LM_GI_giapron_RFlip, LM_GI_giapron_RFlipU, LM_GI_giapron_Rsling1, LM_GI_giapron_Rsling2, LM_GI_giapron_TrustPost, LM_L_LB1_BR1, LM_L_LB1_BS1, LM_L_LB1_BmpBot, LM_L_LB1_BmpTopR, LM_L_LB1_LockPin, LM_L_LB1_Parts, LM_L_LB1_Playfield, LM_L_LB1_RFlip1, LM_L_LB1_RFlip1U, LM_L_LB1_Ramp, LM_L_LB1_Rsling1, LM_L_LB1_Rsling2, LM_L_LB1_Ship, LM_L_LB1_TM1, LM_L_LB1_TM2, _
	LM_L_LB1_TMet1, LM_L_LB1_TS2, LM_L_LB1_UnderPF, LM_L_LB1_swLB1, LM_L_LB1_swLB2, LM_L_LB2_Asteroid1, LM_L_LB2_Asteroid2, LM_L_LB2_Asteroid3, LM_L_LB2_Asteroid4, LM_L_LB2_BR2, LM_L_LB2_BR3, LM_L_LB2_BR4, LM_L_LB2_BS2, LM_L_LB2_BS3, LM_L_LB2_BS4, LM_L_LB2_BmpBot, LM_L_LB2_BmpTopB, LM_L_LB2_DiverterPin, LM_L_LB2_Parts, LM_L_LB2_Playfield, LM_L_LB2_swR2, LM_L_LB3_Asteroid1, LM_L_LB3_Asteroid2, LM_L_LB3_Asteroid3, LM_L_LB3_Asteroid4, LM_L_LB3_BR2, LM_L_LB3_BR3, LM_L_LB3_BR4, LM_L_LB3_BS2, LM_L_LB3_BS3, LM_L_LB3_BS4, LM_L_LB3_BmpBot, LM_L_LB3_BmpTopB, LM_L_LB3_DiverterPin, LM_L_LB3_Parts, LM_L_LB3_Playfield, LM_L_LB3_Spin, LM_L_LB3_TM3, LM_L_LB3_TM4, LM_L_LB3_UnderPF, LM_L_LB3_swC3, LM_L_LB3_swI2, LM_L_LB4_Asteroid1, LM_L_LB4_Asteroid2, LM_L_LB4_Asteroid3, LM_L_LB4_Asteroid4, LM_L_LB4_BR2, LM_L_LB4_BR3, LM_L_LB4_BR4, LM_L_LB4_BS2, LM_L_LB4_BS3, LM_L_LB4_BS4, LM_L_LB4_BmpBot, LM_L_LB4_BmpTopB, LM_L_LB4_GateR, LM_L_LB4_Parts, LM_L_LB4_Playfield, LM_L_LB4_TM4, LM_L_LB4_UnderPF, LM_L_LB4_swC3, LM_L_LB4_swR1, _
	LM_L_LC1_LFlip, LM_L_LC1_LFlipU, LM_L_LC1_Parts, LM_L_LC1_Playfield, LM_L_LC1_UnderPF, LM_L_LC2_LFlip, LM_L_LC2_LFlipU, LM_L_LC2_Parts, LM_L_LC2_Playfield, LM_L_LC2_UnderPF, LM_L_LC3_LFlipU, LM_L_LC3_Playfield, LM_L_LC3_UnderPF, LM_L_LC4_LFlipU, LM_L_LC4_Playfield, LM_L_LC4_UnderPF, LM_L_LC5_Playfield, LM_L_LC5_RFlipU, LM_L_LC5_UnderPF, LM_L_LC6_Playfield, LM_L_LC6_RFlipU, LM_L_LC6_UnderPF, LM_L_LC7_Playfield, LM_L_LC7_RFlipU, LM_L_LC7_UnderPF, LM_L_LC8_Parts, LM_L_LC8_Playfield, LM_L_LC8_RFlip, LM_L_LC8_RFlipU, LM_L_LC8_UnderPF, LM_L_LCC1_Parts, LM_L_LCC1_Playfield, LM_L_LCC1_Ramp, LM_L_LCC1_UnderPF, LM_L_LCC2_Parts, LM_L_LCC2_Playfield, LM_L_LCC2_UnderPF, LM_L_LCC3_Parts, LM_L_LCC3_Playfield, LM_L_LCC3_UnderPF, LM_L_LCR1_Lsling1, LM_L_LCR1_Lsling2, LM_L_LCR1_Parts, LM_L_LCR1_Playfield, LM_L_LCR1_UnderPF, LM_L_LCR2_Lsling1, LM_L_LCR2_Lsling2, LM_L_LCR2_Parts, LM_L_LCR2_Playfield, LM_L_LCR2_UnderPF, LM_L_LCWiz_Parts, LM_L_LCWiz_Playfield, LM_L_LCWiz_UnderPF, LM_L_LEBR_Parts, LM_L_LEBR_Playfield, _
	LM_L_LEBR_TM4, LM_L_LEBR_UnderPF, LM_L_LF1_Parts, LM_L_LF1_Playfield, LM_L_LF1_UnderPF, LM_L_LF1_swR1, LM_L_LF2_Parts, LM_L_LF2_Playfield, LM_L_LF2_TM5, LM_L_LF2_UnderPF, LM_L_LF2_swR1, LM_L_LF3_Parts, LM_L_LF3_Playfield, LM_L_LF3_RFlip1U, LM_L_LF3_TM5, LM_L_LF3_UnderPF, LM_L_LH1_LFlip, LM_L_LH1_LFlipU, LM_L_LH1_Parts, LM_L_LH1_Playfield, LM_L_LH1_UnderPF, LM_L_LH2_LFlip, LM_L_LH2_LFlipU, LM_L_LH2_Playfield, LM_L_LH2_UnderPF, LM_L_LH3_LFlip, LM_L_LH3_LFlipU, LM_L_LH3_Playfield, LM_L_LH3_UnderPF, LM_L_LH4_LFlip, LM_L_LH4_LFlipU, LM_L_LH4_Playfield, LM_L_LH4_UnderPF, LM_L_LH5_LFlipU, LM_L_LH5_Playfield, LM_L_LH5_RFlipU, LM_L_LH5_UnderPF, LM_L_LH6_Playfield, LM_L_LH6_RFlipU, LM_L_LH6_UnderPF, LM_L_LH7_Playfield, LM_L_LH7_RFlip, LM_L_LH7_RFlipU, LM_L_LH7_UnderPF, LM_L_LH8_Playfield, LM_L_LH8_RFlip, LM_L_LH8_RFlipU, LM_L_LH8_UnderPF, LM_L_LH9_Parts, LM_L_LH9_Playfield, LM_L_LH9_RFlip, LM_L_LH9_RFlipU, LM_L_LH9_UnderPF, LM_L_LLI_Parts, LM_L_LLI_Playfield, LM_L_LLI_UnderPF, LM_L_LLI_swLI, LM_L_LLO_Parts, _
	LM_L_LLO_Playfield, LM_L_LLO_UnderPF, LM_L_LLO_swLO, LM_L_LLWiz_Parts, LM_L_LLWiz_Playfield, LM_L_LLWiz_UnderPF, LM_L_LM1_Parts, LM_L_LM1_Playfield, LM_L_LM1_TM1, LM_L_LM1_UnderPF, LM_L_LM2_Parts, LM_L_LM2_Playfield, LM_L_LM2_TM2, LM_L_LM2_UnderPF, LM_L_LM3_Asteroid1, LM_L_LM3_Asteroid2, LM_L_LM3_Asteroid3, LM_L_LM3_Asteroid4, LM_L_LM3_Playfield, LM_L_LM3_TM3, LM_L_LM3_UnderPF, LM_L_LM4_Parts, LM_L_LM4_Playfield, LM_L_LM4_TM4, LM_L_LM4_UnderPF, LM_L_LM5_Parts, LM_L_LM5_Playfield, LM_L_LM5_TM5, LM_L_LM5_UnderPF, LM_L_LMLR_Parts, LM_L_LMLR_Playfield, LM_L_LMLR_TM5, LM_L_LMLR_UnderPF, LM_L_LMR_GateR, LM_L_LMR_Parts, LM_L_LMR_Playfield, LM_L_LMR_TM4, LM_L_LMR_UnderPF, LM_L_LMR1_Parts, LM_L_LMR1_Playfield, LM_L_LMR1_Rsling1, LM_L_LMR1_Rsling2, LM_L_LMR1_UnderPF, LM_L_LMR2_Parts, LM_L_LMR2_Playfield, LM_L_LMR2_Rsling1, LM_L_LMR2_Rsling2, LM_L_LMR2_UnderPF, LM_L_LMet1_BR1, LM_L_LMet1_BS1, LM_L_LMet1_BmpTopR, LM_L_LMet1_Parts, LM_L_LMet1_Playfield, LM_L_LMet1_TMet1, LM_L_LMet1_UnderPF, LM_L_LMet2_BmpTopR, _
	LM_L_LMet2_Parts, LM_L_LMet2_Playfield, LM_L_LMet2_TMet2, LM_L_LMet2_UnderPF, LM_L_LMet3_Parts, LM_L_LMet3_Playfield, LM_L_LMet3_TMet3, LM_L_LMet3_UnderPF, LM_L_LMet4_Parts, LM_L_LMet4_Playfield, LM_L_LMet4_TMet4, LM_L_LMet4_UnderPF, LM_L_LPC1_Asteroid1, LM_L_LPC1_Asteroid4, LM_L_LPC1_GateL, LM_L_LPC1_Parts, LM_L_LPC1_Playfield, LM_L_LPC1_Ramp, LM_L_LPC1_SpinU, LM_L_LPC1_TM2, LM_L_LPC1_UnderPF, LM_L_LPC2_Parts, LM_L_LPC2_Playfield, LM_L_LPC2_TM2, LM_L_LPC2_UnderPF, LM_L_LPC3_Parts, LM_L_LPC3_Playfield, LM_L_LPC3_UnderPF, LM_L_LPC4_Asteroid1, LM_L_LPC4_Asteroid2, LM_L_LPC4_Asteroid3, LM_L_LPC4_Asteroid4, LM_L_LPC4_Parts, LM_L_LPC4_Playfield, LM_L_LPC4_Ramp, LM_L_LPC4_TM3, LM_L_LPC4_UnderPF, LM_L_LPC4_swC1, LM_L_LPC5_Asteroid1, LM_L_LPC5_Asteroid2, LM_L_LPC5_Asteroid3, LM_L_LPC5_Asteroid4, LM_L_LPC5_Parts, LM_L_LPC5_Playfield, LM_L_LPC5_TM3, LM_L_LPC5_TM4, LM_L_LPC5_UnderPF, LM_L_LPC5_swC3, LM_L_LPF_Asteroid1, LM_L_LPF_Asteroid2, LM_L_LPF_Asteroid3, LM_L_LPF_Asteroid4, LM_L_LPF_Playfield, LM_L_LPF_TM3, _
	LM_L_LPF_UnderPF, LM_L_LPR1_Parts, LM_L_LPR1_Playfield, LM_L_LPR1_UnderPF, LM_L_LPR2_Parts, LM_L_LPR2_Playfield, LM_L_LPR2_UnderPF, LM_L_LPR3_Parts, LM_L_LPR3_Playfield, LM_L_LPR3_UnderPF, LM_L_LPR4_LFlip, LM_L_LPR4_LFlipU, LM_L_LPR4_Parts, LM_L_LPR4_Playfield, LM_L_LPR4_UnderPF, LM_L_LPR5_LFlipU, LM_L_LPR5_Parts, LM_L_LPR5_Playfield, LM_L_LPR5_RFlipU, LM_L_LPR5_UnderPF, LM_L_LPR6_Parts, LM_L_LPR6_Playfield, LM_L_LPR6_RFlipU, LM_L_LPR6_UnderPF, LM_L_LRI_Parts, LM_L_LRI_Playfield, LM_L_LRI_UnderPF, LM_L_LRI_swRI, LM_L_LRO_Parts, LM_L_LRO_Playfield, LM_L_LRO_UnderPF, LM_L_LRO_swRO, LM_L_LS1_BmpTopR, LM_L_LS1_Parts, LM_L_LS1_Playfield, LM_L_LS1_TM1, LM_L_LS1_UnderPF, LM_L_LS1_swLB1, LM_L_LS2_BmpTopR, LM_L_LS2_Parts, LM_L_LS2_Playfield, LM_L_LS2_UnderPF, LM_L_LS3_Parts, LM_L_LS3_Playfield, LM_L_LS3_Ship, LM_L_LS3_TMet2, LM_L_LS3_UnderPF, LM_L_LS4_Parts, LM_L_LS4_Playfield, LM_L_LS4_UnderPF, LM_L_LS5_Parts, LM_L_LS5_Playfield, LM_L_LS5_RFlip1U, LM_L_LS5_UnderPF, LM_L_LS6_Parts, LM_L_LS6_Playfield, LM_L_LS6_RFlip1, _
	LM_L_LS6_RFlip1U, LM_L_LS6_UnderPF, LM_L_LSA_LFlip, LM_L_LSA_LFlipU, LM_L_LSA_Playfield, LM_L_LSA_RFlip, LM_L_LSA_RFlipU, LM_L_LSA_TrustPost, LM_L_LSA_UnderPF, LM_L_LSC1_Parts, LM_L_LSC1_Playfield, LM_L_LSC1_TS1, LM_L_LSC1_TS2, LM_L_LSC1_UnderPF, LM_L_LSC2_Parts, LM_L_LSC2_Playfield, LM_L_LSC2_TS1, LM_L_LSC2_TS2, LM_L_LSC2_TS3, LM_L_LSC2_UnderPF, LM_L_LSC3_Parts, LM_L_LSC3_Playfield, LM_L_LSC3_TS2, LM_L_LSC3_TS3, LM_L_LSC3_TS4, LM_L_LSC3_UnderPF, LM_L_LSC4_Parts, LM_L_LSC4_Playfield, LM_L_LSC4_TS4, LM_L_LSC4_UnderPF, LM_L_LSL_Parts, LM_L_LSL_Playfield, LM_L_LSL_UnderPF, LM_L_LSL_swLO, LM_L_LSR_Parts, LM_L_LSR_Playfield, LM_L_LSR_UnderPF, LM_L_LSR_swRO, LM_L_LShip_Parts, LM_L_LShip_Ship, LM_L_LSwC1_Asteroid1, LM_L_LSwC1_Asteroid2, LM_L_LSwC1_Asteroid3, LM_L_LSwC1_Asteroid4, LM_L_LSwC1_Parts, LM_L_LSwC1_Playfield, LM_L_LSwC1_UnderPF, LM_L_LSwC1_swC1, LM_L_LSwC1_swC2, LM_L_LSwC2_Asteroid1, LM_L_LSwC2_Asteroid2, LM_L_LSwC2_Asteroid3, LM_L_LSwC2_Asteroid4, LM_L_LSwC2_BmpTopB, LM_L_LSwC2_Parts, _
	LM_L_LSwC2_Playfield, LM_L_LSwC2_TM3, LM_L_LSwC2_UnderPF, LM_L_LSwC2_swC2, LM_L_LSwC3_Asteroid1, LM_L_LSwC3_Asteroid2, LM_L_LSwC3_Asteroid3, LM_L_LSwC3_Asteroid4, LM_L_LSwC3_Parts, LM_L_LSwC3_Playfield, LM_L_LSwC3_UnderPF, LM_L_LSwC3_swC2, LM_L_LSwC3_swC3, LM_L_LSwL1_BR1, LM_L_LSwL1_BS1, LM_L_LSwL1_BmpTopR, LM_L_LSwL1_Parts, LM_L_LSwL1_Playfield, LM_L_LSwL1_TM1, LM_L_LSwL1_UnderPF, LM_L_LSwL1_swLB1, LM_L_LSwL2_BS1, LM_L_LSwL2_BmpBot, LM_L_LSwL2_BmpTopR, LM_L_LSwL2_Parts, LM_L_LSwL2_Playfield, LM_L_LSwL2_UnderPF, LM_L_LSwL2_swLB2, LM_L_LTW1_Parts, LM_L_LTW1_Playfield, LM_L_LTW1_Ramp, LM_L_LTW1_UnderPF, LM_L_LTW2_Parts, LM_L_LTW2_Playfield, LM_L_LTW2_Ramp, LM_L_LTW2_UnderPF, LM_L_LTW3_Parts, LM_L_LTW3_Playfield, LM_L_LTW3_UnderPF, LM_L_LTW4_Parts, LM_L_LTW4_Playfield, LM_L_LTW4_UnderPF, LM_L_LW1_Parts, LM_L_LW1_Playfield, LM_L_LW1_UnderPF, LM_L_LW2_Parts, LM_L_LW2_Playfield, LM_L_LW2_UnderPF, LM_L_LW3_Parts, LM_L_LW3_Playfield, LM_L_LW3_UnderPF, LM_L_LW4_Parts, LM_L_LW4_Playfield, LM_L_LW4_UnderPF, _
	LM_L_LW5_Parts, LM_L_LW5_Playfield, LM_L_LW5_UnderPF, LM_L_LW6_BmpTopR, LM_L_LW6_Parts, LM_L_LW6_Playfield, LM_L_LW6_UnderPF, LM_L_LW7_BmpTopR, LM_L_LW7_Parts, LM_L_LW7_Playfield, LM_L_LW7_UnderPF, LM_L_LW8_BmpTopR, LM_L_LW8_Parts, LM_L_LW8_Playfield, LM_L_LW8_UnderPF, LM_L_LW9_Parts, LM_L_LW9_Playfield, LM_L_LW9_UnderPF, LM_L_LWiz_Parts, LM_L_LWiz_Playfield, LM_L_LWiz_UnderPF, LM_L_LX_Parts, LM_L_LX_Playfield, LM_L_LX_UnderPF, LM_L_Lspot1_Asteroid1, LM_L_Lspot1_Asteroid2, LM_L_Lspot1_Asteroid3, LM_L_Lspot1_Asteroid4, LM_L_Lspot1_BR4, LM_L_Lspot1_BS4, LM_L_Lspot1_BmpTopB, LM_L_Lspot1_Parts, LM_L_Lspot1_Playfield, LM_L_Lspot1_Ramp, LM_L_Lspot1_Spin, LM_L_Lspot1_SpinU, LM_L_Lspot1_SpinWire, LM_L_Lspot1_TM3, LM_L_Lspot1_TM4, LM_L_Lspot1_UnderPF, LM_L_Lspot1_swC1, LM_L_Lspot1_swC2, LM_L_Lspot1_swC3, LM_L_Lspot1_swI2, LM_L_Lspot2_GateL, LM_L_Lspot2_LArm, LM_L_Lspot2_LFlip, LM_L_Lspot2_LFlipU, LM_L_Lspot2_LockPin, LM_L_Lspot2_Lsling1, LM_L_Lspot2_Lsling2, LM_L_Lspot2_Parts, LM_L_Lspot2_Playfield, LM_L_Lspot2_RArm, _
	LM_L_Lspot2_RFlip, LM_L_Lspot2_RFlipU, LM_L_Lspot2_Ramp, LM_L_Lspot2_Rsling1, LM_L_Lspot2_Rsling2, LM_L_Lspot2_UnderPF, LM_L_Lspot2_swLB1, LM_L_Lspot2_swLO, LM_Stars_Parts, LM_Stars_Ramp)
Dim BG_All: BG_All=Array(BM_Asteroid1, BM_BR1, BM_BR2, BM_BR3, BM_BR4, BM_BS1, BM_BS2, BM_BS3, BM_BS4, BM_BmpBot, BM_BmpTopB, BM_BmpTopR, BM_DiverterPin, BM_Gate2, BM_GateL, BM_GateR, BM_LArm, BM_LFlip, BM_LFlipU, BM_LockPin, BM_Lsling1, BM_Lsling2, BM_Parts, BM_Playfield, BM_RArm, BM_RFlip, BM_RFlip1, BM_RFlip1U, BM_RFlipU, BM_Rails, BM_Ramp, BM_Rsling1, BM_Rsling2, BM_Ship, BM_Spin, BM_SpinU, BM_SpinWire, BM_TM1, BM_TM2, BM_TM3, BM_TM4, BM_TM5, BM_TMet1, BM_TMet2, BM_TMet3, BM_TMet4, BM_TS1, BM_TS2, BM_TS3, BM_TS4, BM_TrustPost, BM_UnderPF, BM_swC1, BM_swC2, BM_swC3, BM_swI1, BM_swI2, BM_swL1, BM_swL2, BM_swLB1, BM_swLB2, BM_swLI, BM_swLO, BM_swP1, BM_swP2, BM_swR1, BM_swR2, BM_swRI, BM_swRO, LM_D_a00_Parts, LM_D_a00_Playfield, LM_D_a00_RFlipU, LM_D_a00_UnderPF, LM_D_a01_Parts, LM_D_a01_Playfield, LM_D_a01_RFlipU, LM_D_a01_UnderPF, LM_D_a02_Parts, LM_D_a02_Playfield, LM_D_a03_Parts, LM_D_a03_Playfield, LM_D_a04_Parts, LM_D_a04_Playfield, LM_D_a05_Parts, LM_D_a05_Playfield, LM_D_a05_UnderPF, LM_D_a06_Parts, _
	LM_D_a06_Playfield, LM_D_a06_RFlipU, LM_D_a10_Parts, LM_D_a10_Playfield, LM_D_a10_UnderPF, LM_D_a11_Parts, LM_D_a11_Playfield, LM_D_a11_UnderPF, LM_D_a12_Parts, LM_D_a12_Playfield, LM_D_a13_Parts, LM_D_a13_Playfield, LM_D_a14_Parts, LM_D_a14_Playfield, LM_D_a15_LFlip, LM_D_a15_LFlipU, LM_D_a15_Parts, LM_D_a15_Playfield, LM_D_a15_UnderPF, LM_D_a16_Parts, LM_D_a16_Playfield, LM_F_FL1_Asteroid1, LM_F_FL1_Asteroid2, LM_F_FL1_Asteroid3, LM_F_FL1_Asteroid4, LM_F_FL1_BR2, LM_F_FL1_BR3, LM_F_FL1_BR4, LM_F_FL1_BS2, LM_F_FL1_BS3, LM_F_FL1_BS4, LM_F_FL1_BmpBot, LM_F_FL1_BmpTopB, LM_F_FL1_DiverterPin, LM_F_FL1_Gate2, LM_F_FL1_GateR, LM_F_FL1_LArm, LM_F_FL1_LockPin, LM_F_FL1_Lsling1, LM_F_FL1_Parts, LM_F_FL1_Playfield, LM_F_FL1_RFlip1, LM_F_FL1_RFlip1U, LM_F_FL1_Rails, LM_F_FL1_Ramp, LM_F_FL1_Rsling2, LM_F_FL1_Ship, LM_F_FL1_Spin, LM_F_FL1_SpinU, LM_F_FL1_TM2, LM_F_FL1_TM3, LM_F_FL1_TM4, LM_F_FL1_TM5, LM_F_FL1_UnderPF, LM_F_FL1_swC3, LM_F_FL1_swI2, LM_F_FL1_swR1, LM_F_FL1_swR2, LM_F_FL2_Asteroid1, LM_F_FL2_Asteroid2, _
	LM_F_FL2_Asteroid3, LM_F_FL2_Asteroid4, LM_F_FL2_BR2, LM_F_FL2_BR3, LM_F_FL2_BR4, LM_F_FL2_BS2, LM_F_FL2_BS3, LM_F_FL2_BS4, LM_F_FL2_BmpBot, LM_F_FL2_BmpTopB, LM_F_FL2_DiverterPin, LM_F_FL2_GateL, LM_F_FL2_GateR, LM_F_FL2_LockPin, LM_F_FL2_Parts, LM_F_FL2_Playfield, LM_F_FL2_Ramp, LM_F_FL2_Ship, LM_F_FL2_Spin, LM_F_FL2_SpinU, LM_F_FL2_SpinWire, LM_F_FL2_TM2, LM_F_FL2_TM3, LM_F_FL2_TM4, LM_F_FL2_UnderPF, LM_F_FL2_swC1, LM_F_FL2_swC2, LM_F_FL2_swC3, LM_F_FL2_swI1, LM_F_FL2_swI2, LM_F_FL2_swL1, LM_F_FL2_swL2, LM_F_FL2_swR2, LM_F_FL3_Asteroid1, LM_F_FL3_Asteroid2, LM_F_FL3_Asteroid3, LM_F_FL3_Asteroid4, LM_F_FL3_BR2, LM_F_FL3_BR3, LM_F_FL3_BR4, LM_F_FL3_BS2, LM_F_FL3_BS3, LM_F_FL3_BS4, LM_F_FL3_BmpBot, LM_F_FL3_BmpTopB, LM_F_FL3_DiverterPin, LM_F_FL3_GateL, LM_F_FL3_GateR, LM_F_FL3_LockPin, LM_F_FL3_Parts, LM_F_FL3_Playfield, LM_F_FL3_Ramp, LM_F_FL3_Ship, LM_F_FL3_Spin, LM_F_FL3_SpinU, LM_F_FL3_SpinWire, LM_F_FL3_TM3, LM_F_FL3_TM4, LM_F_FL3_UnderPF, LM_F_FL3_swC1, LM_F_FL3_swC2, LM_F_FL3_swC3, LM_F_FL3_swI1, _
	LM_F_FL3_swI2, LM_F_FL3_swL1, LM_F_FL3_swL2, LM_F_FL3_swR1, LM_F_FL3_swR2, LM_F_FL4_Asteroid1, LM_F_FL4_Asteroid2, LM_F_FL4_Asteroid3, LM_F_FL4_Asteroid4, LM_F_FL4_BmpTopB, LM_F_FL4_GateR, LM_F_FL4_Parts, LM_F_FL4_Playfield, LM_F_FL4_RFlip1, LM_F_FL4_RFlip1U, LM_F_FL4_Ramp, LM_F_FL4_Spin, LM_F_FL4_SpinU, LM_F_FL4_TM2, LM_F_FL4_TM3, LM_F_FL4_TM4, LM_F_FL4_UnderPF, LM_F_FL4_swC1, LM_F_FL4_swC2, LM_F_FL4_swC3, LM_F_FL5_BR1, LM_F_FL5_BR4, LM_F_FL5_LArm, LM_F_FL5_LFlip, LM_F_FL5_LFlipU, LM_F_FL5_Lsling1, LM_F_FL5_Lsling2, LM_F_FL5_Parts, LM_F_FL5_Playfield, LM_F_FL5_RArm, LM_F_FL5_RFlip, LM_F_FL5_RFlipU, LM_F_FL5_Rsling1, LM_F_FL5_Rsling2, LM_F_FL5_TM1, LM_F_FL5_TrustPost, LM_F_FL5_UnderPF, LM_F_FL5_swLB1, LM_F_FL5_swLI, LM_F_FL5_swLO, LM_F_FL5_swRI, LM_F_FL6_BR1, LM_F_FL6_BS1, LM_F_FL6_LArm, LM_F_FL6_LFlip, LM_F_FL6_LFlipU, LM_F_FL6_Lsling1, LM_F_FL6_Lsling2, LM_F_FL6_Parts, LM_F_FL6_Playfield, LM_F_FL6_RArm, LM_F_FL6_RFlip, LM_F_FL6_RFlipU, LM_F_FL6_Ramp, LM_F_FL6_Rsling1, LM_F_FL6_Rsling2, LM_F_FL6_TS2, _
	LM_F_FL6_TS3, LM_F_FL6_TS4, LM_F_FL6_TrustPost, LM_F_FL6_UnderPF, LM_F_FL6_swC1, LM_F_FL6_swRI, LM_F_FL6_swRO, LM_F_FL7_Asteroid1, LM_F_FL7_Asteroid2, LM_F_FL7_Asteroid3, LM_F_FL7_Asteroid4, LM_F_FL7_BR2, LM_F_FL7_BR3, LM_F_FL7_BR4, LM_F_FL7_BS2, LM_F_FL7_BS3, LM_F_FL7_BS4, LM_F_FL7_BmpBot, LM_F_FL7_BmpTopB, LM_F_FL7_DiverterPin, LM_F_FL7_GateL, LM_F_FL7_GateR, LM_F_FL7_LockPin, LM_F_FL7_Parts, LM_F_FL7_Playfield, LM_F_FL7_Ramp, LM_F_FL7_Ship, LM_F_FL7_Spin, LM_F_FL7_SpinU, LM_F_FL7_SpinWire, LM_F_FL7_TM2, LM_F_FL7_TM3, LM_F_FL7_TM4, LM_F_FL7_TM5, LM_F_FL7_UnderPF, LM_F_FL7_swC1, LM_F_FL7_swC2, LM_F_FL7_swC3, LM_F_FL7_swI1, LM_F_FL7_swI2, LM_F_FL7_swL1, LM_F_FL7_swL2, LM_F_FL7_swR1, LM_F_FL7_swR2, LM_GI_gi01_LArm, LM_GI_gi01_LFlip, LM_GI_gi01_LFlipU, LM_GI_gi01_Lsling1, LM_GI_gi01_Lsling2, LM_GI_gi01_Parts, LM_GI_gi01_Playfield, LM_GI_gi01_RFlip, LM_GI_gi01_RFlipU, LM_GI_gi01_UnderPF, LM_GI_gi01_swLI, LM_GI_gi01_swLO, LM_GI_gi02_LArm, LM_GI_gi02_LFlip, LM_GI_gi02_LFlipU, LM_GI_gi02_Parts, _
	LM_GI_gi02_Playfield, LM_GI_gi02_RFlip, LM_GI_gi02_RFlipU, LM_GI_gi02_UnderPF, LM_GI_gi02_swLI, LM_GI_gi02_swLO, LM_GI_gi03_LArm, LM_GI_gi03_LFlip, LM_GI_gi03_LFlipU, LM_GI_gi03_Lsling1, LM_GI_gi03_Lsling2, LM_GI_gi03_Parts, LM_GI_gi03_Playfield, LM_GI_gi03_RFlip, LM_GI_gi03_RFlipU, LM_GI_gi03_UnderPF, LM_GI_gi03_swLI, LM_GI_gi03_swLO, LM_GI_gi04_BmpTopR, LM_GI_gi04_LArm, LM_GI_gi04_LFlip, LM_GI_gi04_LFlipU, LM_GI_gi04_Lsling1, LM_GI_gi04_Lsling2, LM_GI_gi04_Parts, LM_GI_gi04_Playfield, LM_GI_gi04_UnderPF, LM_GI_gi04_swLI, LM_GI_gi04_swLO, LM_GI_gi05_Parts, LM_GI_gi05_Playfield, LM_GI_gi05_RArm, LM_GI_gi05_RFlip, LM_GI_gi05_RFlipU, LM_GI_gi05_Rsling1, LM_GI_gi05_Rsling2, LM_GI_gi05_UnderPF, LM_GI_gi05_swRI, LM_GI_gi06_Parts, LM_GI_gi06_Playfield, LM_GI_gi06_RArm, LM_GI_gi06_RFlip, LM_GI_gi06_RFlipU, LM_GI_gi06_Rsling1, LM_GI_gi06_UnderPF, LM_GI_gi06_swRI, LM_GI_gi07_LFlip, LM_GI_gi07_LFlipU, LM_GI_gi07_Lsling2, LM_GI_gi07_Parts, LM_GI_gi07_Playfield, LM_GI_gi07_RArm, LM_GI_gi07_RFlip, LM_GI_gi07_RFlipU, _
	LM_GI_gi07_Rsling1, LM_GI_gi07_Rsling2, LM_GI_gi07_UnderPF, LM_GI_gi07_swRI, LM_GI_gi07_swRO, LM_GI_gi08_Parts, LM_GI_gi08_Playfield, LM_GI_gi08_RArm, LM_GI_gi08_RFlip, LM_GI_gi08_RFlipU, LM_GI_gi08_Rsling1, LM_GI_gi08_Rsling2, LM_GI_gi08_UnderPF, LM_GI_gi08_swRI, LM_GI_gi09_Parts, LM_GI_gi09_Playfield, LM_GI_gi09_swLI, LM_GI_gi10_Gate2, LM_GI_gi10_Parts, LM_GI_gi10_Playfield, LM_GI_gi10_RFlip1U, LM_GI_gi10_TS1, LM_GI_gi10_TS2, LM_GI_gi10_TS3, LM_GI_gi10_TS4, LM_GI_gi10_UnderPF, LM_GI_gi11_Parts, LM_GI_gi11_Playfield, LM_GI_gi12_Parts, LM_GI_gi12_Playfield, LM_GI_gi13_BR4, LM_GI_gi13_BS2, LM_GI_gi13_BS4, LM_GI_gi13_BmpBot, LM_GI_gi13_BmpTopB, LM_GI_gi13_GateR, LM_GI_gi13_Parts, LM_GI_gi13_Playfield, LM_GI_gi13_RFlip1U, LM_GI_gi13_TM4, LM_GI_gi13_TM5, LM_GI_gi13_UnderPF, LM_GI_gi14_Gate2, LM_GI_gi14_LockPin, LM_GI_gi14_Parts, LM_GI_gi14_Playfield, LM_GI_gi14_RFlip1, LM_GI_gi14_RFlip1U, LM_GI_gi14_TM5, LM_GI_gi15_LockPin, LM_GI_gi15_Parts, LM_GI_gi15_Playfield, LM_GI_gi15_RFlip1, LM_GI_gi15_RFlip1U, _
	LM_GI_gi15_UnderPF, LM_GI_gi16_Asteroid1, LM_GI_gi16_Asteroid2, LM_GI_gi16_Asteroid3, LM_GI_gi16_Asteroid4, LM_GI_gi16_BR2, LM_GI_gi16_BR3, LM_GI_gi16_BR4, LM_GI_gi16_BS2, LM_GI_gi16_BS3, LM_GI_gi16_BS4, LM_GI_gi16_BmpBot, LM_GI_gi16_BmpTopB, LM_GI_gi16_GateR, LM_GI_gi16_Parts, LM_GI_gi16_Playfield, LM_GI_gi16_Ramp, LM_GI_gi16_TM4, LM_GI_gi16_UnderPF, LM_GI_gi16_swC3, LM_GI_gi17_BR2, LM_GI_gi17_Parts, LM_GI_gi17_Playfield, LM_GI_gi18_Parts, LM_GI_gi18_Playfield, LM_GI_gi19_LockPin, LM_GI_gi19_Parts, LM_GI_gi19_Playfield, LM_GI_gi19_RFlip1, LM_GI_gi19_RFlip1U, LM_GI_gi19_TM5, LM_GI_gi19_UnderPF, LM_GI_gi20_Asteroid1, LM_GI_gi20_Asteroid2, LM_GI_gi20_Asteroid3, LM_GI_gi20_Asteroid4, LM_GI_gi20_GateL, LM_GI_gi20_Parts, LM_GI_gi20_Playfield, LM_GI_gi20_Ramp, LM_GI_gi20_Spin, LM_GI_gi20_SpinU, LM_GI_gi20_SpinWire, LM_GI_gi20_TM2, LM_GI_gi20_UnderPF, LM_GI_gi20_swC1, LM_GI_gi20_swI1, LM_GI_gi20_swL1, LM_GI_gi20_swL2, LM_GI_gi21_Asteroid1, LM_GI_gi21_Asteroid2, LM_GI_gi21_Asteroid3, LM_GI_gi21_Asteroid4, _
	LM_GI_gi21_GateL, LM_GI_gi21_Parts, LM_GI_gi21_Playfield, LM_GI_gi21_Ramp, LM_GI_gi21_Spin, LM_GI_gi21_SpinU, LM_GI_gi21_SpinWire, LM_GI_gi21_TM2, LM_GI_gi21_swL1, LM_GI_gi21_swL2, LM_GI_giapron_LFlip, LM_GI_giapron_LFlipU, LM_GI_giapron_Lsling1, LM_GI_giapron_Lsling2, LM_GI_giapron_Parts, LM_GI_giapron_Playfield, LM_GI_giapron_RFlip, LM_GI_giapron_RFlipU, LM_GI_giapron_Rsling1, LM_GI_giapron_Rsling2, LM_GI_giapron_TrustPost, LM_L_LB1_BR1, LM_L_LB1_BS1, LM_L_LB1_BmpBot, LM_L_LB1_BmpTopR, LM_L_LB1_LockPin, LM_L_LB1_Parts, LM_L_LB1_Playfield, LM_L_LB1_RFlip1, LM_L_LB1_RFlip1U, LM_L_LB1_Ramp, LM_L_LB1_Rsling1, LM_L_LB1_Rsling2, LM_L_LB1_Ship, LM_L_LB1_TM1, LM_L_LB1_TM2, LM_L_LB1_TMet1, LM_L_LB1_TS2, LM_L_LB1_UnderPF, LM_L_LB1_swLB1, LM_L_LB1_swLB2, LM_L_LB2_Asteroid1, LM_L_LB2_Asteroid2, LM_L_LB2_Asteroid3, LM_L_LB2_Asteroid4, LM_L_LB2_BR2, LM_L_LB2_BR3, LM_L_LB2_BR4, LM_L_LB2_BS2, LM_L_LB2_BS3, LM_L_LB2_BS4, LM_L_LB2_BmpBot, LM_L_LB2_BmpTopB, LM_L_LB2_DiverterPin, LM_L_LB2_Parts, LM_L_LB2_Playfield, _
	LM_L_LB2_swR2, LM_L_LB3_Asteroid1, LM_L_LB3_Asteroid2, LM_L_LB3_Asteroid3, LM_L_LB3_Asteroid4, LM_L_LB3_BR2, LM_L_LB3_BR3, LM_L_LB3_BR4, LM_L_LB3_BS2, LM_L_LB3_BS3, LM_L_LB3_BS4, LM_L_LB3_BmpBot, LM_L_LB3_BmpTopB, LM_L_LB3_DiverterPin, LM_L_LB3_Parts, LM_L_LB3_Playfield, LM_L_LB3_Spin, LM_L_LB3_TM3, LM_L_LB3_TM4, LM_L_LB3_UnderPF, LM_L_LB3_swC3, LM_L_LB3_swI2, LM_L_LB4_Asteroid1, LM_L_LB4_Asteroid2, LM_L_LB4_Asteroid3, LM_L_LB4_Asteroid4, LM_L_LB4_BR2, LM_L_LB4_BR3, LM_L_LB4_BR4, LM_L_LB4_BS2, LM_L_LB4_BS3, LM_L_LB4_BS4, LM_L_LB4_BmpBot, LM_L_LB4_BmpTopB, LM_L_LB4_GateR, LM_L_LB4_Parts, LM_L_LB4_Playfield, LM_L_LB4_TM4, LM_L_LB4_UnderPF, LM_L_LB4_swC3, LM_L_LB4_swR1, LM_L_LC1_LFlip, LM_L_LC1_LFlipU, LM_L_LC1_Parts, LM_L_LC1_Playfield, LM_L_LC1_UnderPF, LM_L_LC2_LFlip, LM_L_LC2_LFlipU, LM_L_LC2_Parts, LM_L_LC2_Playfield, LM_L_LC2_UnderPF, LM_L_LC3_LFlipU, LM_L_LC3_Playfield, LM_L_LC3_UnderPF, LM_L_LC4_LFlipU, LM_L_LC4_Playfield, LM_L_LC4_UnderPF, LM_L_LC5_Playfield, LM_L_LC5_RFlipU, LM_L_LC5_UnderPF, _
	LM_L_LC6_Playfield, LM_L_LC6_RFlipU, LM_L_LC6_UnderPF, LM_L_LC7_Playfield, LM_L_LC7_RFlipU, LM_L_LC7_UnderPF, LM_L_LC8_Parts, LM_L_LC8_Playfield, LM_L_LC8_RFlip, LM_L_LC8_RFlipU, LM_L_LC8_UnderPF, LM_L_LCC1_Parts, LM_L_LCC1_Playfield, LM_L_LCC1_Ramp, LM_L_LCC1_UnderPF, LM_L_LCC2_Parts, LM_L_LCC2_Playfield, LM_L_LCC2_UnderPF, LM_L_LCC3_Parts, LM_L_LCC3_Playfield, LM_L_LCC3_UnderPF, LM_L_LCR1_Lsling1, LM_L_LCR1_Lsling2, LM_L_LCR1_Parts, LM_L_LCR1_Playfield, LM_L_LCR1_UnderPF, LM_L_LCR2_Lsling1, LM_L_LCR2_Lsling2, LM_L_LCR2_Parts, LM_L_LCR2_Playfield, LM_L_LCR2_UnderPF, LM_L_LCWiz_Parts, LM_L_LCWiz_Playfield, LM_L_LCWiz_UnderPF, LM_L_LEBR_Parts, LM_L_LEBR_Playfield, LM_L_LEBR_TM4, LM_L_LEBR_UnderPF, LM_L_LF1_Parts, LM_L_LF1_Playfield, LM_L_LF1_UnderPF, LM_L_LF1_swR1, LM_L_LF2_Parts, LM_L_LF2_Playfield, LM_L_LF2_TM5, LM_L_LF2_UnderPF, LM_L_LF2_swR1, LM_L_LF3_Parts, LM_L_LF3_Playfield, LM_L_LF3_RFlip1U, LM_L_LF3_TM5, LM_L_LF3_UnderPF, LM_L_LH1_LFlip, LM_L_LH1_LFlipU, LM_L_LH1_Parts, LM_L_LH1_Playfield, _
	LM_L_LH1_UnderPF, LM_L_LH2_LFlip, LM_L_LH2_LFlipU, LM_L_LH2_Playfield, LM_L_LH2_UnderPF, LM_L_LH3_LFlip, LM_L_LH3_LFlipU, LM_L_LH3_Playfield, LM_L_LH3_UnderPF, LM_L_LH4_LFlip, LM_L_LH4_LFlipU, LM_L_LH4_Playfield, LM_L_LH4_UnderPF, LM_L_LH5_LFlipU, LM_L_LH5_Playfield, LM_L_LH5_RFlipU, LM_L_LH5_UnderPF, LM_L_LH6_Playfield, LM_L_LH6_RFlipU, LM_L_LH6_UnderPF, LM_L_LH7_Playfield, LM_L_LH7_RFlip, LM_L_LH7_RFlipU, LM_L_LH7_UnderPF, LM_L_LH8_Playfield, LM_L_LH8_RFlip, LM_L_LH8_RFlipU, LM_L_LH8_UnderPF, LM_L_LH9_Parts, LM_L_LH9_Playfield, LM_L_LH9_RFlip, LM_L_LH9_RFlipU, LM_L_LH9_UnderPF, LM_L_LLI_Parts, LM_L_LLI_Playfield, LM_L_LLI_UnderPF, LM_L_LLI_swLI, LM_L_LLO_Parts, LM_L_LLO_Playfield, LM_L_LLO_UnderPF, LM_L_LLO_swLO, LM_L_LLWiz_Parts, LM_L_LLWiz_Playfield, LM_L_LLWiz_UnderPF, LM_L_LM1_Parts, LM_L_LM1_Playfield, LM_L_LM1_TM1, LM_L_LM1_UnderPF, LM_L_LM2_Parts, LM_L_LM2_Playfield, LM_L_LM2_TM2, LM_L_LM2_UnderPF, LM_L_LM3_Asteroid1, LM_L_LM3_Asteroid2, LM_L_LM3_Asteroid3, LM_L_LM3_Asteroid4, LM_L_LM3_Playfield, _
	LM_L_LM3_TM3, LM_L_LM3_UnderPF, LM_L_LM4_Parts, LM_L_LM4_Playfield, LM_L_LM4_TM4, LM_L_LM4_UnderPF, LM_L_LM5_Parts, LM_L_LM5_Playfield, LM_L_LM5_TM5, LM_L_LM5_UnderPF, LM_L_LMLR_Parts, LM_L_LMLR_Playfield, LM_L_LMLR_TM5, LM_L_LMLR_UnderPF, LM_L_LMR_GateR, LM_L_LMR_Parts, LM_L_LMR_Playfield, LM_L_LMR_TM4, LM_L_LMR_UnderPF, LM_L_LMR1_Parts, LM_L_LMR1_Playfield, LM_L_LMR1_Rsling1, LM_L_LMR1_Rsling2, LM_L_LMR1_UnderPF, LM_L_LMR2_Parts, LM_L_LMR2_Playfield, LM_L_LMR2_Rsling1, LM_L_LMR2_Rsling2, LM_L_LMR2_UnderPF, LM_L_LMet1_BR1, LM_L_LMet1_BS1, LM_L_LMet1_BmpTopR, LM_L_LMet1_Parts, LM_L_LMet1_Playfield, LM_L_LMet1_TMet1, LM_L_LMet1_UnderPF, LM_L_LMet2_BmpTopR, LM_L_LMet2_Parts, LM_L_LMet2_Playfield, LM_L_LMet2_TMet2, LM_L_LMet2_UnderPF, LM_L_LMet3_Parts, LM_L_LMet3_Playfield, LM_L_LMet3_TMet3, LM_L_LMet3_UnderPF, LM_L_LMet4_Parts, LM_L_LMet4_Playfield, LM_L_LMet4_TMet4, LM_L_LMet4_UnderPF, LM_L_LPC1_Asteroid1, LM_L_LPC1_Asteroid4, LM_L_LPC1_GateL, LM_L_LPC1_Parts, LM_L_LPC1_Playfield, LM_L_LPC1_Ramp, _
	LM_L_LPC1_SpinU, LM_L_LPC1_TM2, LM_L_LPC1_UnderPF, LM_L_LPC2_Parts, LM_L_LPC2_Playfield, LM_L_LPC2_TM2, LM_L_LPC2_UnderPF, LM_L_LPC3_Parts, LM_L_LPC3_Playfield, LM_L_LPC3_UnderPF, LM_L_LPC4_Asteroid1, LM_L_LPC4_Asteroid2, LM_L_LPC4_Asteroid3, LM_L_LPC4_Asteroid4, LM_L_LPC4_Parts, LM_L_LPC4_Playfield, LM_L_LPC4_Ramp, LM_L_LPC4_TM3, LM_L_LPC4_UnderPF, LM_L_LPC4_swC1, LM_L_LPC5_Asteroid1, LM_L_LPC5_Asteroid2, LM_L_LPC5_Asteroid3, LM_L_LPC5_Asteroid4, LM_L_LPC5_Parts, LM_L_LPC5_Playfield, LM_L_LPC5_TM3, LM_L_LPC5_TM4, LM_L_LPC5_UnderPF, LM_L_LPC5_swC3, LM_L_LPF_Asteroid1, LM_L_LPF_Asteroid2, LM_L_LPF_Asteroid3, LM_L_LPF_Asteroid4, LM_L_LPF_Playfield, LM_L_LPF_TM3, LM_L_LPF_UnderPF, LM_L_LPR1_Parts, LM_L_LPR1_Playfield, LM_L_LPR1_UnderPF, LM_L_LPR2_Parts, LM_L_LPR2_Playfield, LM_L_LPR2_UnderPF, LM_L_LPR3_Parts, LM_L_LPR3_Playfield, LM_L_LPR3_UnderPF, LM_L_LPR4_LFlip, LM_L_LPR4_LFlipU, LM_L_LPR4_Parts, LM_L_LPR4_Playfield, LM_L_LPR4_UnderPF, LM_L_LPR5_LFlipU, LM_L_LPR5_Parts, LM_L_LPR5_Playfield, LM_L_LPR5_RFlipU, _
	LM_L_LPR5_UnderPF, LM_L_LPR6_Parts, LM_L_LPR6_Playfield, LM_L_LPR6_RFlipU, LM_L_LPR6_UnderPF, LM_L_LRI_Parts, LM_L_LRI_Playfield, LM_L_LRI_UnderPF, LM_L_LRI_swRI, LM_L_LRO_Parts, LM_L_LRO_Playfield, LM_L_LRO_UnderPF, LM_L_LRO_swRO, LM_L_LS1_BmpTopR, LM_L_LS1_Parts, LM_L_LS1_Playfield, LM_L_LS1_TM1, LM_L_LS1_UnderPF, LM_L_LS1_swLB1, LM_L_LS2_BmpTopR, LM_L_LS2_Parts, LM_L_LS2_Playfield, LM_L_LS2_UnderPF, LM_L_LS3_Parts, LM_L_LS3_Playfield, LM_L_LS3_Ship, LM_L_LS3_TMet2, LM_L_LS3_UnderPF, LM_L_LS4_Parts, LM_L_LS4_Playfield, LM_L_LS4_UnderPF, LM_L_LS5_Parts, LM_L_LS5_Playfield, LM_L_LS5_RFlip1U, LM_L_LS5_UnderPF, LM_L_LS6_Parts, LM_L_LS6_Playfield, LM_L_LS6_RFlip1, LM_L_LS6_RFlip1U, LM_L_LS6_UnderPF, LM_L_LSA_LFlip, LM_L_LSA_LFlipU, LM_L_LSA_Playfield, LM_L_LSA_RFlip, LM_L_LSA_RFlipU, LM_L_LSA_TrustPost, LM_L_LSA_UnderPF, LM_L_LSC1_Parts, LM_L_LSC1_Playfield, LM_L_LSC1_TS1, LM_L_LSC1_TS2, LM_L_LSC1_UnderPF, LM_L_LSC2_Parts, LM_L_LSC2_Playfield, LM_L_LSC2_TS1, LM_L_LSC2_TS2, LM_L_LSC2_TS3, LM_L_LSC2_UnderPF, _
	LM_L_LSC3_Parts, LM_L_LSC3_Playfield, LM_L_LSC3_TS2, LM_L_LSC3_TS3, LM_L_LSC3_TS4, LM_L_LSC3_UnderPF, LM_L_LSC4_Parts, LM_L_LSC4_Playfield, LM_L_LSC4_TS4, LM_L_LSC4_UnderPF, LM_L_LSL_Parts, LM_L_LSL_Playfield, LM_L_LSL_UnderPF, LM_L_LSL_swLO, LM_L_LSR_Parts, LM_L_LSR_Playfield, LM_L_LSR_UnderPF, LM_L_LSR_swRO, LM_L_LShip_Parts, LM_L_LShip_Ship, LM_L_LSwC1_Asteroid1, LM_L_LSwC1_Asteroid2, LM_L_LSwC1_Asteroid3, LM_L_LSwC1_Asteroid4, LM_L_LSwC1_Parts, LM_L_LSwC1_Playfield, LM_L_LSwC1_UnderPF, LM_L_LSwC1_swC1, LM_L_LSwC1_swC2, LM_L_LSwC2_Asteroid1, LM_L_LSwC2_Asteroid2, LM_L_LSwC2_Asteroid3, LM_L_LSwC2_Asteroid4, LM_L_LSwC2_BmpTopB, LM_L_LSwC2_Parts, LM_L_LSwC2_Playfield, LM_L_LSwC2_TM3, LM_L_LSwC2_UnderPF, LM_L_LSwC2_swC2, LM_L_LSwC3_Asteroid1, LM_L_LSwC3_Asteroid2, LM_L_LSwC3_Asteroid3, LM_L_LSwC3_Asteroid4, LM_L_LSwC3_Parts, LM_L_LSwC3_Playfield, LM_L_LSwC3_UnderPF, LM_L_LSwC3_swC2, LM_L_LSwC3_swC3, LM_L_LSwL1_BR1, LM_L_LSwL1_BS1, LM_L_LSwL1_BmpTopR, LM_L_LSwL1_Parts, LM_L_LSwL1_Playfield, LM_L_LSwL1_TM1, _
	LM_L_LSwL1_UnderPF, LM_L_LSwL1_swLB1, LM_L_LSwL2_BS1, LM_L_LSwL2_BmpBot, LM_L_LSwL2_BmpTopR, LM_L_LSwL2_Parts, LM_L_LSwL2_Playfield, LM_L_LSwL2_UnderPF, LM_L_LSwL2_swLB2, LM_L_LTW1_Parts, LM_L_LTW1_Playfield, LM_L_LTW1_Ramp, LM_L_LTW1_UnderPF, LM_L_LTW2_Parts, LM_L_LTW2_Playfield, LM_L_LTW2_Ramp, LM_L_LTW2_UnderPF, LM_L_LTW3_Parts, LM_L_LTW3_Playfield, LM_L_LTW3_UnderPF, LM_L_LTW4_Parts, LM_L_LTW4_Playfield, LM_L_LTW4_UnderPF, LM_L_LW1_Parts, LM_L_LW1_Playfield, LM_L_LW1_UnderPF, LM_L_LW2_Parts, LM_L_LW2_Playfield, LM_L_LW2_UnderPF, LM_L_LW3_Parts, LM_L_LW3_Playfield, LM_L_LW3_UnderPF, LM_L_LW4_Parts, LM_L_LW4_Playfield, LM_L_LW4_UnderPF, LM_L_LW5_Parts, LM_L_LW5_Playfield, LM_L_LW5_UnderPF, LM_L_LW6_BmpTopR, LM_L_LW6_Parts, LM_L_LW6_Playfield, LM_L_LW6_UnderPF, LM_L_LW7_BmpTopR, LM_L_LW7_Parts, LM_L_LW7_Playfield, LM_L_LW7_UnderPF, LM_L_LW8_BmpTopR, LM_L_LW8_Parts, LM_L_LW8_Playfield, LM_L_LW8_UnderPF, LM_L_LW9_Parts, LM_L_LW9_Playfield, LM_L_LW9_UnderPF, LM_L_LWiz_Parts, LM_L_LWiz_Playfield, _
	LM_L_LWiz_UnderPF, LM_L_LX_Parts, LM_L_LX_Playfield, LM_L_LX_UnderPF, LM_L_Lspot1_Asteroid1, LM_L_Lspot1_Asteroid2, LM_L_Lspot1_Asteroid3, LM_L_Lspot1_Asteroid4, LM_L_Lspot1_BR4, LM_L_Lspot1_BS4, LM_L_Lspot1_BmpTopB, LM_L_Lspot1_Parts, LM_L_Lspot1_Playfield, LM_L_Lspot1_Ramp, LM_L_Lspot1_Spin, LM_L_Lspot1_SpinU, LM_L_Lspot1_SpinWire, LM_L_Lspot1_TM3, LM_L_Lspot1_TM4, LM_L_Lspot1_UnderPF, LM_L_Lspot1_swC1, LM_L_Lspot1_swC2, LM_L_Lspot1_swC3, LM_L_Lspot1_swI2, LM_L_Lspot2_GateL, LM_L_Lspot2_LArm, LM_L_Lspot2_LFlip, LM_L_Lspot2_LFlipU, LM_L_Lspot2_LockPin, LM_L_Lspot2_Lsling1, LM_L_Lspot2_Lsling2, LM_L_Lspot2_Parts, LM_L_Lspot2_Playfield, LM_L_Lspot2_RArm, LM_L_Lspot2_RFlip, LM_L_Lspot2_RFlipU, LM_L_Lspot2_Ramp, LM_L_Lspot2_Rsling1, LM_L_Lspot2_Rsling2, LM_L_Lspot2_UnderPF, LM_L_Lspot2_swLB1, LM_L_Lspot2_swLO, LM_Stars_Parts, LM_Stars_Ramp)
' VLM  Arrays - End




'*****************************************************************************************************************************************
'  ZVAR : Table Variables
'*****************************************************************************************************************************************

' Constants and Global Variables

Const cGameName = "darkchaos"
Const TableName = "Dark Chaos"


Const BallSize = 50					'Ball size must be 50
Const BallMass = 1					'Ball mass must be 1
Const tnob = 5						'Total number of balls
Const lob = 0						'Locked balls
Dim gBot

Dim tablewidth: tablewidth = Table1.width
Dim tableheight: tableheight = Table1.height

Dim GrabMag

' Const MaxPlayers = 4
' Const MaxExtraBallsPerGame = 2

' Dim PlayersPlayingGame
' Dim CurrentPlayer : CurrentPlayer=0
' Dim Credits
' Dim TotalGamesPlayed

' Dim Tilt
' Dim MechTilt
' Dim TiltSensitivity
' Dim bTilted
' Dim bMechTiltJustHit

' Dim Balls2Eject 
' Dim BallsOnPlayfield
' Dim BallsLocked

' Dim PointMultiplier
' Dim PointMultiplierLimit
' Dim EoBMultiplier
' Dim SpinnerMultiplier
' Dim Jackpot
' Dim SuperJackpot


' Dim bSkillshotActive
' Dim bSkillshotAvailable
' Dim bSkillShotReady

' Dim bMysteryActive

' Dim bAttractMode
' Dim bEndCredits
' Dim bGameInPlay
' Dim bOnTheFirstBall

' Dim bMultiBallMode
' Dim bWizardMode

' Dim bBallInPlungerLane 
' Dim bBallSaverActive
' Dim bBallSaverReady
' Dim bMusicOn
' Dim bJustStarted
' Dim bStartOfNewBall

' Dim bFlippersEnabled
' Dim bAutoPlunger

' Dim bInnerOrbRecentlyHit
' Dim bEarthJustHit

' Dim bIntroSegmentRan



' Dim PlungerIM ' autofire plunger



'******************************************************
'  ZANI: Misc Animations
'******************************************************

' Flippers
Sub LeftFlipper_Animate
	Dim a: a = LeftFlipper.CurrentAngle 
	FlipperLSh.RotZ = a

	Dim v, BP 
	v = 255.0 * (121.0 - LeftFlipper.CurrentAngle) / (121.0 - 69.0)

	For Each BP in BP_Lflip
		BP.RotZ = a 
		BP.visible = v < 128.0
	Next
	For Each BP in BP_LflipU
		BP.RotZ = a 
		BP.visible = v >= 128.0
	Next	
End Sub

Sub RightFlipper_Animate
	Dim a: a = RightFlipper.CurrentAngle 
	FlipperRSh.RotZ = a

	Dim v, BP 
	v = 255.0 * (-121.0 - RightFlipper.CurrentAngle) / (-121.0 + 69.0)

	For Each BP in BP_Rflip
		BP.RotZ = a 
		BP.visible = v < 128.0
	Next
	For Each BP in BP_RflipU
		BP.RotZ = a 
		BP.visible = v >= 128.0
	Next	
End Sub

Sub RightFlipper1_Animate
	Dim a: a = RightFlipper1.CurrentAngle 
	FlipperR1Sh.RotZ = a

	Dim v, BP 
	v = 255.0 * (-161.0 - RightFlipper1.CurrentAngle) / (-161.0 + 108.0)

	For Each BP in BP_Rflip1
		BP.RotZ = a 
		BP.visible = v < 128.0
	Next
	For Each BP in BP_Rflip1U
		BP.RotZ = a 
		BP.visible = v >= 128.0
	Next	
End Sub


' Gates
Sub Gate2_Animate
	Dim a: a = Gate2.CurrentAngle 
	Dim BP : For Each BP in BP_Gate2: BP.RotX = a: Next
End Sub

Sub GateL_Animate
	Dim a: a = GateL.CurrentAngle -90  'FIXME? offset
	Dim BP : For Each BP in BP_GateL: BP.RotX = a: Next
End Sub

Sub GateR_Animate
	Dim a: a = GateR.CurrentAngle -90  'FIXME? offset
	Dim BP : For Each BP in BP_GateR: BP.RotX = a: Next
End Sub



' Bumpers
Sub Bumper1_Animate
	Dim z, BP
	z = Bumper1.CurrentRingOffset
	For Each BP in BP_BR1 : BP.transz = z: Next
End Sub

Sub Bumper2_Animate
	Dim z, BP
	z = Bumper2.CurrentRingOffset
	For Each BP in BP_BR2 : BP.transz = z: Next
End Sub

Sub Bumper3_Animate
	Dim z, BP
	z = Bumper3.CurrentRingOffset
	For Each BP in BP_BR3 : BP.transz = z: Next
End Sub

Sub Bumper4_Animate
	Dim z, BP
	z = Bumper4.CurrentRingOffset
	For Each BP in BP_BR4 : BP.transz = z: Next
End Sub


' Switches
Sub swCenterOrb1_Animate
	Dim z : z = swCenterOrb1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swC1 : BP.transz = z: Next
End Sub

Sub swCenterOrb2_Animate
	Dim z : z = swCenterOrb2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swC2 : BP.transz = z: Next
End Sub

Sub swCenterOrb3_Animate
	Dim z : z = swCenterOrb3.CurrentAnimOffset
	Dim BP : For Each BP in BP_swC3 : BP.transz = z: Next
End Sub

Sub swInnerOrb1_Animate
	Dim z : z = swInnerOrb1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swI1 : BP.transz = z: Next
End Sub

Sub swInnerOrb2_Animate
	Dim z : z = swInnerOrb2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swI2 : BP.transz = z: Next
End Sub

Sub swLeftOrb1_Animate
	Dim z : z = swLeftOrb1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swL1 : BP.transz = z: Next
End Sub

Sub swLeftOrb2_Animate
	Dim z : z = swLeftOrb2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swL2 : BP.transz = z: Next
End Sub

Sub swLeftBumper1_Animate
	Dim z : z = swLeftBumper1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swLB1 : BP.transz = z: Next
End Sub

Sub swLeftBumper2_Animate
	Dim z : z = swLeftBumper2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swLB2 : BP.transz = z: Next
End Sub

Sub swLeftInlane_Animate
	Dim z : z = swLeftInlane.CurrentAnimOffset
	Dim BP : For Each BP in BP_swLI : BP.transz = z: Next
End Sub

Sub swLeftOutlane_Animate
	Dim z : z = swLeftOutlane.CurrentAnimOffset
	Dim BP : For Each BP in BP_swLO : BP.transz = z: Next
End Sub

Sub swPlunger1_Animate
	Dim z : z = swPlunger1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swP1 : BP.transz = z: Next
End Sub

Sub swPlunger2_Animate
	Dim z : z = swPlunger2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swP2 : BP.transz = z: Next
End Sub

Sub swRightOrb1_Animate
	Dim z : z = swRightOrb1.CurrentAnimOffset
	Dim BP : For Each BP in BP_swR1 : BP.transz = z: Next
End Sub

Sub swRightOrb2_Animate
	Dim z : z = swRightOrb2.CurrentAnimOffset
	Dim BP : For Each BP in BP_swR2 : BP.transz = z: Next
End Sub

Sub swRightInlane_Animate
	Dim z : z = swRightInlane.CurrentAnimOffset
	Dim BP : For Each BP in BP_swRI : BP.transz = z: Next
End Sub

Sub swRightOutlane_Animate
	Dim z : z = swRightOutlane.CurrentAnimOffset
	Dim BP : For Each BP in BP_swRO : BP.transz = z: Next
End Sub


' Standup Targets
Sub UpdateStandupTargets
	dim BP, ty

    ty = BM_TM1.transy
	For each BP in BP_TM1 : BP.transy = ty: Next

    ty = BM_TM2.transy
	For each BP in BP_TM2 : BP.transy = ty: Next

    ty = BM_TM3.transy
	For each BP in BP_TM3 : BP.transy = ty: Next

    ty = BM_TM4.transy
	For each BP in BP_TM4 : BP.transy = ty: Next

    ty = BM_TM5.transy
	For each BP in BP_TM5 : BP.transy = ty: Next

    ty = BM_TS1.transy
	For each BP in BP_TS1 : BP.transy = ty: Next

    ty = BM_TS2.transy
	For each BP in BP_TS2 : BP.transy = ty: Next

    ty = BM_TS3.transy
	For each BP in BP_TS3 : BP.transy = ty: Next

    ty = BM_TS4.transy
	For each BP in BP_TS4 : BP.transy = ty: Next

End Sub


' Drop Targets
Sub UpdateDropTargets
	dim BP, tz, rx, ry

    tz = BM_TMet1.transz
	rx = BM_TMet1.rotx
	ry = BM_TMet1.roty
	For each BP in BP_TMet1 : BP.transz = tz: BP.rotx = rx: BP.roty = ry: Next

    tz = BM_TMet2.transz
	rx = BM_TMet2.rotx
	ry = BM_TMet2.roty
	For each BP in BP_TMet2 : BP.transz = tz: BP.rotx = rx: BP.roty = ry: Next

    tz = BM_TMet3.transz
	rx = BM_TMet3.rotx
	ry = BM_TMet3.roty
	For each BP in BP_TMet3 : BP.transz = tz: BP.rotx = rx: BP.roty = ry: Next

    tz = BM_TMet4.transz
	rx = BM_TMet4.rotx
	ry = BM_TMet4.roty
	For each BP in BP_TMet4 : BP.transz = tz: BP.rotx = rx: BP.roty = ry: Next
End Sub



' Spinner
Dim LMs_Spin, LMs_SpinU

InitSpinner
Sub InitSpinner 
	Dim i, LM
	BM_Spin.Visible = 1
	BM_SpinU.Visible = 0
	' Create LM arrays
	ReDim LMs_Spin(UBound(BP_Spin)-1)
	ReDim LMs_SpinU(UBound(BP_SpinU)-1)
	For i = 0 to (UBound(BP_Spin)-1): Set LMs_Spin(i) = BP_Spin(i+1): Next
	For i = 0 to (UBound(BP_SpinU)-1): Set LMs_SpinU(i) = BP_SpinU(i+1): Next
	'Scale down the inner spinner a little more in y-dir
'	Dim BP
'	For Each BP in BP_Spin
'		BP.Size_X = BP.Size_X * 0.99
'		BP.Size_Y = BP.Size_Y * 0.99
'		BP.Size_Z = BP.Size_Z * 0.99
'	Next
	Spinner_animate
End Sub

Sub Spinner_animate
	Dim LM, a, b, offset
	a = Spinner.currentangle
	If a >= 0 And a < 60 Then
        b = 0
    ElseIf a >= 60 And a < 120 Then
        b = (a - 60) / 60
    ElseIf a >= 120 And a < 240 Then
        b = 1
    ElseIf a >= 240 And a < 300 Then
        b = 1 + (240 - a) / 60
    Else
        b = 0
    End If

	BM_Spin.RotX = a
	For Each LM in LMs_Spin
		LM.RotX = a
		LM.Opacity = 100 * (1 - b)
	Next
	For Each LM in LMs_SpinU
		LM.RotX = a
		LM.Opacity = 100 * b
	Next
	For Each LM in BP_SpinWire: LM.RotX = a: Next
End Sub



'******************************************************
'	ZAST: Asteroid Animation
'******************************************************


Const AstVel = 0.01
Dim AstAngle, SpinAst, AstDelta
Dim LMs_Asteroid1 ', LMs_Asteroid2, LMs_Asteroid3, LMs_Asteroid4

InitAsteroid
Sub InitAsteroid
	Dim i, LM
	' Init angle and visibility
	AstAngle = 0
	AstDelta = 0
	SpinAst = False
	BM_Asteroid1.Visible = 1
	'BM_Asteroid2.Visible = 0
	'BM_Asteroid3.Visible = 0
	'BM_Asteroid4.Visible = 0
	' Create LM arrays
	ReDim LMs_Asteroid1(UBound(BP_Asteroid1)-1)
'	ReDim LMs_Asteroid2(UBound(BP_Asteroid2)-1)
'	ReDim LMs_Asteroid3(UBound(BP_Asteroid3)-1)
'	ReDim LMs_Asteroid4(UBound(BP_Asteroid4)-1)
	For i = 0 to (UBound(BP_Asteroid1)-1): Set LMs_Asteroid1(i) = BP_Asteroid1(i+1): Next
'	For i = 0 to (UBound(BP_Asteroid2)-1): Set LMs_Asteroid2(i) = BP_Asteroid2(i+1): Next
'	For i = 0 to (UBound(BP_Asteroid3)-1): Set LMs_Asteroid3(i) = BP_Asteroid3(i+1): Next
'	For i = 0 to (UBound(BP_Asteroid4)-1): Set LMs_Asteroid4(i) = BP_Asteroid4(i+1): Next
	' Adjust size to eliminate zfighting
	BM_Asteroid1.Size_X = BM_Asteroid1.Size_X*0.999 '0.998
	BM_Asteroid1.Size_Y = BM_Asteroid1.Size_Y*0.999 '0.998
	BM_Asteroid1.Size_Z = BM_Asteroid1.Size_Z*0.999 '0.998
'	BM_Asteroid3.Size_X = BM_Asteroid1.Size_X*0.999
'	BM_Asteroid3.Size_Y = BM_Asteroid1.Size_Y*0.999
'	BM_Asteroid3.Size_Z = BM_Asteroid1.Size_Z*0.999
	'BM_Asteroid3.material = "VLM.Bake.Active"
	' Initial draw
	DrawAsteroid AstAngle
End Sub

Sub SolSpinAsteroid(Enabled)
	AstDelta = AstVel
	SpinAst = Enabled
	If Enabled=True Then
		PlaySoundAtLevelStaticLoop "mfx_Motor", MechVol*0.05, BM_Asteroid1
	Else
		StopSound "mfx_Motor"
	End If
End Sub

Sub UpdateAsteroid
	If AstDelta > 0.005 Then
		If SpinAst = True Then
			AstDelta = AstVel 
		Else
			AstDelta = AstDelta - FrameTime*AstVel/2000  'Deceleration
			If AstDelta < 0.005 Then AstDelta = 0
		End If
		AstAngle = AstAngle + AstDelta*FrameTime  
		If AstAngle >= 360 Then AstAngle = AstAngle - 360
		DrawAsteroid AstAngle
	End If
End Sub


Sub DrawAsteroid(a)
	Dim LM, v1, v2, v3, v4, op13, op24
	v1 = ((a > 270) or (a < 90))
	v2 = ((a > 180) and (a < 360))
	v3 = ((a > 90) and (a < 270))
	v4 = ((a > 0) and (a < 180))
	op13 = abs(100*dCos(a))
	op24 = abs(100*dSin(a))
	op24 = abs(100*dSin(a))

	BM_Asteroid1.RotZ = a
'	BM_Asteroid3.RotZ = a
'	BM_Asteroid3.Visible = v3
'	BM_Asteroid3.Opacity = op13

	For each LM in LMs_Asteroid1
		LM.Visible = v1
		LM.Opacity = op13
		LM.RotZ = a
	Next
	For each LM in BP_Asteroid2
		LM.Visible = v2
		LM.Opacity = op24
		LM.RotZ = a
	Next
	For each LM in BP_Asteroid3
		LM.Visible = v3
		LM.Opacity = op13
		LM.RotZ = a
	Next
	For each LM in BP_Asteroid4
		LM.Visible = v4
		LM.Opacity = op24
		LM.RotZ = a
	Next
'	debug.print "AstAngle = "&a
'	debug.print "Asteroid1  Visible = "&v1&"  Opacity = "&op13
'	debug.print "Asteroid2  Visible = "&v2&"  Opacity = "&op24
'	debug.print "Asteroid3  Visible = "&v3&"  Opacity = "&op13
'	debug.print "Asteroid4  Visible = "&v4&"  Opacity = "&op24
End Sub




'******************************************************
'	ZSHP:  Ship Wobble Animations   (based on code from rothbauerw)
'******************************************************

' Wobble Script to animate objects when the table is nudged. The below shows how to animate a single axis. Additional scripting is needed to animate for another axis.
'
'  You'll need variables for each object to:
'   1 - track time interval (objtime)
'   2 - two to track velocity (objvel, objvel2)
'   3 - track the displacement (objdisp)
'   4 - define the maximum movement of the object (objmaxmovement)
'   5 - define the acceleration of the object, or how fast it moves (objacc)
'   6 - define the how fast the object movement decays (objdecay)
'
'  NudgeAnim should be placed in a frame timer (interval = -1)
'   - NudgeAnim should be used to read any analog nudges, and if so, apply an impulse to the object
'   - NudgeAnim should also call the animation sub for the object
'
'  A sub should be created to apply an impulse to the object when the table is nudged. It will be placed in the NudgeAnim sub for analog nudges and the nudge key presses for digital nudge  
'
'	Sub ObjNudge(namp, ndir)
'		CalcVelTime namp - rnd * namp * 0.1 , ndir, objvel, objtime, objvel2, objmaxmovement, objacc 	'adds some randomness to the impulse
'	End Sub 
'
'   Where:
'	 - namp is the amplitude of the impulse
'	 - ndir is the direction of the impulse
'
'  A sub should be created to update the displacement of the object. It will be placed in the NudgeAnim sub.  
'
'	Sub ObjUpdate()
'		CalcDisplacement objvel, objtime, objdisp, objvel2, objmaxmovement, objacc, objdecay
'		obj.transy = - objdisp
'	End Sub


Dim ShipTimeX:ShipTimeX=0
Dim Ship1TimeX:Ship1TimeX=0

Dim ShipVelX, ShipVelX2:ShipVelX = 0: ShipVelX2 = 0
Dim Ship1VelX, Ship1VelX2:Ship1VelX = 0: Ship1VelX2 = 0

Dim ShipDispX:ShipDispX = 0
Dim Ship1DispX:Ship1DispX = 0

Dim ShipTimeY:ShipTimeY=0
Dim Ship1TimeY:Ship1TimeY=0

Dim ShipVelY, ShipVelY2:ShipVelY = 0: ShipVelY2 = 0
Dim Ship1VelY, Ship1VelY2:Ship1VelY = 0: Ship1VelY2 = 0

Dim ShipDispY:ShipDispY = 0
Dim Ship1DispY:Ship1DispY = 0


Const ShipMaxMovement = 3
Const ShipDecay = 0.90
Const ShipAcc = 3000

Sub NudgeAnim() 'Call from FrameTimer
    Dim X, Y
    NudgeSensorStatus X, Y
	'debug.print "X = "&X&"  Y = "&Y

	'Add impulse to any objects that wobble around the y-axis
    If ABS(X) > 0.05 Then
		ShipNudge Abs(x)/0.125, x/Abs(x), ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
    End If

	'Add impulse to any objects that wobble around the x-axis
    If ABS(Y) > 0.05 Then
		ShipNudge Abs(y)/0.125, y/Abs(y), ShipVelY, ShipTimeY, ShipVelY2, ShipMaxMovement, ShipAcc
    End If

    ShipUpdate
End Sub

Sub ShipNudge(namp, ndir, Vel, nTime, Vel2, MaxMovement, Acc)
	CalcVelTime namp - rnd * namp * 0.1 , ndir, Vel, nTime, Vel2, MaxMovement, Acc 	'adds some randomness to the impulse
End Sub 

Sub ShipUpdate()
	Dim BP
	CalcDisplacement ShipVelX, ShipTimeX, ShipDispX, ShipVelX2, ShipMaxMovement, ShipAcc, ShipDecay
	CalcDisplacement ShipVelY, ShipTimeY, ShipDispY, ShipVelY2, ShipMaxMovement, ShipAcc, ShipDecay
	BM_Ship.roty = ShipDispX
	BM_Ship.rotx = ShipDispY

	'debug.print "ShipDispX = "&ShipDispX&"  ShipDispY = "&ShipDispY
	For each BP in BP_Ship: BP.rotx = BM_Ship.rotx: BP.roty = BM_Ship.roty:Next
End Sub

Sub RndShipNudge
	ShipNudge 0.7-(0.5*Rnd),Sgn(rnd-0.5), ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
	ShipNudge 0.7-(0.5*Rnd),Sgn(rnd-0.5), ShipVelY, ShipTimeY, ShipVelY2, ShipMaxMovement, ShipAcc
End Sub


' Wobble Supporting Functions
'*****************************

' Calculate the change in velocity of the object due to the impulse from the nudge
Sub CalcVelTime(simpulse, sidir, svel, stime, nvel, smaxmovement, sacc)
	if simpulse > 1 then simpulse = 1

	if svel = 0 Then
		svel = simpulse * sidir * Vel0(sMaxMovement, sacc)
		stime = GameTime
		nvel = 0
	else
		nvel = simpulse * sidir * Vel0(sMaxMovement, sacc)
	end If
End Sub

Function Vel0(displacement, acceleration)
	Vel0 = SQR(acceleration* ABS(displacement) * 2)
End Function

' Calculate the current displacement of the object
Sub CalcDisplacement(svel, stime, sdisp, nvel, smaxmovement, sacc, sdecay)
	dim velM, accM , stimef, stimec

	stimec = Gametime - stime	
	stimef = TimeF(MaxDisplacement(svel, sacc), sacc)

	If stimec > stimef Then 
		stimec = stimec - stimef
		stime = Gametime - stimec
		
		If nvel <> 0 Then
			if abs(nvel) > abs(svel) then 
				svel = -sgn(svel)*abs(nvel)
			Else
				svel = -svel * sdecay
			End If

			nvel = 0
		Else
			svel = -svel * sdecay
		End If

		stimef = TimeF(MaxDisplacement(svel, sacc), sacc)

		If stimec > stimef Then
			svel = 0
			sdisp  = 0			
		End If
	End If

	velM = svel * stimec / 1000
	accM = (sacc * (stimec / 1000)^2) / 2

	If svel < 0 Then
		sdisp = velM + accM
	ElseIf svel > 0 Then
		sdisp = velM - accM
	End If
End Sub

Function MaxDisplacement(velocity, acceleration)
	MaxDisplacement = Velocity^2/(2*acceleration)
End Function

Function TimeF(displacement, acceleration)
	TimeF = 1000*2*SQR(Abs(displacement)*acceleration*2)/acceleration
End Function





'******************************************************
' 	ZBBR: BALL BRIGHTNESS
'******************************************************

Const BallBrightness =  1      	'Ball brightness - Value between 0 and 1 (0=Dark ... 1=Bright)

' Constants for plunger lane ball darkening.
' You can make a temporary wall in the plunger lane area and use the co-ordinates from the corner control points.
Const PLOffset = 0.5			'Minimum ball brightness scale in plunger lane
Const PLLeft = 860 			'X position of punger lane left
Const PLRight = 940 			'X position of punger lane right
Const PLTop = 1475 				'Y position of punger lane top
Const PLBottom = 1900 			'Y position of punger lane bottom
Dim PLGain: PLGain = (1-PLOffset)/(PLTop-PLBottom)

Sub UpdateBallBrightness
	Dim s, b_base, b_r, b_g, b_b, d_w
	b_base = 120 * BallBrightness + 135	' orig was 120 and 70

	For s = 0 To UBound(gBOT)
		' Handle z direction
		d_w = b_base*(1 - (gBOT(s).z-25)/500)
		If d_w < 30 Then d_w = 30
		' Handle plunger lane
		If InRect(gBOT(s).x,gBOT(s).y,PLLeft,PLBottom,PLLeft,PLTop,PLRight,PLTop,PLRight,PLBottom) Then  
			d_w = d_w*(PLOffset+PLGain*(gBOT(s).y-PLBottom))
		End If
		' Assign color
		b_r = Int(d_w)
		b_g = Int(d_w)
		b_b = Int(d_w)
		If b_r > 255 Then b_r = 255
		If b_g > 255 Then b_g = 255
		If b_b > 255 Then b_b = 255
		gBOT(s).color = b_r + (b_g * 256) + (b_b * 256 * 256)
		'debug.print "--- ball.color level="&b_r
	Next
End Sub


'***************************************************************
'* ZSHD : VPW DYNAMIC BALL SHADOWS by Iakki, Apophis, and Wylte
'***************************************************************
' For dynamic ball shadows, Check the "Raytraced ball shadows" box for the specific light. 
' Also make sure the light's z position is around 25 (mid ball)

'Ambient (Room light source)
Const AmbientBSFactor = 0.9    '0 To 1, higher is darker
Const AmbientMovement = 1	   '1+ higher means more movement as the ball moves left and right
Const offsetX = 0			   'Offset x position under ball (These are if you want to change where the "room" light is for calculating the shadow position,)
Const offsetY = 0			   'Offset y position under ball (^^for example 5,5 if the light is in the back left corner)

' *** Trim or extend these to match the number of balls/primitives/flashers on the table!  (will throw errors if there aren't enough objects)
Dim objBallShadow(5)

'Initialization
BSInit

Sub BSInit()
	Dim iii
	'Prepare the shadow objects before play begins
	For iii = 0 To tnob - 1
		Set objBallShadow(iii) = Eval("BallShadow" & iii)
		objBallShadow(iii).material = "BallShadow" & iii
		UpdateMaterial objBallShadow(iii).material,1,0,0,0,0,0,AmbientBSFactor,RGB(0,0,0),0,0,False,True,0,0,0,0
		objBallShadow(iii).Z = 3 + iii / 1000
		objBallShadow(iii).visible = 0
	Next
End Sub


Sub BSUpdate
	Dim s: For s = lob To UBound(gBOT)
		' *** Normal "ambient light" ball shadow
		
		'Primitive shadow on playfield, flasher shadow in ramps
		'** If on main and upper pf
		If gBOT(s).Z > 20 And gBOT(s).Z < 30 Then
			objBallShadow(s).visible = 1
			objBallShadow(s).X = gBOT(s).X + (gBOT(s).X - (tablewidth / 2)) / (Ballsize / AmbientMovement) + offsetX
			objBallShadow(s).Y = gBOT(s).Y + offsetY
			'objBallShadow(s).Z = gBOT(s).Z + s/1000 + 1.04 - 25	

		'** No shadow if ball is off the main playfield (this may need to be adjusted per table)
		Else
			objBallShadow(s).visible = 0
		End If
	Next
End Sub

'******************************************************
'  ZDRT : DROP TARGETS by Rothbauerw
'******************************************************

Sub DTMeteor1_Hit: 	DTHit 1 : End Sub
Sub DTMeteor2_Hit: 	DTHit 2 : End Sub
Sub DTMeteor3_Hit: 	DTHit 3 : End Sub
Sub DTMeteor4_Hit: 	DTHit 4 : End Sub


'  DROP TARGETS INITIALIZATION

Class DropTarget
    Private m_primary, m_secondary, m_prim, m_sw, m_animate, m_isDropped, m_keepup
  
    Public Property Get Primary(): Set Primary = m_primary: End Property
    Public Property Let Primary(input): Set m_primary = input: End Property
  
    Public Property Get Secondary(): Set Secondary = m_secondary: End Property
    Public Property Let Secondary(input): Set m_secondary = input: End Property
  
    Public Property Get Prim(): Set Prim = m_prim: End Property
    Public Property Let Prim(input): Set m_prim = input: End Property
  
    Public Property Get Sw(): Sw = m_sw: End Property
    Public Property Let Sw(input): m_sw = input: End Property
  
    Public Property Get Animate(): Animate = m_animate: End Property
    Public Property Let Animate(input): m_animate = input: End Property

    Public Property Get Keepup(): Keepup = m_keepup: End Property
    Public Property Let Keepup(input): m_keepup = input: End Property
  
    Public Property Get IsDropped(): IsDropped = m_isDropped: End Property
    Public Property Let IsDropped(input): m_isDropped = input: End Property
  
    Public default Function init(primary, secondary, prim, sw, animate, isDropped)
      Set m_primary = primary
      Set m_secondary = secondary
      Set m_prim = prim
      m_sw = sw
      m_animate = animate
      m_isDropped = isDropped
      m_keepup = False
  
      Set Init = Me
    End Function
End Class

'Define a variable for each drop target
Dim DT1, DT2, DT3, DT4

'Set array with drop target objects
'
'DropTargetvar = Array(primary, secondary, prim, swtich, animate)
' 	primary: 			primary target wall to determine drop
'	secondary:			wall used to simulate the ball striking a bent or offset target after the initial Hit
'	prim:				primitive target used for visuals and animation
'							IMPORTANT!!! 
'							rotz must be used for orientation
'							rotx to bend the target back
'							transz to move it up and down
'							the pivot point should be in the center of the target on the x, y and at or below the playfield (0) on z
'	switch:				ROM switch number
'	animate:			Arrary slot for handling the animation instrucitons, set to 0
'
'	Values for annimate: 1 - bend target (hit to primary), 2 - drop target (hit to secondary), 3 - brick target (high velocity hit to secondary), -1 - raise target 

Set DT1 = (new DropTarget)(DTMeteor1, aDTMeteor1, BM_TMet1, 1, 0, False)
Set DT2 = (new DropTarget)(DTMeteor2, aDTMeteor2, BM_TMet2, 2, 0, False)
Set DT3 = (new DropTarget)(DTMeteor3, aDTMeteor3, BM_TMet3, 3, 0, False)
Set DT4 = (new DropTarget)(DTMeteor4, aDTMeteor4, BM_TMet4, 4, 0, False)


Dim DTArray
DTArray = Array(DT1, DT2, DT3, DT4)

'Configure the behavior of Drop Targets.
Const DTDropSpeed = 90 'in milliseconds
Const DTDropUpSpeed = 40 'in milliseconds
Const DTDropUnits = 54 'VP units primitive drops so top of at or below the playfield
Const DTDropUpUnits = 10 'VP units primitive raises above the up position on drops up
Const DTMaxBend = 8 'max degrees primitive rotates when hit
Const DTDropDelay = 20 'time in milliseconds before target drops (due to friction/impact of the ball)
Const DTRaiseDelay = 40 'time in milliseconds before target drops back to normal up position after the solenoid fires to raise the target
Const DTBrickVel = 30 'velocity at which the target will brick, set to '0' to disable brick
Const DTEnableBrick = 0 'Set to 0 to disable bricking, 1 to enable bricking
Const DTMass = 0.2 'Mass of the Drop Target (between 0 and 1), higher values provide more resistance


'  DROP TARGETS FUNCTIONS

Sub DTHit(switch)
    Dim i
    i = DTArrayID(switch)
    
    PlayTargetSound
    If DTArray(i).Keepup = True Then
        DTArray(i).animate = 3
    Else
        DTArray(i).animate = DTCheckBrick(ActiveBall,DTArray(i).prim)
    End If
    If DTArray(i).animate = 1 Or DTArray(i).animate = 3 Or DTArray(i).animate = 4 Then
        DTBallPhysics ActiveBall, DTArray(i).prim.rotz, DTMass
    End If
    DoDTAnim
End Sub

Sub DTRaise(switch)
    Dim i
    i = DTArrayID(switch)
    
    DTArray(i).animate =  - 1
    DoDTAnim
End Sub

Sub DTDrop(switch)
    Dim i
    i = DTArrayID(switch)
    
    DTArray(i).animate = 1
    DoDTAnim
End Sub

Sub DTEnableKeepup(switch)
    Dim i
    i = DTArrayID(switch)
    DTArray(i).Keepup = True
    DTRaise(switch)
End Sub

Sub DTDisableKeepup(switch)
    Dim i
    i = DTArrayID(switch)
    DTArray(i).Keepup = False
End Sub

Function DTArrayID(switch)
    Dim i
    For i = 0 To UBound(DTArray)
        If DTArray(i).sw = switch Then
            DTArrayID = i
            Exit Function
        End If
    Next
End Function

Sub DTBallPhysics(aBall, angle, mass)
    Dim rangle,bangle,calc1, calc2, calc3
    rangle = (angle - 90) * 3.1416 / 180
    bangle = atn2(cor.ballvely(aball.id),cor.ballvelx(aball.id))
    
    calc1 = cor.BallVel(aball.id) * Cos(bangle - rangle) * (aball.mass - mass) / (aball.mass + mass)
    calc2 = cor.BallVel(aball.id) * Sin(bangle - rangle) * Cos(rangle + 4 * Atn(1) / 2)
    calc3 = cor.BallVel(aball.id) * Sin(bangle - rangle) * Sin(rangle + 4 * Atn(1) / 2)
    
    aBall.velx = calc1 * Cos(rangle) + calc2
    aBall.vely = calc1 * Sin(rangle) + calc3
End Sub

'Check if target is hit on it's face or sides and whether a 'brick' occurred
Function DTCheckBrick(aBall, dtprim)
    Dim bangle, bangleafter, rangle, rangle2, Xintersect, Yintersect, cdist, perpvel, perpvelafter, paravel, paravelafter
    rangle = (dtprim.rotz - 90) * 3.1416 / 180
    rangle2 = dtprim.rotz * 3.1416 / 180
    bangle = atn2(cor.ballvely(aball.id),cor.ballvelx(aball.id))
    bangleafter = Atn2(aBall.vely,aball.velx)
    
    Xintersect = (aBall.y - dtprim.y - Tan(bangle) * aball.x + Tan(rangle2) * dtprim.x) / (Tan(rangle2) - Tan(bangle))
    Yintersect = Tan(rangle2) * Xintersect + (dtprim.y - Tan(rangle2) * dtprim.x)
    
    cdist = Distance(dtprim.x, dtprim.y, Xintersect, Yintersect)
    
    perpvel = cor.BallVel(aball.id) * Cos(bangle - rangle)
    paravel = cor.BallVel(aball.id) * Sin(bangle - rangle)
    
    perpvelafter = BallSpeed(aBall) * Cos(bangleafter - rangle)
    paravelafter = BallSpeed(aBall) * Sin(bangleafter - rangle)
    
    If perpvel > 0 And  perpvelafter <= 0 Then
        If DTEnableBrick = 1 And  perpvel > DTBrickVel And DTBrickVel <> 0 And cdist < 8 Then
            DTCheckBrick = 3
        Else
            DTCheckBrick = 1
        End If
    ElseIf perpvel > 0 And ((paravel > 0 And paravelafter > 0) Or (paravel < 0 And paravelafter < 0)) Then
        DTCheckBrick = 4
    Else
        DTCheckBrick = 0
    End If
End Function

Sub DoDTAnim()
    Dim i
    For i = 0 To UBound(DTArray)
        DTArray(i).animate = DTAnimate(DTArray(i).primary,DTArray(i).secondary,DTArray(i).prim,DTArray(i).sw,DTArray(i).animate)
    Next
End Sub

Function DTAnimate(primary, secondary, prim, switch, animate)
    Dim transz, switchid
    Dim animtime, rangle
    
    switchid = switch
    
    Dim ind
    ind = DTArrayID(switchid)
    
    rangle = prim.rotz * PI / 180
    
    DTAnimate = animate
    
    If animate = 0 Then
        primary.uservalue = 0
        DTAnimate = 0
        Exit Function
    ElseIf primary.uservalue = 0 Then
        primary.uservalue = GameTime
    End If
    
    animtime = GameTime - primary.uservalue
    
    If (animate = 1 Or animate = 4) And animtime < DTDropDelay Then
        primary.collidable = 0
        If animate = 1 Then secondary.collidable = 1 Else secondary.collidable = 0
        prim.rotx = DTMaxBend * Cos(rangle)
        prim.roty = DTMaxBend * Sin(rangle)
        DTAnimate = animate
        Exit Function
    ElseIf (animate = 1 Or animate = 4) And animtime > DTDropDelay Then
        primary.collidable = 0
        If animate = 1 Then secondary.collidable = 1 Else secondary.collidable = 1 'If animate = 1 Then secondary.collidable = 1 Else secondary.collidable = 0 'updated by rothbauerw to account for edge case
        prim.rotx = DTMaxBend * Cos(rangle)
        prim.roty = DTMaxBend * Sin(rangle)
        animate = 2
        SoundDropTargetDrop prim
    End If
    
    If animate = 2 Then
        transz = (animtime - DTDropDelay) / DTDropSpeed * DTDropUnits *  - 1
        If prim.transz >  - DTDropUnits  Then
            prim.transz = transz
        End If
        
        prim.rotx = DTMaxBend * Cos(rangle) / 2
        prim.roty = DTMaxBend * Sin(rangle) / 2
        
        If prim.transz <= - DTDropUnits Then
            prim.transz =  - DTDropUnits
            secondary.collidable = 0
            DTArray(ind).isDropped = True 'Mark target as dropped
            DTAction switchid, 1
            primary.uservalue = 0
            DTAnimate = 0
            Exit Function
        Else
            DTAnimate = 2
            Exit Function
        End If
    End If
    
    If animate = 3 And animtime < DTDropDelay Then
        primary.collidable = 0
        secondary.collidable = 1
        prim.rotx = DTMaxBend * Cos(rangle)
        prim.roty = DTMaxBend * Sin(rangle)
    ElseIf animate = 3 And animtime > DTDropDelay Then
        primary.collidable = 1
        secondary.collidable = 0
        prim.rotx = 0
        prim.roty = 0
        primary.uservalue = 0
        DTAnimate = 0
        Exit Function
    End If
    
    If animate =  - 1 Then
        transz = (1 - (animtime) / DTDropUpSpeed) * DTDropUnits *  - 1
        
        If prim.transz =  - DTDropUnits Then
            Dim b
            'Dim gBOT
            'gBOT = GetBalls
            
            For b = 0 To UBound(gBOT)
                If InRotRect(gBOT(b).x,gBOT(b).y,prim.x, prim.y, prim.rotz, - 25, - 10,25, - 10,25,25, - 25,25) And gBOT(b).z < prim.z + DTDropUnits + 25 Then
                    gBOT(b).velz = 20
                End If
            Next
        End If
        
        If prim.transz < 0 Then
            prim.transz = transz
        ElseIf transz > 0 Then
            prim.transz = transz
        End If
        
        If prim.transz > DTDropUpUnits Then
            DTAnimate =  - 2
            prim.transz = DTDropUpUnits
            prim.rotx = 0
            prim.roty = 0
            primary.uservalue = GameTime
        End If
        primary.collidable = 0
        secondary.collidable = 1
        DTArray(ind).isDropped = False 'Mark target as not dropped
        DTAction switchid, 0
    End If
    
    If animate =  - 2 And animtime > DTRaiseDelay Then
        prim.transz = (animtime - DTRaiseDelay) / DTDropSpeed * DTDropUnits *  - 1 + DTDropUpUnits
        If prim.transz < 0 Then
            prim.transz = 0
            primary.uservalue = 0
            DTAnimate = 0
            
            primary.collidable = 1
            secondary.collidable = 0
        End If
    End If
End Function

Function DTDropped(switchid)
    Dim ind
    ind = DTArrayID(switchid)
    
    DTDropped = DTArray(ind).isDropped
End Function

Sub DTAction(switchid, dropped)
    If dropped = 1 Then
        DispatchPinEvent DTArray(DTArrayID(switchid)).Primary.Name & "_active", Null
    Else
        DispatchPinEvent DTArray(DTArrayID(switchid)).Primary.Name & "_inactive", Null
    End If
End Sub

  
Sub DTMeteor1Callback(state)
    Select Case state
        Case 0
            DTRaise 1
            SoundDropTargetDrop BM_TMet1
        Case 1
            DTDrop 1
        Case 3
            'Enable Keep up, i.e. prevent roth drop from dropping when a ball hits
            DTEnableKeepup 1
        Case 4
            'Disable Keep up, i.e. allow roth drop to drop when a ball hits
            DTDisableKeepup 1
    End Select
End Sub
  
Sub DTMeteor2Callback(state)
    Select Case state
        Case 0
            DTRaise 2
            SoundDropTargetDrop BM_TMet2
        Case 1
            DTDrop 2
        Case 3
            'Enable Keep up, i.e. prevent roth drop from dropping when a ball hits
            DTEnableKeepup 2
        Case 4
            'Disable Keep up, i.e. allow roth drop to drop when a ball hits
            DTDisableKeepup 2
    End Select
End Sub
  
Sub DTMeteor3Callback(state)
    Select Case state
        Case 0
            DTRaise 3
            SoundDropTargetDrop BM_TMet3
        Case 1
            DTDrop 3
        Case 3
            'Enable Keep up, i.e. prevent roth drop from dropping when a ball hits
            DTEnableKeepup 3
        Case 4
            'Disable Keep up, i.e. allow roth drop to drop when a ball hits
            DTDisableKeepup 3
    End Select
End Sub
  
Sub DTMeteor4Callback(state)
    Select Case state
        Case 0
            DTRaise 4
            SoundDropTargetDrop BM_TMet4
        Case 1
            DTDrop 4
        Case 3
            'Enable Keep up, i.e. prevent roth drop from dropping when a ball hits
            DTEnableKeepup 4
        Case 4
            'Disable Keep up, i.e. allow roth drop to drop when a ball hits
            DTDisableKeepup 4
    End Select
End Sub
  



'******************************************************
'*****   ZFLA : FLASHER DOMES
'******************************************************

Sub Flash1(Enabled)
	If Enabled Then		
		FL1.state = 1
		FL1.TimerEnabled = true
		Sound_Flash_Relay 1, FL1
	Else
		FL1.state = 0
	End If
End Sub
Sub FL1_timer
	FL1.state = 0
	Sound_Flash_Relay 0, FL1
	FL1.TimerEnabled = false
End Sub


Sub Flash2(Enabled)
	If Enabled Then		
		FL2.state = 1
		FL2.TimerEnabled = true
		Sound_Flash_Relay 1, FL2
	Else
		FL2.state = 0
	End If
End Sub
Sub FL2_timer
	FL2.state = 0
	Sound_Flash_Relay 0, FL2
	FL2.TimerEnabled = false
End Sub


Sub Flash3(Enabled)
	If Enabled Then		
		FL3.state = 1
		FL3.TimerEnabled = true
		Sound_Flash_Relay 1, FL3
	Else
		FL3.state = 0
	End If
End Sub
Sub FL3_timer
	FL3.state = 0
	Sound_Flash_Relay 0, FL3
	FL3.TimerEnabled = false
End Sub


Sub Flash4(Enabled)
	If Enabled Then		
		FL4.state = 1
		FL4.TimerEnabled = true
		Sound_Flash_Relay 1, FL4
	Else
		FL4.state = 0
	End If
End Sub
Sub FL4_timer
	FL4.state = 0
	Sound_Flash_Relay 0, FL4
	FL4.TimerEnabled = false
End Sub


Sub Flash5(Enabled)
	If Enabled Then		
		FL5.state = 1
		FL5.TimerEnabled = true
		Sound_Flash_Relay 1, FL5
	Else
		FL5.state = 0
	End If
End Sub
Sub FL5_timer
	FL5.state = 0
	Sound_Flash_Relay 0, FL5
	FL5.TimerEnabled = false
End Sub


Sub Flash6(Enabled)
	If Enabled Then		
		FL6.state = 1
		FL6.TimerEnabled = true
		Sound_Flash_Relay 1, FL6
	Else
		FL6.state = 0
	End If
End Sub
Sub FL6_timer
	FL6.state = 0
	Sound_Flash_Relay 0, FL6
	FL6.TimerEnabled = false
End Sub



'******************************************************
'****  ZFLE : FLEEP MECHANICAL SOUNDS
'******************************************************

'///////////////////////////////  SOUNDS PARAMETERS  //////////////////////////////
Dim GlobalSoundLevel, CoinSoundLevel, PlungerReleaseSoundLevel, PlungerPullSoundLevel, NudgeLeftSoundLevel
Dim NudgeRightSoundLevel, NudgeCenterSoundLevel, StartButtonSoundLevel, RollingSoundFactor

CoinSoundLevel = 1														'volume level; range [0, 1]
NudgeLeftSoundLevel = 1													'volume level; range [0, 1]
NudgeRightSoundLevel = 1												'volume level; range [0, 1]
NudgeCenterSoundLevel = 1												'volume level; range [0, 1]
StartButtonSoundLevel = 0.1												'volume level; range [0, 1]
PlungerReleaseSoundLevel = 0.8 '1 wjr											'volume level; range [0, 1]
PlungerPullSoundLevel = 1												'volume level; range [0, 1]
RollingSoundFactor = 1.1/5		

'///////////////////////-----Solenoids, Kickers and Flash Relays-----///////////////////////
Dim FlipperUpAttackMinimumSoundLevel, FlipperUpAttackMaximumSoundLevel, FlipperUpAttackLeftSoundLevel, FlipperUpAttackRightSoundLevel
Dim FlipperUpSoundLevel, FlipperDownSoundLevel, FlipperLeftHitParm, FlipperRightHitParm
Dim SlingshotSoundLevel, BumperSoundFactor, KnockerSoundLevel

FlipperUpAttackMinimumSoundLevel = 0.010           						'volume level; range [0, 1]
FlipperUpAttackMaximumSoundLevel = 0.635								'volume level; range [0, 1]
FlipperUpSoundLevel = 1.0                        						'volume level; range [0, 1]
FlipperDownSoundLevel = 0.45                      						'volume level; range [0, 1]
FlipperLeftHitParm = FlipperUpSoundLevel								'sound helper; not configurable
FlipperRightHitParm = FlipperUpSoundLevel								'sound helper; not configurable
SlingshotSoundLevel = 0.95												'volume level; range [0, 1]
BumperSoundFactor = 4.25												'volume multiplier; must not be zero
KnockerSoundLevel = 1 													'volume level; range [0, 1]

'///////////////////////-----Ball Drops, Bumps and Collisions-----///////////////////////
Dim RubberStrongSoundFactor, RubberWeakSoundFactor, RubberFlipperSoundFactor,BallWithBallCollisionSoundFactor
Dim BallBouncePlayfieldSoftFactor, BallBouncePlayfieldHardFactor, PlasticRampDropToPlayfieldSoundLevel, WireRampDropToPlayfieldSoundLevel, DelayedBallDropOnPlayfieldSoundLevel
Dim WallImpactSoundFactor, MetalImpactSoundFactor, SubwaySoundLevel, SubwayEntrySoundLevel, ScoopEntrySoundLevel
Dim SaucerLockSoundLevel, SaucerKickSoundLevel

BallWithBallCollisionSoundFactor = 3.2									'volume multiplier; must not be zero
RubberStrongSoundFactor = 0.055/5											'volume multiplier; must not be zero
RubberWeakSoundFactor = 0.075/5											'volume multiplier; must not be zero
RubberFlipperSoundFactor = 0.075/5										'volume multiplier; must not be zero
BallBouncePlayfieldSoftFactor = 0.025									'volume multiplier; must not be zero
BallBouncePlayfieldHardFactor = 0.025									'volume multiplier; must not be zero
DelayedBallDropOnPlayfieldSoundLevel = 0.8									'volume level; range [0, 1]
WallImpactSoundFactor = 0.075											'volume multiplier; must not be zero
MetalImpactSoundFactor = 0.075/3
SaucerLockSoundLevel = 0.8
SaucerKickSoundLevel = 0.8

'///////////////////////-----Gates, Spinners, Rollovers and Targets-----///////////////////////

Dim GateSoundLevel, TargetSoundFactor, SpinnerSoundLevel, RolloverSoundLevel, DTSoundLevel

GateSoundLevel = 0.5/5													'volume level; range [0, 1]
TargetSoundFactor = 0.0025 * 10											'volume multiplier; must not be zero
DTSoundLevel = 0.25														'volume multiplier; must not be zero
RolloverSoundLevel = 0.25                              					'volume level; range [0, 1]
SpinnerSoundLevel = 0.5                              					'volume level; range [0, 1]

'///////////////////////-----Ball Release, Guides and Drain-----///////////////////////
Dim DrainSoundLevel, BallReleaseSoundLevel, BottomArchBallGuideSoundFactor, FlipperBallGuideSoundFactor 

DrainSoundLevel = 0.8														'volume level; range [0, 1]
BallReleaseSoundLevel = 1												'volume level; range [0, 1]
BottomArchBallGuideSoundFactor = 0.2									'volume multiplier; must not be zero
FlipperBallGuideSoundFactor = 0.015										'volume multiplier; must not be zero

'///////////////////////-----Loops and Lanes-----///////////////////////
Dim ArchSoundFactor
ArchSoundFactor = 0.025/5													'volume multiplier; must not be zero


'/////////////////////////////  SOUND PLAYBACK FUNCTIONS  ////////////////////////////
'/////////////////////////////  POSITIONAL SOUND PLAYBACK METHODS  ////////////////////////////
' Positional sound playback methods will play a sound, depending on the X,Y position of the table element or depending on ActiveBall object position
' These are similar subroutines that are less complicated to use (e.g. simply use standard parameters for the PlaySound call)
' For surround setup - positional sound playback functions will fade between front and rear surround channels and pan between left and right channels
' For stereo setup - positional sound playback functions will only pan between left and right channels
' For mono setup - positional sound playback functions will not pan between left and right channels and will not fade between front and rear channels

' PlaySound full syntax - PlaySound(string, int loopcount, float volume, float pan, float randompitch, int pitch, bool useexisting, bool restart, float front_rear_fade)
' Note - These functions will not work (currently) for walls/slingshots as these do not feature a simple, single X,Y position
Sub PlaySoundAtLevelStatic(playsoundparams, aVol, tableobj)
	PlaySound playsoundparams, 0, min(aVol,1) * MechVol, AudioPan(tableobj), 0, 0, 0, 0, AudioFade(tableobj)
End Sub

Sub PlaySoundAtLevelExistingStatic(playsoundparams, aVol, tableobj)
	PlaySound playsoundparams, 0, min(aVol,1) * MechVol, AudioPan(tableobj), 0, 0, 1, 0, AudioFade(tableobj)
End Sub

Sub PlaySoundAtLevelStaticLoop(playsoundparams, aVol, tableobj)
	PlaySound playsoundparams, -1, min(aVol,1) * MechVol, AudioPan(tableobj), 0, 0, 0, 0, AudioFade(tableobj)
End Sub

Sub PlaySoundAtLevelStaticRandomPitch(playsoundparams, aVol, randomPitch, tableobj)
	PlaySound playsoundparams, 0, min(aVol,1) * MechVol, AudioPan(tableobj), randomPitch, 0, 0, 0, AudioFade(tableobj)
End Sub

Sub PlaySoundAtLevelActiveBall(playsoundparams, aVol)
	PlaySound playsoundparams, 0, min(aVol,1) * MechVol, AudioPan(ActiveBall), 0, 0, 0, 0, AudioFade(ActiveBall)
End Sub

Sub PlaySoundAtLevelExistingActiveBall(playsoundparams, aVol)
	PlaySound playsoundparams, 0, min(aVol,1) * MechVol, AudioPan(ActiveBall), 0, 0, 1, 0, AudioFade(ActiveBall)
End Sub

Sub PlaySoundAtLeveTimerActiveBall(playsoundparams, aVol, ballvariable)
	PlaySound playsoundparams, 0, min(aVol,1) * MechVol, AudioPan(ballvariable), 0, 0, 0, 0, AudioFade(ballvariable)
End Sub

Sub PlaySoundAtLevelTimerExistingActiveBall(playsoundparams, aVol, ballvariable)
	PlaySound playsoundparams, 0, min(aVol,1) * MechVol, AudioPan(ballvariable), 0, 0, 1, 0, AudioFade(ballvariable)
End Sub

Sub PlaySoundAtLevelRoll(playsoundparams, aVol, pitch)
	PlaySound playsoundparams, -1, min(aVol,1) * MechVol, AudioPan(tableobj), randomPitch, 0, 0, 0, AudioFade(tableobj)
End Sub

' Previous Positional Sound Subs

Sub PlaySoundAt(soundname, tableobj)
	PlaySound soundname, 1, 1 * MechVol, AudioPan(tableobj), 0,0,0, 1, AudioFade(tableobj)
End Sub

Sub PlaySoundAtVol(soundname, tableobj, aVol)
	PlaySound soundname, 1, min(aVol,1) * MechVol, AudioPan(tableobj), 0,0,0, 1, AudioFade(tableobj)
End Sub

Sub PlaySoundAtBall(soundname)
	PlaySoundAt soundname, ActiveBall
End Sub

Sub PlaySoundAtBallVol (Soundname, aVol)
	Playsound soundname, 1,min(aVol,1) * MechVol, AudioPan(ActiveBall), 0,0,0, 1, AudioFade(ActiveBall)
End Sub

Sub PlaySoundAtBallVolM (Soundname, aVol)
	Playsound soundname, 1,min(aVol,1) * MechVol, AudioPan(ActiveBall), 0,0,0, 0, AudioFade(ActiveBall)
End Sub

Sub PlaySoundAtVolLoops(sound, tableobj, Vol, Loops)
	PlaySound sound, Loops, Vol * MechVol, AudioPan(tableobj), 0,0,0, 1, AudioFade(tableobj)
End Sub

Sub PlaySoundVol(soundname, Volume)
	PlaySound soundname, 1, Volume*BackglassVol
End Sub

'******************************************************
'  Fleep  Supporting Ball & Sound Functions
'******************************************************

Function AudioFade(tableobj) ' Fades between front and back of the table (for surround systems or 2x2 speakers, etc), depending on the Y position on the table. "table1" is the name of the table
  Dim tmp
    tmp = tableobj.y * 2 / tableheight-1

	if tmp > 7000 Then
		tmp = 7000
	elseif tmp < -7000 Then
		tmp = -7000
	end if

    If tmp > 0 Then
		AudioFade = Csng(tmp ^10)
    Else
        AudioFade = Csng(-((- tmp) ^10) )
    End If
End Function

Function AudioPan(tableobj) ' Calculates the pan for a tableobj based on the X position on the table. "table1" is the name of the table
    Dim tmp
    tmp = tableobj.x * 2 / tablewidth-1

	if tmp > 7000 Then
		tmp = 7000
	elseif tmp < -7000 Then
		tmp = -7000
	end if

    If tmp > 0 Then
        AudioPan = Csng(tmp ^10)
    Else
        AudioPan = Csng(-((- tmp) ^10) )
    End If
End Function

Function Vol(ball) ' Calculates the volume of the sound based on the ball speed
	Vol = Csng(BallVel(ball) ^2)
End Function

Function Volz(ball) ' Calculates the volume of the sound based on the ball speed
	Volz = Csng((ball.velz) ^2)
End Function

Function Pitch(ball) ' Calculates the pitch of the sound based on the ball speed
	Pitch = BallVel(ball) * 20
End Function

Function BallVel(ball) 'Calculates the ball speed
	BallVel = INT(SQR((ball.VelX ^2) + (ball.VelY ^2) ) )
End Function

Function VolPlayfieldRoll(ball) ' Calculates the roll volume of the sound based on the ball speed
	VolPlayfieldRoll = RollingSoundFactor * 0.0005 * Csng(BallVel(ball) ^3)
End Function

Function PitchPlayfieldRoll(ball) ' Calculates the roll pitch of the sound based on the ball speed
	PitchPlayfieldRoll = BallVel(ball) ^2 * 15
End Function

Function RndInt(min, max)
	RndInt = Int(Rnd() * (max-min + 1) + min)' Sets a random number integer between min and max
End Function

Function RndNum(min, max)
	RndNum = Rnd() * (max-min) + min' Sets a random number between min and max
End Function

'/////////////////////////////  GENERAL SOUND SUBROUTINES  ////////////////////////////
Sub SoundStartButton()
	PlaySound ("mfx_Start_Button"), 0, StartButtonSoundLevel, 0, 0.25
End Sub

Sub SoundNudgeLeft()
	PlaySound ("mfx_Nudge_" & Int(Rnd*2)+1), 0, NudgeLeftSoundLevel * MechVol, -0.1, 0.25
End Sub

Sub SoundNudgeRight()
	PlaySound ("mfx_Nudge_" & Int(Rnd*2)+1), 0, NudgeRightSoundLevel * MechVol, 0.1, 0.25
End Sub

Sub SoundNudgeCenter()
	PlaySound ("mfx_Nudge_" & Int(Rnd*2)+1), 0, NudgeCenterSoundLevel * MechVol, 0, 0.25
End Sub


Sub SoundPlungerPull()
	PlaySoundAtLevelStatic ("mfx_Plunger_Pull_1"), PlungerPullSoundLevel, Plunger
End Sub

Sub SoundPlungerReleaseBall()
	PlaySoundAtLevelStatic ("mfx_Plunger_Release_Ball"), PlungerReleaseSoundLevel, Plunger	
End Sub

Sub SoundPlungerReleaseNoBall()
	PlaySoundAtLevelStatic ("mfx_Plunger_Release_No_Ball"), PlungerReleaseSoundLevel, Plunger
End Sub


'/////////////////////////////  COIN IN  ////////////////////////////
Sub RandomCoinSound
	Select Case Int(rnd*3)
		Case 0: PlaySound ("mfx_Coin_In_1"), 0, CoinSoundLevel, 0, 0.25
		Case 1: PlaySound ("mfx_Coin_In_2"), 0, CoinSoundLevel, 0, 0.25
		Case 2: PlaySound ("mfx_Coin_In_3"), 0, CoinSoundLevel, 0, 0.25
	End Select
End Sub


'/////////////////////////////  KNOCKER SOLENOID  ////////////////////////////
Sub KnockerSolenoid()
	PlaySoundAtLevelStatic SoundFX("mfx_Knocker_1",DOFKnocker), KnockerSoundLevel, KnockerPosition
End Sub

'/////////////////////////////  DRAIN SOUNDS  ////////////////////////////
Sub RandomSoundDrain(drainswitch)
	PlaySoundAtLevelStatic ("mfx_Drain_" & Int(Rnd*11)+1), DrainSoundLevel, drainswitch
End Sub

'/////////////////////////////  TROUGH BALL RELEASE SOLENOID SOUNDS  ////////////////////////////

Sub RandomSoundBallRelease(drainswitch)
	PlaySoundAtLevelStatic SoundFX("mfx_BallRelease" & Int(Rnd*7)+1,DOFContactors), BallReleaseSoundLevel, drainswitch
End Sub

'/////////////////////////////  SLINGSHOT SOLENOID SOUNDS  ////////////////////////////
Sub RandomSoundSlingshotLeft(sling)
	PlaySoundAtLevelStatic SoundFX("mfx_Sling_L" & Int(Rnd*10)+1,DOFContactors), SlingshotSoundLevel, Sling
End Sub

Sub RandomSoundSlingshotRight(sling)
	PlaySoundAtLevelStatic SoundFX("mfx_Sling_R" & Int(Rnd*8)+1,DOFContactors), SlingshotSoundLevel, Sling
End Sub

'/////////////////////////////  BUMPER SOLENOID SOUNDS  ////////////////////////////
Sub RandomSoundBumperTop(Bump)
	PlaySoundAtLevelStatic SoundFX("mfx_Bumpers_Top_" & Int(Rnd*5)+1,DOFContactors), Vol(ActiveBall) * BumperSoundFactor, Bump
End Sub

Sub RandomSoundBumperMiddle(Bump)
	PlaySoundAtLevelStatic SoundFX("mfx_Bumpers_Middle_" & Int(Rnd*5)+1,DOFContactors), Vol(ActiveBall) * BumperSoundFactor, Bump
End Sub

Sub RandomSoundBumperBottom(Bump)
	PlaySoundAtLevelStatic SoundFX("mfx_Bumpers_Bottom_" & Int(Rnd*5)+1,DOFContactors), Vol(ActiveBall) * BumperSoundFactor, Bump
End Sub

'/////////////////////////////  SPINNER SOUNDS  ////////////////////////////
Sub SoundSpinner(spinnerswitch)
	PlaySoundAtLevelStatic ("mfx_Spinner"), SpinnerSoundLevel, spinnerswitch
End Sub


'/////////////////////////////  FLIPPER BATS SOUND SUBROUTINES  ////////////////////////////
'/////////////////////////////  FLIPPER BATS SOLENOID ATTACK SOUND  ////////////////////////////
Sub SoundFlipperUpAttackLeft(flipper)
	FlipperUpAttackLeftSoundLevel = RndNum(FlipperUpAttackMinimumSoundLevel, FlipperUpAttackMaximumSoundLevel)
	PlaySoundAtLevelStatic SoundFX("mfx_Flipper_Attack-L01",DOFFlippers), FlipperUpAttackLeftSoundLevel, flipper
End Sub

Sub SoundFlipperUpAttackRight(flipper)
	FlipperUpAttackRightSoundLevel = RndNum(FlipperUpAttackMinimumSoundLevel, FlipperUpAttackMaximumSoundLevel)
	PlaySoundAtLevelStatic SoundFX("mfx_Flipper_Attack-R01",DOFFlippers), FlipperUpAttackLeftSoundLevel, flipper
End Sub

'/////////////////////////////  FLIPPER BATS SOLENOID CORE SOUND  ////////////////////////////
Sub RandomSoundFlipperUpLeft(flipper)
	PlaySoundAtLevelStatic SoundFX("mfx_Flipper_L0" & Int(Rnd*9)+1,DOFFlippers), FlipperLeftHitParm, Flipper
End Sub

Sub RandomSoundFlipperUpRight(flipper)
	PlaySoundAtLevelStatic SoundFX("mfx_Flipper_R0" & Int(Rnd*9)+1,DOFFlippers), FlipperRightHitParm, Flipper
End Sub

Sub RandomSoundReflipUpLeft(flipper)
	PlaySoundAtLevelStatic SoundFX("mfx_Flipper_ReFlip_L0" & Int(Rnd*3)+1,DOFFlippers), (RndNum(0.8, 1))*FlipperUpSoundLevel, Flipper
End Sub

Sub RandomSoundReflipUpRight(flipper)
	PlaySoundAtLevelStatic SoundFX("mfx_Flipper_ReFlip_R0" & Int(Rnd*3)+1,DOFFlippers), (RndNum(0.8, 1))*FlipperUpSoundLevel, Flipper
End Sub

Sub RandomSoundFlipperDownLeft(flipper)
	PlaySoundAtLevelStatic SoundFX("mfx_Flipper_Left_Down_" & Int(Rnd*7)+1,DOFFlippers), FlipperDownSoundLevel, Flipper
End Sub

Sub RandomSoundFlipperDownRight(flipper)
	PlaySoundAtLevelStatic SoundFX("mfx_Flipper_Right_Down_" & Int(Rnd*8)+1,DOFFlippers), FlipperDownSoundLevel, Flipper
End Sub

'/////////////////////////////  FLIPPER BATS BALL COLLIDE SOUND  ////////////////////////////

Sub LeftFlipperCollide(parm)
	FlipperLeftHitParm = parm/10
	If FlipperLeftHitParm > 1 Then
		FlipperLeftHitParm = 1
	End If
	FlipperLeftHitParm = FlipperUpSoundLevel * FlipperLeftHitParm
	RandomSoundRubberFlipper(parm)
End Sub

Sub RightFlipperCollide(parm)
	FlipperRightHitParm = parm/10
	If FlipperRightHitParm > 1 Then
		FlipperRightHitParm = 1
	End If
	FlipperRightHitParm = FlipperUpSoundLevel * FlipperRightHitParm
	RandomSoundRubberFlipper(parm)
End Sub

Sub RandomSoundRubberFlipper(parm)
	PlaySoundAtLevelActiveBall ("mfx_Flipper_Rubber_" & Int(Rnd*7)+1), parm  * RubberFlipperSoundFactor
End Sub

'/////////////////////////////  ROLLOVER SOUNDS  ////////////////////////////
Sub RandomSoundRollover()
	PlaySoundAtLevelActiveBall ("mfx_Rollover_" & Int(Rnd*4)+1), RolloverSoundLevel
End Sub

Sub Rollovers_Hit(idx)
	RandomSoundRollover
End Sub

'/////////////////////////////  VARIOUS PLAYFIELD SOUND SUBROUTINES  ////////////////////////////
'/////////////////////////////  RUBBERS AND POSTS  ////////////////////////////
'/////////////////////////////  RUBBERS - EVENTS  ////////////////////////////
Sub Rubbers_Hit(idx)
	dim finalspeed
	finalspeed=SQR(activeball.velx * activeball.velx + activeball.vely * activeball.vely)
	If finalspeed > 5 then		
		RandomSoundRubberStrong 1
	End if
	If finalspeed <= 5 then
		RandomSoundRubberWeak()
	End If	
End Sub

'/////////////////////////////  RUBBERS AND POSTS - STRONG IMPACTS  ////////////////////////////
Sub RandomSoundRubberStrong(voladj)
	Select Case Int(Rnd*10)+1
		Case 1 : PlaySoundAtLevelActiveBall ("mfx_Rubber_Strong_1"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 2 : PlaySoundAtLevelActiveBall ("mfx_Rubber_Strong_2"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 3 : PlaySoundAtLevelActiveBall ("mfx_Rubber_Strong_3"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 4 : PlaySoundAtLevelActiveBall ("mfx_Rubber_Strong_4"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 5 : PlaySoundAtLevelActiveBall ("mfx_Rubber_Strong_5"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 6 : PlaySoundAtLevelActiveBall ("mfx_Rubber_Strong_6"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 7 : PlaySoundAtLevelActiveBall ("mfx_Rubber_Strong_7"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 8 : PlaySoundAtLevelActiveBall ("mfx_Rubber_Strong_8"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 9 : PlaySoundAtLevelActiveBall ("mfx_Rubber_Strong_9"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 10 : PlaySoundAtLevelActiveBall ("mfx_Rubber_1_Hard"), Vol(ActiveBall) * RubberStrongSoundFactor * 0.6*voladj
	End Select
End Sub

'/////////////////////////////  RUBBERS AND POSTS - WEAK IMPACTS  ////////////////////////////
Sub RandomSoundRubberWeak()
	PlaySoundAtLevelActiveBall ("mfx_Rubber_" & Int(Rnd*9)+1), Vol(ActiveBall) * RubberWeakSoundFactor
End Sub

'/////////////////////////////  WALL IMPACTS  ////////////////////////////
Sub Walls_Hit(idx)
	RandomSoundWall()      
End Sub

Sub RandomSoundWall()
	dim finalspeed
	finalspeed=SQR(activeball.velx * activeball.velx + activeball.vely * activeball.vely)
	If finalspeed > 16 then 
		Select Case Int(Rnd*5)+1
			Case 1 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_1"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 2 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_2"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 3 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_5"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 4 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_7"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 5 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_9"), Vol(ActiveBall) * WallImpactSoundFactor
		End Select
	End if
	If finalspeed >= 6 AND finalspeed <= 16 then
		Select Case Int(Rnd*4)+1
			Case 1 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_3"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 2 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_4"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 3 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_6"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 4 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_8"), Vol(ActiveBall) * WallImpactSoundFactor
		End Select
	End If
	If finalspeed < 6 Then
		Select Case Int(Rnd*3)+1
			Case 1 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_4"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 2 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_6"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 3 : PlaySoundAtLevelExistingActiveBall ("mfx_Wall_Hit_8"), Vol(ActiveBall) * WallImpactSoundFactor
		End Select
	End if
End Sub

'/////////////////////////////  METAL TOUCH SOUNDS  ////////////////////////////
Sub RandomSoundMetal()
	PlaySoundAtLevelActiveBall ("mfx_Metal_Touch_" & Int(Rnd*13)+1), Vol(ActiveBall) * MetalImpactSoundFactor
End Sub

'/////////////////////////////  METAL - EVENTS  ////////////////////////////

Sub Metals_Hit (idx)
	RandomSoundMetal
End Sub

Sub DiverterFlipper_collide(idx)
	RandomSoundMetal
End Sub


'/////////////////////////////  BOTTOM ARCH BALL GUIDE  ////////////////////////////
'/////////////////////////////  BOTTOM ARCH BALL GUIDE - SOFT BOUNCES  ////////////////////////////
Sub RandomSoundBottomArchBallGuide()
	dim finalspeed
	finalspeed=SQR(activeball.velx * activeball.velx + activeball.vely * activeball.vely)
	If finalspeed > 16 then 
		PlaySoundAtLevelActiveBall ("mfx_Apron_Bounce_"& Int(Rnd*2)+1), Vol(ActiveBall) * BottomArchBallGuideSoundFactor
	End if
	If finalspeed >= 6 AND finalspeed <= 16 then
		Select Case Int(Rnd*2)+1
			Case 1 : PlaySoundAtLevelActiveBall ("mfx_Apron_Bounce_1"), Vol(ActiveBall) * BottomArchBallGuideSoundFactor
			Case 2 : PlaySoundAtLevelActiveBall ("mfx_Apron_Bounce_Soft_1"), Vol(ActiveBall) * BottomArchBallGuideSoundFactor
		End Select
	End If
	If finalspeed < 6 Then
		Select Case Int(Rnd*2)+1
			Case 1 : PlaySoundAtLevelActiveBall ("mfx_Apron_Bounce_Soft_1"), Vol(ActiveBall) * BottomArchBallGuideSoundFactor
			Case 2 : PlaySoundAtLevelActiveBall ("mfx_Apron_Medium_3"), Vol(ActiveBall) * BottomArchBallGuideSoundFactor
		End Select
	End if
End Sub

'/////////////////////////////  BOTTOM ARCH BALL GUIDE - HARD HITS  ////////////////////////////
Sub RandomSoundBottomArchBallGuideHardHit()
	PlaySoundAtLevelActiveBall ("mfx_Apron_Hard_Hit_" & Int(Rnd*3)+1), BottomArchBallGuideSoundFactor * 0.25
End Sub

Sub Apron_Hit (idx)
	If Abs(cor.ballvelx(activeball.id) < 4) and cor.ballvely(activeball.id) > 7 then
		RandomSoundBottomArchBallGuideHardHit()
	Else
		RandomSoundBottomArchBallGuide
	End If
End Sub

'/////////////////////////////  FLIPPER BALL GUIDE  ////////////////////////////
Sub RandomSoundFlipperBallGuide()
	dim finalspeed
	finalspeed=SQR(activeball.velx * activeball.velx + activeball.vely * activeball.vely)
	If finalspeed > 16 then 
		Select Case Int(Rnd*2)+1
			Case 1 : PlaySoundAtLevelActiveBall ("mfx_Apron_Hard_1"),  Vol(ActiveBall) * FlipperBallGuideSoundFactor
			Case 2 : PlaySoundAtLevelActiveBall ("mfx_Apron_Hard_2"),  Vol(ActiveBall) * 0.8 * FlipperBallGuideSoundFactor
		End Select
	End if
	If finalspeed >= 6 AND finalspeed <= 16 then
		PlaySoundAtLevelActiveBall ("mfx_Apron_Medium_" & Int(Rnd*3)+1),  Vol(ActiveBall) * FlipperBallGuideSoundFactor
	End If
	If finalspeed < 6 Then
		PlaySoundAtLevelActiveBall ("mfx_Apron_Soft_" & Int(Rnd*7)+1),  Vol(ActiveBall) * FlipperBallGuideSoundFactor
	End If
End Sub

'/////////////////////////////  TARGET HIT SOUNDS  ////////////////////////////
Sub RandomSoundTargetHitStrong()
	PlaySoundAtLevelActiveBall SoundFX("mfx_Target_Hit_" & Int(Rnd*4)+5,DOFTargets), Vol(ActiveBall) * 0.45 * TargetSoundFactor
End Sub

Sub RandomSoundTargetHitWeak()		
	PlaySoundAtLevelActiveBall SoundFX("mfx_Target_Hit_" & Int(Rnd*4)+1,DOFTargets), Vol(ActiveBall) * TargetSoundFactor
End Sub

Sub PlayTargetSound()
	dim finalspeed
	finalspeed=SQR(activeball.velx * activeball.velx + activeball.vely * activeball.vely)
	If finalspeed > 10 then
		RandomSoundTargetHitStrong()
		RandomSoundBallBouncePlayfieldSoft Activeball
	Else 
		RandomSoundTargetHitWeak()
	End If	
End Sub

Sub Targets_Hit (idx)
	PlayTargetSound	
End Sub

'/////////////////////////////  BALL BOUNCE SOUNDS  ////////////////////////////
Sub RandomSoundBallBouncePlayfieldSoft(aBall)
	Select Case Int(Rnd*9)+1
		Case 1 : PlaySoundAtLevelStatic ("mfx_Ball_Bounce_Playfield_Soft_1"), volz(aBall) * BallBouncePlayfieldSoftFactor, aBall
		Case 2 : PlaySoundAtLevelStatic ("mfx_Ball_Bounce_Playfield_Soft_2"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.5, aBall
		Case 3 : PlaySoundAtLevelStatic ("mfx_Ball_Bounce_Playfield_Soft_3"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.8, aBall
		Case 4 : PlaySoundAtLevelStatic ("mfx_Ball_Bounce_Playfield_Soft_4"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.5, aBall
		Case 5 : PlaySoundAtLevelStatic ("mfx_Ball_Bounce_Playfield_Soft_5"), volz(aBall) * BallBouncePlayfieldSoftFactor, aBall
		Case 6 : PlaySoundAtLevelStatic ("mfx_Ball_Bounce_Playfield_Hard_1"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.2, aBall
		Case 7 : PlaySoundAtLevelStatic ("mfx_Ball_Bounce_Playfield_Hard_2"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.2, aBall
		Case 8 : PlaySoundAtLevelStatic ("mfx_Ball_Bounce_Playfield_Hard_5"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.2, aBall
		Case 9 : PlaySoundAtLevelStatic ("mfx_Ball_Bounce_Playfield_Hard_7"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.3, aBall
	End Select
End Sub

Sub RandomSoundBallBouncePlayfieldHard(aBall)
	PlaySoundAtLevelStatic ("mfx_Ball_Bounce_Playfield_Hard_" & Int(Rnd*7)+1), volz(aBall) * BallBouncePlayfieldHardFactor, aBall
End Sub

'/////////////////////////////  DELAYED DROP - TO PLAYFIELD - SOUND  ////////////////////////////
Sub RandomSoundDelayedBallDropOnPlayfield(aBall)
	Select Case Int(Rnd*5)+1
		Case 1 : PlaySoundAtLevelStatic ("mfx_Ball_Drop_Playfield_1_Delayed"), DelayedBallDropOnPlayfieldSoundLevel, aBall
		Case 2 : PlaySoundAtLevelStatic ("mfx_Ball_Drop_Playfield_2_Delayed"), DelayedBallDropOnPlayfieldSoundLevel, aBall
		Case 3 : PlaySoundAtLevelStatic ("mfx_Ball_Drop_Playfield_3_Delayed"), DelayedBallDropOnPlayfieldSoundLevel, aBall
		Case 4 : PlaySoundAtLevelStatic ("mfx_Ball_Drop_Playfield_4_Delayed"), DelayedBallDropOnPlayfieldSoundLevel, aBall
		Case 5 : PlaySoundAtLevelStatic ("mfx_Ball_Drop_Playfield_5_Delayed"), DelayedBallDropOnPlayfieldSoundLevel, aBall
	End Select
End Sub

'/////////////////////////////  BALL GATES AND BRACKET GATES SOUNDS  ////////////////////////////

Sub SoundPlayfieldGate()			
	PlaySoundAtLevelStatic ("mfx_Gate_FastTrigger_" & Int(Rnd*2)+1), GateSoundLevel, Activeball
End Sub

Sub SoundHeavyGate()
	PlaySoundAtLevelStatic ("mfx_Gate_2"), GateSoundLevel, Activeball
End Sub

Sub Gates_hit(idx)
	SoundHeavyGate
End Sub

Sub GatesWire_hit(idx)	
	SoundPlayfieldGate	
End Sub	

'/////////////////////////////  LEFT LANE ENTRANCE - SOUNDS  ////////////////////////////

Sub RandomSoundLeftArch()
	PlaySoundAtLevelActiveBall ("mfx_Arch_L" & Int(Rnd*4)+1), Vol(ActiveBall) * ArchSoundFactor
End Sub

Sub RandomSoundRightArch()
	PlaySoundAtLevelActiveBall ("mfx_Arch_R" & Int(Rnd*4)+1), Vol(ActiveBall) * ArchSoundFactor
End Sub


Sub Arch1_hit()
	If Activeball.velx > 1 Then SoundPlayfieldGate
	StopSound "mfx_Arch_L1"
	StopSound "mfx_Arch_L2"
	StopSound "mfx_Arch_L3"
	StopSound "mfx_Arch_L4"
End Sub

Sub Arch1_unhit()
	If activeball.velx < -8 Then
		RandomSoundRightArch
	End If
End Sub

Sub Arch2_hit()
	If Activeball.velx < 1 Then SoundPlayfieldGate
	StopSound "mfx_Arch_R1"
	StopSound "mfx_Arch_R2"
	StopSound "mfx_Arch_R3"
	StopSound "mfx_Arch_R4"
End Sub

Sub Arch2_unhit()
	If activeball.velx > 10 Then
		RandomSoundLeftArch
	End If
End Sub

'/////////////////////////////  SAUCERS (KICKER HOLES)  ////////////////////////////

Sub SoundSaucerLock()
	PlaySoundAtLevelStatic ("mfx_Saucer_Enter_" & Int(Rnd*2)+1), SaucerLockSoundLevel, Activeball
End Sub

Sub SoundSaucerKick(scenario, saucer)
	Select Case scenario
		Case 0: PlaySoundAtLevelStatic SoundFX("mfx_Saucer_Empty", DOFContactors), SaucerKickSoundLevel, saucer
		Case 1: PlaySoundAtLevelStatic SoundFX("mfx_Saucer_Kick", DOFContactors), SaucerKickSoundLevel, saucer
	End Select
End Sub

'/////////////////////////////  BALL COLLISION SOUND  ////////////////////////////
Sub OnBallBallCollision(ball1, ball2, velocity)

	FlipperCradleCollision ball1, ball2, velocity

	Dim snd
	Select Case Int(Rnd*7)+1
		Case 1 : snd = "mfx_Ball_Collide_1"
		Case 2 : snd = "mfx_Ball_Collide_2"
		Case 3 : snd = "mfx_Ball_Collide_3"
		Case 4 : snd = "mfx_Ball_Collide_4"
		Case 5 : snd = "mfx_Ball_Collide_5"
		Case 6 : snd = "mfx_Ball_Collide_6"
		Case 7 : snd = "mfx_Ball_Collide_7"
	End Select

	PlaySound (snd), 0, Csng(velocity) ^2 / 200 * BallWithBallCollisionSoundFactor * MechVol, AudioPan(ball1), 0, Pitch(ball1), 0, 0, AudioFade(ball1)
End Sub


'///////////////////////////  DROP TARGET HIT SOUNDS  ///////////////////////////

Sub RandomSoundDropTargetReset(obj)
	PlaySoundAtLevelStatic SoundFX("mfx_Drop_Target_Reset_" & Int(Rnd*6)+1,DOFContactors), 1, obj
End Sub

Sub SoundDropTargetDrop(obj)
	PlaySoundAtLevelStatic ("mfx_Drop_Target_Down_" & Int(Rnd*6)+1), 200, obj
End Sub

'/////////////////////////////  GI AND FLASHER RELAYS  ////////////////////////////

Const RelayFlashSoundLevel = 0.315									'volume level; range [0, 1];
Const RelayGISoundLevel = 1.05									'volume level; range [0, 1];

Sub Sound_GI_Relay(toggle, obj)
	Select Case toggle
		Case 1
			PlaySoundAtLevelStatic ("mfx_Relay_GI_On"), 0.025*RelayGISoundLevel, obj
		Case 0
			PlaySoundAtLevelStatic ("mfx_Relay_GI_Off"), 0.025*RelayGISoundLevel, obj
	End Select
End Sub

Sub Sound_Flash_Relay(toggle, obj)
	Select Case toggle
		Case 1
			PlaySoundAtLevelStatic ("mfx_Relay_Flash_On"), 0.025*RelayFlashSoundLevel, obj			
		Case 0
			PlaySoundAtLevelStatic ("mfx_Relay_Flash_Off"), 0.025*RelayFlashSoundLevel, obj		
	End Select
End Sub

'/////////////////////////////////////////////////////////////////
'					End Mechanical Sounds
'/////////////////////////////////////////////////////////////////

'******************************************************
'****  FLEEP MECHANICAL SOUNDS
'******************************************************





'*******************************************
'  ZFLP : Flippers
'*******************************************


' Flipper callbacks

Const ReflipAngle = 20

Sub LeftFlipperAction(Enabled)
	If Enabled Then
		DOF 101, DOFOn
		FlipperActivate LeftFlipper, LFPress
		LF.Fire    
		If LeftFlipper.currentangle < LeftFlipper.endangle + ReflipAngle Then 
			RandomSoundReflipUpLeft LeftFlipper
		Else 
			SoundFlipperUpAttackLeft LeftFlipper
			RandomSoundFlipperUpLeft LeftFlipper
		End If
	Else
		DOF 101, DOFOff
		FlipperDeActivate LeftFlipper, LFPress
		LeftFlipper.RotateToStart
		If LeftFlipper.currentangle < LeftFlipper.startAngle - 5 Then
			RandomSoundFlipperDownLeft LeftFlipper
		End If
		FlipperLeftHitParm = FlipperUpSoundLevel
	End If
End Sub

Sub RightFlipperAction(Enabled)
	If Enabled Then
		DOF 102, DOFOn
		FlipperActivate RightFlipper, RFPress
		RF.Fire 
		RightFlipper1.rotatetoend
		If RightFlipper.currentangle > RightFlipper.endangle - ReflipAngle Then
			RandomSoundReflipUpRight RightFlipper
		Else 
			SoundFlipperUpAttackRight RightFlipper
			RandomSoundFlipperUpRight RightFlipper
		End If
	Else
		DOF 102, DOFOff
		FlipperDeActivate RightFlipper, RFPress
		RightFlipper.RotateToStart
		RightFlipper1.RotateToStart
		If RightFlipper.currentangle > RightFlipper.startAngle + 5 Then
			RandomSoundFlipperDownRight RightFlipper
		End If	
		FlipperRightHitParm = FlipperUpSoundLevel
	End If
End Sub


' Flipper collide subs
Sub LeftFlipper_Collide(parm)
	CheckLiveCatch ActiveBall, LeftFlipper, LFCount, parm
	LF.ReProcessBalls ActiveBall
	LeftFlipperCollide parm
End Sub

Sub RightFlipper_Collide(parm)
	CheckLiveCatch ActiveBall, RightFlipper, RFCount, parm
	RF.ReProcessBalls ActiveBall
	RightFlipperCollide parm
End Sub

'*******************************************
'  ZTIM : General Timers
'*******************************************


' The game timer interval is 10 ms
Sub GameTimer_Timer()
End Sub

' The COR timer interval is 10 ms
Sub CorTimer_Timer
	Cor.Update
End Sub


' The frame timer interval is -1, so executes at the display frame rate
dim FrameTime, InitFrameTime : InitFrameTime = 0
Sub FrameTimer_Timer()
	FrameTime = gametime - InitFrameTime : InitFrameTime = gametime	'Count frametime
	If FrameTime > 25 Then debug.print "---------- FrameTime = " & FrameTime

	RollingUpdate					'update rolling sounds
	DoDTAnim 						'handle drop target animations
	UpdateDropTargets
	DoSTAnim 						'handle drop target animations
	UpdateStandupTargets
	BSUpdate
	UpdateBallBrightness
	UpdateAsteroid
	NudgeAnim
End Sub

' 'Debug textbox
' tbDebug.Timerenabled = True
' Sub tbDebug_Timer
' 	me.text = Player(CurrentPlayer).BallsRemaining
' End Sub




'*******************************************
'  ZKEY : Key Press Handling
'*******************************************

Sub Table1_KeyDown(ByVal keycode)

	' ANY TIME
	Glf_KeyDown(keycode)
	If keycode = AddCreditKey or keycode = AddCreditKey2 Then RandomCoinSound
	If keycode = PlungerKey Then Plunger.Pullback : SoundPlungerPull 
	If keycode = StartGameKey Then SoundStartButton : AudioCallout "boot"
	If keycode = LeftTiltKey Then 
		Nudge 90, 2
		ShipNudge 1, -1, ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
		SoundNudgeLeft
		' CheckTilt
	End If
	If keycode = RightTiltKey Then 
		Nudge 270, 2
		ShipNudge 1, 1, ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
		SoundNudgeRight
		' CheckTilt
	End If
	If keycode = CenterTiltKey Then 
		Nudge 0, 3
		ShipNudge 1, -1, ShipVelY, ShipTimeY, ShipVelY2, ShipMaxMovement, ShipAcc
		SoundNudgeCenter
		' CheckTilt
	End If

	'IN HIGH SCORE MODE
	' If bHSModeActive = True Then
	' 	EnterHighScoreKey(keycode)


	' ' IN GAME
	' Elseif bGameInPlay Then

	' ' 	If NOT bTilted Then
	' 		If keycode = LeftFlipperKey and bFlippersEnabled Then
	' 			FlipperActivate LeftFlipper, LFPress
	' 			SolLFlipper True						'This would be called by the solenoid callbacks if using a ROM
	' 			RotateLaneLightsLeft
	' 		End If

	' 		If keycode = RightFlipperKey and bFlippersEnabled Then
	' 			FlipperActivate RightFlipper, RFPress
	' 			SolRFlipper True						'This would be called by the solenoid callbacks if using a ROM
	' 			RotateLaneLightsRight
	' 		End If

	' 		If keycode = LeftMagnaSave Then
	' 			FireClusterRound
	' 			LeftMagnaTimer.Enabled = True
	' 		End If

	' 		If keycode = RightMagnaSave Then
	' 			LauchMoonMissiles
	' 		End If


	' 		If keycode = MechanicalTilt Then 
	' 			SoundNudgeCenter
	' 			CheckMechTilt
	' 		End If
	
	' 		If keycode = StartGameKey Then
	' 			If((PlayersPlayingGame <MaxPlayers) AND(bOnTheFirstBall = True) ) Then
	' 				PlayersPlayingGame = PlayersPlayingGame + 1

	' 				If PlayersPlayingGame = 2 Then

	' 				End If

	' 				If PlayersPlayingGame = 3 Then

	' 				End If

	' 				If PlayersPlayingGame = 4 Then

	' 				End If

	' 				TotalGamesPlayed = TotalGamesPlayed + 1
	' 				Savegp
	' 			End If
	' 		End If
	' 	End if


	' ' NOT IN GAME
	' Else
	' 	If NOT bTilted Then
	' 		If keycode = StartGameKey Then 
	' 			If BallsOnPlayfield = 0 Then
	' 				ResetForNewGame
	' 			End If
	' 		End If
	' 	End If
	' End If

End Sub



Sub Table1_KeyUp(ByVal keycode)

	' ANY TIME
	Glf_KeyUp(keycode)
	
	If KeyCode = PlungerKey Then
		Plunger.Fire
		SoundPlungerReleaseBall
	End If


	' If keycode = LeftFlipperKey Then
	' 	FlipperDeActivate LeftFlipper, LFPress
	' 	SolLFlipper False						'This would be called by the solenoid callbacks if using a ROM
	' End If

	' If keycode = RightFlipperKey Then
	' 	FlipperDeActivate RightFlipper, RFPress
	' 	SolRFlipper False						'This would be called by the solenoid callbacks if using a ROM
	' End If


	' ' IN GAME
	' If bGameInPlay and not bHSModeActive Then

	' 	If keycode = LeftMagnaSave Then
	' 		LeftMagnaTimer.Enabled = False
	' 	End If

	' End If


End Sub



' Sub LeftMagnaTimer_Timer
' 	LeftMagnaTimer.Enabled = False
' 	StartEarthKillerWizard
' End Sub


'**********************************
' 	ZMAT: General Math Functions
'**********************************
' These get used throughout the script. 

Dim PI
PI = 4 * Atn(1)

Function dSin(degrees)
	dsin = Sin(degrees * Pi / 180)
End Function

Function dCos(degrees)
	dcos = Cos(degrees * Pi / 180)
End Function

Function Atn2(dy, dx)
	If dx > 0 Then
		Atn2 = Atn(dy / dx)
	ElseIf dx < 0 Then
		If dy = 0 Then
			Atn2 = pi
		Else
			Atn2 = Sgn(dy) * (pi - Atn(Abs(dy / dx)))
		End If
	ElseIf dx = 0 Then
		If dy = 0 Then
			Atn2 = 0
		Else
			Atn2 = Sgn(dy) * pi / 2
		End If
	End If
End Function

Function ArcCos(x)
	If x = 1 Then
		ArcCos = 0/180*PI
	ElseIf x = -1 Then
		ArcCos = 180/180*PI
	Else
		ArcCos = Atn(-x/Sqr(-x * x + 1)) + 2 * Atn(1)
	End If
End Function

Function max(a,b)
	If a > b Then
		max = a
	Else
		max = b
	End If
End Function

Function min(a,b)
	If a > b Then
		min = b
	Else
		min = a
	End If
End Function

Function Sgn(num)
	If num > 0 Then 
		Sgn = 1
	Else	
		Sgn = -1
	End If
End Function


' Used for drop targets
Function InRect(px,py,ax,ay,bx,by,cx,cy,dx,dy) 'Determines if a Points (px,py) is inside a 4 point polygon A-D in Clockwise/CCW order
	Dim AB, BC, CD, DA
	AB = (bx * py) - (by * px) - (ax * py) + (ay * px) + (ax * by) - (ay * bx)
	BC = (cx * py) - (cy * px) - (bx * py) + (by * px) + (bx * cy) - (by * cx)
	CD = (dx * py) - (dy * px) - (cx * py) + (cy * px) + (cx * dy) - (cy * dx)
	DA = (ax * py) - (ay * px) - (dx * py) + (dy * px) + (dx * ay) - (dy * ax)
	
	If (AB <= 0 And BC <= 0 And CD <= 0 And DA <= 0) Or (AB >= 0 And BC >= 0 And CD >= 0 And DA >= 0) Then
		InRect = True
	Else
		InRect = False
	End If
End Function

Function InRotRect(ballx,bally,px,py,angle,ax,ay,bx,by,cx,cy,dx,dy)
	Dim rax,ray,rbx,rby,rcx,rcy,rdx,rdy
	Dim rotxy
	rotxy = RotPoint(ax,ay,angle)
	rax = rotxy(0) + px
	ray = rotxy(1) + py
	rotxy = RotPoint(bx,by,angle)
	rbx = rotxy(0) + px
	rby = rotxy(1) + py
	rotxy = RotPoint(cx,cy,angle)
	rcx = rotxy(0) + px
	rcy = rotxy(1) + py
	rotxy = RotPoint(dx,dy,angle)
	rdx = rotxy(0) + px
	rdy = rotxy(1) + py
	
	InRotRect = InRect(ballx,bally,rax,ray,rbx,rby,rcx,rcy,rdx,rdy)
End Function

Function RotPoint(x,y,angle)
	Dim rx, ry
	rx = x * dCos(angle) - y * dSin(angle)
	ry = x * dSin(angle) + y * dCos(angle)
	RotPoint = Array(rx,ry)
End Function



'*******************************************
' ZMIS : Miscellaneous support function
'*******************************************


ReDim bBallInTrough(tnob)
Sub CheckBallLocations
	Dim b
	For b = 0 to UBound(gBOT)
		'Check if ball is in the trough
		If InRect(gBOT(b).X, gBOT(b).Y, 377,2018,850,1783,850,1895,404,2087) Then
			bBallInTrough(b) = True
		Else
			bBallInTrough(b) = False
		End If
	Next
End Sub






'******************************************************
'* ZCOR : Slingshot, flipper, rubber and corrections
'******************************************************



'******************************************************
'  SLINGSHOT CORRECTION FUNCTIONS
'******************************************************


dim LS : Set LS = New SlingshotCorrection
dim RS : Set RS = New SlingshotCorrection



Sub InitSlingCorrection

	LS.Object = LeftSlingshot
	LS.EndPoint1 = EndPoint1LS
	LS.EndPoint2 = EndPoint2LS

	RS.Object = RightSlingshot
	RS.EndPoint1 = EndPoint1RS
	RS.EndPoint2 = EndPoint2RS

	'Slingshot angle corrections (pt, BallPos in %, Angle in deg)
	' These values are best guesses. Retune them if needed based on specific table research.
	AddSlingsPt 0, 0.00,	-4
	AddSlingsPt 1, 0.45,	-7
	AddSlingsPt 2, 0.48,	0
	AddSlingsPt 3, 0.52,	0
	AddSlingsPt 4, 0.55,	7
	AddSlingsPt 5, 1.00,	4

End Sub


Sub AddSlingsPt(idx, aX, aY)        'debugger wrapper for adjusting flipper script in-game
	dim a : a = Array(LS, RS)
	dim x : for each x in a
		x.addpoint idx, aX, aY
	Next
End Sub

'' The following sub are needed, however they may exist somewhere else in the script. Uncomment below if needed
'Dim PI: PI = 4*Atn(1)
'Function dSin(degrees)
'	dsin = sin(degrees * Pi/180)
'End Function
'Function dCos(degrees)
'	dcos = cos(degrees * Pi/180)
'End Function
'
'Function RotPoint(x,y,angle)
'    dim rx, ry
'    rx = x*dCos(angle) - y*dSin(angle)
'    ry = x*dSin(angle) + y*dCos(angle)
'    RotPoint = Array(rx,ry)
'End Function

Class SlingshotCorrection
	Public DebugOn, Enabled
	private Slingshot, SlingX1, SlingX2, SlingY1, SlingY2

	Public ModIn, ModOut
	Private Sub Class_Initialize : redim ModIn(0) : redim Modout(0): Enabled = True : End Sub 

	Public Property let Object(aInput) : Set Slingshot = aInput : End Property
	Public Property Let EndPoint1(aInput) : SlingX1 = aInput.x: SlingY1 = aInput.y: End Property
	Public Property Let EndPoint2(aInput) : SlingX2 = aInput.x: SlingY2 = aInput.y: End Property

	Public Sub AddPoint(aIdx, aX, aY) 
		ShuffleArrays ModIn, ModOut, 1 : ModIn(aIDX) = aX : ModOut(aIDX) = aY : ShuffleArrays ModIn, ModOut, 0
		If gametime > 100 then Report
	End Sub

	Public Sub Report()         'debug, reports all coords in tbPL.text
		If not debugOn then exit sub
		dim a1, a2 : a1 = ModIn : a2 = ModOut
		dim str, x : for x = 0 to uBound(a1) : str = str & x & ": " & round(a1(x),4) & ", " & round(a2(x),4) & vbnewline : next
		TBPout.text = str
	End Sub


	Public Sub VelocityCorrect(aBall)
		dim BallPos, XL, XR, YL, YR
		
		'Assign right and left end points
		If SlingX1 < SlingX2 Then 
			XL = SlingX1 : YL = SlingY1 : XR = SlingX2 : YR = SlingY2
		Else
			XL = SlingX2 : YL = SlingY2 : XR = SlingX1 : YR = SlingY1
		End If

		'Find BallPos = % on Slingshot
		If Not IsEmpty(aBall.id) Then 
			If ABS(XR-XL) > ABS(YR-YL) Then 
				BallPos = PSlope(aBall.x, XL, 0, XR, 1)
			Else
				BallPos = PSlope(aBall.y, YL, 0, YR, 1)
			End If
			If BallPos < 0 Then BallPos = 0
			If BallPos > 1 Then BallPos = 1
		End If

		'Velocity angle correction
		If not IsEmpty(ModIn(0) ) then
			Dim Angle, RotVxVy
			Angle = LinearEnvelope(BallPos, ModIn, ModOut)
			'DebugPrint " BallPos=" & BallPos &" Angle=" & Angle 
			'DebugPrint " BEFORE: aBall.Velx=" & aBall.Velx &" aBall.Vely" & aBall.Vely 
			RotVxVy = RotPoint(aBall.Velx,aBall.Vely,Angle)
			If Enabled then aBall.Velx = RotVxVy(0)
			If Enabled then aBall.Vely = RotVxVy(1)
			'DebugPrint " AFTER: aBall.Velx=" & aBall.Velx &" aBall.Vely" & aBall.Vely 
			'DebugPrint " " 
		End If
	End Sub

End Class




'******************************************************
' Flippers Polarity (Select appropriate sub based on era) 
'******************************************************

dim LF : Set LF = New FlipperPolarity
dim RF : Set RF = New FlipperPolarity



'*******************************************
'  Late 80's early 90's

Sub InitPolarity()
	Dim x, a
	a = Array(LF, RF)
	For Each x In a
		x.AddPt "Ycoef", 0, RightFlipper.Y-65, 1 'disabled
		x.AddPt "Ycoef", 1, RightFlipper.Y-11, 1
		x.enabled = True
		x.TimeDelay = 60
		x.DebugOn=False ' prints some info in debugger

		x.AddPt "Polarity", 0, 0, 0
		x.AddPt "Polarity", 1, 0.05, - 5.5
		x.AddPt "Polarity", 2, 0.16, - 5.5
		x.AddPt "Polarity", 3, 0.20, - 0.75
		x.AddPt "Polarity", 4, 0.25, - 1.25
		x.AddPt "Polarity", 5, 0.3, - 1.75
		x.AddPt "Polarity", 6, 0.4, - 3.5
		x.AddPt "Polarity", 7, 0.5, - 5.25
		x.AddPt "Polarity", 8, 0.7, - 4.0
		x.AddPt "Polarity", 9, 0.75, - 3.5
		x.AddPt "Polarity", 10, 0.8, - 3.0
		x.AddPt "Polarity", 11, 0.85, - 2.5
		x.AddPt "Polarity", 12, 0.9, - 2.0
		x.AddPt "Polarity", 13, 0.95, - 1.5
		x.AddPt "Polarity", 14, 1, - 1.0
		x.AddPt "Polarity", 15, 1.05, -0.5
		x.AddPt "Polarity", 16, 1.1, 0
		x.AddPt "Polarity", 17, 1.3, 0

		x.AddPt "Velocity", 0, 0, 0.85
		x.AddPt "Velocity", 1, 0.23, 0.85
		x.AddPt "Velocity", 2, 0.27, 1
		x.AddPt "Velocity", 3, 0.3, 1
		x.AddPt "Velocity", 4, 0.35, 1
		x.AddPt "Velocity", 5, 0.6, 1 '0.982
		x.AddPt "Velocity", 6, 0.62, 1.0
		x.AddPt "Velocity", 7, 0.702, 0.968
		x.AddPt "Velocity", 8, 0.95,  0.968
		x.AddPt "Velocity", 9, 1.03,  0.945
		x.AddPt "Velocity", 10, 1.5,  0.945

	Next
	
	' SetObjects arguments: 1: name of object 2: flipper object: 3: Trigger object around flipper
	LF.SetObjects "LF", LeftFlipper, TriggerLF
	RF.SetObjects "RF", RightFlipper, TriggerRF
End Sub


'******************************************************
'  FLIPPER CORRECTION FUNCTIONS
'******************************************************

' modified 2023 by nFozzy
' Removed need for 'endpoint' objects
' Added 'createvents' type thing for TriggerLF / TriggerRF triggers.
' Removed AddPt function which complicated setup imo
' made DebugOn do something (prints some stuff in debugger)
'   Otherwise it should function exactly the same as before\
' modified 2024 by rothbauerw
' Added Reprocessballs for flipper collisions (LF.Reprocessballs Activeball and RF.Reprocessballs Activeball must be added to the flipper collide subs
' Improved handling to remove correction for backhand shots when the flipper is raised

Class FlipperPolarity
	Public DebugOn, Enabled
	Private FlipAt		'Timer variable (IE 'flip at 723,530ms...)
	Public TimeDelay		'delay before trigger turns off and polarity is disabled
	Private Flipper, FlipperStart, FlipperEnd, FlipperEndY, LR, PartialFlipCoef, FlipStartAngle
	Private Balls(20), balldata(20)
	Private Name
	
	Dim PolarityIn, PolarityOut
	Dim VelocityIn, VelocityOut
	Dim YcoefIn, YcoefOut
	Public Sub Class_Initialize
		ReDim PolarityIn(0)
		ReDim PolarityOut(0)
		ReDim VelocityIn(0)
		ReDim VelocityOut(0)
		ReDim YcoefIn(0)
		ReDim YcoefOut(0)
		Enabled = True
		TimeDelay = 50
		LR = 1
		Dim x
		For x = 0 To UBound(balls)
			balls(x) = Empty
			Set Balldata(x) = new SpoofBall
		Next
	End Sub
	
	Public Sub SetObjects(aName, aFlipper, aTrigger)
		
		If TypeName(aName) <> "String" Then MsgBox "FlipperPolarity: .SetObjects error: first argument must be a String (And name of Object). Found:" & TypeName(aName) End If
		If TypeName(aFlipper) <> "Flipper" Then MsgBox "FlipperPolarity: .SetObjects error: Second argument must be a flipper. Found:" & TypeName(aFlipper) End If
		If TypeName(aTrigger) <> "Trigger" Then MsgBox "FlipperPolarity: .SetObjects error: third argument must be a trigger. Found:" & TypeName(aTrigger) End If
		If aFlipper.EndAngle > aFlipper.StartAngle Then LR = -1 Else LR = 1 End If
		Name = aName
		Set Flipper = aFlipper
		FlipperStart = aFlipper.x
		FlipperEnd = Flipper.Length * Sin((Flipper.StartAngle / 57.295779513082320876798154814105)) + Flipper.X ' big floats for degree to rad conversion
		FlipperEndY = Flipper.Length * Cos(Flipper.StartAngle / 57.295779513082320876798154814105)*-1 + Flipper.Y
		
		Dim str
		str = "Sub " & aTrigger.name & "_Hit() : " & aName & ".AddBall ActiveBall : End Sub'"
		ExecuteGlobal(str)
		str = "Sub " & aTrigger.name & "_UnHit() : " & aName & ".PolarityCorrect ActiveBall : End Sub'"
		ExecuteGlobal(str)
		
	End Sub
	
	' Legacy: just no op
	Public Property Let EndPoint(aInput)
		
	End Property
	
	Public Sub AddPt(aChooseArray, aIDX, aX, aY) 'Index #, X position, (in) y Position (out)
		Select Case aChooseArray
			Case "Polarity"
				ShuffleArrays PolarityIn, PolarityOut, 1
				PolarityIn(aIDX) = aX
				PolarityOut(aIDX) = aY
				ShuffleArrays PolarityIn, PolarityOut, 0
			Case "Velocity"
				ShuffleArrays VelocityIn, VelocityOut, 1
				VelocityIn(aIDX) = aX
				VelocityOut(aIDX) = aY
				ShuffleArrays VelocityIn, VelocityOut, 0
			Case "Ycoef"
				ShuffleArrays YcoefIn, YcoefOut, 1
				YcoefIn(aIDX) = aX
				YcoefOut(aIDX) = aY
				ShuffleArrays YcoefIn, YcoefOut, 0
		End Select
	End Sub
	
	Public Sub AddBall(aBall)
		Dim x
		For x = 0 To UBound(balls)
			If IsEmpty(balls(x)) Then
				Set balls(x) = aBall
				Exit Sub
			End If
		Next
	End Sub
	
	Private Sub RemoveBall(aBall)
		Dim x
		For x = 0 To UBound(balls)
			If TypeName(balls(x) ) = "IBall" Then
				If aBall.ID = Balls(x).ID Then
					balls(x) = Empty
					Balldata(x).Reset
				End If
			End If
		Next
	End Sub
	
	Public Sub Fire()
		Flipper.RotateToEnd
		processballs
	End Sub
	
	Public Property Get Pos 'returns % position a ball. For debug stuff.
		Dim x
		For x = 0 To UBound(balls)
			If Not IsEmpty(balls(x)) Then
				pos = pSlope(Balls(x).x, FlipperStart, 0, FlipperEnd, 1)
			End If
		Next
	End Property
	
	Public Sub ProcessBalls() 'save data of balls in flipper range
		FlipAt = GameTime
		Dim x
		For x = 0 To UBound(balls)
			If Not IsEmpty(balls(x)) Then
				balldata(x).Data = balls(x)
			End If
		Next
		FlipStartAngle = Flipper.currentangle
		PartialFlipCoef = ((Flipper.StartAngle - Flipper.CurrentAngle) / (Flipper.StartAngle - Flipper.EndAngle))
		PartialFlipCoef = abs(PartialFlipCoef-1)
	End Sub

	Public Sub ReProcessBalls(aBall) 'save data of balls in flipper range
		If FlipperOn() Then
			Dim x
			For x = 0 To UBound(balls)
				If Not IsEmpty(balls(x)) Then
					if balls(x).ID = aBall.ID Then
						If isempty(balldata(x).ID) Then
							balldata(x).Data = balls(x)
						End If
					End If
				End If
			Next
		End If
	End Sub

	'Timer shutoff for polaritycorrect
	Private Function FlipperOn()
		If GameTime < FlipAt+TimeDelay Then
			FlipperOn = True
		End If
	End Function
	
	Public Sub PolarityCorrect(aBall)
		If FlipperOn() Then
			Dim tmp, BallPos, x, IDX, Ycoef, BalltoFlip, BalltoBase, NoCorrection, checkHit
			Ycoef = 1
			
			'y safety Exit
			If aBall.VelY > -8 Then 'ball going down
				RemoveBall aBall
				Exit Sub
			End If
			
			'Find balldata. BallPos = % on Flipper
			For x = 0 To UBound(Balls)
				If aBall.id = BallData(x).id And Not IsEmpty(BallData(x).id) Then
					idx = x
					BallPos = PSlope(BallData(x).x, FlipperStart, 0, FlipperEnd, 1)
					BalltoFlip = DistanceFromFlipperAngle(BallData(x).x, BallData(x).y, Flipper, FlipStartAngle)
					If ballpos > 0.65 Then  Ycoef = LinearEnvelope(BallData(x).Y, YcoefIn, YcoefOut)								'find safety coefficient 'ycoef' data
				End If
			Next
			
			If BallPos = 0 Then 'no ball data meaning the ball is entering and exiting pretty close to the same position, use current values.
				BallPos = PSlope(aBall.x, FlipperStart, 0, FlipperEnd, 1)
				If ballpos > 0.65 Then  Ycoef = LinearEnvelope(aBall.Y, YcoefIn, YcoefOut)												'find safety coefficient 'ycoef' data
				NoCorrection = 1
			Else
				checkHit = 50 + (20 * BallPos) 

				If BalltoFlip > checkHit or (PartialFlipCoef < 0.5 and BallPos > 0.22) Then
					NoCorrection = 1
				Else
					NoCorrection = 0
				End If
			End If
			
			'Velocity correction
			If Not IsEmpty(VelocityIn(0) ) Then
				Dim VelCoef
				VelCoef = LinearEnvelope(BallPos, VelocityIn, VelocityOut)
				
				'If partialflipcoef < 1 Then VelCoef = PSlope(partialflipcoef, 0, 1, 1, VelCoef)
				
				If Enabled Then aBall.Velx = aBall.Velx*VelCoef
				If Enabled Then aBall.Vely = aBall.Vely*VelCoef
			End If
			
			'Polarity Correction (optional now)
			If Not IsEmpty(PolarityIn(0) ) Then
				Dim AddX
				AddX = LinearEnvelope(BallPos, PolarityIn, PolarityOut) * LR
				
				If Enabled and NoCorrection = 0 Then aBall.VelX = aBall.VelX + 1 * (AddX*ycoef*PartialFlipcoef*VelCoef)
			End If
			If DebugOn Then debug.print "PolarityCorrect" & " " & Name & " @ " & GameTime & " " & Round(BallPos*100) & "%" & " AddX:" & Round(AddX,2) & " Vel%:" & Round(VelCoef*100)
		End If
		RemoveBall aBall
	End Sub
End Class

'******************************************************
'  FLIPPER POLARITY AND RUBBER DAMPENER SUPPORTING FUNCTIONS
'******************************************************

' Used for flipper correction and rubber dampeners
Sub ShuffleArray(ByRef aArray, byVal offset) 'shuffle 1d array
	Dim x, aCount
	aCount = 0
	ReDim a(UBound(aArray) )
	For x = 0 To UBound(aArray)		'Shuffle objects in a temp array
		If Not IsEmpty(aArray(x) ) Then
			If IsObject(aArray(x)) Then
				Set a(aCount) = aArray(x)
			Else
				a(aCount) = aArray(x)
			End If
			aCount = aCount + 1
		End If
	Next
	If offset < 0 Then offset = 0
	ReDim aArray(aCount-1+offset)		'Resize original array
	For x = 0 To aCount-1				'set objects back into original array
		If IsObject(a(x)) Then
			Set aArray(x) = a(x)
		Else
			aArray(x) = a(x)
		End If
	Next
End Sub

' Used for flipper correction and rubber dampeners
Sub ShuffleArrays(aArray1, aArray2, offset)
	ShuffleArray aArray1, offset
	ShuffleArray aArray2, offset
End Sub

' Used for flipper correction, rubber dampeners, and drop targets
Function BallSpeed(ball) 'Calculates the ball speed
	BallSpeed = Sqr(ball.VelX^2 + ball.VelY^2 + ball.VelZ^2)
End Function

' Used for flipper correction and rubber dampeners
Function PSlope(Input, X1, Y1, X2, Y2)		'Set up line via two points, no clamping. Input X, output Y
	Dim x, y, b, m
	x = input
	m = (Y2 - Y1) / (X2 - X1)
	b = Y2 - m*X2
	Y = M*x+b
	PSlope = Y
End Function

' Used for flipper correction
Class spoofball
	Public X, Y, Z, VelX, VelY, VelZ, ID, Mass, Radius
	Public Property Let Data(aBall)
		With aBall
			x = .x
			y = .y
			z = .z
			velx = .velx
			vely = .vely
			velz = .velz
			id = .ID
			mass = .mass
			radius = .radius
		End With
	End Property
	Public Sub Reset()
		x = Empty
		y = Empty
		z = Empty
		velx = Empty
		vely = Empty
		velz = Empty
		id = Empty
		mass = Empty
		radius = Empty
	End Sub
End Class

' Used for flipper correction and rubber dampeners
Function LinearEnvelope(xInput, xKeyFrame, yLvl)
	Dim y 'Y output
	Dim L 'Line
	'find active line
	Dim ii
	For ii = 1 To UBound(xKeyFrame)
		If xInput <= xKeyFrame(ii) Then
			L = ii
			Exit For
		End If
	Next
	If xInput > xKeyFrame(UBound(xKeyFrame) ) Then L = UBound(xKeyFrame)		'catch line overrun
	Y = pSlope(xInput, xKeyFrame(L-1), yLvl(L-1), xKeyFrame(L), yLvl(L) )
	
	If xInput <= xKeyFrame(LBound(xKeyFrame) ) Then Y = yLvl(LBound(xKeyFrame) )		 'Clamp lower
	If xInput >= xKeyFrame(UBound(xKeyFrame) ) Then Y = yLvl(UBound(xKeyFrame) )		'Clamp upper
	
	LinearEnvelope = Y
End Function

'******************************************************
'  FLIPPER TRICKS
'******************************************************
' To add the flipper tricks you must
'	 - Include a call to FlipperCradleCollision from within OnBallBallCollision subroutine
'	 - Include a call the CheckLiveCatch from the LeftFlipper_Collide and RightFlipper_Collide subroutines
'	 - Include FlipperActivate and FlipperDeactivate in the Flipper solenoid subs

RightFlipper.timerinterval = 1
Rightflipper.timerenabled = True

Sub RightFlipper_timer()
	FlipperTricks LeftFlipper, LFPress, LFCount, LFEndAngle, LFState
	FlipperTricks RightFlipper, RFPress, RFCount, RFEndAngle, RFState
	FlipperNudge RightFlipper, RFEndAngle, RFEOSNudge, LeftFlipper, LFEndAngle
	FlipperNudge LeftFlipper, LFEndAngle, LFEOSNudge,  RightFlipper, RFEndAngle
End Sub

Dim LFEOSNudge, RFEOSNudge

Sub FlipperNudge(Flipper1, Endangle1, EOSNudge1, Flipper2, EndAngle2)
	Dim b
	'   Dim BOT
	'   BOT = GetBalls
	
	If Flipper1.currentangle = Endangle1 And EOSNudge1 <> 1 Then
		EOSNudge1 = 1
		'   debug.print Flipper1.currentangle &" = "& Endangle1 &"--"& Flipper2.currentangle &" = "& EndAngle2
		If Flipper2.currentangle = EndAngle2 Then
			For b = 0 To UBound(gBOT)
				If FlipperTrigger(gBOT(b).x, gBOT(b).y, Flipper1) Then
					'Debug.Print "ball in flip1. exit"
					Exit Sub
				End If
			Next
			For b = 0 To UBound(gBOT)
				If FlipperTrigger(gBOT(b).x, gBOT(b).y, Flipper2) Then
					gBOT(b).velx = gBOT(b).velx / 1.3
					gBOT(b).vely = gBOT(b).vely - 0.5
				End If
			Next
		End If
	Else
		If Abs(Flipper1.currentangle) > Abs(EndAngle1) + 30 Then EOSNudge1 = 0
	End If
End Sub


Dim FCCDamping: FCCDamping = 0.4

Sub FlipperCradleCollision(ball1, ball2, velocity)
	if velocity < 0.7 then exit sub		'filter out gentle collisions
    Dim DoDamping, coef
    DoDamping = false
    'Check left flipper
    If LeftFlipper.currentangle = LFEndAngle Then
		If FlipperTrigger(ball1.x, ball1.y, LeftFlipper) OR FlipperTrigger(ball2.x, ball2.y, LeftFlipper) Then DoDamping = true
    End If
    'Check right flipper
    If RightFlipper.currentangle = RFEndAngle Then
		If FlipperTrigger(ball1.x, ball1.y, RightFlipper) OR FlipperTrigger(ball2.x, ball2.y, RightFlipper) Then DoDamping = true
    End If
    If DoDamping Then
		coef = FCCDamping
        ball1.velx = ball1.velx * coef: ball1.vely = ball1.vely * coef: ball1.velz = ball1.velz * coef
        ball2.velx = ball2.velx * coef: ball2.vely = ball2.vely * coef: ball2.velz = ball2.velz * coef
    End If
End Sub
	




'*************************************************
'  Check ball distance from Flipper for Rem
'*************************************************

Function Distance(ax,ay,bx,by)
	Distance = Sqr((ax - bx) ^ 2 + (ay - by) ^ 2)
End Function

Function DistancePL(px,py,ax,ay,bx,by) 'Distance between a point and a line where point Is px,py
	DistancePL = Abs((by - ay) * px - (bx - ax) * py + bx * ay - by * ax) / Distance(ax,ay,bx,by)
End Function

Function Radians(Degrees)
	Radians = Degrees * PI / 180
End Function

Function AnglePP(ax,ay,bx,by)
	AnglePP = Atn2((by - ay),(bx - ax)) * 180 / PI
End Function

Function DistanceFromFlipper(ballx, bally, Flipper)
	DistanceFromFlipper = DistancePL(ballx, bally, Flipper.x, Flipper.y, Cos(Radians(Flipper.currentangle + 90)) + Flipper.x, Sin(Radians(Flipper.currentangle + 90)) + Flipper.y)
End Function

Function DistanceFromFlipperAngle(ballx, bally, Flipper, Angle)
	DistanceFromFlipperAngle = DistancePL(ballx, bally, Flipper.x, Flipper.y, Cos(Radians(Angle + 90)) + Flipper.x, Sin(Radians(angle + 90)) + Flipper.y)
End Function

Function FlipperTrigger(ballx, bally, Flipper)
	Dim DiffAngle
	DiffAngle = Abs(Flipper.currentangle - AnglePP(Flipper.x, Flipper.y, ballx, bally) - 90)
	If DiffAngle > 180 Then DiffAngle = DiffAngle - 360
	
	If DistanceFromFlipper(ballx,bally,Flipper) < 48 And DiffAngle <= 90 And Distance(ballx,bally,Flipper.x,Flipper.y) < Flipper.Length Then
		FlipperTrigger = True
	Else
		FlipperTrigger = False
	End If
End Function

'*************************************************
'  End - Check ball distance from Flipper for Rem
'*************************************************

Dim LFPress, RFPress, LFCount, RFCount
Dim LFState, RFState
Dim EOST, EOSA,Frampup, FElasticity,FReturn
Dim RFEndAngle, LFEndAngle

Const FlipperCoilRampupMode = 0 '0 = fast, 1 = medium, 2 = slow (tap passes should work)

LFState = 1
RFState = 1
EOST = leftflipper.eostorque
EOSA = leftflipper.eostorqueangle
Frampup = LeftFlipper.rampup
FElasticity = LeftFlipper.elasticity
FReturn = LeftFlipper.return
'Const EOSTnew = 1.5 'EM's to late 80's - new recommendation by rothbauerw (previously 1)
Const EOSTnew = 1.2 '90's and later - new recommendation by rothbauerw (previously 0.8)
Const EOSAnew = 1
Const EOSRampup = 0
Dim SOSRampup
Select Case FlipperCoilRampupMode
	Case 0
		SOSRampup = 2.5
	Case 1
		SOSRampup = 6
	Case 2
		SOSRampup = 8.5
End Select

Const LiveCatch = 16
Const LiveElasticity = 0.45
Const SOSEM = 0.815
'   Const EOSReturn = 0.055  'EM's
'   Const EOSReturn = 0.045  'late 70's to mid 80's
Const EOSReturn = 0.035  'mid 80's to early 90's
'   Const EOSReturn = 0.025  'mid 90's and later

LFEndAngle = Leftflipper.endangle
RFEndAngle = RightFlipper.endangle

Sub FlipperActivate(Flipper, FlipperPress)
	FlipperPress = 1
	Flipper.Elasticity = FElasticity
	
	Flipper.eostorque = EOST
	Flipper.eostorqueangle = EOSA
End Sub

Sub FlipperDeactivate(Flipper, FlipperPress)
	FlipperPress = 0
	Flipper.eostorqueangle = EOSA
	Flipper.eostorque = EOST * EOSReturn / FReturn
	
	If Abs(Flipper.currentangle) <= Abs(Flipper.endangle) + 0.1 Then
		Dim b', BOT
		'		BOT = GetBalls
		
		For b = 0 To UBound(gBOT)
			If Distance(gBOT(b).x, gBOT(b).y, Flipper.x, Flipper.y) < 55 Then 'check for cradle
				If gBOT(b).vely >= - 0.4 Then gBOT(b).vely =  - 0.4
			End If
		Next
	End If
End Sub

Sub FlipperTricks (Flipper, FlipperPress, FCount, FEndAngle, FState)
	Dim Dir
	Dir = Flipper.startangle / Abs(Flipper.startangle) '-1 for Right Flipper
	
	If Abs(Flipper.currentangle) > Abs(Flipper.startangle) - 0.05 Then
		If FState <> 1 Then
			Flipper.rampup = SOSRampup
			Flipper.endangle = FEndAngle - 3 * Dir
			Flipper.Elasticity = FElasticity * SOSEM
			FCount = 0
			FState = 1
		End If
	ElseIf Abs(Flipper.currentangle) <= Abs(Flipper.endangle) And FlipperPress = 1 Then
		If FCount = 0 Then FCount = GameTime
		
		If FState <> 2 Then
			Flipper.eostorqueangle = EOSAnew
			Flipper.eostorque = EOSTnew
			Flipper.rampup = EOSRampup
			Flipper.endangle = FEndAngle
			FState = 2
		End If
	ElseIf Abs(Flipper.currentangle) > Abs(Flipper.endangle) + 0.01 And FlipperPress = 1 Then
		If FState <> 3 Then
			Flipper.eostorque = EOST
			Flipper.eostorqueangle = EOSA
			Flipper.rampup = Frampup
			Flipper.Elasticity = FElasticity
			FState = 3
		End If
	End If
End Sub

Const LiveDistanceMin = 5  'minimum distance In vp units from flipper base live catch dampening will occur
Const LiveDistanceMax = 114 'maximum distance in vp units from flipper base live catch dampening will occur (tip protection)
Const BaseDampen = 0.55

Sub CheckLiveCatch(ball, Flipper, FCount, parm) 'Experimental new live catch
    Dim Dir, LiveDist
    Dir = Flipper.startangle / Abs(Flipper.startangle)    '-1 for Right Flipper
    Dim LiveCatchBounce   'If live catch is not perfect, it won't freeze ball totally
    Dim CatchTime
    CatchTime = GameTime - FCount
    LiveDist = Abs(Flipper.x - ball.x)

    If CatchTime <= LiveCatch And parm > 3 And LiveDist > LiveDistanceMin And LiveDist < LiveDistanceMax Then
        If CatchTime <= LiveCatch * 0.5 Then   'Perfect catch only when catch time happens in the beginning of the window
            LiveCatchBounce = 0
        Else
            LiveCatchBounce = Abs((LiveCatch / 2) - CatchTime)  'Partial catch when catch happens a bit late
        End If
        
        If LiveCatchBounce = 0 And ball.velx * Dir > 0 And LiveDist > 30 Then ball.velx = 0

        If ball.velx * Dir > 0 And LiveDist < 30 Then
            ball.velx = BaseDampen * ball.velx
            ball.vely = BaseDampen * ball.vely
            ball.angmomx = BaseDampen * ball.angmomx
            ball.angmomy = BaseDampen * ball.angmomy
            ball.angmomz = BaseDampen * ball.angmomz
        Elseif LiveDist > 30 Then
            ball.vely = LiveCatchBounce * (32 / LiveCatch) ' Multiplier for inaccuracy bounce
            ball.angmomx = 0
            ball.angmomy = 0
            ball.angmomz = 0
        End If
    Else
        If Abs(Flipper.currentangle) <= Abs(Flipper.endangle) + 1 Then FlippersD.Dampenf ActiveBall, parm
    End If
End Sub

'******************************************************
'****  END FLIPPER CORRECTIONS
'******************************************************







'******************************************************
'****  PHYSICS DAMPENERS
'******************************************************
'
' These are data mined bounce curves, 
' dialed in with the in-game elasticity as much as possible to prevent angle / spin issues.
' Requires tracking ballspeed to calculate COR



Sub dPosts_Hit(idx) 
	RubbersD.dampen Activeball
	TargetBouncer Activeball, 1
End Sub

Sub dSleeves_Hit(idx) 
	SleevesD.Dampen Activeball
	TargetBouncer Activeball, 0.7
End Sub


Dim RubbersD				'frubber
Set RubbersD = New Dampener
RubbersD.name = "Rubbers"
RubbersD.debugOn = False	'shows info in textbox "TBPout"
RubbersD.Print = False	  'debug, reports In debugger (In vel, out cor); cor bounce curve (linear)

'for best results, try to match in-game velocity as closely as possible to the desired curve
'   RubbersD.addpoint 0, 0, 0.935   'point# (keep sequential), ballspeed, CoR (elasticity)
RubbersD.addpoint 0, 0, 1.1		 'point# (keep sequential), ballspeed, CoR (elasticity)
RubbersD.addpoint 1, 3.77, 0.97
RubbersD.addpoint 2, 5.76, 0.967	'dont take this as gospel. if you can data mine rubber elasticitiy, please help!
RubbersD.addpoint 3, 15.84, 0.874
RubbersD.addpoint 4, 56, 0.64	   'there's clamping so interpolate up to 56 at least

Dim SleevesD	'this is just rubber but cut down to 85%...
Set SleevesD = New Dampener
SleevesD.name = "Sleeves"
SleevesD.debugOn = False	'shows info in textbox "TBPout"
SleevesD.Print = False	  'debug, reports In debugger (In vel, out cor)
SleevesD.CopyCoef RubbersD, 0.85

'######################### Add new FlippersD Profile
'######################### Adjust these values to increase or lessen the elasticity

Dim FlippersD
Set FlippersD = New Dampener
FlippersD.name = "Flippers"
FlippersD.debugOn = False
FlippersD.Print = False
FlippersD.addpoint 0, 0, 1.1
FlippersD.addpoint 1, 3.77, 0.99
FlippersD.addpoint 2, 6, 0.99

Class Dampener
	Public Print, debugOn   'tbpOut.text
	Public name, Threshold  'Minimum threshold. Useful for Flippers, which don't have a hit threshold.
	Public ModIn, ModOut
	Private Sub Class_Initialize
		ReDim ModIn(0)
		ReDim Modout(0)
	End Sub
	
	Public Sub AddPoint(aIdx, aX, aY)
		ShuffleArrays ModIn, ModOut, 1
		ModIn(aIDX) = aX
		ModOut(aIDX) = aY
		ShuffleArrays ModIn, ModOut, 0
		If GameTime > 100 Then Report
	End Sub
	
	Public Sub Dampen(aBall)
		If threshold Then
			If BallSpeed(aBall) < threshold Then Exit Sub
		End If
		Dim RealCOR, DesiredCOR, str, coef
		DesiredCor = LinearEnvelope(cor.ballvel(aBall.id), ModIn, ModOut )
		RealCOR = BallSpeed(aBall) / (cor.ballvel(aBall.id) + 0.0001)
		coef = desiredcor / realcor
		If debugOn Then str = name & " In vel:" & Round(cor.ballvel(aBall.id),2 ) & vbNewLine & "desired cor: " & Round(desiredcor,4) & vbNewLine & _
		"actual cor: " & Round(realCOR,4) & vbNewLine & "ballspeed coef: " & Round(coef, 3) & vbNewLine
		If Print Then Debug.print Round(cor.ballvel(aBall.id),2) & ", " & Round(desiredcor,3)
		
		aBall.velx = aBall.velx * coef
		aBall.vely = aBall.vely * coef
		aBall.velz = aBall.velz * coef
		If debugOn Then TBPout.text = str
	End Sub
	
	Public Sub Dampenf(aBall, parm) 'Rubberizer is handle here
		Dim RealCOR, DesiredCOR, str, coef
		DesiredCor = LinearEnvelope(cor.ballvel(aBall.id), ModIn, ModOut )
		RealCOR = BallSpeed(aBall) / (cor.ballvel(aBall.id) + 0.0001)
		coef = desiredcor / realcor
		If Abs(aball.velx) < 2 And aball.vely < 0 And aball.vely >  - 3.75 Then
			aBall.velx = aBall.velx * coef
			aBall.vely = aBall.vely * coef
		End If
	End Sub
	
	Public Sub CopyCoef(aObj, aCoef) 'alternative addpoints, copy with coef
		Dim x
		For x = 0 To UBound(aObj.ModIn)
			addpoint x, aObj.ModIn(x), aObj.ModOut(x) * aCoef
		Next
	End Sub
	
	Public Sub Report() 'debug, reports all coords in tbPL.text
		If Not debugOn Then Exit Sub
		Dim a1, a2
		a1 = ModIn
		a2 = ModOut
		Dim str, x
		For x = 0 To UBound(a1)
			str = str & x & ": " & Round(a1(x),4) & ", " & Round(a2(x),4) & vbNewLine
		Next
		TBPout.text = str
	End Sub
End Class


'******************************************************
'  TRACK ALL BALL VELOCITIES
'  FOR RUBBER DAMPENER AND DROP TARGETS
'******************************************************

dim cor : set cor = New CoRTracker

Class CoRTracker
	Public ballvel, ballvelx, ballvely
	
	Private Sub Class_Initialize
		ReDim ballvel(0)
		ReDim ballvelx(0)
		ReDim ballvely(0)
	End Sub
	
	Public Sub Update()	'tracks in-ball-velocity
		Dim str, b, AllBalls, highestID
		allBalls = GetBalls
		
		For Each b In allballs
			If b.id >= HighestID Then highestID = b.id
		Next
		
		If UBound(ballvel) < highestID Then ReDim ballvel(highestID)	'set bounds
		If UBound(ballvelx) < highestID Then ReDim ballvelx(highestID)	'set bounds
		If UBound(ballvely) < highestID Then ReDim ballvely(highestID)	'set bounds
		
		For Each b In allballs
			ballvel(b.id) = BallSpeed(b)
			ballvelx(b.id) = b.velx
			ballvely(b.id) = b.vely
		Next
	End Sub
End Class




'******************************************************
'****  END PHYSICS DAMPENERS
'******************************************************


'******************************************************
' VPW TargetBouncer for targets and posts by Iaakki, Wrd1972, Apophis
'******************************************************

Const TargetBouncerEnabled = 1 		'0 = normal standup targets, 1 = bouncy targets
Const TargetBouncerFactor = 0.9 	'Level of bounces. Recommmended value of 0.7

sub TargetBouncer(aBall,defvalue)
    dim zMultiplier, vel, vratio
    if TargetBouncerEnabled = 1 and aball.z < 30 then
        'DebugPrint "velx: " & aball.velx & " vely: " & aball.vely & " velz: " & aball.velz
        vel = BallSpeed(aBall)
        if aBall.velx = 0 then vratio = 1 else vratio = aBall.vely/aBall.velx
        Select Case Int(Rnd * 6) + 1
            Case 1: zMultiplier = 0.2*defvalue
			Case 2: zMultiplier = 0.25*defvalue
            Case 3: zMultiplier = 0.3*defvalue
			Case 4: zMultiplier = 0.4*defvalue
            Case 5: zMultiplier = 0.45*defvalue
            Case 6: zMultiplier = 0.5*defvalue
        End Select
        aBall.velz = abs(vel * zMultiplier * TargetBouncerFactor)
        aBall.velx = sgn(aBall.velx) * sqr(abs((vel^2 - aBall.velz^2)/(1+vratio^2)))
        aBall.vely = aBall.velx * vratio
        'DebugPrint "---> velx: " & aball.velx & " vely: " & aball.vely & " velz: " & aball.velz
        'DebugPrint "conservation check: " & BallSpeed(aBall)/vel
	end if
end sub

' Add targets or posts to the TargetBounce collection if you want to activate the targetbouncer code from them
Sub TargetBounce_Hit(idx)
	TargetBouncer activeball, 1
End Sub



'******************************************************
'****  ZROL : BALL ROLLING AND DROP SOUNDS
'******************************************************

ReDim rolling(tnob)


Dim DropCount
ReDim DropCount(tnob)

Sub InitRolling
	Dim i
	For i = 0 to tnob
		rolling(i) = False
	Next
End Sub

Sub RollingUpdate()
	Dim b', BOT
'	BOT = GetBalls

	' stop the sound of deleted balls
	For b = UBound(gBOT) + 1 to tnob - 1
		rolling(b) = False
		StopSound("BallRoll_" & b)
	Next

	' exit the sub if no balls on the table
	If UBound(gBOT) = -1 Then Exit Sub

	' play the rolling sound for each ball

	For b = 0 to UBound(gBOT)
		If BallVel(gBOT(b)) > 1 and gBOT(b).z < 30 and not InRect(gBOT(b).x, gBOT(b).y, 380, 2068, 850, 1790, 850, 1893, 425, 2135) Then
			rolling(b) = True
			PlaySound ("mfx_BallRoll_" & b), -1, VolPlayfieldRoll(gBOT(b)) * BallRollVolume * MechVol, AudioPan(gBOT(b)), 0, PitchPlayfieldRoll(gBOT(b)), 1, 0, AudioFade(gBOT(b))

		Else
			If rolling(b) = True Then
				StopSound("mfx_BallRoll_" & b)
				rolling(b) = False
			End If
		End If

		' Ball Drop Sounds
		If gBOT(b).VelZ < -1 and gBOT(b).z < 55 and gBOT(b).z > 27 Then 'height adjust for ball drop sounds
			If DropCount(b) >= 5 Then
				DropCount(b) = 0
				If gBOT(b).velz > -7 Then
					RandomSoundBallBouncePlayfieldSoft gBOT(b)
				Else
					RandomSoundBallBouncePlayfieldHard gBOT(b)
				End If				
			End If
		End If
		If DropCount(b) < 5 Then
			DropCount(b) = DropCount(b) + 1
		End If

	Next
End Sub


'******************************************************
'****  END BALL ROLLING AND DROP SOUNDS
'******************************************************




'******************************************************
'**** RAMP ROLLING SFX
'******************************************************

'Ball tracking ramp SFX 1.0
'   Reqirements:
'          * Import A Sound File for each ball on the table for plastic ramps.  Call It RampLoop<Ball_Number> ex: RampLoop1, RampLoop2, ...
'          * Import a Sound File for each ball on the table for wire ramps. Call it WireLoop<Ball_Number> ex: WireLoop1, WireLoop2, ...
'          * Create a Timer called RampRoll, that is enabled, with a interval of 100
'          * Set RampBAlls and RampType variable to Total Number of Balls
'	Usage:
'          * Setup hit events and call WireRampOn True or WireRampOn False (True = Plastic ramp, False = Wire Ramp)
'          * To stop tracking ball
'                 * call WireRampOff
'                 * Otherwise, the ball will auto remove if it's below 30 vp units
'

dim RampMinLoops : RampMinLoops = 4

' RampBalls
'      Setup:        Set the array length of x in RampBalls(x,2) Total Number of Balls on table + 1:  if tnob = 5, then RammBalls(6,2)
'      Description:  
dim RampBalls(6,2)
'x,0 = ball x,1 = ID,	2 = Protection against ending early (minimum amount of updates)
'0,0 is boolean on/off, 0,1 unused for now
RampBalls(0,0) = False

' RampType
'     Setup: Set this array to the number Total number of balls that can be tracked at one time + 1.  5 ball multiball then set value to 6
'     Description: Array type indexed on BallId and a values used to deterimine what type of ramp the ball is on: False = Wire Ramp, True = Plastic Ramp
dim RampType(6)	

Sub WireRampOn(input)  : Waddball ActiveBall, input : RampRollUpdate: End Sub
Sub WireRampOff() : WRemoveBall ActiveBall.ID	: End Sub


' WaddBall (Active Ball, Boolean)
'     Description: This subroutine is called from WireRampOn to Add Balls to the RampBalls Array
Sub Waddball(input, RampInput)	'Add ball
	' This will loop through the RampBalls array checking each element of the array x, position 1
	' To see if the the ball was already added to the array.
	' If the ball is found then exit the subroutine
	dim x : for x = 1 to uBound(RampBalls)	'Check, don't add balls twice
		if RampBalls(x, 1) = input.id then 
			if Not IsEmpty(RampBalls(x,1) ) then Exit Sub	'Frustating issue with BallId 0. Empty variable = 0
		End If
	Next

	' This will itterate through the RampBalls Array.
	' The first time it comes to a element in the array where the Ball Id (Slot 1) is empty.  It will add the current ball to the array
	' The RampBalls assigns the ActiveBall to element x,0 and ball id of ActiveBall to 0,1
	' The RampType(BallId) is set to RampInput
	' RampBalls in 0,0 is set to True, this will enable the timer and the timer is also turned on
	For x = 1 to uBound(RampBalls)
		if IsEmpty(RampBalls(x, 1)) then 
			Set RampBalls(x, 0) = input
			RampBalls(x, 1)	= input.ID
			RampType(x) = RampInput
			RampBalls(x, 2)	= 0
			'exit For
			RampBalls(0,0) = True
			RampRoll.Enabled = 1	 'Turn on timer
			'RampRoll.Interval = RampRoll.Interval 'reset timer
			exit Sub
		End If
		if x = uBound(RampBalls) then 	'debug
			DebugPrint "WireRampOn error, ball queue is full: " & vbnewline & _
			RampBalls(0, 0) & vbnewline & _
			Typename(RampBalls(1, 0)) & " ID:" & RampBalls(1, 1) & "type:" & RampType(1) & vbnewline & _
			Typename(RampBalls(2, 0)) & " ID:" & RampBalls(2, 1) & "type:" & RampType(2) & vbnewline & _
			Typename(RampBalls(3, 0)) & " ID:" & RampBalls(3, 1) & "type:" & RampType(3) & vbnewline & _
			Typename(RampBalls(4, 0)) & " ID:" & RampBalls(4, 1) & "type:" & RampType(4) & vbnewline & _
			Typename(RampBalls(5, 0)) & " ID:" & RampBalls(5, 1) & "type:" & RampType(5) & vbnewline & _
			" "
		End If
	next
End Sub

' WRemoveBall (BallId)
'    Description: This subroutine is called from the RampRollUpdate subroutine 
'                 and is used to remove and stop the ball rolling sounds
Sub WRemoveBall(ID)		'Remove ball
	'DebugPrint "In WRemoveBall() + Remove ball from loop array"
	dim ballcount : ballcount = 0
	dim x : for x = 1 to Ubound(RampBalls)
		if ID = RampBalls(x, 1) then 'remove ball
			Set RampBalls(x, 0) = Nothing
			RampBalls(x, 1) = Empty
			RampType(x) = Empty
			StopSound("mfx_RampLoop" & x)
			StopSound("mfx_wireloop" & x)
		end If
		'if RampBalls(x,1) = Not IsEmpty(Rampballs(x,1) then ballcount = ballcount + 1
		if not IsEmpty(Rampballs(x,1)) then ballcount = ballcount + 1
	next
	if BallCount = 0 then RampBalls(0,0) = False	'if no balls in queue, disable timer update
End Sub

Sub RampRoll_Timer():RampRollUpdate:End Sub

Sub RampRollUpdate()		'Timer update
	dim x : for x = 1 to uBound(RampBalls)
		if Not IsEmpty(RampBalls(x,1) ) then 
			if BallVel(RampBalls(x,0) ) > 1 then ' if ball is moving, play rolling sound
				If RampType(x) then 
					PlaySound("mfx_RampLoop" & x), -1, VolPlayfieldRoll(RampBalls(x,0)) * RampRollVolume * MechVol, AudioPan(RampBalls(x,0)), 0, BallPitchV(RampBalls(x,0)), 1, 0, AudioFade(RampBalls(x,0))				
					StopSound("mfx_wireloop" & x)
				Else
					StopSound("mfx_RampLoop" & x)
					PlaySound("mfx_wireloop" & x), -1, VolPlayfieldRoll(RampBalls(x,0)) * RampRollVolume * MechVol, AudioPan(RampBalls(x,0)), 0, BallPitch(RampBalls(x,0)), 1, 0, AudioFade(RampBalls(x,0))
				End If
				RampBalls(x, 2)	= RampBalls(x, 2) + 1
			Else
				StopSound("mfx_RampLoop" & x)
				StopSound("mfx_wireloop" & x)
			end if
			if RampBalls(x,0).Z < 30 and RampBalls(x, 2) > RampMinLoops then	'if ball is on the PF, remove  it
				StopSound("mfx_RampLoop" & x)
				StopSound("mfx_wireloop" & x)
				Wremoveball RampBalls(x,1)
			End If
		Else
			StopSound("mfx_RampLoop" & x)
			StopSound("mfx_wireloop" & x)
		end if
	next
	if not RampBalls(0,0) then RampRoll.enabled = 0

End Sub

' This can be used to debug the Ramp Roll time.  You need to enable the tbWR timer on the TextBox
Sub tbWR_Timer()	'debug textbox
	me.text =	"on? " & RampBalls(0, 0) & " timer: " & RampRoll.Enabled & vbnewline & _
	"1 " & Typename(RampBalls(1, 0)) & " ID:" & RampBalls(1, 1) & " type:" & RampType(1) & " Loops:" & RampBalls(1, 2) & vbnewline & _
	"2 " & Typename(RampBalls(2, 0)) & " ID:" & RampBalls(2, 1) & " type:" & RampType(2) & " Loops:" & RampBalls(2, 2) & vbnewline & _
	"3 " & Typename(RampBalls(3, 0)) & " ID:" & RampBalls(3, 1) & " type:" & RampType(3) & " Loops:" & RampBalls(3, 2) & vbnewline & _
	"4 " & Typename(RampBalls(4, 0)) & " ID:" & RampBalls(4, 1) & " type:" & RampType(4) & " Loops:" & RampBalls(4, 2) & vbnewline & _
	"5 " & Typename(RampBalls(5, 0)) & " ID:" & RampBalls(5, 1) & " type:" & RampType(5) & " Loops:" & RampBalls(5, 2) & vbnewline & _
	"6 " & Typename(RampBalls(6, 0)) & " ID:" & RampBalls(6, 1) & " type:" & RampType(6) & " Loops:" & RampBalls(6, 2) & vbnewline & _
	" "
End Sub


Function BallPitch(ball) ' Calculates the pitch of the sound based on the ball speed
    BallPitch = pSlope(BallVel(ball), 1, -1000, 60, 10000)
End Function

Function BallPitchV(ball) ' Calculates the pitch of the sound based on the ball speed Variation
	BallPitchV = pSlope(BallVel(ball), 1, -4000, 60, 7000)
End Function




'  Ramp Triggers

Sub swRamp1_hit
	If activeball.vely<0 Then
		WireRampOn True 'plastic
	Else
		WireRampOff
	End If
End Sub

Sub swRamp2_hit
	WireRampOff
	WireRampOn False 'wire
	' CheckTimeWarp
	' CheckCombo
	' If Player(CurrentPlayer).bInWave Then AudioCallout "jackpot proton" : ReloadProtonRound
End Sub

Sub swRamp3_hit
	WireRampOff
End Sub

Sub swRamp4_hit
	If activeball.vely<0 Then
		WireRampOn True 'plastic
	Else
		WireRampOff
	End If
End Sub

Sub swRamp5_hit
	WireRampOff
End Sub

Sub swRamp6_hit
	WireRampOn True 'plastic
End Sub

Sub swRamp7_hit
	WireRampOff
	WireRampOn False 'wire
	' CheckMoonLock
	' CheckCombo
	' If Player(CurrentPlayer).bInWave Then AudioCallout "jackpot cluster" : ReloadClusterRound 
End Sub

Sub swRamp8_hit
	WireRampOff
End Sub

Sub swRamp9_hit
	WireRampOn False 'wire
End Sub


'******************************************************
'**** END RAMP ROLLING SFX
'******************************************************




'****************************
' 	ZRBR: Room Brightness
'****************************

'This code only applies to lightmapped tables. It is here for reference. 
'NOTE: Objects bightness will be affected by the Day/Night slider only if their blenddisablelighting property is less than 1.
'      Lightmapped table primitives have their blenddisablelighting equal to 1, therefore we need this SetRoomBrightness sub 
'      to handle updating their effective ambient brighness.

' Update these arrays if you want to change more materials with room light level
Dim RoomBrightnessMtlArray: RoomBrightnessMtlArray = Array("VLM.Bake.Active","VLM.Bake.Solid","VLM.Bake.Ramp","VLM.Bake.Bumper","VLM.Bake.BumperRed","VLM.Bake.BumperBlue") 

Sub SetRoomBrightness(lvl)
	If lvl > 1 Then lvl = 1
	If lvl < 0 Then lvl = 0

	' Lighting level
	Dim v: v=(lvl * 245 + 10)/255

	Dim i: For i = 0 to UBound(RoomBrightnessMtlArray)
		ModulateMaterialBaseColor RoomBrightnessMtlArray(i), i, v
	Next
End Sub

Dim SavedMtlColorArray
SaveMtlColors
Sub SaveMtlColors
	ReDim SavedMtlColorArray(UBound(RoomBrightnessMtlArray))
	Dim i: For i = 0 to UBound(RoomBrightnessMtlArray)
		SaveMaterialBaseColor RoomBrightnessMtlArray(i), i
	Next
End Sub

Sub SaveMaterialBaseColor(name, idx)
	Dim wrapLighting, roughness, glossyImageLerp, thickness, edge, edgeAlpha, opacity, base, glossy, clearcoat, isMetal, opacityActive, elasticity, elasticityFalloff, friction, scatterAngle
	GetMaterial name, wrapLighting, roughness, glossyImageLerp, thickness, edge, edgeAlpha, opacity, base, glossy, clearcoat, isMetal, opacityActive, elasticity, elasticityFalloff, friction, scatterAngle
	SavedMtlColorArray(idx) = round(base,0)
End Sub


Sub ModulateMaterialBaseColor(name, idx, val)
	Dim wrapLighting, roughness, glossyImageLerp, thickness, edge, edgeAlpha, opacity, base, glossy, clearcoat, isMetal, opacityActive, elasticity, elasticityFalloff, friction, scatterAngle
	Dim red, green, blue, saved_base, new_base
 
	'First get the existing material properties
	GetMaterial name, wrapLighting, roughness, glossyImageLerp, thickness, edge, edgeAlpha, opacity, base, glossy, clearcoat, isMetal, opacityActive, elasticity, elasticityFalloff, friction, scatterAngle

	'Get saved color
	saved_base = SavedMtlColorArray(idx)
    
	'Next extract the r,g,b values from the base color
	red = saved_base And &HFF
	green = (saved_base \ &H100) And &HFF
	blue = (saved_base \ &H10000) And &HFF
	'msgbox red & " " & green & " " & blue

	'Create new color scaled down by 'val', and update the material
	new_base = RGB(red*val, green*val, blue*val)
	UpdateMaterial name, wrapLighting, roughness, glossyImageLerp, thickness, edge, edgeAlpha, opacity, new_base, glossy, clearcoat, isMetal, opacityActive, elasticity, elasticityFalloff, friction, scatterAngle
End Sub


'****************************************************************
'  ZSLN : Slingshots
'****************************************************************

Dim LStep : LStep = 0 : LeftSlingShot.TimerEnabled = 1
Dim RStep : RStep = 0 : RightSlingShot.TimerEnabled = 1


Sub OnLeftSlingshotActive(args)
	Flash5 True
	LS.VelocityCorrect(ActiveBall)
	LStep = 0
	LeftSlingShot_Timer
	LeftSlingShot.TimerEnabled = 1
	LeftSlingShot.TimerInterval = 17
	RandomSoundSlingshotLeft BM_LArm
End Sub

Sub LeftSlingShot_Timer
	Dim BL
	Dim x1, x2, y: x1 = True:x2 = False:y = 20
    Select Case LStep
        Case 3:x1 = False:x2 = True:y = 10
        Case 4:x1 = False:x2 = False:y = 0:LeftSlingShot.TimerEnabled = 0
    End Select
	
	For Each BL in BP_LSling1 : BL.Visible = x1: Next
	For Each BL in BP_LSling2 : BL.Visible = x2: Next
	For Each BL in BP_LArm : BL.transx = y: Next

    LStep = LStep + 1
End Sub


Sub OnRightSlingshotActive(args)
	Flash6 True
	RS.VelocityCorrect(ActiveBall)
	RStep = 0
	RightSlingShot_Timer
	RightSlingShot.TimerEnabled = 1
	RightSlingShot.TimerInterval = 17
	RandomSoundSlingshotRight BM_RArm
End Sub

Sub RightSlingShot_Timer
	Dim BL
	Dim x1, x2, y: x1 = True:x2 = False:y = 20
    Select Case RStep
        Case 2:x1 = False:x2 = True:y = 10
        Case 3:x1 = False:x2 = False:y = 0:RightSlingShot.TimerEnabled = 0
    End Select

	For Each BL in BP_RSling1 : BL.Visible = x1: Next
	For Each BL in BP_RSling2 : BL.Visible = x2: Next
	For Each BL in BP_RArm : BL.transx = y: Next

    RStep = RStep + 1
End Sub







' '*******************************************
' '  ZSOL : Other Solenoids
' '*******************************************



'  Kickers, Saucers
'*******************************************

'To include some randomness in the Kicker's kick, use the following parmeters
Const ScoopAngleTol = 1   	 'Number of degrees the kicker angle varies around its intended direction
Const ScoopStrengthTol = 3   'Number of strength units the kicker varies around its intended strength


Sub KickBall(kball, kangle, kvel, kvelz, kzlift)
	dim rangle
	rangle = PI * (kangle - 90) / 180
    
	kball.z = kball.z + kzlift
	kball.velz = kvelz
	kball.velx = cos(rangle)*kvel
	kball.vely = sin(rangle)*kvel
End Sub


Sub ScoopEjectCallback(ball)
	Dim ang, vel
	If swScoop.BallCntOver > 0 Then
		ang = 14.8 + ScoopAngleTol*2*(rnd-0.5)
		vel = 70.0 + ScoopStrengthTol*2*(rnd-0.5)
		KickBall ball, ang, vel, 0, 0
		SoundSaucerKick 1, swScoop
	Else
		SoundSaucerKick 0, swScoop
	End If
End Sub

Sub MoonLockEjectCallback(ball)
	If Not IsNull(ball) Then
		DropLockPin 1
	Else
		DropLockPin 0
	End If
End Sub


Sub PlungerEjectCallback(ball)
	If swPlunger1.BallCntOver > 0 Then
		KickBall ball, 0, 60, 0, 0
		SoundSaucerKick 1, swPlunger1
	Else
		SoundSaucerKick 0, swPlunger1
	End If
End Sub



'  Grab Magnet
'******************************************* 

Sub GrabMagnetAction(Enabled)
	GrabMag.MagnetOn = Enabled
end sub




'  Diverters
'*******************************************


Sub RaiseDiverterPin(Enabled)
	Dim BP
	If Enabled Then
		DiverterPin.isdropped=False
		SoundSaucerKick 0,swRamp6
		For Each BP in BP_DiverterPin : BP.transz = 0: Next
	Else
		DiverterPin.isdropped=True
		SoundSaucerKick 0,swRamp6
		For Each BP in BP_DiverterPin : BP.transz = -50: Next  'FIXME  check height. Animate with flipper?
	End If
End Sub


'  Lock Pin
'*******************************************

Sub DropLockPin(enabled)
	Dim BP
	If Enabled Then
		LockPin.isdropped=True
		SoundSaucerKick 0,swLock1
		For each BP in BP_LockPin: BP.transz = -50: Next
	Else		
		LockPin.isdropped=False
		SoundSaucerKick 0,swLock1
		For each BP in BP_LockPin: BP.transz = 0: Next
	End If
End Sub 



'  Knocker
'*******************************************

Sub SolKnocker(Enabled)
	If enabled Then
		KnockerSolenoid 'Add knocker position object
	End If
End Sub






'******************************************************
'	ZSUT: STAND-UP TARGETS by Rothbauerw
'******************************************************

Sub TargetMystery1_Hit: STHit 1 : End Sub
Sub TargetMystery2_Hit: STHit 2 : End Sub
Sub TargetMystery3_Hit: STHit 3 : End Sub
Sub TargetMystery4_Hit: STHit 4 : End Sub
Sub TargetMystery5_Hit: STHit 5 : End Sub
Sub TargetShield1_Hit:  STHit 6 : End Sub
Sub TargetShield2_Hit:  STHit 7 : End Sub
Sub TargetShield3_Hit:  STHit 8 : End Sub
Sub TargetShield4_Hit:  STHit 9 : End Sub

Class StandupTarget
    Private m_primary, m_prim, m_sw, m_animate
  
    Public Property Get Primary(): Set Primary = m_primary: End Property
    Public Property Let Primary(input): Set m_primary = input: End Property
  
    Public Property Get Prim(): Set Prim = m_prim: End Property
    Public Property Let Prim(input): Set m_prim = input: End Property
  
    Public Property Get Sw(): Sw = m_sw: End Property
    Public Property Let Sw(input): m_sw = input: End Property
  
    Public Property Get Animate(): Animate = m_animate: End Property
    Public Property Let Animate(input): m_animate = input: End Property
  
    Public default Function init(primary, prim, sw, animate)
      Set m_primary = primary
      Set m_prim = prim
      m_sw = sw
      m_animate = animate
  
      Set Init = Me
    End Function
End Class
  
'Define a variable for each stand-up target
Dim ST1, ST2, ST3, ST4, ST5, ST6, ST7, ST8, ST9

'Set array with stand-up target objects
'
'StandupTargetvar = Array(primary, prim, swtich)
'   primary:	vp target to determine target hit
'   prim:	   primitive target used for visuals and animation
'				   IMPORTANT!!!
'				   transy must be used to offset the target animation
'   switch:	 ROM switch number
'   animate:	Arrary slot for handling the animation instrucitons, set to 0
'
'You will also need to add a secondary hit object for each stand up (name sw11o, sw12o, and sw13o on the example Table1)
'these are inclined primitives to simulate hitting a bent target and should provide so z velocity on high speed impacts


Set ST1 = (new StandupTarget)(TargetMystery1, BM_TM1, 1, 0)
Set ST2 = (new StandupTarget)(TargetMystery2, BM_TM2, 2, 0)
Set ST3 = (new StandupTarget)(TargetMystery3, BM_TM3, 3, 0)
Set ST4 = (new StandupTarget)(TargetMystery4, BM_TM4, 4, 0)
Set ST5 = (new StandupTarget)(TargetMystery5, BM_TM5, 5, 0)
Set ST6 = (new StandupTarget)(TargetShield1, BM_TS1, 6, 0)
Set ST7 = (new StandupTarget)(TargetShield2, BM_TS2, 7, 0)
Set ST8 = (new StandupTarget)(TargetShield3, BM_TS3, 8, 0)
Set ST9 = (new StandupTarget)(TargetShield4, BM_TS4, 9, 0)

'Add all the Stand-up Target Arrays to Stand-up Target Animation Array
'   STAnimationArray = Array(ST1, ST2, ....)
Dim STArray
STArray = Array(ST1, ST2, ST3, ST4, ST5, ST6, ST7, ST8, ST9)

'Configure the behavior of Stand-up Targets
Const STAnimStep = 1.5  'vpunits per animation step (control return to Start)
Const STMaxOffset = 9   'max vp units target moves when hit

Const STMass = 0.2	  'Mass of the Stand-up Target (between 0 and 1), higher values provide more resistance

'******************************************************
'				STAND-UP TARGETS FUNCTIONS
'******************************************************

Sub STHit(switch)
    Dim i
    i = STArrayID(switch)
    
    PlayTargetSound
    STArray(i).animate = STCheckHit(ActiveBall,STArray(i).primary)
    
    If STArray(i).animate <> 0 Then
        DTBallPhysics ActiveBall, STArray(i).primary.orientation, STMass
    End If
    DoSTAnim
End Sub

Function STArrayID(switch)
    Dim i
    For i = 0 To UBound(STArray)
        If STArray(i).sw = switch Then
            STArrayID = i
            Exit Function
        End If
    Next
End Function

Function STCheckHit(aBall, target) 'Check if target is hit on it's face
    Dim bangle, bangleafter, rangle, rangle2, perpvel, perpvelafter, paravel, paravelafter
    rangle = (target.orientation - 90) * 3.1416 / 180
    bangle = atn2(cor.ballvely(aball.id),cor.ballvelx(aball.id))
    bangleafter = Atn2(aBall.vely,aball.velx)
    
    perpvel = cor.BallVel(aball.id) * Cos(bangle - rangle)
    paravel = cor.BallVel(aball.id) * Sin(bangle - rangle)
    
    perpvelafter = BallSpeed(aBall) * Cos(bangleafter - rangle)
    paravelafter = BallSpeed(aBall) * Sin(bangleafter - rangle)
    
    If perpvel > 0 And  perpvelafter <= 0 Then
        STCheckHit = 1
    ElseIf perpvel > 0 And ((paravel > 0 And paravelafter > 0) Or (paravel < 0 And paravelafter < 0)) Then
        STCheckHit = 1
    Else
        STCheckHit = 0
    End If
End Function

Sub DoSTAnim()
    Dim i
    For i = 0 To UBound(STArray)
        STArray(i).animate = STAnimate(STArray(i).primary,STArray(i).prim,STArray(i).sw,STArray(i).animate)
    Next
End Sub

Function STAnimate(primary, prim, switch, animate)
    Dim animtime
    
    STAnimate = animate
    
    If animate = 0  Then
        primary.uservalue = 0
        STAnimate = 0
        Exit Function
    ElseIf primary.uservalue = 0 Then
        primary.uservalue = GameTime
    End If
    
    animtime = GameTime - primary.uservalue
    
    If animate = 1 Then
        primary.collidable = 0
        prim.transy =  - STMaxOffset
        STAction switch, 1
        STAnimate = 2
        Exit Function
    ElseIf animate = 2 Then
        prim.transy = prim.transy + STAnimStep
        If prim.transy >= 0 Then
            prim.transy = 0
            primary.collidable = 1
            STAction switch, 0
            STAnimate = 0
            Exit Function
        Else
            STAnimate = 2
        End If
    End If
End Function
  
 
Sub STAction(switchid, hit)
    If hit = 1 Then
        DispatchPinEvent STArray(STArrayID(switchid)).Primary.Name & "_active", Null
    Else
        DispatchPinEvent STArray(STArrayID(switchid)).Primary.Name & "_inactive", Null
    End If
End Sub
  

'*******************************************
'  ZINI : Table Initialization
'*******************************************

Sub Table1_Init

	' Controller
	LoadCoreFiles
	LoadEM

    ' Grab magnet
    Set GrabMag = New cvpmMagnet
    With GrabMag
        .InitMagnet GrabMagnet, 16  
        .GrabCenter = False
		.strength = 12
        .CreateEvents "GrabMag"
    End With

	' GLF
	ConfigureGlfDevices
	Glf_Init

	' 'Initialize Players
	' Set Player0 = New PlayerState
	' Set Player1 = New PlayerState
	' Set Player2 = New PlayerState
	' Set Player3 = New PlayerState
	' Set Player4 = New PlayerState
	' Player = Array(Player0,Player1,Player2,Player3,Player4)

	' Setup lamp assignments
	'InitLampStates 

	' Ball rolling sounds
	InitRolling

	' Flipper and sling corrections
	InitPolarity
	InitSlingCorrection

	' Turn off the Flashers
	Flash1 False
	Flash2 False
	Flash3 False
	Flash4 False
	Flash5 False
	Flash6 False

	' 'Drop targets Init (all dropped)
    ' 'InitMeteors
	' SolDT1 False
	' SolDT2 False
	' SolDT3 False
	' SolDT4 False

	'Segmented Displays
	'InitSegDisplays

	' Game variables
	' GameInit

	' Game
	' LoadHS

	' StartAttractMode
	'SetLampState LSpot1,1
	LStars.state = 1

	' Spin the asteroid
	SolSpinAsteroid true
	
	RaiseDiverterPin false
	GrabMagnetAction false

End Sub


Sub Table1_Exit
	Glf_Exit
	If B2SOn Then
		Controller.Pause = False
		Controller.Stop
	End If
End Sub


Sub Table1_Paused
End Sub


Sub Table1_UnPaused
End Sub



'*******************************************
'  ZOPT: User Options
'*******************************************

Dim LightLevel : LightLevel = 0.5				' Level of room lighting (0 to 1), where 0 is dark and 100 is brightest
Dim MechVol : MechVol = 0.8           			' Overall Mechanical sound effect volume. Recommended values should be no greater than 1.
Dim BallRollVolume : BallRollVolume = 0.5   	' Level of ball rolling volume. Value between 0 and 1
Dim RampRollVolume : RampRollVolume = 0.5 		' Level of ramp rolling volume. Value between 0 and 1
Dim BackglassVol : BackglassVol = 1				'Separate setting that only affects sounds coming from backglass. Range from 0 to 1
Dim CalloutVol : CalloutVol = 1					'Separate setting that affects verbal callout volume. Note, the backglass volume dial also affects callouts. Range from 0 to 1

Const VRRoom = 0 ' 1 - VR Room off, 1 - Minimal Room, 2 - Ultra Minimal Room



' Called when options are tweaked by the player. 
' - 0: game has started, good time to load options and adjust accordingly
' - 1: an option has changed
' - 2: options have been reseted
' - 3: player closed the tweak UI, good time to update staticly prerendered parts
' Table1.Option arguments are: 
' - option name, minimum value, maximum value, step between valid values, default value, unit (0=None, 1=Percent), an optional arry of literal strings
Dim dspTriggered : dspTriggered = False
Sub Table1_OptionEvent(ByVal eventId)
    If eventId = 1 And Not dspTriggered Then dspTriggered = True : DisableStaticPreRendering = True : End If
	Dim BP 

	Glf_Options(eventId)
	
    ' Sound volumes
    BackglassVol = Table1.Option("Game Sounds Volume", 0, 1, 0.01, 0.8, 1)
	CalloutVol = Table1.Option("Callout Volume", 0, 1, 0.01, 0.8, 1)
    MechVol = Table1.Option("Mechanical Sounds Volume", 0, 1, 0.01, 0.8, 1)
    BallRollVolume = Table1.Option("Ball Roll Volume", 0, 1, 0.01, 0.3, 1)
	RampRollVolume = Table1.Option("Ramp Roll Volume", 0, 1, 0.01, 0.5, 1)


	' Room brightness
'	LightLevel = Table1.Option("Table Brightness (Ambient Light Level)", 0, 1, 0.01, .5, 1)
	LightLevel = NightDay/100
	SetRoomBrightness LightLevel   'Uncomment this line for lightmapped tables.

	' Trust post     FIXME make optional
	For Each BP in BP_TrustPost : BP.visible = 0: Next

	' Rails          FIXME make optional
	For Each BP in BP_Rails : BP.visible = 1: Next

    If eventId = 3 And dspTriggered Then dspTriggered = False : DisableStaticPreRendering = False : End If
End Sub




'*******************************************
' ZVRR : VR Room / VR Cabinet
'*******************************************

DIM VRThings
If VRRoom <> 0 Then
'	DMDPlayfield.dmd=False
	DMDPlayfield.visible=False
'	DMDbackbox.DMD=True
	DMDbackbox.visible=true  ' flasher dmd
	If VRRoom = 1 Then
		for each VRThings in VR_Cab:VRThings.visible = 1:Next
	End If
	If VRRoom = 2 Then
		for each VRThings in VR_Cab:VRThings.visible = 0:Next
		PinCab_Backglass.visible = 1
	End If
Else
	for each VRThings in VR_Cab:VRThings.visible = 0:Next
End if



'******************************************************
'	ZGCF:  GLF Configurations
'******************************************************


Sub ConfigureGlfDevices

    CreateShows()

    ' Plunger
    With CreateGlfBallDevice("plunger")
        .BallSwitches = Array("swPlunger1")
        .EjectTimeout = 700
        .MechanicalEject = True
        .DefaultDevice = True
		.EjectCallback = "PlungerEjectCallback"
        .Debug = True
    End With

    ' Scoop
    With CreateGlfBallDevice("scoop")
        .BallSwitches = Array("swScoop")
        .EjectTimeout = 2000
        .MechanicalEject = True
		.EjectCallback = "ScoopEjectCallback"
    End With

    ' Moon Lock
    With CreateGlfBallDevice("moon_lock")
        .BallSwitches = Array("swLock1","swLock2", "swLock3")
        '.PlayerControlledEjectEvent = "eject_moon_ball"
        '.EjectCallback = "MoonLockEjectCallback"
        '.EjectEnableTime = 250
        .Debug = True
    End With

    With CreateGlfDiverter("lock_pin")
        .EnableEvents = Array(GLF_BALL_STARTED)
        .ActivateEvents = Array("release_moon_ball", "multiball_moon_started")
        .ActivationTime = "250 if devices.ball_devices.moon_lock.balls > 0 else 2000"
        .ActionCallback = "DropLockPin"
    End With

    ' Diverter above pop bumpers
    With CreateGlfDiverter("divert_pin")
        .EnableEvents = Array(GLF_BALL_STARTED)
        .ActivateEvents = Array("release_moon_ball")
        .ActivationTime = 2000
        .ActionCallback = "RaiseDiverterPin"
    End With

    ' Flippers
    With CreateGlfFlipper("left")
        .Switch = Array("s_left_flipper")
        .ActionCallback = "LeftFlipperAction"
    End With

    With CreateGlfFlipper("right")
        .Switch = Array("s_right_flipper")
        .ActionCallback = "RightFlipperAction"
    End With


    ' Magnet
    With CreateGlfMagnet("mag1")
        .GrabSwitch = "TargetMystery5"
        .ReleaseBallEvents = Array("magnet_mag1_grabbed_ball")
        .GrabTime = 1000
        .ActionCallback = "GrabMagnetAction"
    End With


    ' Drop Targets
    With CreateGlfDroptarget("drop1")
        .Switch = "DTMeteor1"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor1Callback"
    End With

    With CreateGlfDroptarget("drop2")
        .Switch = "DTMeteor2"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor2Callback"
    End With

    With CreateGlfDroptarget("drop3")
        .Switch = "DTMeteor3"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor3Callback"
    End With

    With CreateGlfDroptarget("drop4")
        .Switch = "DTMeteor4"
        .KnockdownEvents = Array("s_right_magna_key_active")
        '.EnableKeepUpEvents = Array("ball_started")
        .ResetEvents = Array("s_left_magna_key_active")
        .ActionCallback = "DTMeteor4Callback"
    End With


    ' Trough
    AddPinEventListener "trough_eject",  "on_trough_eject",  "OnTroughEject", 2000, Null
    AddPinEventListener GLF_BALL_DRAIN, "ball_drain_sound", "BallDrainSound", 100, Null

    ' Slingshots
    AddPinEventListener "leftslingshot_active",  "on_leftslingshot_active",  "OnLeftSlingshotActive", 1000, Null
    AddPinEventListener "rightslingshot_active",  "on_rightslingshot_active",  "OnRightSlingshotActive", 1000, Null

    ' Modes
    CreateMoonMultiballMode
    CreateShieldsMode
    CreateMysteryMode
    CreateGIMode

End Sub


' Event callbacks

Function OnTroughEject(args)
    RandomSoundBallRelease swTrough1
End Function

Function BallDrainSound(args)
    RandomSoundDrain Drain 
    BallDrainSound = args(1)
End Function 



Public Sub CreateGIMode()

    With CreateGlfMode("gi_control", 1000)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended") 
        With .LightPlayer()
            With .Events("mode_gi_control_started")
                With .Lights("GI")
                    '.Color = "ffffff"  'white
                    '.Color = "ffA957"  '2700k
                    .Color = "ffb46b"  '3000k
                End With
            End With
        End With
    End With
    
End Sub





'*******************************************
' ZCAL : Callouts Code
'*******************************************


Sub AudioCallout(scenario)
	Exit Sub
	select case scenario
		case "boot"
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout15","PlayCallout ""vof Boot Sequence Initiated""",2,0,0,170,1000,False
				case 2 : QueueCallout.Add "Callout14","PlayCallout ""vof Boot Sequence Initiated 2""",2,0,0,180,1000,False
			end select
			
		case "tilt"
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout61","PlayCallout ""vof system tilt""",1,5,0,230,1000,False
				case 2 : QueueCallout.Add "Callout88","PlayCallout ""vom no no no""",1,5,0,220,1000,False
			end select

		case "tilt warning"
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout64","PlayCallout ""vof tilt warning""",1,5,0,210,1000,False
				case 2 : QueueCallout.Add "Callout16","PlayCallout ""vof Caution""",1,5,0,70,1000,False
			end select

		case "skillshot" : QueueCallout.Add "Callout59","PlayCallout ""vof Skill Shot Achieved""",1,5,0,160,1000,False

		case "secretskillshot" : QueueCallout.Add "Callout54","PlayCallout ""vof Secret Skill Shot Achieved""",1,5,0,200,1000,False

		case "extra ball lit" : QueueCallout.Add "Callout27","PlayCallout ""vof Extra Ball Is Lit""",1,5,0,140,1000,False

		case "extraball"
			select case Int(Rnd * 3) + 1
				case 1 : QueueCallout.Add "Callout3","PlayCallout ""vof Acquired Extra Ball 2""",1,5,0,160,1000,True
				case 2 : QueueCallout.Add "Callout4","PlayCallout ""vof Acquired Extra Ball""",1,5,0,150,1000,True
				case 3 : QueueCallout.Add "Callout26","PlayCallout ""vof Extra Ball Achieved""",1,5,0,140,1000,True
			end select

		case "drain"
			select case Int(Rnd * 5) + 1
				case 1 : QueueCallout.Add "Callout24","PlayCallout ""vof Critical Sub Systems Failing""",1,5,0,200,1000,False
				case 2 : QueueCallout.Add "Callout25","PlayCallout ""vof Detect Power Failure""",1,5,0,170,1000,False
				case 3 : QueueCallout.Add "Callout62","PlayCallout ""vof Systems Failing""",1,5,0,120,1000,False
				case 4 : QueueCallout.Add "Callout42","PlayCallout ""vof Power Failure""",1,5,0,100,1000,False
				case 5 : QueueCallout.Add "Callout43","PlayCallout ""vof Power Interupted""",1,5,0,140,1000,False
			end select
			select case Int(Rnd * 10) + 1 'only sometimes this is said
				case 1 : QueueCallout.Add "Callout74","PlayCallout ""vom dont let that happen""",1,5,0,140,1000,False
				case 2 : QueueCallout.Add "Callout77","PlayCallout ""vom I need some help here""",1,5,0,200,1000,False
				case 3 : QueueCallout.Add "Callout83","PlayCallout ""vom never do that again""",1,5,0,190,1000,False
				case 4 : QueueCallout.Add "Callout103","PlayCallout ""vom we are getting pounded""",1,5,0,170,1000,False
				case 5 : QueueCallout.Add "Callout94","PlayCallout ""vom The right way""",1,5,0,360,1000,False
			end select

		case "ballsave"
			select case Int(Rnd * 5) + 1 'only sometimes this is said
				case 1 : QueueCallout.Add "Callout74","PlayCallout ""vom dont let that happen""",1,5,0,140,1000,False
				case 2 : QueueCallout.Add "Callout77","PlayCallout ""vom I need some help here""",1,5,0,200,1000,False
				case 3 : QueueCallout.Add "Callout83","PlayCallout ""vom never do that again""",1,5,0,190,1000,False
				case 4 : QueueCallout.Add "Callout103","PlayCallout ""vom we are getting pounded""",1,5,0,170,1000,False
				case 5 : QueueCallout.Add "Callout94","PlayCallout ""vom The right way""",1,5,0,360,1000,False
			end select

		case "shieldsup"
			select case Int(Rnd * 4) + 1
				case 1 : QueueCallout.Add "Callout66","PlayCallout ""vof Transferring Power To Shields 2""",1,5,0,180,1000,False
				case 2 : QueueCallout.Add "Callout67","PlayCallout ""vof Transferring Power To Shields""",1,5,0,170,1000,False
				case 3 : QueueCallout.Add "Callout58","PlayCallout ""vof Shields Activated""",1,5,0,150,1000,False
				case 4 : QueueCallout.Add "Callout12","PlayCallout ""vof Acquired Shields""",1,5,0,130,1000,False
			end select


		case "nice shot"
			select case Int(Rnd * 10) + 1
				case 1 : QueueCallout.Add "Callout84","PlayCallout ""vom nice one""",1,5,0,100,1000,False
				case 2 : QueueCallout.Add "Callout85","PlayCallout ""vom nice pickup""",1,5,0,120,1000,False
				case 3 : QueueCallout.Add "Callout86","PlayCallout ""vom nice shot 2""",1,5,0,130,1000,False
				case 4 : QueueCallout.Add "Callout87","PlayCallout ""vom nice shot""",1,5,0,180,1000,False
				case 5 : QueueCallout.Add "Callout75","PlayCallout ""vom Eat That""",1,5,0,80,1000,False
				case 6 : QueueCallout.Add "Callout73","PlayCallout ""vom Bullseye""",1,5,0,90,1000,False
				case 7 : QueueCallout.Add "Callout80","PlayCallout ""vom just like that""",1,5,0,120,1000,False
				case 8 : QueueCallout.Add "Callout81","PlayCallout ""vom keep it up""",1,5,0,90,1000,False
				case 10 : QueueCallout.Add "Callout93","PlayCallout ""vom Thats right""",1,5,0,100,1000,False
			end select

		case "mystery lit" : QueueCallout.Add "Callout41","PlayCallout ""vof Mystery PowerUp Is Lit""",1,5,0,170,1000,False

		case "mystery full repairs" : 
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout6","PlayCallout ""vof Acquired Full Repairs 2""",1,5,0,160,1000,False
				case 2 : QueueCallout.Add "Callout7","PlayCallout ""vof Acquired Full Repairs""",1,5,0,140,1000,False
			end select

		case "jackpot proton" : QueueCallout.Add "Callout49","PlayCallout ""vof Proton Jackpot""",1,5,0,120,1000,False

		case "jackpot cluster" : QueueCallout.Add "Callout20","PlayCallout ""vof Cluster Bomb Jackpot""",1,5,0,130,1000,False

		case "wave started"
			select case Int(Rnd * 4) + 1
				case 1 : QueueCallout.Add "Callout33","PlayCallout ""vof Meteor Wave Approaching 2""",1,5,0,170,1000,False
				case 2 : QueueCallout.Add "Callout34","PlayCallout ""vof Meteor Wave Approaching""",1,5,0,180,1000,False
				case 3 : QueueCallout.Add "Callout55","PlayCallout ""vof Sensors Detect On Coming Meteors""",1,5,0,210,1000,False
				case 4 : QueueCallout.Add "Callout63","PlayCallout ""vof Take Evasive Action""",1,5,0,130,1000,False
			end select

		case "wave done"
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout35","PlayCallout ""vof meteor wave cleared""",1,5,0,150,1000,False
				case 2 : QueueCallout.Add "Callout53","PlayCallout ""vof Scanners Clear""",1,5,0,100,1000,False
			end select
			select case Int(Rnd * 10) + 1 'only sometimes this is said
				case 1 : QueueCallout.Add "Callout102","PlayCallout ""vom way to go""",1,5,0,140,1000,False
				case 2 : QueueCallout.Add "Callout90","PlayCallout ""vom Now do it again""",1,5,0,170,1000,False
				case 3 : QueueCallout.Add "Callout93","PlayCallout ""vom Thats right""",1,5,0,100,1000,False
				case 4 : QueueCallout.Add "Callout89","PlayCallout ""vom not an idiot""",1,5,0,230,1000,False
				case 5 : QueueCallout.Add "Callout78","PlayCallout ""vom Its About Time""",1,5,0,130+80,1000,False
			end select

		case "sensors scanning"
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout56","PlayCallout ""vof Sensors Scanning 2""",1,5,0,300,1000,False
				case 2 : QueueCallout.Add "Callout57","PlayCallout ""vof Sensors Scanning""",1,5,0,300,1000,False
			end select


		case "low health"
			select case Int(Rnd * 3) + 1
				case 1 : QueueCallout.Add "Callout31","PlayCallout ""vof Low Health 1""",1,5,0,120,1000,False
				case 2 : QueueCallout.Add "Callout32","PlayCallout ""vof Low Health 2""",1,5,0,190,1000,False
				case 3 : QueueCallout.Add "Callout91","PlayCallout ""vom power is low""",1,5,0,230,1000,False
			end select

		case "full fortification"
			select case Int(Rnd * 3) + 1
				case 1 : QueueCallout.Add "Callout28","PlayCallout ""vof Full Defense Fortification 2""",1,5,0,150,1000,False
				case 2 : QueueCallout.Add "Callout29","PlayCallout ""vof Full Defense Fortification""",1,5,0,180,1000,False
				case 3 : QueueCallout.Add "Callout5","PlayCallout ""vof Acquired Full Fortification""",1,5,0,170,1000,False
			end select

		case "time warp intiated" : QueueCallout.Add "Callout65","PlayCallout ""vof Time Warp Initiated""",1,5,0,110,1000,False

		case "full time warp" : QueueCallout.Add "Callout8","PlayCallout ""vof acquired full time warp""",1,5,0,140,1000,False

		case "add cluster capacity" : 
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout17","PlayCallout ""vof Cluster Bomb Capacity Increased""",1,5,0,210,1000,False
				case 2 : QueueCallout.Add "Callout2","PlayCallout ""vof Acquired Cluster Capacity""",1,5,0,170,1000,False
			end select

		case "load cluster bomb" : 
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout1","PlayCallout ""vof Acquired Cluster Bomb""",1,5,0,140,1000,False
				case 2 : QueueCallout.Add "Callout19","PlayCallout ""vof Cluster Bomb Is Loaded""",1,5,0,160,1000,False
			end select

		case "cluster bomb combo" : QueueCallout.Add "Callout18","PlayCallout ""vof Cluster Bomb Combo""",1,5,0,130,1000,False

		case "cluster bombs empty" : 
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout21","PlayCallout ""vof Cluster Bombs Empty 2""",1,5,0,130,1000,False
				case 2 : QueueCallout.Add "Callout22","PlayCallout ""vof Cluster Bombs Empty""",1,5,0,160,1000,False
			end select

		case "add proton capacity" : 
			select case Int(Rnd * 3) + 1
				case 1 : QueueCallout.Add "Callout46","PlayCallout ""vof Proton Capacity Increased""",1,5,0,190,1000,False
				case 2 : QueueCallout.Add "Callout9","PlayCallout ""vof Acquired Proton Capacity 2""",1,5,0,170,1000,False
				case 3 : QueueCallout.Add "Callout10","PlayCallout ""vof Acquired Proton Capacity""",1,5,0,160,1000,False
			end select 

		case "load proton" :
			select case Int(Rnd * 4) + 1
				case 1 : QueueCallout.Add "Callout45","PlayCallout ""vof Proton Cannons Loaded""",1,5,0,130,1000,False
				case 2 : QueueCallout.Add "Callout44","PlayCallout ""vof Proton Cannons Loaded 2""",1,5,0,170,1000,False
				case 3 : QueueCallout.Add "Callout50","PlayCallout ""vof Proton Round Acquired""",1,5,0,140,1000,False
				case 4 : QueueCallout.Add "Callout11","PlayCallout ""vof Acquired Protons""",1,5,0,140,1000,False
			end select 

		case "proton combo" : QueueCallout.Add "Callout47","PlayCallout ""vof Proton Combo""",1,5,0,120,1000,False

		case "proton empty" : QueueCallout.Add "Callout48","PlayCallout ""vof Proton Empty""",1,5,0,180,1000,False


		case "moon lock ready" :
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout37","PlayCallout ""vof Moon Lock Is Ready 2""",1,5,0,160,1000,False
				case 2 : QueueCallout.Add "Callout38","PlayCallout ""vof Moon Lock Is Ready""",1,5,0,120,1000,False
			end select 
		case "moon missile locked" : 
			select case Int(Rnd * 2) + 1
				case 1 : QueueCallout.Add "Callout39","PlayCallout ""vof Moon Missile Locked 2""",1,5,0,160,1000,False
				case 2 : QueueCallout.Add "Callout40","PlayCallout ""vof Moon Missile Locked""",1,0,0,150,1000,False
			end select
		case "moon missile launched" : QueueCallout.Add "Callout36","PlayCallout ""vof Missiles Launched""",1,5,0,130,1000,False


		case "ball release" : 
			select case Int(Rnd * 4) + 1 
				case 1 : QueueCallout.Add "Callout60","PlayCallout ""vof System Is Fully Functional""",1,0,40,150,1000,False
				case 2 : QueueCallout.Add "Callout51","PlayCallout ""vof reestablishing power""",1,0,40,150,1000,False
				case 3 : QueueCallout.Add "Callout68","PlayCallout ""vof Weapons Online""",1,0,40,150,1000,False
				case 4 : QueueCallout.Add "Callout69","PlayCallout ""vof Weapons Ready""",1,0,40,100,1000,False
			end select


		case "start combo command mode" : QueueCallout.Add "Callout23","PlayCallout ""vof Combo Command Mode Activated""",1,5,0,180,1000,False

		case "start replenish mode" : QueueCallout.Add "Callout52","PlayCallout ""vof Replenish Mode Activated""",1,5,0,210,1000,False

		case "start fully loaded mode" : QueueCallout.Add "Callout30","PlayCallout ""vof Fully Loaded Mode Activated""",1,5,0,180,1000,False

		case "start earth killer" : QueueCallout.Add "Callout13","PlayCallout ""vof attention massive target incoming""",1,5,0,210,1000,False

		case "high score"

		case "player1"

		case "player2"

		case "player3"

		case "player4"


		case "intro segment 1" : 
			select case Int(Rnd * 4) + 1 
				case 1 : QueueCallout.Add "Callout70","PlayCallout ""vom alright listen up""",1,0,0,150+30,1000,False
				case 2 : QueueCallout.Add "Callout95","PlayCallout ""vom the sky is falling""",1,0,0,210+30,1000,False
				case 3 : QueueCallout.Add "Callout71","PlayCallout ""vom are you ready for this""",1,0,0,180+30,1000,False
				case 4 : QueueCallout.Add "Callout72","PlayCallout ""vom are you ready""",1,0,0,120+30,1000,False
			end select

		case "intro segment 2" : 
			select case Int(Rnd * 4) + 1 
				case 1 : QueueCallout.Add "Callout105","PlayCallout ""vom Whole World Haywire""",1,0,0,250+30,1000,False
				case 2 : QueueCallout.Add "Callout96","PlayCallout ""vom The World Needs Us""",1,0,0,160+30,1000,False
				case 3 : QueueCallout.Add "Callout97","PlayCallout ""vom this is our last shot""",1,0,0,160+30,1000,False
				case 4 : QueueCallout.Add "Callout98","PlayCallout ""vom this is what weve trained for""",1,0,0,220+30,1000,False
			end select

		case "intro segment 3" : 
			select case Int(Rnd * 4) + 1 
				case 1 : QueueCallout.Add "Callout92","PlayCallout ""vom saving assholes""",1,0,0,280,1000,False
				case 2 : QueueCallout.Add "Callout82","PlayCallout ""vom lets get to work""",1,0,0,150,1000,False
				case 3 : QueueCallout.Add "Callout79","PlayCallout ""vom its time to go""",1,0,0,170,1000,False
				case 4 : QueueCallout.Add "Callout99","PlayCallout ""vom time to go""",1,0,0,130,1000,False
			end select

		case "encouragement" : 
			select case Int(Rnd * 4) + 1 
				case 1 : QueueCallout.Add "Callout76","PlayCallout ""vom eyes on the prize""",1,300,0,140,1000,False
				case 2 : QueueCallout.Add "Callout101","PlayCallout ""vom try hitting something""",1,300,0,260,1000,False
				case 3 : QueueCallout.Add "Callout104","PlayCallout ""vom we need more""",1,300,0,110,1000,False
				case 4 : QueueCallout.Add "Callout106","PlayCallout ""vom you got this""",1,300,0,120,1000,False
				'case 5 : QueueCallout.Add "Callout100","PlayCallout ""vom try a cluster""",1,300,0,220,1000,False
			end select

	end select
end sub


Dim LastCallout : LastCallout = ""

Sub PlayCallout(callout)
	LastCallout = callout
	PlaySound callout,0,CalloutVol*BackglassVol,0,0,1,1,1
End Sub

Sub StopLastCallout
	StopSound LastCallout
End Sub


Sub OccationalNiceShotCallout
	select case Int(Rnd * 7) + 1 
		case 1 : AudioCallout "nice shot"
	end select
End Sub

Sub OccationalEcouragementCallout
	select case Int(Rnd * 11) + 1 
		case 1 : AudioCallout "encouragement"
	end select
End Sub


'Moon Multiball Mode.

'All of the in/outlane lights need to be lit (by hitting their swtiches). The lights can be rotated by the flippers.
'Once they are all lit, the "Moon Lauch" insert flashes indicating a ball can be locked on the moon ramp
'Once a ball is successfully launched on the ramp it remains locked there.
'A total of 2 balls can be locked. If any more balls go up there, then one will be released to keep the total at 2 max. Also, if a ball goes up there before the "Moon Launch" is lit, then a ball will be released
'All locked balls can be released by pressing the right magna.
'The right magna is disabled when an outlane switch is hit

Const MoonColor = "ccbb00"


Sub TTT(Y)
    ActiveBall.Z = 130
    ActiveBall.X = 894.0132
    ActiveBall.Y = Y
    ActiveBall.Velx = 0
    ActiveBall.Vely = 0
    ActiveBall.Velz = 0
End Sub

Function TTY()

    TTY = GetPlayerState("multiball_locks_moon_launch_balls_locked")=2
    If Err Then TTY = False
End Function

Sub CreateMoonMultiballMode


    With CreateGlfMode("moon_multiball", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
        .Debug = False

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("qualify_lock")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "flicker_color_on"
                .Speed = 4
                With .Tokens()
                    .Add "color", MoonColor
                End With
            End With
        End With
        'Define a shot profile with two states (off/flashing)
        With .ShotProfiles("lock_ready")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "flash_color"
                With .Tokens()
                    .Add "color", MoonColor
                End With
            End With
        End With

        'Define our shots
        With .Shots("left_outlane")
            .Switch = "swLeftOutlane"
            .Profile = "qualify_lock"
            With .Tokens()
                .Add "lights", "LLO"
            End With
        End With
        
        With .Shots("left_inlane")
            .Switch = "swLeftInlane"
            .Profile = "qualify_lock"
            With .Tokens()
                .Add "lights", "LLI"
            End With
        End With
        With .Shots("right_inlane")
            .Switch = "swRightInlane"
            .Profile = "qualify_lock"
            With .Tokens()
                .Add "lights", "LRI"
            End With
        End With
        With .Shots("right_outlane")
            .Switch = "swRightOutlane"
            .Profile = "qualify_lock"
            With .Tokens()
                .Add "lights", "LRO"
            End With
        End With

        With .Shots("moon_missile1")
            .Profile = "qualify_lock"
            With .Tokens()
                .Add "lights", "LMR1"
            End With
            With .ControlEvents("missile1_ready")
                .Events = Array("light_missile1")
                .State = 1
            End With
            .RestartEvents = Array("multiball_moon_started")
        End With

        With .Shots("moon_missile2")
            .Profile = "qualify_lock"
            With .Tokens()
                .Add "lights", "LMR2"
            End With
            With .ControlEvents("missile2_ready")
                .Events = Array("light_missile2")
                .State = 1
            End With
            .RestartEvents = Array("multiball_moon_started")
        End With

        'Moon Lock Ready
        With .Shots("moon_lock_ready")
            .Profile = "lock_ready"
            With .Tokens()
                .Add "lights", "LMLR"
            End With
            With .ControlEvents("lock_ready")
                .Events = Array("qualify_lock_on_complete")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_shots")
        End With

        With .ShotGroups("qualify_lock")
            .Shots = Array("left_outlane", "left_inlane", "right_inlane", "right_outlane")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
            .RestartEvents = Array("restart_qualify_shots")
            .DisableEvents = Array("disable_qualify_shots")
        End With

        With .EventPlayer()
            .Add "swMoonRamp_active{current_player.player_shot_moon_lock_ready==0 && devices.ball_devices.moon_lock.balls == 0}", Array("release_moon_ball")
            .Add "balldevice_moon_lock_ball_entered{current_player.player_shot_moon_lock_ready==0 && not devices.diverters.lock_pin.active && devices.ball_devices.moon_lock.balls > current_player.multiball_locks_moon_launch_balls_locked && devices.ball_devices.moon_lock.balls > current_player.balls_in_moon_lock}", Array("release_moon_ball")
            .Add "multiball_locks_moon_launch_locked_ball", Array("restart_qualify_shots")
            .Add "multiball_locks_moon_launch_locked_ball{devices.ball_devices.moon_lock.balls > current_player.multiball_locks_moon_launch_balls_locked}", Array("release_moon_ball")
            .Add "multiball_locks_moon_launch_locked_ball{current_player.multiball_locks_moon_launch_balls_locked==1}", Array("light_missile1")
            .Add "multiball_locks_moon_launch_locked_ball{current_player.multiball_locks_moon_launch_balls_locked==2}", Array("light_missile2")
            .Add "multiball_locks_moon_launch_full", Array("disable_qualify_shots")
            .Add "mode_moon_multiball_started{current_player.multiball_locks_moon_launch_balls_locked==2}", Array("disable_qualify_shots")
            .Add "multiball_moon_started", Array("restart_qualify_shots")
        End With
        
        With .LightPlayer()
            With .Events("disable_qualify_shots")
				With .Lights("MoonLanes")
					.Color = MoonColor
				End With
			End With
            With .Events("restart_qualify_shots")
				With .Lights("MoonLanes")
					.Color = "000000"
				End With
			End With
        End With

        'Lock the balls
        With .MultiballLocks("moon_launch")
            .EnableEvents = Array("qualify_lock_on_complete")
            .DisableEvents = Array("restart_qualify_shots")
            .ResetEvents = Array("multiball_moon_started")
            .BallsToLock = 2
            .LockDevice = "moon_lock"
        End With

        With .Multiballs("moon")
            .StartEvents = Array("s_right_magna_key_active{current_player.multiball_locks_moon_launch_balls_locked>0}")
            .BallCount = "current_player.multiball_locks_moon_launch_balls_locked"
            .BallCountType = "add"
            .BallLock = "moon_lock"
        End With

        With .VariablePlayer()
		    With .Events("mode_moon_multiball_started")
				With .Variable("balls_in_moon_lock")
                    .Action = "set"
					.Int = "devices.ball_devices.moon_lock.balls"
				End With
			End With
		End With
    End With
End Sub
'Mystery Mode.

'All of the mystery shot lights need to be lit (by hitting their swtiches). 
'Once they are all lit, the "Mystery Ready" inserts flashes
'The mystery shots will stay lit until the mystery is collected
'When a ball goes into the scoop then
'  a random mystery award is achieved
'  all the mystery lights will be reset to off

Const MysteryColor = "d14c00"

Sub CreateMysteryMode


    With CreateGlfMode("mystery", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
        .Debug = True

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("qualify_mystery")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "led_color"
                With .Tokens()
                    .Add "color", MysteryColor
                End With
            End With
        End With
        'Define a shot profile with two states (off/flashing)
        With .ShotProfiles("mystery_ready")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "flash_color"
                With .Tokens()
                    .Add "color", MysteryColor
                End With
            End With
        End With

        'Define our shots
        With .Shots("mystery_shot1")
            .Switch = "TargetMystery1"
            .Profile = "qualify_mystery"
            With .Tokens()
                .Add "lights", "LM1"
            End With
        End With
        With .Shots("mystery_shot2")
            .Switch = "TargetMystery2"
            .Profile = "qualify_mystery"
            With .Tokens()
                .Add "lights", "LM2"
            End With
        End With
        With .Shots("mystery_shot3")
            .Switch = "TargetMystery3"
            .Profile = "qualify_mystery"
            With .Tokens()
                .Add "lights", "LM3"
            End With
        End With
        With .Shots("mystery_shot4")
            .Switch = "TargetMystery4"
            .Profile = "qualify_mystery"
            With .Tokens()
                .Add "lights", "LM4"
            End With
        End With
        With .Shots("mystery_shot5")
            .Switch = "TargetMystery5"
            .Profile = "qualify_mystery"
            With .Tokens()
                .Add "lights", "LM5"
            End With
        End With

        
        'Mystery Ready
        With .Shots("mystery_ready")
            .Profile = "mystery_ready"
            With .Tokens()
                .Add "lights", "LMR"
            End With
            With .ControlEvents("mystery_ready")
                .Events = Array("qualify_mystery_on_complete")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_mystery")
        End With
        ' Mystery qualifying shot group
        With .ShotGroups("qualify_mystery")
            .Shots = Array("mystery_shot1", "mystery_shot2", "mystery_shot3", "mystery_shot4","mystery_shot5")
            .RestartEvents = Array("restart_qualify_mystery")
            .DisableEvents = Array("disable_qualify_mystery")
        End With


        ' Players
        With .EventPlayer()
            .Add "mode_myster_started", Array("restart_qualify_mystery")
            .Add "qualify_mystery_on_complete", Array("disable_qualify_mystery")
            .Add "swScoop_active{current_player.player_shot_mystery_ready==1}", Array("restart_qualify_mystery") 
        End With

        With .LightPlayer()
            With .Events("disable_qualify_mystery")
				With .Lights("MysteryShots")
					.Color = MysteryColor
				End With
			End With
            With .Events("restart_qualify_mystery")
				With .Lights("MysteryShots")
					.Color = "000000"
				End With
			End With
        End With

    End With

End Sub
'Shields Mode.

'All of the shield shot lights need to be lit (by hitting their swtiches). The lights can be rotated by the flippers.
'Once they are all lit, the "Shields" inserts turn on indicating that a ball will be saved if it goes down an outlane
'The shield shot and outlane inserts will stay lit until the shields are used
'When a ball goes down the outlane and hits the swtich then
'  a new ball will be put into the plunger lane and
'  all the shield lights will be reset to off

Const ShieldsColor = "0010cc"

Sub CreateShieldsMode


    With CreateGlfMode("shields", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
        .Debug = False

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("qualify_shields")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "flicker_color_on"
                .Speed = 4
                With .Tokens()
                    .Add "color", ShieldsColor
                End With
            End With
        End With
        'Define a shot profile with two states (off/on)
        With .ShotProfiles("shields_ready")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "led_color"
                With .Tokens()
                    .Add "color", ShieldsColor
                End With
            End With
        End With

        'Define our shots
        With .Shots("shield_shot1")
            .Switch = "TargetShield1"
            .Profile = "qualify_shields"
            With .Tokens()
                .Add "lights", "LSC1"
            End With
        End With
        With .Shots("shield_shot2")
            .Switch = "TargetShield2"
            .Profile = "qualify_shields"
            With .Tokens()
                .Add "lights", "LSC2"
            End With
        End With
        With .Shots("shield_shot3")
            .Switch = "TargetShield3"
            .Profile = "qualify_shields"
            With .Tokens()
                .Add "lights", "LSC3"
            End With
        End With
        With .Shots("shield_shot4")
            .Switch = "TargetShield4"
            .Profile = "qualify_shields"
            With .Tokens()
                .Add "lights", "LSC4"
            End With
        End With
        
        'Shields Ready
        With .Shots("shield_left")
            .Profile = "shields_ready"
            With .Tokens()
                .Add "lights", "LSL"
            End With
            With .ControlEvents("shields_ready")
                .Events = Array("qualify_shields_on_complete")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_shields")
        End With

        With .Shots("shield_right")
            .Profile = "shields_ready"
            With .Tokens()
                .Add "lights", "LSR"
            End With
            With .ControlEvents("shields_ready")
                .Events = Array("qualify_shields_on_complete")
                .State = 1
            End With
            .RestartEvents = Array("restart_qualify_shields")
        End With

        ' Shield qualifying shot group
        With .ShotGroups("qualify_shields")
            .Shots = Array("shield_shot1", "shield_shot2", "shield_shot3", "shield_shot4")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
            .RestartEvents = Array("restart_qualify_shields")
            .DisableEvents = Array("disable_qualify_shields")
        End With

        ' Ball Save
        With .BallSaves("shield")
            .ActiveTime = 5000
            .EnableEvents = Array("shields_used")
            .AutoLaunch = True
        End With

        ' Players
        With .EventPlayer()
            .Add "mode_shields_started", Array("restart_qualify_shields")
            .Add "qualify_shields_on_complete", Array("disable_qualify_shields")
            .Add "swLeftOutlane_active{current_player.player_shot_shield_left==1}", Array("shields_used","restart_qualify_shields")
            .Add "swRightOutlane_active{current_player.player_shot_shield_right==1}", Array("shields_used","restart_qualify_shields")
        End With

        With .LightPlayer()
            With .Events("disable_qualify_shields")
				With .Lights("ShieldShots")
					.Color = ShieldsColor
				End With
			End With
            With .Events("restart_qualify_shields")
				With .Lights("ShieldShots")
					.Color = "000000"
				End With
			End With
        End With

    End With

End Sub

'Time Warp Mode.

'When a ball is successfully makes the timewarp ramp:
'  - The meteor wave countdown timer pauses for 10 seconds
'  - The next available timewarp inserts lights (blinking slowly at first, then speeding up at the end of 10 sec)
'Timewarp is only available if there is at least one unlit timewarp insert.
'If a timewarp is started while timewarp is already in process, the pause timer resets to 10 seconds
'Timewarp inserts are reset to unlit at end of a meteor wave.


Const TimewarpColor = "ccccdd"


Sub CreateTimewarpMode


    With CreateGlfMode("timewarp", 510)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")
        .Debug = True

        'Define a shot profile with two states (off/on)
        With .ShotProfiles("timewarped")
            With .States("unlit")
                .Show = "off"
            End With
            With .States("on")
                .Show = "flicker_color_on"
                .Speed = 4
                With .Tokens()
                    .Add "color", TimewarpColor
                End With
            End With
        End With


        'Define our shots
        With .Shots("timewarp1")
            .Profile = "timewarped"
            With .Tokens()
                .Add "lights", "LTW1"
            End With
            With .ControlEvents("timewarped1")
                .Events = Array("light_timewarp1")
                .State = 1
            End With
            .RestartEvents = Array("restart_timewarp")
        End With

        With .Shots("timewarp2")
            .Profile = "timewarped"
            With .Tokens()
                .Add "lights", "LTW2"
            End With
            With .ControlEvents("timewarped2")
                .Events = Array("light_timewarp2")
                .State = 1
            End With
            .RestartEvents = Array("restart_timewarp")
        End With

        With .Shots("timewarp3")
            .Profile = "timewarped"
            With .Tokens()
                .Add "lights", "LTW3"
            End With
            With .ControlEvents("timewarped3")
                .Events = Array("light_timewarp3")
                .State = 1
            End With
            .RestartEvents = Array("restart_timewarp")
        End With

        With .Shots("timewarp4")
            .Profile = "timewarped"
            With .Tokens()
                .Add "lights", "LTW4"
            End With
            With .ControlEvents("timewarped4")
                .Events = Array("light_timewarp4")
                .State = 1
            End With
            .RestartEvents = Array("restart_timewarp")
        End With

        With .ShotGroups("timewarps_completed")
            .Shots = Array("timewarp1", "timewarp2", "timewarp3", "timewarp4")
            .RestartEvents = Array("restart_timewarp")
            .DisableEvents = Array("disable_timewarp")
        End With

        With .EventPlayer()
            .Add "swTimewarpRamp_active{current_player.player_shot_timewarp1==0}", Array("light_timewarp1")
            .Add "swTimewarpRamp_active{current_player.player_shot_timewarp1==1 && current_player.player_shot_timewarp2==0", Array("light_timewarp2")
            .Add "swTimewarpRamp_active{current_player.player_shot_timewarp1==1 && current_player.player_shot_timewarp2==1 && current_player.player_shot_timewarp3==0", Array("light_timewarp3")
            .Add "swTimewarpRamp_active{current_player.player_shot_timewarp1==1 && current_player.player_shot_timewarp2==1 && current_player.player_shot_timewarp3==1 && current_player.player_shot_timewarp4==0", Array("light_timewarp4")
            .Add "swTimewarpRamp_active{current_player.player_shot_timewarp4==1}", Array("disable_timewarp")
            .Add "ball_ended", Array("restart_timewarp")   'FIXME: needs to restart at end of meteor wave
        End With
        
        With .LightPlayer()
            With .Events("disable_timewarp")
				With .Lights("TimewarpShot")
					.Color = TimewarpColor
				End With
			End With
            With .Events("restart_timewarp")
				With .Lights("TimewarpShot")
					.Color = "000000"
				End With
			End With
        End With

    End With
End Sub
'Dark Chaos Shows

Sub CreateShows()
    With CreateGlfShow("flicker_color_on")
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|37|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|24|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|100|(color)")
        End With
        With .AddStep(Null, Null, .16)
            .Lights = Array("(lights)|70|(color)")
        End With
        With .AddStep(Null, Null, -1)
            .Lights = Array("(lights)|100|(color)")
        End With
    End With
End Sub



'VPX Game Logic Framework (https://mpcarr.github.io/vpx-gle-framework/)

'
Dim glf_currentPlayer : glf_currentPlayer = Null
Dim glf_canAddPlayers : glf_canAddPlayers = True
Dim glf_PI : glf_PI = 4 * Atn(1)
Dim glf_plunger
Dim glf_gameStarted : glf_gameStarted = False
Dim glf_pinEvents : Set glf_pinEvents = CreateObject("Scripting.Dictionary")
Dim glf_pinEventsOrder : Set glf_pinEventsOrder = CreateObject("Scripting.Dictionary")
Dim glf_playerEvents : Set glf_playerEvents = CreateObject("Scripting.Dictionary")
Dim Glf_EventBlocks : Set Glf_EventBlocks = CreateObject("Scripting.Dictionary")
Dim Glf_ShotProfiles : Set Glf_ShotProfiles = CreateObject("Scripting.Dictionary")
Dim Glf_ShowStartQueue : Set Glf_ShowStartQueue = CreateObject("Scripting.Dictionary")
Dim glf_playerEventsOrder : Set glf_playerEventsOrder = CreateObject("Scripting.Dictionary")
Dim glf_playerState : Set glf_playerState = CreateObject("Scripting.Dictionary")
Dim glf_running_shows : Set glf_running_shows = CreateObject("Scripting.Dictionary")
Dim glf_cached_shows : Set glf_cached_shows = CreateObject("Scripting.Dictionary")
Dim glf_lightPriority : Set glf_lightPriority = CreateObject("Scripting.Dictionary")
Dim glf_lightColorLookup : Set glf_lightColorLookup = CreateObject("Scripting.Dictionary")
Dim glf_lightMaps : Set glf_lightMaps = CreateObject("Scripting.Dictionary")
Dim glf_lightStacks : Set glf_lightStacks = CreateObject("Scripting.Dictionary")
Dim glf_lightTags : Set glf_lightTags = CreateObject("Scripting.Dictionary")
Dim glf_lightNames : Set glf_lightNames = CreateObject("Scripting.Dictionary")
Dim glf_modes : Set glf_modes = CreateObject("Scripting.Dictionary")
Dim glf_timers : Set glf_timers = CreateObject("Scripting.Dictionary")

Dim glf_ball_devices : Set glf_ball_devices = CreateObject("Scripting.Dictionary")
Dim glf_diverters : Set glf_diverters = CreateObject("Scripting.Dictionary")
Dim glf_flippers : Set glf_flippers = CreateObject("Scripting.Dictionary")
Dim glf_ball_holds : Set glf_ball_holds = CreateObject("Scripting.Dictionary")
Dim glf_magnets : Set glf_magnets = CreateObject("Scripting.Dictionary")
Dim glf_segment_displays : Set glf_segment_displays = CreateObject("Scripting.Dictionary")
Dim glf_droptargets : Set glf_droptargets = CreateObject("Scripting.Dictionary")
Dim glf_multiball_locks : Set glf_multiball_locks = CreateObject("Scripting.Dictionary")
Dim glf_multiballs : Set glf_multiballs = CreateObject("Scripting.Dictionary")
Dim glf_shows : Set glf_shows = CreateObject("Scripting.Dictionary")



Dim bcpController : bcpController = Null
Dim useBCP : useBCP = False
Dim bcpPort : bcpPort = 5050
Dim bcpExeName : bcpExeName = ""
Dim glf_BIP : glf_BIP = 0
Dim glf_FuncCount : glf_FuncCount = 0

Dim glf_ballsPerGame : glf_ballsPerGame = 3
Dim glf_troughSize : glf_troughSize = tnob
Dim glf_lastTroughSw : glf_lastTroughSw = Null

Dim glf_debugLog : Set glf_debugLog = (new GlfDebugLogFile)()
Dim glf_debugEnabled : glf_debugEnabled = False

Glf_RegisterLights()
Dim glf_ball1, glf_ball2, glf_ball3, glf_ball4, glf_ball5, glf_ball6, glf_ball7, glf_ball8	

Public Sub Glf_ConnectToBCPMediaController
    Set bcpController = (new GlfVpxBcpController)(bcpPort, bcpExeName)
End Sub

Public Sub Glf_Init()
	Glf_Options Null 'Force Options Check

	If glf_troughSize > 0 Then : swTrough1.DestroyBall : Set glf_ball1 = swTrough1.CreateSizedballWithMass(Ballsize / 2,Ballmass) : gBot = Array(glf_ball1) : Set glf_lastTroughSw = swTrough1 : End If
	If glf_troughSize > 1 Then : swTrough2.DestroyBall : Set glf_ball2 = swTrough2.CreateSizedballWithMass(Ballsize / 2,Ballmass) : gBot = Array(glf_ball1, glf_ball2) : Set glf_lastTroughSw = swTrough2 : End If
	If glf_troughSize > 2 Then : swTrough3.DestroyBall : Set glf_ball3 = swTrough3.CreateSizedballWithMass(Ballsize / 2,Ballmass) : gBot = Array(glf_ball1, glf_ball2, glf_ball3) : Set glf_lastTroughSw = swTrough3 : End If
	If glf_troughSize > 3 Then : swTrough4.DestroyBall : Set glf_ball4 = swTrough4.CreateSizedballWithMass(Ballsize / 2,Ballmass) : gBot = Array(glf_ball1, glf_ball2, glf_ball3, glf_ball4) : Set glf_lastTroughSw = swTrough4 : End If
	If glf_troughSize > 4 Then : swTrough5.DestroyBall : Set glf_ball5 = swTrough5.CreateSizedballWithMass(Ballsize / 2,Ballmass) : gBot = Array(glf_ball1, glf_ball2, glf_ball3, glf_ball4, glf_ball5) : Set glf_lastTroughSw = swTrough5 : End If
	If glf_troughSize > 5 Then : swTrough6.DestroyBall : Set glf_ball6 = swTrough6.CreateSizedballWithMass(Ballsize / 2,Ballmass) : gBot = Array(glf_ball1, glf_ball2, glf_ball3, glf_ball4, glf_ball5, glf_ball6) : Set glf_lastTroughSw = swTrough6 : End If
	If glf_troughSize > 6 Then : swTrough7.DestroyBall : Set glf_ball7 = swTrough7.CreateSizedballWithMass(Ballsize / 2,Ballmass) : gBot = Array(glf_ball1, glf_ball2, glf_ball3, glf_ball4, glf_ball5, glf_ball6, glf_ball7) : Set glf_lastTroughSw = swTrough7 : End If
	If glf_troughSize > 7 Then : Drain.DestroyBall : Set glf_ball8 = Drain.CreateSizedballWithMass(Ballsize / 2,Ballmass) : gBot = Array(glf_ball1, glf_ball2, glf_ball3, glf_ball4, glf_ball5, glf_ball6, glf_ball7, glf_ball8) : End If
	
	Dim switch, switchHitSubs
	switchHitSubs = ""
	For Each switch in Glf_Switches
		switchHitSubs = switchHitSubs & "Sub " & switch.Name & "_Hit() : DispatchPinEvent """ & switch.Name & "_active"", ActiveBall : End Sub" & vbCrLf
		switchHitSubs = switchHitSubs & "Sub " & switch.Name & "_UnHit() : DispatchPinEvent """ & switch.Name & "_inactive"", ActiveBall : End Sub" & vbCrLf
	Next
	ExecuteGlobal switchHitSubs

	Dim slingshot, slingshotHitSubs
	slingshotHitSubs = ""
	For Each slingshot in Glf_Slingshots
		slingshotHitSubs = slingshotHitSubs & "Sub " & slingshot.Name & "_Slingshot() : DispatchPinEvent """ & slingshot.Name & "_active"", ActiveBall : End Sub" & vbCrLf
	Next
	ExecuteGlobal slingshotHitSubs

	Dim spinner, spinnerHitSubs
	spinnerHitSubs = ""
	For Each spinner in Glf_Spinners
		spinnerHitSubs = spinnerHitSubs & "Sub " & spinner.Name & "_Spin() : DispatchPinEvent """ & spinner.Name & "_active"", ActiveBall : End Sub" & vbCrLf
	Next
	ExecuteGlobal spinnerHitSubs

	If glf_debugEnabled = True Then

		' Calculate the scale factor
		Dim scaleFactor
		scaleFactor = 1080 / tableheight

		Dim light
		Dim monitorYaml : monitorYaml = "light:" & vbCrLf
		Dim godotLightScene : godotLightScene = ""
		For Each light in glf_lights
			monitorYaml = monitorYaml + "  " & light.name & ":"&vbCrLf
			monitorYaml = monitorYaml + "    size: 0.04" & vbCrLf
			monitorYaml = monitorYaml + "    x: "& light.x/tablewidth & vbCrLf
			monitorYaml = monitorYaml + "    y: "& light.y/tableheight & vbCrLf


			godotLightScene = godotLightScene + "[node name="""&light.name&""" type=""Sprite2D"" parent=""lights""]" & vbCrLf
			godotLightScene = godotLightScene + "position = Vector2("&light.x*scaleFactor&", "&light.y*scaleFactor&")" & vbCrLf
			godotLightScene = godotLightScene + "script = ExtResource(""3_qb2nn"")" & vbCrLf
			godotLightScene = godotLightScene + "tags = []" & vbCrLf
			godotLightScene = godotLightScene + vbCrLf
		Next

		monitorYaml = monitorYaml + vbCrLf
		monitorYaml = monitorYaml + "switch:" & vbCrLf
		For Each switch in glf_switches
			monitorYaml = monitorYaml + "  " & switch.name & ":"&vbCrLf
			monitorYaml = monitorYaml + "    shape: RECTANGLE" & vbCrLf
			monitorYaml = monitorYaml + "    size: 0.06" & vbCrLf
			monitorYaml = monitorYaml + "    x: "& switch.x/tablewidth & vbCrLf
			monitorYaml = monitorYaml + "    y: "& switch.y/tableheight & vbCrLf
		Next
		Dim troughCount
		For troughCount=1 to tnob
			monitorYaml = monitorYaml + "  s_trough" & troughCount & ":"&vbCrLf
			monitorYaml = monitorYaml + "    shape: RECTANGLE" & vbCrLf
			monitorYaml = monitorYaml + "    size: 0.06" & vbCrLf
			monitorYaml = monitorYaml + "    x: "& Eval("swTrough"&troughCount).x/tablewidth & vbCrLf
			monitorYaml = monitorYaml + "    y: "& Eval("swTrough"&troughCount).y/tableheight & vbCrLf
		Next
		monitorYaml = monitorYaml + "  s_start:"&vbCrLf
		monitorYaml = monitorYaml + "    size: 0.06" & vbCrLf
		monitorYaml = monitorYaml + "    x: 0.95" & vbCrLf
		monitorYaml = monitorYaml + "    y: 0.95" & vbCrLf


		Dim fso, modesFolder, TxtFileStream, monitorFolder
		Set fso = CreateObject("Scripting.FileSystemObject")
		monitorFolder = "glf_mpf\monitor\"
		If Not fso.FolderExists("glf_mpf") Then
			fso.CreateFolder "glf_mpf"
		End If
		If Not fso.FolderExists("glf_mpf\monitor") Then
			fso.CreateFolder "glf_mpf\monitor"
		End If
		Set TxtFileStream = fso.OpenTextFile(monitorFolder & "\monitor.yaml", 2, True)
		TxtFileStream.WriteLine monitorYaml
		TxtFileStream.Close
		Set TxtFileStream = fso.OpenTextFile(monitorFolder & "\gotdotlights.txt", 2, True)
		TxtFileStream.WriteLine godotLightScene
		TxtFileStream.Close
		
	End If

	'Cache Shows
	Dim mode, show_count, shot_count, cached_show
	show_count = 0
	shot_count = 0
	For Each mode in glf_modes.Items()
		glf_debugLog.WriteToLog "Init", mode.Name
		If Not IsNull(mode.ShowPlayer) Then
			With mode.ShowPlayer()
				Dim show_settings
				For Each show_settings in .EventShows()
					If Not IsNull(show_settings.Show) And show_settings.Action = "play" Then
						show_settings.InternalCacheId = CStr(show_count)
						show_count = show_count + 1
						glf_debugLog.WriteToLog "Show Settings", "show_player_" & mode.name & "_" & show_settings.Key & "_" & show_settings.InternalCacheId
						cached_show = Glf_ConvertShow(show_settings.Show, show_settings.Tokens)
						glf_cached_shows.Add "show_player_" & mode.name & "_" & show_settings.Key & "__" & show_settings.InternalCacheId, cached_show
					End If 
				Next
			End With
		End If

		If Not IsNull(mode.LightPlayer) Then
			With mode.LightPlayer()
				.ReloadLights()
			End With
		End If

		If UBound(mode.ModeShots) > -1 Then
			Dim mode_shot
			For Each mode_shot in mode.ModeShots
				Dim shot_profile : Set shot_profile = Glf_ShotProfiles(mode_shot.Profile)
				Dim x
				If mode_shot.InternalCacheId = -1 Then
					mode_shot.InternalCacheId = shot_count
					shot_count = shot_count + 1
				End If
				For x=0 to shot_profile.StatesCount
					Dim state
					Set state = shot_profile.StateForIndex(x)
					If state.InternalCacheId = -1 Then
						state.InternalCacheId = CStr(show_count)
						show_count = show_count + 1
					End If

					glf_debugLog.WriteToLog "Shot State", mode.name & "_" & x & "_" & mode_shot.Name & "_" & state.Key & "_" & mode_shot.InternalCacheId & "_" & state.InternalCacheId

					Dim key
					Dim mergedTokens : Set mergedTokens = CreateObject("Scripting.Dictionary")
					If Not IsNull(state.Tokens) Then
						For Each key In state.Tokens.Keys()
							mergedTokens.Add key, state.Tokens()(key)
						Next
					End If
					Dim tokens
					If Not IsNull(mode_shot.Tokens) Then
						Set tokens = mode_shot.Tokens
						For Each key In tokens.Keys
							If mergedTokens.Exists(key) Then
								mergedTokens(key) = tokens(key)
							Else
								mergedTokens.Add key, tokens(key)
							End If
						Next
					End If
					cached_show = Glf_ConvertShow(state.Show, mergedTokens)
					glf_cached_shows.Add mode.name & "_" & x & "_" & mode_shot.Name & "_" & state.Key & "_" & mode_shot.InternalCacheId & "_" & state.InternalCacheId, cached_show
				Next
			Next
		End If
	Next

	Glf_Reset()
End Sub

Sub Glf_Reset()

	DispatchQueuePinEvent "reset_complete", Null
End Sub

Sub Glf_Options(ByVal eventId)
	Dim ballsPerGame : ballsPerGame = Table1.Option("Balls Per Game", 1, 2, 1, 1, 0, Array("3 Balls", "5 Balls"))
	If ballsPerGame = 1 Then
		glf_ballsPerGame = 3
	Else
		glf_ballsPerGame = 5
	End If

	Dim glfDebug : glfDebug = Table1.Option("Glf Debug Log", 0, 1, 1, 0, 0, Array("Off", "On"))
	If glfDebug = 1 Then
		glf_debugEnabled = True
		glf_debugLog.EnableLogs
	Else
		glf_debugEnabled = False
		glf_debugLog.DisableLogs
	End If

	Dim glfuseBCP : glfuseBCP = Table1.Option("Glf Backbox Control Protocol", 0, 1, 1, 0, 0, Array("Off", "On"))
	If glfuseBCP = 1 Then
		useBCP = True
		If IsNull(bcpController) Then
			Glf_ConnectToBCPMediaController
		End If
	Else
		useBCP = False
		If Not IsNull(bcpController) Then
			bcpController.Disconnect
			bcpController = Null
		End If
	End If
End Sub

Public Sub Glf_Exit()
	If Not IsNull(bcpController) Then
		bcpController.Disconnect
		bcpController = Null
	End If
	If glf_debugEnabled = True Then
		glf_debugLog.DisableLogs
	End If
End Sub

Public Sub Glf_KeyDown(ByVal keycode)
    If glf_gameStarted = True Then
		If keycode = LeftFlipperKey Then
			DispatchPinEvent "s_left_flipper_active", Null
		End If
		
		If keycode = RightFlipperKey Then
			DispatchPinEvent "s_right_flipper_active", Null
		End If
		
		If keycode = LockbarKey Then
			DispatchPinEvent "s_lockbar_key_active", Null
		End If

		If KeyCode = PlungerKey Then
			DispatchPinEvent "s_plunger_key_active", Null
		End If

		If KeyCode = LeftMagnaSave Then
			DispatchPinEvent "s_left_magna_key_active", Null
		End If

		If KeyCode = RightMagnaSave Then
			DispatchPinEvent "s_right_magna_key_active", Null
		End If

		If KeyCode = StagedRightFlipperKey Then
			DispatchPinEvent "s_right_staged_flipper_key_active", Null
		End If

		If KeyCode = StagedLeftFlipperKey Then
			DispatchPinEvent "s_left_staged_flipper_key_active", Null
		End If
		
		
		If keycode = StartGameKey Then
			If glf_canAddPlayers = True Then
				Glf_AddPlayer()
			End If
		End If


	Else
		If keycode = StartGameKey Then
			Glf_AddPlayer()
			Glf_StartGame()
		End If
	End If
End Sub

Public Sub Glf_KeyUp(ByVal keycode)
	If glf_gameStarted = True Then
		If KeyCode = PlungerKey Then
			DispatchPinEvent "s_plunger_key_inactive", Null
		End If

		If keycode = LeftFlipperKey Then
			DispatchPinEvent "s_left_flipper_inactive", Null
		End If
		
		If keycode = RightFlipperKey Then
			DispatchPinEvent "s_right_flipper_inactive", Null
		End If

		If keycode = LockbarKey Then
			DispatchPinEvent "s_lockbar_key_inactive", Null
		End If

		If KeyCode = LeftMagnaSave Then
			DispatchPinEvent "s_left_magna_key_inactive", Null
		End If

		If KeyCode = RightMagnaSave Then
			DispatchPinEvent "s_right_magna_key_inactive", Null
		End If

		If KeyCode = StagedRightFlipperKey Then
			DispatchPinEvent "s_right_staged_flipper_key_inactive", Null
		End If

		If KeyCode = StagedLeftFlipperKey Then
			DispatchPinEvent "s_left_staged_flipper_key_inactive", Null
		End If
		
	End If
End Sub

Dim glf_lastEventExecutionTime, glf_lastBcpExecutionTime, glf_lastLightUpdateExecutionTime
glf_lastEventExecutionTime = 0
glf_lastBcpExecutionTime = 0
glf_lastLightUpdateExecutionTime = 0

Public Sub Glf_GameTimer_Timer()

    'If (gametime - glf_lastEventExecutionTime) >= 33 Then
     '   glf_lastEventExecutionTime = gametime
		DelayTick
    'End If
	If (gametime - glf_lastBcpExecutionTime) >= 300 Then
        glf_lastBcpExecutionTime = gametime
		Glf_BcpUpdate
    End If

End Sub

Public Function Glf_RegisterLights()

	Dim light, tags, tag
	For Each light In Glf_Lights
		tags = Split(light.BlinkPattern, ",")
		For Each tag in tags
			
			tag = Trim(tag) ' Remove any leading or trailing spaces
			If Not glf_lightTags.Exists(tag) Then
				Set glf_lightTags(tag) = CreateObject("Scripting.Dictionary")
			End If
			If Not glf_lightTags(tag).Exists(light.Name) Then
				glf_lightTags(tag).Add light.Name, True
			End If
		Next
		glf_lightPriority.Add light.Name, 0
		
		Dim e, lmStr: lmStr = "lmArr = Array("    
		For Each e in GetElements()
			On Error Resume Next
			If InStr(LCase(e.Name), LCase("_" & light.Name & "_")) Then
				lmStr = lmStr & e.Name & ","
			End If
			For Each tag in tags
				If InStr(LCase(e.Name), LCase("_" & tag & "_")) Then
					lmStr = lmStr & e.Name & ","
				End If
			Next
			If Err Then Log "Error: " & Err
		Next
		lmStr = lmStr & "Null)"
		lmStr = Replace(lmStr, ",Null)", ")")
		ExecuteGlobal "Dim lmArr : "&lmStr
		glf_lightMaps.Add light.Name, lmArr
		glf_lightNames.Add light.Name, light
		Dim lightStack : Set lightStack = (new GlfLightStack)()
		glf_lightStacks.Add light.Name, lightStack
		light.State = 1
		Glf_SetLight light.Name, "000000"
	Next
End Function

Public Function Glf_SetLight(light, color)
	
	Dim rgbColor
	If glf_lightColorLookup.Exists(color) Then
		rgbColor = glf_lightColorLookup(color)
	Else
		glf_lightColorLookup.Add color, RGB( CInt("&H" & (Left(color, 2))), CInt("&H" & (Mid(color, 3, 2))), CInt("&H" & (Right(color, 2)) ))
		rgbColor = glf_lightColorLookup(color)
	End If
	

	If IsNull(color) Then
		glf_lightNames(light).Color = rgb(0,0,0)
	Else
		glf_lightNames(light).Color = rgbColor
	End If
	dim lightMap
	For Each lightMap in glf_lightMaps(light)
		If Not IsNull(lightMap) Then
			On Error Resume Next
			lightMap.Color = glf_lightNames(light).Color
			If Err Then Debug.Print "Error: " & Err & ". Light:" & light & ", LightMap: " & lightMap.Name
		End If
	Next
End Function

Public Function Glf_ParseInput(value)
	Dim templateCode : templateCode = ""
	Dim tmp: tmp = value
	Dim isVariable, parts
    Select Case VarType(value)
        Case 8 ' vbString
			tmp = Glf_ReplaceCurrentPlayerAttributes(tmp)
			tmp = Glf_ReplaceDeviceAttributes(tmp)
			'msgbox tmp
			If InStr(tmp, " if ") Then
				templateCode = "Function Glf_" & glf_FuncCount & "()" & vbCrLf
				templateCode = templateCode & vbTab & Glf_ConvertIf(tmp, "Glf_" & glf_FuncCount) & vbCrLf
				templateCode = templateCode & "End Function"
			Else
				isVariable = Glf_IsCondition(tmp)
				If Not IsNull(isVariable) Then
					'The input needs formatting
					parts = Split(isVariable, ":")
					If UBound(parts) = 1 Then
						tmp = "Glf_FormatValue(" & parts(0) & ", """ & parts(1) & """)"
					End If
				End If
				templateCode = "Function Glf_" & glf_FuncCount & "()" & vbCrLf
				templateCode = templateCode & vbTab & "Glf_" & glf_FuncCount & " = " & tmp & vbCrLf
				templateCode = templateCode & "End Function"
			End IF
        Case Else
			templateCode = "Function Glf_" & glf_FuncCount & "()" & vbCrLf			
			isVariable = Glf_IsCondition(tmp)
			If Not IsNull(isVariable) Then
				'The input needs formatting
				parts = Split(isVariable, ":")
				If UBound(parts) = 1 Then
					tmp = "Glf_FormatValue(" & parts(0) & ", """ & parts(1) & """)"
				End If
			End If
			templateCode = templateCode & vbTab & "Glf_" & glf_FuncCount & " = " & tmp & vbCrLf
			templateCode = templateCode & "End Function"
    End Select
	'msgbox templateCode
	ExecuteGlobal templateCode
	Dim funcRef : funcRef = "Glf_" & glf_FuncCount
	glf_FuncCount = glf_FuncCount + 1
	Glf_ParseInput = Array(funcRef, value, True)
End Function

Public Function Glf_ParseEventInput(value)
	Dim templateCode : templateCode = ""
	Dim condition : condition = Glf_IsCondition(value)
	If IsNull(condition) Then
		Glf_ParseEventInput = Array(value, value, Null)
	Else
		dim conditionReplaced : conditionReplaced = Glf_ReplaceCurrentPlayerAttributes(condition)
		conditionReplaced = Glf_ReplaceDeviceAttributes(conditionReplaced)
		templateCode = "Function Glf_" & glf_FuncCount & "()" & vbCrLf
		templateCode = templateCode & vbTab & "On Error Resume Next" & vbCrLf
		templateCode = templateCode & vbTab & Glf_ConvertCondition(conditionReplaced, "Glf_" & glf_FuncCount) & vbCrLf
		templateCode = templateCode & vbTab & "If Err Then Glf_" & glf_FuncCount & " = False" & vbCrLf
		templateCode = templateCode & "End Function"
		'msgbox templateCode
		ExecuteGlobal templateCode
		Dim funcRef : funcRef = "Glf_" & glf_FuncCount
		glf_FuncCount = glf_FuncCount + 1
		Glf_ParseEventInput = Array(Replace(value, "{"&condition&"}", funcRef) ,Replace(value, "{"&condition&"}", ""), funcRef)
	End If
End Function

Function Glf_ReplaceCurrentPlayerAttributes(inputString)
    Dim pattern, replacement, regex, outputString
    pattern = "current_player\.([a-zA-Z0-9_]+)"
    Set regex = New RegExp
    regex.Pattern = pattern
    regex.IgnoreCase = True
    regex.Global = True
    replacement = "GetPlayerState(""$1"")"
    outputString = regex.Replace(inputString, replacement)
    Set regex = Nothing
    Glf_ReplaceCurrentPlayerAttributes = outputString
End Function

Function Glf_ReplaceDeviceAttributes(inputString)
    Dim pattern, replacement, regex, outputString
    pattern = "devices\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)"
    Set regex = New RegExp
    regex.Pattern = pattern
    regex.IgnoreCase = True
    regex.Global = True
	replacement = "glf_$1(""$2"").GetValue(""$3"")"
    outputString = regex.Replace(inputString, replacement)
    Set regex = Nothing
    Glf_ReplaceDeviceAttributes = outputString
End Function

Function Glf_ConvertIf(value, retName)
    Dim parts, condition, truePart, falsePart, isVariable
    parts = Split(value, " if ")
    truePart = Trim(parts(0))
    Dim conditionAndFalsePart
    conditionAndFalsePart = Split(parts(1), " else ")
    condition = Trim(conditionAndFalsePart(0))
    falsePart = Trim(conditionAndFalsePart(1))
	isVariable = Glf_IsCondition(truePart)
	If Not IsNull(isVariable) Then
		'The input needs formatting
		parts = Split(isVariable, ":")
		If UBound(parts) = 1 Then
			truePart = "Glf_FormatValue(" & parts(0) & ", """ & parts(1) & """)"
		End If
	End If
	isVariable = Glf_IsCondition(falsePart)
	If Not IsNull(isVariable) Then
		'The input needs formatting
		parts = Split(isVariable, ":")
		If UBound(parts) = 1 Then
			falsePart = "Glf_FormatValue(" & parts(0) & ", """ & parts(1) & """)"
		End If
	End If

    Dim vbscriptIfStatement
    vbscriptIfStatement = "If " & condition & " Then" & vbCrLf & _
                          "    "&retName&" = " & truePart & vbCrLf & _
                          "Else" & vbCrLf & _
                          "    "&retName&" = " & falsePart & vbCrLf & _
                          "End If"
	Glf_ConvertIf = vbscriptIfStatement
End Function

Function Glf_ConvertCondition(value, retName)
	value = Replace(value, "==", "=")
	value = Replace(value, "!=", "<>")
	value = Replace(value, "&&", "And")
	Glf_ConvertCondition = "    "&retName&" = " & value
End Function

Function Glf_FormatValue(value, formatString)
    Dim padChar, width, result, align

    ' Default values
    padChar = " " ' Default padding character is space
    align = ">"   ' Default alignment is right
    width = 0     ' Default width is 0 (no padding)

    If Len(formatString) >= 2 Then
        padChar = Mid(formatString, 1, 1)
        align = Mid(formatString, 2, 1)
        width = CInt(Mid(formatString, 3))
    End If

    Select Case align
        Case ">" ' Right-align with padding
            If Len(value) < width Then
                result = String(width - Len(value), padChar) & value
            Else
                result = value
            End If
        Case "<" ' Left-align with padding
            If Len(value) < width Then
                result = value & String(width - Len(value), padChar)
            Else
                result = value
            End If
        Case "^" ' Center-align with padding
            Dim leftPad, rightPad
            If Len(value) < width Then
                leftPad = (width - Len(value)) \ 2
                rightPad = width - Len(value) - leftPad
                result = String(leftPad, padChar) & value & String(rightPad, padChar)
            Else
                result = value
            End If
        Case Else ' Default: Return value as is
            result = value
    End Select

    Glf_FormatValue = result
End Function

Function glf_ReadShowYAMLFiles()
    Dim fso, folder, file, yamlFiles, fileContent
    Set fso = CreateObject("Scripting.FileSystemObject")
    
    ' Check if the directory exists
    If Not fso.FolderExists(directoryPath) Then
        WScript.Echo "Directory does not exist: " & directoryPath
        Exit Function
    End If
    
    ' Initialize the array to store file contents
    ReDim yamlFiles(-1)
    
    ' Get the folder object
    Set folder = fso.GetFolder(directoryPath)
    
    ' Iterate through the files in the directory
    For Each file In folder.Files
        ' Check if the file has a .yaml extension
        If LCase(fso.GetExtensionName(file.Name)) = "yaml" Then
            ' Read the file content
            Set fileContent = fso.OpenTextFile(file.Path, 1) ' 1 = ForReading
            ReDim Preserve yamlFiles(UBound(yamlFiles) + 1)
            yamlFiles(UBound(yamlFiles)) = fileContent.ReadAll
            fileContent.Close
        End If
    Next
    
    ' Return the array of YAML file contents
    ReadYAMLFiles = yamlFiles
End Function

Sub glf_ConvertYamlShowToGlfShow(yamlFilePath)
    Dim fso, file, content, lines, line, output, i, stepLights
    Dim glf_ShowName, stepTime, lightsDict, key, lightName, color, intensity
    
    ' Initialize FileSystemObject
    Set fso = CreateObject("Scripting.FileSystemObject")
    
    ' Read the YAML file
    Set file = fso.OpenTextFile(yamlFilePath, 1)
    content = file.ReadAll
    file.Close
    
    ' Split the content into lines
    lines = Split(content, vbLf)
    
    ' Initialize variables
    glf_ShowName = fso.GetBaseName(yamlFilePath)
    output = "Dim glf_Show" & glf_ShowName & " : Set glf_Show" & glf_ShowName & " = (new GlfShow)(""" & glf_ShowName & """)" & vbCrLf
    output = output & "With glf_Show" & glf_ShowName & vbCrLf
    
    ' Iterate through lines to extract steps and lights
	stepLights = ""
    For i = 0 To UBound(lines)
        line = Trim(lines(i))
        
        ' Close the step when a new time step or end of file is reached
        If InStr(line, "- time:") = 1 And stepLights <> "" Then
			'output = output & vbTab & vbTab & ".Lights = Array("& Left(stepLights, Len(stepLights) - 1)&")" & vbCrLf
			output = output & vbTab & vbTab & ".Lights = Array(" & _ 
            SplitStringWithUnderscore(Left(stepLights, Len(stepLights) - 1), 1500) & ")" & vbCrLf
            output = output & vbTab & "End With" & vbCrLf
			stepLights = ""
		End If

        ' Identify time steps
        If InStr(line, "- time:") = 1 Then
            stepTime = Trim(Split(line, ":")(1))
            output = output & vbTab & "With .AddStep(" & stepTime & ", Null, Null)" & vbCrLf
        
		ElseIf InStr(line, "lights:") = 1 Then
			'Do Nothing
        ' Identify lights and colors
        ElseIf InStr(line, "l") = 1 Then
            key = Split(line, ":")(0)
            lightName = Trim(key)
            color = Trim(Split(line, """")(1))
            
            ' Default intensity to 100 if color is not "000000"
            intensity = 100
            'If color = "000000" Then
            '    intensity = 0
            'End If
            
            ' Add lights to output
            'If intensity > 0 Then
                
            'End If
			stepLights = stepLights + """" & lightName & "|" & intensity & "|" & color & ""","

        End If
    Next
    
    ' Close the final step and the show
	'output = output & vbTab & vbTab & ".Lights = Array("& Left(stepLights, Len(stepLights) - 1)&")" & vbCrLf
	output = output & vbTab & vbTab & ".Lights = Array(" & _ 
    SplitStringWithUnderscore(Left(stepLights, Len(stepLights) - 1), 1500) & ")" & vbCrLf
    output = output & vbTab & "End With" & vbCrLf
    output = output & "End With" & vbCrLf
    
    ' Write the output to a VBScript file
    Dim outputFilePath
    outputFilePath = fso.GetParentFolderName(yamlFilePath) & "\" & glf_ShowName & ".vbs"
    Set file = fso.CreateTextFile(outputFilePath, True)
    file.Write output
    file.Close
    
    ' Clean up
    Set fso = Nothing
    Set file = Nothing
End Sub

Function SplitStringWithUnderscore(str, maxLength)
    Dim result, i, strLen
    strLen = Len(str)
    result = ""
    
    If strLen <= maxLength Then
        result = str
    Else
        For i = 1 To strLen Step maxLength
            If i + maxLength - 1 < strLen Then
                result = result & Mid(str, i, maxLength) & "_" & vbCrLf & vbTab & vbTab & vbTab
            Else
                result = result & Mid(str, i, maxLength)
            End If
        Next
    End If
    
    SplitStringWithUnderscore = result
End Function

Function GlfShotProfiles(name)
	If Glf_ShotProfiles.Exists(name) Then
		Set GlfShotProfiles = Glf_ShotProfiles(name)
	Else
		Dim new_shotprofile : Set new_shotprofile = (new GlfShotProfile)(name)
		Glf_ShotProfiles.Add name, new_shotprofile
		Set GlfShotProfiles = new_shotprofile
	End If
End Function

Function CreateGlfMode(name, priority)
	If Not glf_modes.Exists(name) Then 
		Dim mode : Set mode = (new Mode)(name, priority)
		glf_modes.Add name, mode
		Set CreateGlfMode = mode
	End If
End Function

Function GlfModes(name)
	If glf_modes.Exists(name) Then 
		Set GlfModes = glf_modes(name)
	Else
		GlfModes = Null
	End If
End Function

Function GlfKwargs()
	Set GlfKwargs = CreateObject("Scripting.Dictionary")
End Function

Function Glf_ConvertShow(show, tokens)

	Dim showStep, light, lightsCount, x,tagLight, tagLights, lightParts, token, stepIdx
	Dim newShow, lightsInShow
	Set lightsInShow = CreateObject("Scripting.Dictionary")

	ReDim newShow(UBound(show.Steps().Keys()))
	stepIdx = 0
	For Each showStep in show.Steps().Items()
		lightsCount = 0 
		For Each light in showStep.Lights
			lightParts = Split(light, "|")
			If IsArray(lightParts) Then
				token = Glf_IsToken(lightParts(0))
				If IsNull(token) And Not glf_lightNames.Exists(lightParts(0)) Then
					tagLights = glf_lightTags(lightParts(0)).Keys()
					lightsCount = UBound(tagLights)+1
				Else
					If IsNull(token) Then
						lightsCount = lightsCount + 1
					Else
						'resolve token lights
						If Not glf_lightNames.Exists(tokens(token)) Then
							'token is a tag
							tagLights = glf_lightTags(tokens(token)).Keys()
							lightsCount = UBound(tagLights)+1
						Else
							lightsCount = lightsCount + 1
						End If
					End If
				End If
			End If
		Next
	
		Dim seqArray
		ReDim seqArray(lightsCount-1)
		x=0
		For Each light in showStep.Lights
			lightParts = Split(light, "|")
			Dim lightColor : lightColor = ""
			If Ubound(lightParts) = 2 Then 
				If IsNull(Glf_IsToken(lightParts(2))) Then
					lightColor = lightParts(2)
				Else
					lightColor = tokens(Glf_IsToken(lightParts(2)))
				End If
			End If

			If IsArray(lightParts) Then
				token = Glf_IsToken(lightParts(0))
				If IsNull(token) And Not glf_lightNames.Exists(lightParts(0)) Then
					tagLights = glf_lightTags(lightParts(0)).Keys()
					For Each tagLight in tagLights
						If UBound(lightParts) >=1 Then
							seqArray(x) = tagLight & "|"&lightParts(1)&"|" & AdjustHexColor(lightColor, lightParts(1))
						Else
							seqArray(x) = tagLight & "|"&lightParts(1)
						End If
						If Not lightsInShow.Exists(tagLight) Then
							lightsInShow.Add tagLight, True
						End If
						x=x+1
					Next
				Else
					If IsNull(token) Then
						If UBound(lightParts) >= 1 Then
							seqArray(x) = lightParts(0) & "|"&lightParts(1)&"|"&AdjustHexColor(lightColor, lightParts(1))
						Else
							seqArray(x) = lightParts(0) & "|"&lightParts(1)
						End If
						If Not lightsInShow.Exists(lightParts(0)) Then
							lightsInShow.Add lightParts(0), True
						End If
						x=x+1
					Else
						'resolve token lights
						If Not glf_lightNames.Exists(tokens(token)) Then
							'token is a tag
							tagLights = glf_lightTags(tokens(token)).Keys()
							For Each tagLight in tagLights
								If UBound(lightParts) >=1 Then
									seqArray(x) = tagLight & "|"&lightParts(1)&"|"&AdjustHexColor(lightColor, lightParts(1))
								Else
									seqArray(x) = tagLight & "|"&lightParts(1)
								End If
								If Not lightsInShow.Exists(tagLight) Then
									lightsInShow.Add tagLight, True
								End If
								x=x+1
							Next
						Else
							If UBound(lightParts) >= 1 Then
								seqArray(x) = tokens(token) & "|"&lightParts(1)&"|"&AdjustHexColor(lightColor, lightParts(1))
							Else
								seqArray(x) = tokens(token) & "|"&lightParts(1)
							End If
							If Not lightsInShow.Exists(tokens(token)) Then
								lightsInShow.Add tokens(token), True
							End If
							x=x+1
						End If
					End If
				End If
			End If
		Next
		glf_debugLog.WriteToLog "Convert Show", Join(seqArray)
		newShow(stepIdx) = seqArray
		stepIdx = stepIdx + 1
	Next
	Glf_ConvertShow = Array(newShow, lightsInShow)
End Function

Private Function Glf_IsToken(mainString)
	' Check if the string contains an opening parenthesis and ends with a closing parenthesis
	If InStr(mainString, "(") > 0 And Right(mainString, 1) = ")" Then
		' Extract the substring within the parentheses
		Dim startPos, subString
		startPos = InStr(mainString, "(")
		subString = Mid(mainString, startPos + 1, Len(mainString) - startPos - 1)
		Glf_IsToken = subString
	Else
		Glf_IsToken = Null
	End If
End Function

Private Function Glf_IsCondition(mainString)
	' Check if the string contains an opening { and ends with a closing }
	If InStr(mainString, "{") > 0 And Right(mainString, 1) = "}" Then
		Dim startPos, subString
		startPos = InStr(mainString, "{")
		subString = Mid(mainString, startPos + 1, Len(mainString) - startPos - 1)
		Glf_IsCondition = subString
	Else
		Glf_IsCondition = Null
	End If
End Function

Function Glf_RotateArray(arr, direction)
    Dim n, rotatedArray, i
    ReDim rotatedArray(UBound(arr))
 
    If LCase(direction) = "l" Then
        For i = 0 To UBound(arr) - 1
            rotatedArray(i) = arr(i + 1)
        Next
        rotatedArray(UBound(arr)) = arr(0)
    ElseIf LCase(direction) = "r" Then
        For i = UBound(arr) To 1 Step -1
            rotatedArray(i) = arr(i - 1)
        Next
        rotatedArray(0) = arr(UBound(arr))
    Else
        ' Invalid direction
        Glf_RotateArray = arr
        Exit Function
    End If
    
    ' Return the rotated array
    Glf_RotateArray = rotatedArray
End Function

Function Glf_CopyArray(arr)
    Dim newArr, i
    ReDim newArr(UBound(arr))
    For i = 0 To UBound(arr)
        newArr(i) = arr(i)
    Next
    Glf_CopyArray = newArr
End Function

Function Glf_IsInArray(value, arr)
    Dim i
    Glf_IsInArray = False

    For i = LBound(arr) To UBound(arr)
        If arr(i) = value Then
            Glf_IsInArray = True
            Exit Function
        End If
    Next
End Function

Function CreateGlfInput(value)
	Set CreateGlfInput = (new GlfInput)(value)
End Function

Class GlfInput
	Private m_raw, m_value, m_isGetRef
  
    Public Property Get Value() 
		If m_isGetRef = True Then
			Value = GetRef(m_value)()
		Else
			Value = m_value
		End If
	End Property

    Public Property Get Raw() : Raw = m_raw : End Property

	Public default Function init(input)
        m_raw = input
        Dim parsedInput : parsedInput = Glf_ParseInput(input)
        m_value = parsedInput(0)
        m_isGetRef = parsedInput(2)
	    Set Init = Me
	End Function

End Class

'******************************************************
'*****   GLF Shows 		                           ****
'******************************************************

Function CreateGlfShow(name)
	Dim show : Set show = (new GlfShow)(name)
	'msgbox name
	glf_shows.Add name, show
	Set CreateGlfShow = show
End Function

With CreateGlfShow("on")
	With .AddStep(Null, Null, -1)
		.Lights = Array("(lights)|100")
	End With
End With

With CreateGlfShow("off")
	With .AddStep(Null, Null, -1)
		.Lights = Array("(lights)|100|000000")
	End With
End With

With CreateGlfShow("flash")
	With .AddStep(Null, Null, 1)
		.Lights = Array("(lights)|100")
	End With
	With .AddStep(Null, Null, 1)
		.Lights = Array("(lights)|100|000000")
	End With
End With

With CreateGlfShow("flash_color")
	With .AddStep(Null, Null, 1)
		.Lights = Array("(lights)|100|(color)")
	End With
	With .AddStep(Null, Null, 1)
		.Lights = Array("(lights)|100|000000")
	End With
End With

With CreateGlfShow("led_color")
	With .AddStep(Null, Null, -1)
		.Lights = Array("(lights)|100|(color)")
	End With
End With

With GlfShotProfiles("default")
	With .States("on")
			.Show = "flash"
	End With
	With .States("off")
			.Show = "off"
	End With
End With

With GlfShotProfiles("flash_color")
	With .States("off")
		.Show = "off"
	End With
	With .States("on")
			.Show = "flash_color"
	End With	
End With

Function AdjustHexColor(hexColor, percentage)
    ' Ensure percentage is between 0 and 100
    If percentage < 0 Then percentage = 0
    If percentage > 100 Then percentage = 100

    ' Parse the R, G, B components
    Dim r, g, b
    r = CLng("&H" & Mid(hexColor, 1, 2))
    g = CLng("&H" & Mid(hexColor, 3, 2))
    b = CLng("&H" & Mid(hexColor, 5, 2))

    ' Adjust the RGB components by the percentage
    r = Int(r * (percentage / 100))
    g = Int(g * (percentage / 100))
    b = Int(b * (percentage / 100))

    ' Ensure the values are within the valid range (0 to 255)
    r = FixRange(r)
    g = FixRange(g)
    b = FixRange(b)

    ' Convert back to hex and return the adjusted color
    AdjustHexColor = PadHex(Hex(r)) & PadHex(Hex(g)) & PadHex(Hex(b))
End Function

' Helper function to ensure values stay within range
Function FixRange(value)
    If value < 0 Then value = 0
    If value > 255 Then value = 255
    FixRange = value
End Function

' Helper function to pad single digit hex values with a leading zero
Function PadHex(hexValue)
    If Len(hexValue) < 2 Then
        PadHex = "0" & hexValue
    Else
        PadHex = hexValue
    End If
End Function


'******************************************************
'*****   GLF Pin Events                            ****
'******************************************************

Const GLF_GAME_START = "game_start"
Const GLF_GAME_STARTED = "game_started"
Const GLF_GAME_OVER = "game_ended"
Const GLF_BALL_WILL_END = "ball_will_end"
Const GLF_BALL_ENDING = "ball_ending"
Const GLF_BALL_ENDED = "ball_ended"
Const GLF_NEXT_PLAYER = "next_player"
Const GLF_BALL_DRAIN = "ball_drain"
Const GLF_BALL_STARTED = "ball_started"

'******************************************************
'*****   GLF Player State                          ****
'******************************************************

Const GLF_SCORE = "score"
Const GLF_CURRENT_BALL = "current_ball"
Const GLF_INITIALS = "initials"




'*****************************************************************************************************************************************
'  Vpx Glf Bcp Controller
'*****************************************************************************************************************************************

Class GlfVpxBcpController

    Private m_bcpController, m_connected

    Public default Function init(port, backboxCommand)
        On Error Resume Next
        Set m_bcpController = CreateObject("vpx_bcp_server.VpxBcpController")
        m_bcpController.Connect port, backboxCommand
        m_connected = True
        If Err Then MsgBox("Can not start VPX BCP Controller") : m_connected = False
        Set Init = Me
	End Function

	Public Sub Send(commandMessage)
		If m_connected = True Then
            m_bcpController.Send commandMessage
        End If
	End Sub

    Public Function GetMessages
		If m_connected Then
            GetMessages = m_bcpController.GetMessages
        End If
	End Function

    Public Sub Reset()
		If m_connected Then
            m_bcpController.Send "reset"
        End If
	End Sub
    
    Public Sub PlaySlide(slide, context, priorty)
		If m_connected Then
            m_bcpController.Send "trigger?json={""name"": ""slides_play"", ""settings"": {""" & slide & """: {""action"": ""play"", ""expire"": 0}}, ""context"": """ & context & """, ""priority"": " & priorty & "}"
        End If
	End Sub

    Public Sub SendPlayerVariable(name, value, prevValue)
		If m_connected Then
            m_bcpController.Send "player_variable?name=" & name & "&value=" & EncodeVariable(value) & "&prev_value=" & EncodeVariable(prevValue) & "&change=" & EncodeVariable(VariableVariance(value, prevValue)) & "&player_num=int:" & Getglf_currentPlayerNumber
            '06:34:34.644 : VERBOSE : BCP : Received BCP command: ball_start?player_num=int:1&ball=int:1
        End If
	End Sub

    Private Function EncodeVariable(value)
        Dim retValue
        Select Case VarType(value)
            Case vbInteger, vbLong
                retValue = "int:" & value
            Case vbSingle, vbDouble
                retValue = "float:" & value
            Case vbString
                retValue = "string:" & value
            Case vbBoolean
                retValue = "bool:" & CStr(value)
            Case Else
                retValue = "NoneType:"
        End Select
        EncodeVariable = retValue
    End Function
    
    Private Function VariableVariance(v1, v2)
        Dim retValue
        Select Case VarType(v1)
            Case vbInteger, vbLong, vbSingle, vbDouble
                retValue = Abs(v1 - v2)
            Case Else
                retValue = True 
        End Select
        VariableVariance = retValue
    End Function

    Public Sub Disconnect()
        If m_connected Then
            m_bcpController.Disconnect()
            m_connected = False
        End If
    End Sub
End Class

Sub Glf_BcpSendPlayerVar(args)
    If IsNull(bcpController) Then
        Exit Sub
    End If
    Dim ownProps, kwargs : ownProps = args(0) : kwargs = args(1) 
    Dim player_var : player_var = kwargs(0)
    Dim value : value = kwargs(1)
    Dim prevValue : prevValue = kwargs(2)
    bcpController.SendPlayerVariable player_var, value, prevValue
End Sub

Sub Glf_BcpAddPlayer(playerNum)
    If useBcp Then
        bcpController.Send("player_added?player_num=int:"&playerNum)
    End If
End Sub

Sub Glf_BcpUpdate()
    If IsNull(bcpController) Then
        Exit Sub
    End If
    Dim messages : messages = bcpController.GetMessages()
    If IsEmpty(messages) Then
        Exit Sub
    End If
    If IsArray(messages) and UBound(messages)>-1 Then
        Dim message, parameters, parameter, eventName
        For Each message in messages
            'debug.print(message.Command)
            Select Case message.Command
                case "hello"
                    bcpController.Reset
                case "monitor_start"
                    Dim category : category = message.GetValue("category")
                    If category = "player_vars" Then
                        AddPlayerStateEventListener "score", "bcp_player_var_score", "Glf_BcpSendPlayerVar", 1000, Null
                        AddPlayerStateEventListener "current_ball", "bcp_player_var_ball", "Glf_BcpSendPlayerVar", 1000, Null
                    End If
                case "register_trigger"
                    eventName = message.GetValue("event")
            End Select
        Next
    End If
End Sub

'*****************************************************************************************************************************************
'  Vpx Glf Bcp Controller
'*****************************************************************************************************************************************


Class GlfBallHold

    Private m_name
    Private m_priority
    Private m_mode
    Private m_base_device

    Private m_enabled
    Private m_balls_to_hold
    Private m_hold_devices
    Private m_balls_held
    Private m_hold_queue
    Private m_release_all_events
    Private m_release_one_events
    Private m_release_one_if_full_events

    Public Property Get Name() : Name = m_name : End Property

    Public Property Let EnableEvents(value) : m_base_device.EnableEvents = value : End Property
    Public Property Let DisableEvents(value) : m_base_device.DisableEvents = value : End Property
    
    Public Property Get BallsToHold() : BallsToHold = m_balls_to_hold : End Property
    Public Property Let BallsToHold(value) : m_balls_to_hold = value : End Property

    Public Property Get HoldDevices() : HoldDevices = m_hold_devices : End Property
    Public Property Let HoldDevices(value) : m_hold_devices = value : End Property

    Public Property Get ReleaseAllEvents(): Set ReleaseAllEvents = m_release_all_events: End Property
    Public Property Let ReleaseAllEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_release_all_events.Add newEvent.Name, newEvent
        Next
    End Property

    Public Property Get ReleaseOneEvents(): Set ReleaseOneEvents = m_release_one_events: End Property
    Public Property Let ReleaseOneEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_release_one_events.Add newEvent.Name, newEvent
        Next
    End Property

    Public Property Get ReleaseOneIfFullEvents(): Set ReleaseOneIfFullEvents = m_release_one_if_full_events: End Property
    Public Property Let ReleaseOneIfFullEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_release_one_if_full_events.Add newEvent.Name, newEvent
        Next
    End Property

	Public default Function init(name, mode)
        m_name = "ball_hold_" & name
        m_mode = mode.Name
        m_priority = mode.Priority
        m_balls_to_hold = 0
        m_balls_held = 0
        m_hold_devices = Array()
        Set m_hold_queue = CreateObject("Scripting.Dictionary")
        Set m_release_all_events = CreateObject("Scripting.Dictionary")
        Set m_release_one_events = CreateObject("Scripting.Dictionary")
        Set m_release_one_if_full_events = CreateObject("Scripting.Dictionary")

        Set m_base_device = (new GlfBaseModeDevice)(mode, "ball_hold", Me)
        glf_ball_holds.Add name, Me
        Set Init = Me
	End Function

    Public Sub Activate()
        If UBound(m_base_device.EnableEvents.Keys()) = -1 Then
            Enable()
        End If
    End Sub

    Public Sub Deactivate()
        Disable()
    End Sub

    Public Sub Enable()
        m_enabled = True
        'Add Event Listeners
        Dim device
        For Each device in m_hold_devices
            AddPinEventListener "balldevice_" & device & "_ball_enter", m_mode & "_" & name & "_hold", "BallHoldsEventHandler", m_priority, Array("hold", me, device)
        Next
        Dim evt
        For Each evt in m_release_all_events.Keys
            AddPinEventListener m_release_all_events(evt).EventName, m_mode & "_" & name & "_release_all", "BallHoldsEventHandler", m_priority, Array("release_all", me, m_release_all_events(evt))
        Next
        For Each evt in m_release_one_events.Keys
            AddPinEventListener m_release_one_events(evt).EventName, m_mode & "_" & name & "_release_one", "BallHoldsEventHandler", m_priority, Array("release_one", me, m_release_one_events(evt))
        Next
        For Each evt in m_release_one_if_full_events.Keys
            AddPinEventListener m_release_one_if_full_events(evt).EventName, m_mode & "_" & name & "_release_one_if_full", "BallHoldsEventHandler", m_priority, Array("release_one_if_full", me, m_release_one_if_full_events(evt))
        Next
    End Sub

    Public Sub Disable()
        m_enabled = False
        Dim device
        For Each device in m_hold_devices
            RemovePinEventListener "balldevice_" & device & "_ball_enter", m_mode & "_" & name & "_hold"
        Next
        Dim evt
        For Each evt in m_release_all_events.Keys
            RemovePinEventListener m_release_all_events(evt).EventName, m_mode & "_" & name & "_release_all"
        Next
        For Each evt in m_release_one_events.Keys
            RemovePinEventListener m_release_one_events(evt).EventName, m_mode & "_" & name & "_release_one"
        Next
        For Each evt in m_release_one_if_full_events.Keys
            RemovePinEventListener m_release_one_if_full_events(evt).EventName, m_mode & "_" & name & "_release_one_if_full"
        Next
    End Sub

    Public Function IsFull()
        'Return true if hold is full
        If RemainingSpaceInHold() = 0 Then
            IsFull = True
        Else
            IsFull = False
        End If
    End Function

    Public Function RemainingSpaceInHold()
        'Return the remaining capacity of the hold.
        Dim balls
        balls = m_balls_to_hold - m_balls_held
        If balls < 0 Then
            balls = 0
        End If
        RemainingSpaceInHold = balls
    End Function

    Public Function HoldBall(device, unclaimed_balls)        
        ' Handle result of _ball_enter event of hold_devices.
        If IsFull() Then
            m_base_device.Log "Cannot hold balls. Hold is full."
            HoldBall = unclaimed_balls
            Exit Function
        End If

        If unclaimed_balls <= 0 Then
            HoldBalls = unclaimed_balls
            Exit Function
        End If

        Dim capacity : capacity = RemainingSpaceInHold()
        Dim balls_to_hold
        If unclaimed_balls > capacity Then
            balls_to_hold = capacity
        Else
            balls_to_hold = unclaimed_balls
        End If
        m_balls_held = m_balls_held + balls_to_hold
        m_base_device.Log "Held " & balls_to_hold & " balls"

        Dim kwargs : Set kwargs = GlfKwargs()
        With kwargs
            .Add "balls_held", balls_to_hold
            .Add "total_balls_held", m_balls_held
        End With
        DispatchPinEvent m_name & "_held_ball", kwargs

        'check if we are full now and post event if yes
        If IsFull() Then
            Set kwargs = GlfKwargs()
            With kwargs
                .Add "balls", m_balls_held
            End With
            DispatchPinEvent m_name & "_full", kwargs
        End If

        m_hold_queue.Add device, unclaimed_balls

        HoldBall = unclaimed_balls - balls_to_hold
    End Function

    Public Function ReleaseAll()
        'Release all balls in hold.
        ReleaseAll = ReleaseBalls(m_balls_held)
    End Function

    Public Function ReleaseBalls(balls_to_release)
        'Release all balls and return the actual amount of balls released.
        '
        'Args:
        '----
        '    balls_to_release: number of ball to release from hold
        
        If Ubound(m_hold_queue.Keys()) = -1 Then
            ReleaseBalls = 0
            Exit Function
        End If

        Dim remaining_balls_to_release : remaining_balls_to_release = balls_to_release

        m_base_device.Log "Releasing up to " & balls_to_release & " balls from hold"
        Dim balls_released : balls_released = 0
        Do While Ubound(m_hold_queue.Keys()) > -1
            Dim keys : keys = m_hold_queue.Keys()
            Dim device, balls_held
            device = keys(0)
            balls_held = m_hold_queue(device)
            m_hold_queue.Remove device

            Dim deviceControl : Set deviceControl = glf_ball_devices(device)
            
            Dim balls : balls = balls_held
            Dim balls_in_device : balls_in_device = deviceControl.Balls
            If balls > balls_in_device Then
                balls = balls_in_device
            End If

            If balls > remaining_balls_to_release Then
                m_hold_queue.Add device, balls_held - remaining_balls_to_release
                balls = remaining_balls_to_release
            End If

            deviceControl.EjectBalls balls
            balls_released = balls_released + balls
            remaining_balls_to_release = remaining_balls_to_release - balls
            If remaining_balls_to_release <= 0 Then
               Exit Do
            End If
        Loop

        If balls_released > 0 Then
            Dim kwargs : Set kwargs = GlfKwargs()
            With kwargs
                .Add "balls_released", balls_released
            End With
            DispatchPinEvent m_name & "_balls_released", kwargs
        End If

        m_balls_held = m_balls_held - balls_released
        ReleaseBalls = balls_released
    End Function

    Public Function ToYaml()
        Dim yaml
        Dim evt, x
        yaml = "  " & Replace(m_name, "ball_hold_", "") & ":" & vbCrLf
        If UBound(m_base_device.EnableEvents().Keys) > -1 Then
            yaml = yaml & "    enable_events: "
            x=0
            For Each key in m_base_device.EnableEvents().keys
                yaml = yaml & m_base_device.EnableEvents()(key).Raw
                If x <> UBound(m_base_device.EnableEvents().Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
        If UBound(m_base_device.DisableEvents().Keys) > -1 Then
            yaml = yaml & "    disable_events: "
            x=0
            For Each key in m_base_device.DisableEvents().keys
                yaml = yaml & m_base_device.DisableEvents()(key).Raw
                If x <> UBound(m_base_device.DisableEvents().Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
        yaml = yaml & "    hold_devices: " & Join(m_hold_devices, ",") & vbCrLf
        If m_balls_to_hold > 0 Then
            yaml = yaml & "    balls_to_hold: " & m_balls_to_hold & vbCrLf
        End If
        If UBound(m_release_all_events.Keys) > -1 Then
            yaml = yaml & "    release_all_events: "
            x=0
            For Each key in m_release_all_events.keys
                yaml = yaml & m_release_all_events(key).Raw
                If x <> UBound(m_release_all_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
        If UBound(m_release_one_events.Keys) > -1 Then
            yaml = yaml & "    release_one_events: "
            x=0
            For Each key in m_release_one_events.keys
                yaml = yaml & m_release_one_events(key).Raw
                If x <> UBound(m_release_one_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
        If UBound(m_release_one_if_full_events.Keys) > -1 Then
            yaml = yaml & "    release_one_if_full_events: "
            x=0
            For Each key in m_release_one_if_full_events.keys
                yaml = yaml & m_release_one_if_full_events(key).Raw
                If x <> UBound(m_release_one_if_full_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
        ToYaml = yaml
    End Function

End Class

Function BallHoldsEventHandler(args)
    Dim ownProps, kwargs : ownProps = args(0)
    Dim evt : evt = ownProps(0)
    Dim ball_hold : Set ball_hold = ownProps(1)
    Dim glfEvent
    If IsObject(args(1)) Then
        Set kwargs = args(1)
    Else
        kwargs = args(1) 
    End If

    Select Case evt
        Case "hold"
            kwargs = ball_hold.HoldBall(ownProps(2), kwargs)
        Case "release_all"
            Set glfEvent = ownProps(2)
            If Not IsNull(glfEvent.Condition) Then
                If GetRef(glfEvent.Condition)() = False Then
                    Exit Function
                End If
            End If
            ball_hold.ReleaseAll
        Case "release_one"
            Set glfEvent = ownProps(2)
            If Not IsNull(glfEvent.Condition) Then
                If GetRef(glfEvent.Condition)() = False Then
                    Exit Function
                End If
            End If
            ball_hold.ReleaseBalls 1
        Case "release_one_if_full"
            Set glfEvent = ownProps(2)
            If Not IsNull(glfEvent.Condition) Then
                If GetRef(glfEvent.Condition)() = False Then
                    Exit Function
                End If
            End If
            If ball_hold.IsFull Then
                ball_hold.ReleaseBalls 1
            End If
    End Select

    If IsObject(args(1)) Then
        Set BallHoldsEventHandler = kwargs
    Else
        BallHoldsEventHandler = kwargs
    End If
End Function
Class BallSave

    Private m_name
    Private m_mode
    Private m_active_time
    Private m_grace_period
    Private m_enable_events
    Private m_timer_start_events
    Private m_auto_launch
    Private m_balls_to_save
    Private m_saving_balls
    Private m_enabled
    Private m_timer_started
    Private m_tick
    Private m_in_grace
    Private m_in_hurry_up
    Private m_hurry_up_time
    Private m_debug

    Public Property Get Name(): Name = m_name: End Property
    Public Property Get AutoLaunch(): AutoLaunch = m_auto_launch: End Property
    Public Property Let ActiveTime(value) : m_active_time = Glf_ParseInput(value) : End Property
    Public Property Let GracePeriod(value) : m_grace_period = Glf_ParseInput(value) : End Property
    Public Property Let HurryUpTime(value) : m_hurry_up_time = Glf_ParseInput(value) : End Property
    Public Property Let EnableEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_enable_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let TimerStartEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_timer_start_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let AutoLaunch(value) : m_auto_launch = value : End Property
    Public Property Let BallsToSave(value) : m_balls_to_save = value : End Property
    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(name, mode)
        m_name = "ball_save_" & name
        m_mode = mode.Name
        m_active_time = Null
	    m_grace_period = Null
        m_hurry_up_time = Null
        Set m_enable_events = CreateObject("Scripting.Dictionary")
        Set m_timer_start_events = CreateObject("Scripting.Dictionary")
	    m_auto_launch = False
	    m_balls_to_save = 1
        m_enabled = False
        m_timer_started = False
        m_debug = False
        AddPinEventListener m_mode & "_starting", m_name & "_activate", "BallSaveEventHandler", mode.Priority, Array("activate", Me)
        AddPinEventListener m_mode & "_stopping", m_name & "_deactivate", "BallSaveEventHandler", mode.Priority, Array("deactivate", Me)
	  Set Init = Me
	End Function

    Public Sub Activate()
        Dim evt
        For Each evt in m_enable_events.Keys
            AddPinEventListener m_enable_events(evt).EventName, m_name & "_enable", "BallSaveEventHandler", 1000, Array("enable", Me, evt)
        Next
        For Each evt in m_timer_start_events.Keys
            AddPinEventListener m_timer_start_events(evt).EventName, m_name & "_timer_start", "BallSaveEventHandler", 1000, Array("timer_start", Me, evt)
        Next
    End Sub

    Public Sub Deactivate()
        Disable()
        Dim evt
        For Each evt in m_enable_events.Keys
            RemovePinEventListener m_enable_events(evt).EventName, m_name & "_enable"
        Next
        For Each evt in m_timer_start_events.Keys
            RemovePinEventListener m_timer_start_events(evt).EventName, m_name & "_timer_start"
        Next
    End Sub

    Public Sub Enable(evt)
        If m_enabled = True Then
            Exit Sub
        End If
        If Not IsNull(m_enable_events(evt).Condition) Then
            If GetRef(m_enable_events(evt).Condition)() = False Then
                Exit Sub
            End If
        End If
        m_enabled = True
        m_saving_balls = m_balls_to_save
        Log "Enabling. Auto launch: "&m_auto_launch&", Balls to save: "&m_balls_to_save
        AddPinEventListener "ball_drain", m_name & "_ball_drain", "BallSaveEventHandler", 1000, Array("drain", Me)
        DispatchPinEvent m_name&"_enabled", Null
        If UBound(m_timer_start_events.Keys) = -1 Then
            Log "Timer Starting as no timer start events are set"
            TimerStart()
        End If
    End Sub

    Public Sub Disable
        'Disable ball save
        If m_enabled = False Then
            Exit Sub
        End If
        m_enabled = False
        m_saving_balls = m_balls_to_save
        m_timer_started = False
        Log "Disabling..."
        RemovePinEventListener "ball_drain", m_name & "_ball_drain"
        RemoveDelay "_ball_save_"&m_name&"_disable"
        RemoveDelay m_name&"_grace_period"
        RemoveDelay m_name&"_hurry_up_time"
            
    End Sub

    Sub Drain(ballsToSave)
        If m_enabled = True And ballsToSave > 0 Then
            If m_saving_balls > 0 Then
                m_saving_balls = m_saving_balls -1
            End If
            Log "Ball(s) drained while active. Requesting new one(s). Auto launch: "& m_auto_launch
            DispatchPinEvent m_name&"_saving_ball", Null
            SetDelay m_name&"_queued_release", "BallSaveEventHandler" , Array(Array("queue_release", Me),Null), 1000
            If m_saving_balls = 0 Then
                Disable()
            End If
        End If
    End Sub

    Public Sub TimerStart
        'Start the timer.
        'This is usually called after the ball was ejected while the ball save may have been enabled earlier.
        If m_timer_started=True Or m_enabled=False Then
            Exit Sub
        End If
        m_timer_started=True
        DispatchPinEvent m_name&"_timer_start", Null
        If Not IsNull(m_active_time) Then
            Dim active_time : active_time = GetRef(m_active_time(0))()
            Dim grace_period, hurry_up_time
            If Not IsNull(m_grace_period) Then
                grace_period = GetRef(m_grace_period(0))()
            Else
                grace_period = 0
            End If
            If Not IsNull(m_hurry_up_time) Then
                hurry_up_time = GetRef(m_hurry_up_time(0))()
            Else
                hurry_up_time = 0
            End If
            Log "Starting ball save timer: " & active_time
            Log "gametime: "& gametime & ". disabled at: " & gametime+active_time+grace_period
            SetDelay m_name&"_disable", "BallSaveEventHandler" , Array(Array("disable", Me),Null), active_time+grace_period
            SetDelay m_name&"_grace_period", "BallSaveEventHandler", Array(Array("grace_period", Me),Null), active_time
            SetDelay m_name&"_hurry_up_time", "BallSaveEventHandler", Array(Array("hurry_up_time", Me), Null), active_time-hurry_up_time
        End If
    End Sub

    Public Sub EnterGracePeriod
        DispatchPinEvent m_name & "_grace_period", Null
    End Sub

    Public Sub EnterHurryUpTime
        DispatchPinEvent m_name & "_hurry_up", Null
    End Sub

    Private Sub Log(message)
        If m_debug = True Then
            glf_debugLog.WriteToLog m_name, message
        End If
    End Sub

    Public Function ToYaml
        Dim yaml
        yaml = "  " & Replace(m_name, "ball_save_", "") & ":" & vbCrLf
        yaml = yaml & "    active_time: " & m_active_time(1) & "s" & vbCrLf
        yaml = yaml & "    grace_period: " & m_grace_period(1) & "s" & vbCrLf
        yaml = yaml & "    hurry_up_time: " & m_hurry_up_time(1) & "s" & vbCrLf
        yaml = yaml & "    enable_events: "
        Dim evt,x : x = 0
        For Each evt in m_enable_events.Keys
            yaml = yaml & m_enable_events(evt).Raw
            If x <> UBound(m_enable_events.Keys) Then
                yaml = yaml & ", "
            End If
            x = x +1
        Next
        yaml = yaml & vbCrLf
        yaml = yaml & "    timer_start_events: "
        x=0
        For Each evt in m_timer_start_events.Keys
            yaml = yaml & m_timer_start_events(evt).Raw
            If x <> UBound(m_timer_start_events.Keys) Then
                yaml = yaml & ", "
            End If
            x = x +1
        Next
        yaml = yaml & vbCrLf
        yaml = yaml & "    auto_launch: " & LCase(m_auto_launch) & vbCrLf
        yaml = yaml & "    balls_to_save: " & m_balls_to_save & vbCrLf
        ToYaml = yaml
    End Function
End Class

Function BallSaveEventHandler(args)
    Dim ownProps, ballsToSave : ownProps = args(0) : ballsToSave = args(1) 
    Dim evt : evt = ownProps(0)
    Dim ballSave : Set ballSave = ownProps(1)
    Select Case evt
        Case "activate"
            ballSave.Activate
        Case "deactivate"
            ballSave.Deactivate
        Case "enable"
            ballSave.Enable ownProps(2)
        Case "disable"
            ballSave.Disable
        Case "grace_period"
            ballSave.EnterGracePeriod
        Case "hurry_up_time"
            ballSave.EnterHurryUpTime
        Case "drain"
            If ballsToSave > 0 Then
                ballSave.Drain ballsToSave
                ballsToSave = ballsToSave - 1
            End If
        Case "timer_start"
            ballSave.TimerStart
        Case "queue_release"
            If glf_plunger.HasBall = False And ballInReleasePostion = True Then
                Glf_ReleaseBall(Null)
                If ballSave.AutoLaunch = True Then
                    SetDelay ballSave.Name&"_auto_launch", "BallSaveEventHandler" , Array(Array("auto_launch", ballSave),Null), 500
                End If
            Else
                SetDelay ballSave.Name&"_queued_release", "BallSaveEventHandler" , Array(Array("queue_release", ballSave), Null), 1000
            End If
        Case "auto_launch"
            If glf_plunger.HasBall = True Then
                glf_plunger.Eject
            Else
                SetDelay ballSave.Name&"_auto_launch", "BallSaveEventHandler" , Array(Array("auto_launch", ballSave), Null), 500
            End If
    End Select
    BallSaveEventHandler = ballsToSave
End Function

Class GlfCounter

    Private m_name
    Private m_priority
    Private m_mode
    Private m_enable_events
    Private m_count_events
    Private m_count_complete_value
    Private m_disable_on_complete
    Private m_reset_on_complete
    Private m_events_when_complete
    Private m_persist_state
    Private m_debug

    Private m_count

    Public Property Let EnableEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_enable_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let CountEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_count_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let CountCompleteValue(value) : m_count_complete_value = value : End Property
    Public Property Let DisableOnComplete(value) : m_disable_on_complete = value : End Property
    Public Property Let ResetOnComplete(value) : m_reset_on_complete = value : End Property
    Public Property Let EventsWhenComplete(value) : m_events_when_complete = value : End Property
    Public Property Let PersistState(value) : m_persist_state = value : End Property
    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(name, mode)
        m_name = "counter_" & name
        m_mode = mode.Name
        m_priority = mode.Priority
        m_count = -1
        Set m_enable_events = CreateObject("Scripting.Dictionary")
        Set m_count_events = CreateObject("Scripting.Dictionary")

        AddPinEventListener m_mode & "_starting", m_name & "_activate", "CounterEventHandler", m_priority, Array("activate", Me)
        AddPinEventListener m_mode & "_stopping", m_name & "_deactivate", "CounterEventHandler", m_priority, Array("deactivate", Me)
        Set Init = Me
	End Function

    Public Sub SetValue(value)
        If value = "" Then
            value = 0
        End If
        m_count = value
        If m_persist_state Then
            SetPlayerState m_name & "_state", m_count
        End If
    End Sub

    Public Sub Activate()
        If m_persist_state And m_count > -1 Then
            If GetPlayerState(m_name & "_state")=False Then
                SetValue 0
            Else
                SetValue GetPlayerState(m_name & "_state")
            End If
        Else
            SetValue 0
        End If
        Dim evt
        For Each evt in m_enable_events.Keys
            AddPinEventListener m_enable_events(evt).EventName, m_name & "_enable", "CounterEventHandler", m_priority, Array("enable", Me, evt)
        Next
    End Sub

    Public Sub Deactivate()
        Disable()
        If Not m_persist_state Then
            SetValue -1
        End If
        Dim evt
        For Each evt in m_enable_events.Keys
            RemovePinEventListener m_enable_events(evt).EventName, m_name & "_enable"
        Next
    End Sub

    Public Sub Enable()
        Log "Enabling"
        Dim evt
        For Each evt in m_count_events.Keys
            AddPinEventListener m_count_events(evt).EventName, m_name & "_count", "CounterEventHandler", m_priority, Array("count", Me)
        Next
    End Sub

    Public Sub Disable()
        Log "Disabling"
        Dim evt
        For Each evt in m_count_events.Keys
            RemovePinEventListener m_count_events(evt).EventName, m_name & "_count"
        Next
    End Sub

    Public Sub Count()
        Log "counting: old value: "& m_count & ", new Value: " & m_count+1 & ", target: "& m_count_complete_value
        SetValue m_count + 1
        If m_count = m_count_complete_value Then
            Dim evt
            For Each evt in m_events_when_complete
                DispatchPinEvent evt, Null
            Next
            If m_disable_on_complete Then
                Disable()
            End If
            If m_reset_on_complete Then
                SetValue 0
            End If
        End If
    End Sub

    Private Sub Log(message)
        If m_debug = True Then
            glf_debugLog.WriteToLog m_name, message
        End If
    End Sub
End Class

Function CounterEventHandler(args)
    
    Dim ownProps, kwargs : ownProps = args(0) : kwargs = args(1) 
    Dim evt : evt = ownProps(0)
    Dim counter : Set counter = ownProps(1)
    Select Case evt
        Case "activate"
            counter.Activate
        Case "deactivate"
            counter.Deactivate
        Case "enable"
            counter.Enable
        Case "count"
            counter.Count
    End Select
    CounterEventHandler = kwargs
End Function


Class GlfEventPlayer

    Private m_priority
    Private m_mode
    private m_base_device
    Private m_events
    Private m_eventValues

    Public Property Get Name() : Name = "event_player" : End Property
    Public Property Get Events() : Set Events = m_events : End Property

	Public default Function init(mode)
        m_mode = mode.Name
        m_priority = mode.Priority

        Set m_events = CreateObject("Scripting.Dictionary")
        Set m_eventValues = CreateObject("Scripting.Dictionary")
        Set m_base_device = (new GlfBaseModeDevice)(mode, "event_player", Me)
        Set Init = Me
	End Function

    Public Sub Add(key, value)
        Dim newEvent : Set newEvent = (new GlfEvent)(key)
        m_events.Add newEvent.Name, newEvent
        'msgbox newEvent.Name
        m_eventValues.Add newEvent.Name, value  
    End Sub

    Public Sub Activate()
        Dim evt
        For Each evt In m_events.Keys()
            AddPinEventListener m_events(evt).EventName, m_mode & "_" & m_events(evt).Name & "_event_player_play", "EventPlayerEventHandler", m_priority, Array("play", Me, evt)
        Next
    End Sub

    Public Sub Deactivate()
        Dim evt
        For Each evt In m_events.Keys()
            RemovePinEventListener m_events(evt).EventName, m_mode & "_" & m_events(evt).Name & "_event_player_play"
        Next
    End Sub

    Public Sub FireEvent(evt)
        If Not IsNull(m_events(evt).Condition) Then
            'msgbox m_events(evt).Condition
            If GetRef(m_events(evt).Condition)() = False Then
                Exit Sub
            End If
        End If
        Dim evtValue
        For Each evtValue In m_eventValues(evt)
            DispatchPinEvent evtValue, Null
        Next
    End Sub

    Public Function ToYaml()
        Dim yaml
        Dim evt
        If UBound(m_events.Keys) > -1 Then
            For Each key in m_events.keys
                yaml = yaml & "  " & m_events(key).Raw & ": " & vbCrLf
                For Each evt in m_eventValues(key)
                    yaml = yaml & "    - " & evt & vbCrLf
                Next
            Next
            yaml = yaml & vbCrLf
        End If
        ToYaml = yaml
    End Function

End Class

Function EventPlayerEventHandler(args)
    
    Dim ownProps, kwargs : ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1)
    Else
        kwargs = args(1) 
    End If
    Dim evt : evt = ownProps(0)
    Dim eventPlayer : Set eventPlayer = ownProps(1)
    Select Case evt
        Case "play"
            eventPlayer.FireEvent ownProps(2)
    End Select
    If IsObject(args(1)) Then
        Set EventPlayerEventHandler = kwargs
    Else
        EventPlayerEventHandler = kwargs
    End If
End Function

Class GlfLightPlayer

    Private m_priority
    Private m_mode
    Private m_events
    Private m_debug
    Private m_name
    Private m_value
    private m_base_device

    Public Property Get Name() : Name = m_name : End Property
    
    Public Property Get EventNames() : EventNames = m_events.Keys() : End Property    
    Public Property Get Events(name)
        If m_events.Exists(name) Then
            Set Events = m_events(name)
        Else
            Dim new_event : Set new_event = (new GlfLightPlayerEventItem)()
            m_events.Add name, new_event
            Set Events = new_event
        End If
    End Property

	Public default Function init(mode)
        m_name = "light_player_" & mode.name
        m_mode = mode.Name
        m_priority = mode.Priority
        Set m_events = CreateObject("Scripting.Dictionary")
        
        Set m_base_device = (new GlfBaseModeDevice)(mode, "light_player", Me)
        Set Init = Me
	End Function

    Public Sub Activate()
        Dim evt
        For Each evt In m_events.Keys()
            AddPinEventListener evt, m_mode & "_light_player_play", "LightPlayerEventHandler", -m_priority, Array("play", Me, m_events(evt), evt)
        Next
    End Sub

    Public Sub Deactivate()
        Dim evt
        For Each evt In m_events.Keys()
            RemovePinEventListener evt, m_mode & "_light_player_play"
            PlayOff evt, m_events(evt)
        Next
    End Sub

    Public Sub ReloadLights()
        m_base_device.Log "Reloading Lights"
        Dim evt
        For Each evt in m_events.Keys()
            Dim lightName, light
            'First get light counts
            For Each lightName in m_events(evt).LightNames
                Set light = m_events(evt).Lights(lightName)
                Dim lightsCount, x,tagLight, tagLights
                lightsCount = 0
                If Not glf_lightNames.Exists(lightName) Then
                    tagLights = glf_lightTags(lightName).Keys()
                    m_base_device.Log "Tag Lights: " & Join(tagLights)
                    For Each tagLight in tagLights
                        lightsCount = lightsCount + 1
                    Next
                Else
                    lightsCount = lightsCount + 1
                End If
            Next
            m_base_device.Log "Adding " & lightsCount & " lights for event: " & evt 
            Dim seqArray
            ReDim seqArray(lightsCount-1)
            x=0
            'Build Seq
            For Each lightName in m_events(evt).LightNames
                Set light = m_events(evt).Lights(lightName)

                If Not glf_lightNames.Exists(lightName) Then
                    tagLights = glf_lightTags(lightName).Keys()
                    For Each tagLight in tagLights
                        seqArray(x) = tagLight & "|100|" & light.Color
                        x=x+1
                    Next
                Else
                    seqArray(x) = lightName & "|100|" & light.Color
                    x=x+1
                End If
            Next
            m_base_device.Log "Light List: " & Join(seqArray)
            m_events(evt).LightSeq = seqArray
        Next   
    End Sub

    Public Sub Play(evt, lights)
        LightPlayerCallbackHandler evt, Array(lights.LightSeq), m_name, m_priority
    End Sub

    Public Sub PlayOff(evt, lights)
        LightPlayerCallbackHandler evt, Null, m_name, m_priority
    End Sub

    Public Function ToYaml()
        Dim yaml
        Dim evt
        If UBound(m_events.Keys) > -1 Then
            For Each key in m_events.keys
                yaml = yaml & "  " & key & ": " & vbCrLf
                yaml = yaml & m_events(key).ToYaml()
            Next
            yaml = yaml & vbCrLf
        End If
        ToYaml = yaml
    End Function
End Class

Class GlfLightPlayerEventItem
	Private m_lights, m_lightSeq
  
    Public Property Get LightNames() : LightNames = m_lights.Keys() : End Property
    Public Property Get Lights(name)
        If m_lights.Exists(name) Then
            Set Lights = m_lights(name)
        Else
            Dim new_event : Set new_event = (new GlfLightPlayerItem)()
            m_lights.Add name, new_event
            Set Lights = new_event
        End If    
    End Property

    Public Property Get LightSeq() : LightSeq = m_lightSeq : End Property
    Public Property Let LightSeq(input) : m_lightSeq = input : End Property

    Public Function ToYaml()
        Dim yaml
        If UBound(m_lights.Keys) > -1 Then
            For Each key in m_lights.keys
                yaml = yaml & "    " & key & ": " & vbCrLf
                yaml = yaml & m_lights(key).ToYaml()
            Next
            yaml = yaml & vbCrLf
        End If
        ToYaml = yaml
    End Function

	Public default Function init()
        Set m_lights = CreateObject("Scripting.Dictionary")
        m_lightSeq = Array()
        Set Init = Me
	End Function

End Class

Class GlfLightPlayerItem
	Private m_light, m_color, m_fade, m_priority
  
    Public Property Get Light(): Light = m_light: End Property
    Public Property Let Light(input): m_light = input: End Property

    Public Property Get Color(): Color = m_color: End Property
    Public Property Let Color(input): m_color = input: End Property

    Public Property Get Fade(): Fade = m_fade: End Property
    Public Property Let Fade(input): m_fade = input: End Property

    Public Property Get Priority(): Priority = m_priority: End Property
    Public Property Let Priority(input): m_priority = input: End Property      
  
    Public Function ToYaml()
        Dim yaml
        yaml = yaml & "      color: " & m_color & vbCrLf
        If Not IsEmpty(m_fade) Then
            yaml = yaml & "      fade: " & m_fade & vbCrLf
        End If
        If m_priority <> 0 Then
            yaml = yaml & "      priority: " & m_priority & vbCrLf
        End If
        ToYaml = yaml
    End Function

	Public default Function init()
        m_color = "ffffff"
        m_fade = Empty
        m_priority = 0
        Set Init = Me
	End Function

End Class

Function LightPlayerCallbackHandler(key, lights, mode, priority)
        
    Dim lightParts, light
    If IsNull(lights) Then
        
        glf_debugLog.WriteToLog "LightPlayer", "Removing Light Seq" & mode & "_" & key
    Else
        If UBound(lights) = -1 Then
            Exit Function
        End If
        If IsArray(lights) Then
            'glf_debugLog.WriteToLog "LightPlayer", "Adding Light Seq" & Join(lights) & ". Key:" & mode & "_" & key    
        Else
            glf_debugLog.WriteToLog "LightPlayer", "Lights not an array!?"
        End If
        'glf_debugLog.WriteToLog "LightPlayer", "Adding Light Seq" & Join(lights) & ". Key:" & mode & "_" & key
        Dim lightStack
        For Each light in lights(0)
            lightParts = Split(light,"|")
            
            Set lightStack = glf_lightStacks(lightParts(0))
            
            If lightStack.IsEmpty() Then
                ' If stack is empty, push the color onto the stack and set the light color
                lightStack.Push mode & "_" & key, lightParts(2), priority
                Glf_SetLight lightParts(0), lightParts(2)
            Else
                Dim current
                Set current = lightStack.Peek()
                If priority >= current("Priority") Then
                    ' If the new priority is higher, push it onto the stack and change the light color
                    lightStack.Push mode & "_" & key, lightParts(2), priority
                    Glf_SetLight lightParts(0), lightParts(2)
                Else
                    ' Otherwise, just push it onto the stack without changing the light color
                    lightStack.Push mode & "_" & key, lightParts(2), priority
                End If
            End If
        Next
        
        'TODO - Refactor this, this is the light fading. need to handle this differently
        'For Each light in lights(0)
        '    lightParts = Split(light, "|")
        '    If IsArray(lightParts) Then
        '        If IsNull(lightCtrl.GetLightIdx(lightParts(0))) Then
        '           Dim tagLight, tagLights
        '            tagLights = lightCtrl.GetLightsForTag(lightParts(0))
        '            For Each tagLight in tagLights
        '                ProcessLight tagLight, lightParts, key
        '                If UBound(lightParts) = 2 Then
        '                    lightCtrl.FadeLightToColor tagLight, lightParts(1), lightParts(2), mode & "_" & key & "_" & tagLight, priority
        '                End If
        '            Next
        '        Else
        '            If UBound(lightParts) = 2 Then
        '                lightCtrl.FadeLightToColor lightParts(0), lightParts(1), lightParts(2), mode & "_" & key & "_" & lightParts(0), priority
        '            End If
        '        End If
        '    End If
        'Next
    End If
End Function

Function LightPlayerEventHandler(args)
    Dim ownProps : ownProps = args(0)
    Dim evt : evt = ownProps(0)
    Dim LightPlayer : Set LightPlayer = ownProps(1)
    Select Case evt
        Case "activate"
            LightPlayer.Activate
        Case "deactivate"
            LightPlayer.Deactivate
        Case "play"
            LightPlayer.Play ownProps(3), ownProps(2)
    End Select
    LightPlayerEventHandler = Null
End Function

Class GlfLightStack
    Private stack

    Public default Function Init()
        ReDim stack(-1)  ' Initialize an empty array
        Set Init = Me
    End Function

    Public Sub Push(key, color, priority)
        Dim found : found = False
        Dim i

        ' Check if the key already exists in the stack and update it
        For i = LBound(stack) To UBound(stack)
            If stack(i)("Key") = key Then
                ' Replace the existing item if the key matches
                Set stack(i) = CreateColorPriorityObject(key, color, priority)
                found = True
                Exit For
            End If
        Next
        
        If Not found Then
            ' Insert the new item into the array maintaining priority order
            ReDim Preserve stack(UBound(stack) + 1)
            Set stack(UBound(stack)) = CreateColorPriorityObject(key, color, priority)
            SortStackByPriority
        End If
    End Sub

    ' Pop the top color from the stack
    Public Function Pop()
        If UBound(stack) >= 0 Then
            Set Pop = stack(UBound(stack))
            ReDim Preserve stack(UBound(stack) - 1)
        Else
            Set Pop = Nothing
        End If
    End Function

    ' Get the current top color without popping it
    Public Function Peek()
        If UBound(stack) >= 0 Then
            Set Peek = stack(UBound(stack))
        Else
            Set Peek = Nothing
        End If
    End Function

    ' Check if the stack is empty
    Public Function IsEmpty()
        IsEmpty = (UBound(stack) < 0)
    End Function

    ' Create a color-priority object
    Private Function CreateColorPriorityObject(key, color, priority)
        Dim colorPriorityObject
        Set colorPriorityObject = CreateObject("Scripting.Dictionary")
        colorPriorityObject.Add "Key", key
        colorPriorityObject.Add "Color", color
        colorPriorityObject.Add "Priority", priority
        Set CreateColorPriorityObject = colorPriorityObject
    End Function

    ' Sort the stack by priority (descending)
    Private Sub SortStackByPriority()
        Dim i, j
        Dim temp
        For i = LBound(stack) To UBound(stack) - 1
            For j = i + 1 To UBound(stack)
                If stack(i)("Priority") < stack(j)("Priority") Then
                    ' Swap the elements
                    Set temp = stack(i)
                    Set stack(i) = stack(j)
                    Set stack(j) = temp
                End If
            Next
        Next
    End Sub
End Class

Class GlfBaseModeDevice

    Private m_mode
    Private m_priority
    Private m_enable_events
    Private m_disable_events
    Private m_device
    Private m_parent
    Private m_debug

    Public Property Get EnableEvents(): Set EnableEvents = m_enable_events: End Property
    Public Property Let EnableEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_enable_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Get DisableEvents(): Set DisableEvents = m_disable_events: End Property
    Public Property Let DisableEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_disable_events.Add newEvent.Name, newEvent
        Next
    End Property

    Public Property Get Mode(): Set Mode = m_mode: End Property

    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(mode, device, parent)
        Set m_mode = mode
        m_priority = mode.Priority
        m_device = device
        Set m_parent = parent
        m_debug = mode.Debug

        Set m_enable_events = CreateObject("Scripting.Dictionary")
        Set m_disable_events = CreateObject("Scripting.Dictionary")

        AddPinEventListener m_mode.Name & "_starting", m_device & "_" & m_parent.Name & "_activate", "BaseModeDeviceEventHandler", m_priority, Array("activate", Me)
        AddPinEventListener m_mode.Name & "_stopping", m_device & "_" & m_parent.Name & "_deactivate", "BaseModeDeviceEventHandler", m_priority, Array("deactivate", Me)
        Set Init = Me
	End Function

    Public Sub Activate()
        Log "Activating"
        Dim evt
        For Each evt In m_enable_events.Keys()
            AddPinEventListener m_enable_events(evt).EventName, m_mode.Name & m_device & "_" & m_parent.Name & "_enable", "BaseModeDeviceEventHandler", m_priority, Array("enable", m_parent, m_enable_events(evt))
        Next
        For Each evt In m_disable_events.Keys()
            AddPinEventListener m_disable_events(evt).EventName, m_mode.Name & m_device & "_" & m_parent.Name & "_disable", "BaseModeDeviceEventHandler", m_priority, Array("disable", m_parent, m_disable_events(evt))
        Next
        m_parent.Activate
    End Sub

    Public Sub Deactivate()
        Log "Deactivating"
        Dim evt
        For Each evt In m_enable_events.Keys()
            RemovePinEventListener m_enable_events(evt).EventName, m_mode.Name & m_device & "_" & m_parent.Name & "_enable"
        Next
        For Each evt In m_disable_events.Keys()
            RemovePinEventListener m_disable_events(evt).EventName, m_mode.Name & m_device & "_" & m_parent.Name & "_disable"
        Next
        m_parent.Deactivate
    End Sub

    Public Sub Log(message)
        If m_debug = True Then
            glf_debugLog.WriteToLog m_mode.Name & m_device & "_" & m_parent.Name, message
        End If
    End Sub
End Class


Function BaseModeDeviceEventHandler(args)
    Dim ownProps, kwargs : ownProps = args(0) : kwargs = args(1) 
    Dim evt : evt = ownProps(0)
    Dim device : Set device = ownProps(1)
    Dim glfEvent
    Select Case evt
        Case "activate"
            device.Activate
        Case "deactivate"
            device.Deactivate
        Case "enable"
            Set glfEvent = ownProps(2)
            If Not IsNull(glfEvent.Condition) Then
                If GetRef(glfEvent.Condition)() = False Then
                    Exit Function
                End If
            End If
            device.Enable
        Case "disable"
            Set glfEvent = ownProps(2)
            If Not IsNull(glfEvent.Condition) Then
                If GetRef(glfEvent.Condition)() = False Then
                    Exit Function
                End If
            End If
            device.Disable
    End Select
    BaseModeDeviceEventHandler = kwargs
End Function

Class Mode

    Private m_name
    Private m_start_events
    Private m_stop_events
    private m_priority
    Private m_debug
    Private m_started

    Private m_ballsaves
    Private m_counters
    Private m_multiball_locks
    Private m_multiballs
    Private m_shots
    Private m_shot_groups
    Private m_ballholds
    Private m_timers
    Private m_lightplayer
    Private m_segment_display_player
    Private m_showplayer
    Private m_variableplayer
    Private m_eventplayer
    Private m_shot_profiles

    Public Property Get Name(): Name = m_name: End Property
    Public Property Get Priority(): Priority = m_priority: End Property
    Public Property Get Debug(): Debug = m_debug: End Property
    Public Property Get LightPlayer()
        If IsNull(m_lightplayer) Then
            Set m_lightplayer = (new GlfLightPlayer)(Me)
        End If
        Set LightPlayer = m_lightplayer
    End Property
    Public Property Get ShowPlayer()
        If IsNull(m_showplayer) Then
            Set m_showplayer = (new GlfShowPlayer)(Me)
        End If
        Set ShowPlayer = m_showplayer
    End Property
    Public Property Get SegmentDisplayPlayer()
        If IsNull(m_segment_display_player) Then
            Set m_segment_display_player = (new GlfSegmentDisplayPlayer)(Me)
        End If
        Set SegmentDisplayPlayer = m_segment_display_player
    End Property
    Public Property Get EventPlayer() : Set EventPlayer = m_eventplayer: End Property
    Public Property Get VariablePlayer(): Set VariablePlayer = m_variableplayer: End Property

    Public Property Get ShotProfiles(name)
        If m_shot_profiles.Exists(name) Then
            Set ShotProfiles = m_shot_profiles(name)
        Else
            Dim new_shotprofile : Set new_shotprofile = (new GlfShotProfile)(name)
            m_shot_profiles.Add name, new_shotprofile
            Glf_ShotProfiles.Add name, new_shotprofile
            Set ShotProfiles = new_shotprofile
        End If
    End Property

    Public Property Get BallSaves(name)
        If m_ballsaves.Exists(name) Then
            Set BallSaves = m_ballsaves(name)
        Else
            Dim new_ballsave : Set new_ballsave = (new BallSave)(name, Me)
            m_ballsaves.Add name, new_ballsave
            Set BallSaves = new_ballsave
        End If
    End Property

    Public Property Get Timers(name)
        If m_timers.Exists(name) Then
            Set Timers = m_timers(name)
        Else
            Dim new_timer : Set new_timer = (new GlfTimer)(name, Me)
            m_timers.Add name, new_timer
            Set Timers = new_timer
        End If
    End Property

    Public Property Get Counters(name)
        If m_counters.Exists(name) Then
            Set Counters = m_counters(name)
        Else
            Dim new_counter : Set new_counter = (new GlfCounter)(name, Me)
            m_counters.Add name, new_counter
            Set Counters = new_counter
        End If
    End Property

    Public Property Get MultiballLocks(name)
        If m_multiball_locks.Exists(name) Then
            Set MultiballLocks = m_multiball_locks(name)
        Else
            Dim new_multiball_lock : Set new_multiball_lock = (new GlfMultiballLocks)(name, Me)
            m_multiball_locks.Add name, new_multiball_lock
            Set MultiballLocks = new_multiball_lock
        End If
    End Property

    Public Property Get Multiballs(name)
        If m_multiballs.Exists(name) Then
            Set Multiballs = m_multiballs(name)
        Else
            Dim new_multiball : Set new_multiball = (new GlfMultiballs)(name, Me)
            m_multiballs.Add name, new_multiball
            Set Multiballs = new_multiball
        End If
    End Property

    Public Property Get ModeShots(): ModeShots = m_shots.Items(): End Property
    Public Property Get Shots(name)
        If m_shots.Exists(name) Then
            Set Shots = m_shots(name)
        Else
            Dim new_shot : Set new_shot = (new GlfShot)(name, Me)
            m_shots.Add name, new_shot
            Set Shots = new_shot
        End If
    End Property

    Public Property Get ShotGroups(name)
        If m_shot_groups.Exists(name) Then
            Set ShotGroups = m_shot_groups(name)
        Else
            Dim new_shot_group : Set new_shot_group = (new GlfShotGroup)(name, Me)
            m_shot_groups.Add name, new_shot_group
            Set ShotGroups = new_shot_group
        End If
    End Property

    Public Property Get BallHolds(name)
        If m_ballholds.Exists(name) Then
            Set BallHolds = m_shots(name)
        Else
            Dim new_ballhold : Set new_ballhold = (new GlfBallHold)(name, Me)
            m_ballholds.Add name, new_ballhold
            Set BallHolds = new_ballhold
        End If
    End Property

    Public Property Let StartEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_start_events.Add newEvent.Name, newEvent
            AddPinEventListener newEvent.EventName, m_name & "_start", "ModeEventHandler", m_priority, Array("start", Me, newEvent)
        Next
    End Property
    
    Public Property Let StopEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_stop_events.Add newEvent.Name, newEvent
            AddPinEventListener newEvent.EventName, m_name & "_stop", "ModeEventHandler", m_priority+1, Array("stop", Me, newEvent)
        Next
    End Property
    Public Property Let Debug(value)
        m_debug = value
    End Property

	Public default Function init(name, priority)
        m_name = "mode_"&name
        m_priority = priority
        m_started = False
        Set m_start_events = CreateObject("Scripting.Dictionary")
        Set m_stop_events = CreateObject("Scripting.Dictionary")
        Set m_ballsaves = CreateObject("Scripting.Dictionary")
        Set m_counters = CreateObject("Scripting.Dictionary")
        Set m_timers = CreateObject("Scripting.Dictionary")
        Set m_multiball_locks = CreateObject("Scripting.Dictionary")
        Set m_multiballs = CreateObject("Scripting.Dictionary")
        Set m_shots = CreateObject("Scripting.Dictionary")
        Set m_shot_groups = CreateObject("Scripting.Dictionary")
        Set m_ballholds = CreateObject("Scripting.Dictionary")
        Set m_shot_profiles = CreateObject("Scripting.Dictionary")
        m_lightplayer = Null
        m_showplayer = Null
        m_segment_display_player = Null
        Set m_eventplayer = (new GlfEventPlayer)(Me)
        Set m_variableplayer = (new GlfVariablePlayer)(Me)
        Dim newEvent : Set newEvent = (new GlfEvent)("ball_ended")
        AddPinEventListener newEvent.EventName, m_name & "_stop", "ModeEventHandler", m_priority+1, Array("stop", Me, newEvent)
        Set Init = Me
	End Function

    Public Sub StartMode()
        Log "Starting"
        m_started=True
        DispatchPinEvent m_name & "_starting", Null
        DispatchPinEvent m_name & "_started", Null
        Log "Started"
    End Sub

    Public Sub StopMode()
        If m_started = True Then
            m_started = False
            Log "Stopping"
            DispatchPinEvent m_name & "_stopping", Null
            DispatchPinEvent m_name & "_stopped", Null
            Log "Stopped"
        End If
    End Sub

    Private Sub Log(message)
        If m_debug = True Then
            glf_debugLog.WriteToLog m_name, message
        End If
    End Sub

    Public Function ToYaml()
        dim yaml, child
        yaml = "#config_version=6" & vbCrLf & vbCrLf

        yaml = yaml & "mode:" & vbCrLf

        If UBound(m_start_events.Keys) > -1 Then
            yaml = yaml & "  start_events: "
            x=0
            For Each key in m_start_events.keys
                yaml = yaml & m_start_events(key).Raw
                If x <> UBound(m_start_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
        If UBound(m_stop_events.Keys) > -1 Then
            yaml = yaml & "  stop_events: "
            x=0
            For Each key in m_stop_events.keys
                yaml = yaml & m_stop_events(key).Raw
                If x <> UBound(m_stop_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If

        yaml = yaml & "  priority: " & m_priority & vbCrLf
        
        If UBound(m_ballsaves.Keys)>-1 Then
            yaml = yaml & vbCrLf
            yaml = yaml & "ball_saves: " & vbCrLf
            For Each child in m_ballsaves.Keys
                yaml = yaml & m_ballsaves(child).ToYaml
            Next
        End If
        
        If UBound(m_shot_profiles.Keys)>-1 Then
            yaml = yaml & vbCrLf
            yaml = yaml & "shot_profiles: " & vbCrLf
            For Each child in m_shot_profiles.Keys
                yaml = yaml & m_shot_profiles(child).ToYaml
            Next
        End If
        
        If UBound(m_shots.Keys)>-1 Then
            yaml = yaml & vbCrLf
            yaml = yaml & "shots: " & vbCrLf
            For Each child in m_shots.Keys
                yaml = yaml & m_shots(child).ToYaml
            Next
        End If
        
        If UBound(m_shot_groups.Keys)>-1 Then
            yaml = yaml & vbCrLf
            yaml = yaml & "shot_groups: " & vbCrLf
            For Each child in m_shot_groups.Keys
                yaml = yaml & m_shot_groups(child).ToYaml
            Next
        End If
        
        If UBound(m_eventplayer.Events.Keys)>-1 Then
            yaml = yaml & vbCrLf
            yaml = yaml & "event_player: " & vbCrLf
            yaml = yaml & m_eventplayer.ToYaml()
        End If
        
        If Not IsNull(m_showPlayer) Then
            If UBound(m_showplayer.EventShows)>-1 Then
                yaml = yaml & vbCrLf
                yaml = yaml & "show_player: " & vbCrLf
                yaml = yaml & m_showplayer.ToYaml()
            End If
        End If
        
        If Not IsNull(m_lightplayer) Then
            If UBound(m_lightplayer.EventNames)>-1 Then
                yaml = yaml & vbCrLf
                yaml = yaml & "light_player: " & vbCrLf
                For Each child in m_lightplayer.EventNames
                    yaml = yaml & m_lightplayer.ToYaml()
                Next
            End If
        End If

        If Not IsNull(m_segment_display_player) Then
            If UBound(m_segment_display_player.EventNames)>-1 Then
                yaml = yaml & vbCrLf
                yaml = yaml & "segment_display_player: " & vbCrLf
                For Each child in m_segment_display_player.EventNames
                    yaml = yaml & m_segment_display_player.ToYaml()
                Next
            End If
        End If
        
        If UBound(m_ballholds.Keys)>-1 Then
            yaml = yaml & vbCrLf
            yaml = yaml & "ball_holds: " & vbCrLf
            For Each child in m_ballholds.Keys
                yaml = yaml & m_ballholds(child).ToYaml
            Next
        End If
        yaml = yaml & vbCrLf
        
        Dim fso, modesFolder, TxtFileStream
        Set fso = CreateObject("Scripting.FileSystemObject")
        modesFolder = "glf_mpf\modes\" & Replace(m_name, "mode_", "") & "\config"

        If Not fso.FolderExists("glf_mpf") Then
            fso.CreateFolder "glf_mpf"
        End If

        Dim currentFolder
        Dim folderParts
        Dim i
    
        ' Split the path into parts
        folderParts = Split(modesFolder, "\")
        
        ' Initialize the current folder as the root
        currentFolder = folderParts(0)
    
        ' Iterate over each part of the path and create folders as needed
        For i = 1 To UBound(folderParts)
            currentFolder = currentFolder & "\" & folderParts(i)
            If Not fso.FolderExists(currentFolder) Then
                fso.CreateFolder(currentFolder)
            End If
        Next


        
        Set TxtFileStream = fso.OpenTextFile(modesFolder & "\" & Replace(m_name, "mode_", "") & ".yaml", 2, True)
        TxtFileStream.WriteLine yaml
        TxtFileStream.Close

        ToYaml = yaml
    End Function
End Class

Function ModeEventHandler(args)
    Dim ownProps, kwargs : ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1)
    Else
        kwargs = args(1) 
    End If
    Dim evt : evt = ownProps(0)
    Dim mode : Set mode = ownProps(1)
    Dim glfEvent
    Select Case evt
        Case "start"
            Set glfEvent = ownProps(2)
            If Not IsNull(glfEvent.Condition) Then
                If GetRef(glfEvent.Condition)() = False Then
                    Exit Function
                End If
            End If
            mode.StartMode
        Case "stop"
            Set glfEvent = ownProps(2)
            If Not IsNull(glfEvent.Condition) Then
                If GetRef(glfEvent.Condition)() = False Then
                    Exit Function
                End If
            End If
            mode.StopMode
        Case "started"
            DispatchPinEvent mode.Name & "_started", Null
        Case "stopped"
            DispatchPinEvent mode.Name & "_stopped", Null
    End Select
    If IsObject(args(1)) Then
        Set ModeEventHandler = kwargs
    Else
        ModeEventHandler = kwargs
    End If
End Function

Class GlfMultiballLocks

    Private m_name
    Private m_lock_device
    Private m_priority
    Private m_mode
    Private m_base_device
    Private m_enable_events
    Private m_disable_events
    Private m_balls_to_lock
    Private m_balls_locked
    Private m_balls_to_replace
    Private m_lock_events
    Private m_reset_events
    Private m_debug

    Public Property Get Name(): Name = m_name: End Property
    Public Property Get GetValue(value)
        Select Case value
            Case "locked_balls":
                GetValue = m_balls_locked
        End Select
    End Property
    Public Property Get LockDevice() : LockDevice = m_lock_device : End Property
    Public Property Let LockDevice(value) : m_lock_device = value : End Property
    Public Property Let EnableEvents(value) : m_base_device.EnableEvents = value : End Property
    Public Property Let DisableEvents(value) : m_base_device.DisableEvents = value : End Property
    Public Property Let BallsToLock(value) : m_balls_to_lock = value : End Property
    Public Property Let LockEvents(value) : m_lock_events = value : End Property
    Public Property Let ResetEvents(value) : m_reset_events = value : End Property
    Public Property Let BallsToReplace(value) : m_balls_to_replace = value : End Property
    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(name, mode)
        m_name = "multiball_locks_" & name
        m_mode = mode.Name
        m_priority = mode.Priority
        m_lock_events = Array()
        m_reset_events = Array()
        m_lock_device = Array()
        m_balls_to_lock = 0
        m_balls_to_replace = -1
        m_balls_locked = 0
        Set m_base_device = (new GlfBaseModeDevice)(mode, "multiball_locks", Me)
        glf_multiball_locks.Add name, Me
        Set Init = Me
	End Function

    Public Sub Activate()
        If UBound(m_base_device.EnableEvents.Keys()) = -1 Then
            Enable()
        End If
    End Sub

    Public Sub Deactivate()
        Disable()
    End Sub

    Public Sub Enable()
        m_base_device.Log "Enabling"
        AddPinEventListener "balldevice_" & m_lock_device & "_ball_enter", m_mode & "_" & name & "_lock", "MultiballLocksHandler", m_priority, Array("lock", me, m_lock_device)
        Dim evt
        For Each evt in m_lock_events
            AddPinEventListener evt, m_name & "_ball_locked", "MultiballLocksHandler", m_priority, Array("lock", Me, Null)
        Next
        For Each evt in m_reset_events
            AddPinEventListener evt, m_name & "_reset", "MultiballLocksHandler", m_priority, Array("reset", Me)
        Next
    End Sub

    Public Sub Disable()
        m_base_device.Log "Disabling"
        RemovePinEventListener "balldevice_" & m_lock_device & "_ball_enter", m_mode & "_" & name & "_lock"
        Dim evt
        For Each evt in m_lock_events
            RemovePinEventListener evt, m_name & "_ball_locked"
        Next
        For Each evt in m_reset_events
            RemovePinEventListener evt, m_name & "_reset"
        Next
    End Sub

    Public Function Lock(device, unclaimed_balls)
        
        If unclaimed_balls <= 0 Then
            Lock = unclaimed_balls
            Exit Function
        End If
        
        Dim balls_locked
        If GetPlayerState(m_name & "_balls_locked") = False Then
            balls_locked = 1
        Else
            balls_locked = GetPlayerState(m_name & "_balls_locked") + 1
        End If
        If balls_locked > m_balls_to_lock Then
            m_base_device.Log "Cannot lock balls. Lock is full."
            Lock = unclaimed_balls
            Exit Function
        End If

        SetPlayerState m_name & "_balls_locked", balls_locked
        

        If Not IsNull(device) Then
            
            If glf_ball_devices(device).Balls() > balls_locked Then
                glf_ball_devices(device).Eject()
            Else
                If m_balls_to_replace = -1 Or balls_locked <= m_balls_to_replace Then
                    glf_BIP = glf_BIP - 1
                    SetDelay m_name & "_queued_release", "MultiballLocksHandler" , Array(Array("queue_release", Me),Null), 1000
                End If
            End If
        End If

        DispatchPinEvent m_name & "_locked_ball", balls_locked
        
        If balls_locked = m_balls_to_lock Then
            DispatchPinEvent m_name & "_full", balls_locked
        End If

        Lock = unclaimed_balls - 1
    End Function

    Public Sub Reset
        SetPlayerState m_name & "_balls_locked", 0
    End Sub

End Class

Function MultiballLocksHandler(args)
    
    Dim ownProps, kwargs : ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1)
    Else
        kwargs = args(1) 
    End If
    Dim evt : evt = ownProps(0)
    Dim multiball : Set multiball = ownProps(1)
    Select Case evt
        Case "activate"
            multiball.Activate
        Case "deactivate"
            multiball.Deactivate
        Case "enable"
            multiball.Enable
        Case "disable"
            multiball.Disable
        Case "lock"
            kwargs = multiball.Lock(ownProps(2), kwargs)
        Case "reset"
            multiball.Reset
        Case "queue_release"
            If glf_plunger.HasBall = False And ballInReleasePostion = True Then
                Glf_ReleaseBall(Null)
                SetDelay multiball.Name&"_auto_launch", "MultiballLocksHandler" , Array(Array("auto_launch", multiball),Null), 500
            Else
                SetDelay multiball.Name&"_queued_release", "MultiballLocksHandler" , Array(Array("queue_release", multiball), Null), 1000
            End If
        Case "auto_launch"
            If glf_plunger.HasBall = True Then
                glf_plunger.Eject
            Else
                SetDelay multiball.Name&"_auto_launch", "MultiballLocksHandler" , Array(Array("auto_launch", multiball), Null), 500
            End If
    End Select
    If IsObject(args(1)) Then
        Set MultiballLocksHandler = kwargs
    Else
        MultiballLocksHandler = kwargs
    End If
End Function
Class GlfMultiballs

    Private m_name
    Private m_configname
    Private m_mode
    Private m_priority
    Private m_base_device
    Private m_ball_count
    Private m_ball_lock
    Private m_add_a_ball_events
    Private m_add_a_ball_grace_period
    Private m_add_a_ball_hurry_up_time
    Private m_add_a_ball_shoot_again
    Private m_ball_count_type
    Private m_disable_events
    Private m_enable_events
    Private m_grace_period
    Private m_grace_period_enabled
    Private m_hurry_up
    Private m_hurry_up_enabled
    Private m_replace_balls_in_play
    Private m_reset_events
    Private m_shoot_again
    Private m_source_playfield
    Private m_start_events
    Private m_start_or_add_a_ball_events
    Private m_stop_events
    Private m_balls_added_live
    Private m_balls_live_target
    Private m_enabled
    Private m_shoot_again_enabled
    Private m_debug

    Public Property Get Name(): Name = m_name: End Property

    Public Property Let BallCount(value): Set m_ball_count = CreateGlfInput(value): End Property
    Public Property Let AddABallEvents(value): m_add_a_ball_events = value: End Property
    Public Property Let AddABallGracePeriod(value): Set m_add_a_ball_grace_period = CreateGlfInput(value): End Property
    Public Property Let AddABallHurryUpTime(value): Set m_add_a_ball_hurry_up_time = CreateGlfInput(value): End Property
    Public Property Let AddABallShootAgain(value): Set m_add_a_ball_shoot_again = CreateGlfInput(value): End Property
    Public Property Let BallCountType(value): m_ball_count_type = value: End Property
    Public Property Let BallLock(value): m_ball_lock = value: End Property
    Public Property Let EnableEvents(value) : m_base_device.EnableEvents = value : End Property
    Public Property Let DisableEvents(value) : m_base_device.DisableEvents = value : End Property
    Public Property Let GracePeriod(value): Set m_grace_period = CreateGlfInput(value): End Property
    Public Property Let HurryUp(value): Set m_hurry_up = CreateGlfInput(value): End Property
    Public Property Let ReplaceBallsInPlay(value): m_replace_balls_in_play = value: End Property
    Public Property Let ResetEvents(value): m_reset_events = value: End Property
    Public Property Let ShootAgain(value): Set m_shoot_again = CreateGlfInput(value): End Property
    Public Property Let StartEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_start_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let StartOrAddABallEvents(value): m_start_or_add_a_ball_events = value: End Property
    Public Property Let StopEvents(value): m_stop_events = value: End Property
    Public Property Let Debug(value): m_debug = value: End Property

    Public default Function init(name, mode)
        m_name = "multiball_" & name
        m_configname = name
        m_mode = mode.Name
        m_priority = mode.Priority
        Set m_ball_count = CreateGlfInput(0)
        m_add_a_ball_events = Array()
        Set m_add_a_ball_grace_period = CreateGlfInput(0)
        Set m_add_a_ball_hurry_up_time = CreateGlfInput(0)
        Set m_add_a_ball_shoot_again = CreateGlfInput(5000)
        m_ball_count_type = "total"
        m_ball_lock = Empty
        Set m_grace_period = CreateGlfInput(0)
        Set m_hurry_up = CreateGlfInput(0)
        m_replace_balls_in_play = False
        Set m_shoot_again = CreateGlfInput(10000)
        m_reset_events = Array()
        m_start_or_add_a_ball_events = Array()
        Set m_start_events = CreateObject("Scripting.Dictionary")
        m_stop_events = Array()
        m_replace_balls_in_play = False
        m_balls_added_live = 0
        m_balls_live_target = 0
        m_enabled = False
        m_shoot_again_enabled = False
        m_grace_period_enabled = False
        m_hurry_up_enabled = False
        Set m_base_device = (new GlfBaseModeDevice)(mode, "multiball", Me)
        glf_multiballs.Add name, Me
        Set Init = Me
    End Function

    Public Sub Activate()
        If UBound(m_base_device.EnableEvents.Keys()) = -1 Then
            Enable()
        End If
    End Sub

    Public Sub Deactivate()
        Disable()
    End Sub

    Public Sub Enable()
        m_base_device.Log "Enabling " & m_name
        m_enabled = True
        Dim evt
        For Each evt in m_start_events.Keys
            AddPinEventListener m_start_events(evt).EventName, m_name & "_start", "MultiballsHandler", m_priority, Array("start", Me, m_start_events(evt))
        Next
        For Each evt in m_reset_events
            AddPinEventListener evt, m_name & "_reset", "MultiballsHandler", m_priority, Array("reset", Me)
        Next
        For Each evt in m_add_a_ball_events
            AddPinEventListener evt, m_name & "_add_a_ball", "MultiballsHandler", m_priority, Array("add_a_ball", Me)
        Next
        For Each evt in m_start_or_add_a_ball_events
            AddPinEventListener evt, m_name & "_start_or_add_a_ball", "MultiballsHandler", m_priority, Array("start_or_add_a_ball", Me)
        Next
        For Each evt in m_stop_events
            AddPinEventListener evt, m_name & "_stop", "MultiballsHandler", m_priority, Array("stop", Me)
        Next
    End Sub
    
    Public Sub Disable()
        m_base_device.Log "Disabling " & m_name
        m_enabled = False
        StopMultiball()
        Dim evt
        For Each evt in m_start_events.Keys
            RemovePinEventListener m_start_events(evt).EventName, m_name & "_start"
        Next
        For Each evt in m_reset_events
            RemovePinEventListener evt, m_name & "_reset"
        Next
        For Each evt in m_add_a_ball_events
            RemovePinEventListener evt, m_name & "_add_a_ball"
        Next
        For Each evt in m_start_or_add_a_ball_events
            RemovePinEventListener evt, m_name & "_start_or_add_a_ball"
        Next
        For Each evt in m_stop_events
            RemovePinEventListener evt, m_name & "_stop"
        Next
        RemovePinEventListener "ball_drain", m_name & "_ball_drain"
    End Sub
    
    Private Sub HandleBallsInPlayAndBallsLive()
        'Dim balls_to_replace
        'If m_replace_balls_in_play = True Then
        '    balls_to_replace = glf_BIP
        'Else
        '    balls_to_replace = 0
        'End If
        'm_base_device.Log("Going to add an additional " & balls_to_replace & " balls for replace_balls_in_play")
        m_balls_added_live = 0 
        Dim ball_count_value : ball_count_value = m_ball_count.Value
        If m_ball_count_type = "total" Then
            If ball_count_value > glf_BIP Then
                m_balls_added_live = ball_count_value - glf_BIP
                'glf_BIP = m_ball_count
            End If
            m_balls_live_target = ball_count_value
        Else
            m_balls_added_live = ball_count_value
            'glf_BIP = glf_BIP + m_balls_added_live
            m_balls_live_target = glf_BIP + m_balls_added_live
        End If

    End Sub

    Public Function BallsDrained(balls)
        If m_shoot_again_enabled Then
            balls = BallDrainShootAgain(balls)
        Else
            balls = BallDrainCountBalls(balls)
        End If
        BallsDrained = balls
    End Function

    Public Sub Start()
        ' Start multiball.
        If not m_enabled Then
            Exit Sub
        End If

        If m_balls_live_target > 0 Then
            m_base_device.Log("Cannot start MB because " & m_balls_live_target & " are still in play")
            Exit Sub
        End If

        m_shoot_again_enabled = True

        HandleBallsInPlayAndBallsLive()
        m_base_device.Log("Starting multiball with " & m_balls_live_target & " balls (added " & m_balls_added_live & ")")

        Dim balls_added : balls_added = 0

        'eject balls from locks
        If Not IsEmpty(m_ball_lock) Then
            Dim available_balls : available_balls = glf_ball_devices(m_ball_lock).Balls()
            glf_BIP = glf_BIP + available_balls
            If available_balls > 0 Then
                glf_ball_devices(m_ball_lock).EjectAll()
            End If
            balls_added = available_balls
        End If

        'request remaining balls
        Dim remaining_balls : remaining_balls = (m_balls_added_live - balls_added)
        'msgbox remaining_balls
        Dim x
        For x=1 to remaining_balls
            SetDelay m_name&"_queued_release", "MultiballsHandler" , Array(Array("queue_release", Me),Null), 1000
        Next

        If m_shoot_again.Value = 0 Then
            'No shoot again. Just stop multiball right away
            StopMultiball()
        else
            'Enable shoot again
            AddPinEventListener "ball_drain", m_name & "_ball_drain", "MultiballsHandler", m_priority, Array("drain", Me)
            TimerStart()
        End If

        Dim kwargs : Set kwargs = GlfKwargs()
        With kwargs
            .Add "balls", m_balls_live_target
        End With
        DispatchPinEvent m_name & "_started", kwargs
    End Sub

    Sub TimerStart()
        DispatchPinEvent "ball_save_" & m_configname & "_timer_start", Null 'desc: The multiball ball save called (name) has just start its countdown timer.
        StartShootAgain m_shoot_again.Value, m_grace_period.Value, m_hurry_up.Value
    End Sub

    Sub StartShootAgain(shoot_again_ms, grace_period_ms, hurry_up_time_ms)
        'Set callbacks for shoot again, grace period, and hurry up, if values above 0 are provided.
        'This is started for both beginning multiball ball save and add a ball ball save
        If shoot_again_ms > 0 Then
            m_base_device.Log("Starting ball save timer: " & shoot_again_ms)
            SetDelay m_name&"_disable_shoot_again", "MultiballsHandler" , Array(Array("stop", Me),Null), shoot_again_ms+grace_period_ms
        End If
        If grace_period_ms > 0 Then
            m_grace_period_enabled = True
            SetDelay m_name&"_grace_period", "MultiballsHandler" , Array(Array("grace_period", Me),Null), shoot_again_ms
        End If
        If hurry_up_time_ms > 0 Then
            m_hurry_up_enabled = True
            SetDelay m_name&"hurry_up", "MultiballsHandler" , Array(Array("hurry_up", Me),Null), shoot_again_ms - hurry_up_time_ms
        End If
    End Sub

    Sub RunHurryUp()
        m_base_device.Log("Starting Hurry Up")
        m_hurry_up_enabled = False
        DispatchPinEvent m_name & "_hurry_up", Null
    End Sub

    Sub RunGracePeriod()
        m_base_device.Log("Starting Grace Period")
        m_grace_period_enabled = False
        DispatchPinEvent m_name & "_grace_period", Null
    End Sub

    Public Function BallDrainShootAgain(balls):
        Dim balls_to_save, kwargs

        balls_to_save = m_balls_live_target - glf_BIP + balls

        If balls_to_save <= 0 Then
            BallDrainShootAgain = balls
        End If

        If balls_to_save > balls Then
            balls_to_save = balls
        End If

        Set kwargs = GlfKwargs()
        With kwargs
            .Add "balls", balls_to_save
        End With
        DispatchPinEvent m_name & "_shoot_again", kwargs
        
        m_base_device.log("Ball drained during MB. Requesting a new one")
        SetDelay m_name&"_queued_release", "MultiballsHandler" , Array(Array("queue_release", Me),Null), 1000

        BallDrainShootAgain = balls - balls_to_save
    End Function

    Function BallDrainCountBalls(balls):
        DispatchPinEvent m_name & "_ball_lost", Null
        If not glf_gameStarted or (glf_BIP - balls) < 1 Then
            m_balls_added_live = 0
            m_balls_live_target = 0
            DispatchPinEvent m_name & "_ended", Null
            RemovePinEventListener "ball_drain", m_name & "_ball_drain"
            m_base_device.Log("Ball drained. MB ended.")
        End If
        BallDrainCountBalls = balls
    End Function

    Public Sub Reset()
        m_base_device.Log "Resetting multiball: " & m_name
        DispatchPinEvent m_name & "_reset_event", Null
        ' Add reset logic here
    End Sub

    Public Sub AddABall()
        m_base_device.Log "Adding a ball to multiball: " & m_name
        DispatchPinEvent m_name & "_add_a_ball_event", Null
        ' Add add-a-ball logic here
    End Sub

    Public Sub StartOrAddABall()
        m_base_device.Log "Starting or adding a ball to multiball: " & m_name
        DispatchPinEvent m_name & "_start_or_add_a_ball_event", Null
        ' Add start-or-add-a-ball logic here
    End Sub

    Public Sub StopMultiball()
        '"""Stop shoot again."""
        m_base_device.Log("Stopping shoot again of multiball")
        m_shoot_again_enabled = False

        '# disable shoot again
        RemoveDelay m_name&"_disable_shoot_again"

        If m_grace_period_enabled Then
            RemoveDelay m_name&"_grace_period"
            RunGracePeriod()
        End If
        If m_hurry_up_enabled Then
            RemoveDelay m_name&"_hurry_up"
            RunHurryUp()
        End If

        DispatchPinEvent m_name & "_shoot_again_ended", Null
    End Sub

End Class

Function MultiballsHandler(args)
    Dim ownProps, kwargs : ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1)
    Else
        kwargs = args(1) 
    End If
    Dim evt : evt = ownProps(0)
    Dim multiball : Set multiball = ownProps(1)
    'Check if the evt has a condition to evaluate    
    If UBound(ownProps) = 2 Then
        If IsObject(ownProps(2)) Then
            If ownProps(2).Evaluate() = False Then
                If IsObject(args(1)) Then
                    Set MultiballsHandler = kwargs
                Else
                    MultiballsHandler = kwargs
                End If
                Exit Function
            End If
        End If
    End If
    Select Case evt
        Case "start"
            multiball.Start
        Case "reset"
            'multiball.Reset
        Case "add_a_ball"
            'multiball.AddABall
        Case "start_or_add_a_ball"
            'multiball.StartOrAddABall
        Case "stop"
            multiball.StopMultiball
        Case "grace_period"
            multiball.RunGracePeriod
        Case "hurry_up_time"
            multiball.RunHurryUp
        Case "drain"
            kwargs = multiball.BallsDrained(kwargs)
        Case "queue_release"
            If glf_plunger.HasBall = False And ballInReleasePostion = True Then
                Glf_ReleaseBall(Null)
                SetDelay multiball.Name&"_auto_launch", "MultiballsHandler" , Array(Array("auto_launch", multiball),Null), 500
            Else
                SetDelay multiball.Name&"_queued_release", "MultiballsHandler" , Array(Array("queue_release", multiball), Null), 1000
            End If
        Case "auto_launch"
            If glf_plunger.HasBall = True Then
                glf_plunger.Eject
            Else
                SetDelay multiball.Name&"_auto_launch", "MultiballsHandler" , Array(Array("auto_launch", multiball), Null), 500
            End If
    End Select

    If IsObject(args(1)) Then
        Set MultiballsHandler = kwargs
    Else
        MultiballsHandler = kwargs
    End If
End Function


Class GlfSegmentDisplayPlayer

    Private m_priority
    Private m_mode
    Private m_name
    Private m_events
    private m_base_device

    Public Property Get Name() : Name = "segment_player" : End Property

    Public Property Get EventNames() : EventNames = m_events.Keys() : End Property    
    Public Property Get Events(name)
        If m_events.Exists(name) Then
            Set Events = m_events(name)
        Else
            Dim new_event : Set new_event = (new GlfSegmentPlayerEventItem)()
            m_events.Add name, new_event
            Set Events = new_event
        End If
    End Property

	Public default Function init(mode)
        m_name = "segment_player_" & mode.name
        m_mode = mode.Name
        m_priority = mode.Priority
        Set m_events = CreateObject("Scripting.Dictionary")
        Set m_base_device = (new GlfBaseModeDevice)(mode, "segment_player", Me)
        Set Init = Me
	End Function

    Public Sub Activate()
        Dim evt
        For Each evt In m_events.Keys()
            AddPinEventListener evt, m_mode & "_segment_player_play", "SegmentPlayerEventHandler", -m_priority, Array("play", Me, m_events(evt), evt)
        Next
    End Sub

    Public Sub Deactivate()
        Dim evt
        For Each evt In m_events.Keys()
            RemovePinEventListener evt, m_mode & "_segment_player_play"
            PlayOff evt, m_events(evt)
        Next
    End Sub

    Public Sub Play(evt, segment_item)
        SegmentPlayerCallbackHandler evt, segment_item, m_mode, m_priority
    End Sub

    Public Sub PlayOff(evt, segment_item)
        Dim key
        key = m_mode & "." & "segment_player_player." & segment_item.Display
        If Not IsEmpty(segment_item.Key) Then
            key = key & segment_item.Key
        End If
        Dim display : Set display = glf_segment_displays(segment_item.Display)
        RemoveDelay key
        display.RemoveTextByKey key    
    End Sub

    Public Function ToYaml()
        Dim yaml
        Dim evt
        If UBound(m_events.Keys) > -1 Then
            For Each key in m_events.keys
                yaml = yaml & "  " & key & ": " & vbCrLf
                yaml = yaml & m_events(key).ToYaml()
            Next
            yaml = yaml & vbCrLf
        End If
        ToYaml = yaml
    End Function

End Class

Class GlfSegmentPlayerEventItem
	
    private m_display
    private m_text
    private m_priority
    private m_action
    private m_expire
    private m_flash_mask
    private m_flashing
    private m_key
    private m_transition
    private m_transition_out
    private m_color

    Public Property Get Display() : Display = m_display : End Property
    Public Property Let Display(input) : m_display = input : End Property
    
    Public Property Get Text()
        If Not IsNull(m_text) Then
            Text = m_text.Value()
        Else
            Text = Empty
        End If
    End Property
    Public Property Let Text(input) 
        Set m_text = (new GlfInput)(input)
    End Property

    Public Property Get Priority() : Priority = m_priority : End Property
    Public Property Let Priority(input) : m_priority = input : End Property
        
    Public Property Get Action() : Action = m_action : End Property
    Public Property Let Action(input) : m_action = input : End Property
                
    Public Property Get Expire() : Expire = m_expire : End Property
    Public Property Let Expire(input) : m_events = input : End Property

    Public Property Get FlashMask() : FlashMask = m_flash_mask : End Property
    Public Property Let FlashMask(input) : m_flash_mask = input : End Property
                        
    Public Property Get Flashing() : Flashing = m_flashing : End Property
    Public Property Let Flashing(input) : m_flashing = input : End Property
                            
    Public Property Get Key() : Key = m_key : End Property
    Public Property Let Key(input) : m_key = input : End Property

    Public Property Get Color() : Color = m_color : End Property
    Public Property Let Color(input) : m_color = input : End Property

    Public Property Get Transition()
        If IsNull(m_transition) Then
            Set m_transition = (new GlfSegmentPlayerTransition)()
            Set Transition = m_transition   
        Else
            Set Transition = m_transition
        End If
    End Property

    Public Property Get TransitionOut()
        If IsNull(m_transition_out) Then
            Set m_transition_out = (new GlfSegmentPlayerTransition)()
            Set TransitionOut = m_transition_out   
        Else
            Set TransitionOut = m_transition_out
        End If
    End Property
                                
	Public default Function init()
        m_display = Empty
        m_text = Null
        m_priority = 0
        m_action = "add"
        m_expire = 0
        m_flash_mask = Empty
        m_flashing = "not_set"
        m_key = Empty
        m_transition = Null
        m_transition_out = Null
        m_color = Rgb(255,255,255)
        Set Init = Me
	End Function

    Public Function ToYaml()
        Dim yaml
        If Not IsEmpty(m_display) Then
            yaml = yaml & "    " & m_display & ": " & vbCrLf
        End If
        If Not IsNull(m_text) Then
            yaml = yaml & "    " & m_text.Raw() & ": " & vbCrLf
        End If
        If m_priority > 0 Then
            yaml = yaml & "    " & m_priority & ": " & vbCrLf
        End If
        If m_action <> "add" Then
            yaml = yaml & "    " & m_action & ": " & vbCrLf
        End If
        If m_expire > 0 Then
            yaml = yaml & "    " & m_expire & ": " & vbCrLf
        End If
        If Not IsEmpty(m_flash_mask) Then
            yaml = yaml & "    " & m_flash_mask & ": " & vbCrLf
        End If
        If m_flashing <> "not_set" Then
            yaml = yaml & "    " & m_flashing & ": " & vbCrLf
        End If
        If Not IsEmpty(m_key) Then
            yaml = yaml & "    " & m_key & ": " & vbCrLf
        End If
        If Not IsEmpty(m_color) Then
            yaml = yaml & "    " & m_color & ": " & vbCrLf
        End If
        If Not IsNull(m_transition) Then
            yaml = yaml & m_transition.ToYaml()
        End If
        If Not IsNull(m_transition_out) Then
            yaml = yaml & m_transition_out.ToYaml()
        End If
        ToYaml = yaml
    End Function

End Class

Class GlfSegmentPlayerTransition
	
    private m_type
    private m_text
    private m_direction

    Public Property Get TransitionType() : TransitionType = m_type : End Property
    Public Property Let TransitionType(input) : m_type = input : End Property
    
    Public Property Get Text() : Text = m_text : End Property
    Public Property Let Text(input) : m_text = input : End Property

    Public Property Get Direction() : Direction = m_direction : End Property
    Public Property Let Direction(input) : m_direction = input : End Property                          

	Public default Function init()
        m_type = "push"
        m_text = Empty
        m_direction = "push"
        Set Init = Me
	End Function

    Public Function ToYaml()
        Dim yaml
        yaml = yaml & "    transition:" & vbCrLf
        yaml = yaml & "      " & m_type & ": " & vbCrLf
        yaml = yaml & "      " & m_direction & ": " & vbCrLf
        yaml = yaml & "      " & m_text & ": " & vbCrLf
        ToYaml = yaml
    End Function

End Class

Function SegmentPlayerEventHandler(args)
    Dim ownProps : ownProps = args(0)
    Dim evt : evt = ownProps(0)
    Dim SegmentPlayer : Set SegmentPlayer = ownProps(1)
    Select Case evt
        Case "activate"
            SegmentPlayer.Activate
        Case "deactivate"
            SegmentPlayer.Deactivate
        Case "play"
            SegmentPlayer.Play ownProps(3), ownProps(2)
    End Select
    SegmentPlayerEventHandler = Null
End Function


Function SegmentPlayerCallbackHandler(evt, segment_item, mode, priority)

    If IsObject(segment_item) Then
        'Shot Text on a display
        Dim key
        key = mode & "." & "segment_player_player." & segment_item.Display
        
        If Not IsEmpty(segment_item.Key) Then
            key = key & segment_item.Key
        End If

        Dim display : Set display = glf_segment_displays(segment_item.Display)
        
        If segment_item.Action = "add" Then
            RemoveDelay key
            display.AddTextEntry segment_item.Text, segment_item.Color, segment_item.Flashing, segment_item.FlashMask, segment_item.Transition, segment_item.TransitionOut, segment_item.Priority, segment_item.Key
                                
            If segment_item.Expire > 0 Then
                'TODO Add delay for remove
                'SetDelay
            End If

        ElseIf segment_item.Action = "remove" Then
            RemoveDelay key
            display.RemoveTextByKey key        
        ElseIf segment_item.Action = "flash" Then
            display.SetFlashing "all"
        ElseIf segment_item.Action = "flash_match" Then
            display.SetFlashing "match"
        ElseIf segment_item.Action = "flash_mask" Then
            display.SetFlashingMask segment_item.FlashMask
        ElseIf segment_item.Action = "no_flash" Then
            display.SetFlashing "no_flash"
        ElseIf segment_item.Action = "set_color" Then
            If Not IsNull(segment_item.Color) Then
                display.SetColor segment_item.Color
            End If
        End If
    End If

End Function

Class GlfSequenceShot

    Private m_name
    Private m_lock_device
    Private m_priority
    Private m_mode
    Private m_base_device

    Private m_cancel_events
    Private m_cancel_switches
    Private m_delay_event_list
    Private m_delay_switch_list
    Private m_event_sequence
    Private m_playfield
    Private m_sequence_timeout
    Private m_switch_sequence

    Public Property Get Name(): Name = m_name: End Property
    Public Property Get GetValue(value)
        Select Case value
            Case "locked_balls":
                GetValue = m_balls_locked
        End Select
    End Property

    Public Property Let CancelEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_cancel_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let CancelSwitches(value): m_cancel_switches = value: End Property
    Public Property Let DelayEventList(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_delay_event_list.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let DelaySwitchList(value): m_delay_switch_list = value: End Property
    Public Property Let EventSequence(value): m_event_sequence = value: End Property
    Public Property Let SequenceTimeout(value): Set m_sequence_timeout = CreateGlfInput(value): End Property
    Public Property Let SwitchSequence(value): m_switch_sequence = value: End Property

	Public default Function init(name, mode)
        m_name = "sequence_shot_" & name
        m_mode = mode.Name
        m_priority = mode.Priority
        
        Set m_cancel_events = CreateObject("Scripting.Dictionary")
        Set m_delay_event_list = CreateObject("Scripting.Dictionary")
        
        m_cancel_switches = Array()
        m_delay_event_list = Array()
        m_event_sequence = Array()
        m_switch_sequence = Array()
        m_sequence_timeout = CreateGlfInput(0)

        Set m_base_device = (new GlfBaseModeDevice)(mode, "multiball_locks", Me)
        
        Set Init = Me
	End Function

    Public Sub Activate()
        Enable()
    End Sub

    Public Sub Deactivate()
        Disable()
    End Sub

    Public Sub Enable()
        m_base_device.Log "Enabling"
        Dim evt
        For Each evt in m_cancel_events.Keys
            AddPinEventListener m_cancel_events(evt).EventName, m_name & "_" & evt & "_cancel", "SequenceShotsHandler", m_priority, Array("cancel", Me)
        Next
        For Each evt in m_delay_event_list.Keys
            AddPinEventListener m_delay_event_list(evt).EventName, m_name & "_" & evt & "_delay", "SequenceShotsHandler", m_priority, Array("delay", Me)
        Next
    End Sub

    Public Sub Disable()
        m_base_device.Log "Disabling"
        Dim evt
        For Each evt in m_cancel_events.Keys
            RemovePinEventListener m_cancel_events(evt).EventName, m_name & "_" & evt & "_cancel"
        Next
        For Each evt in  m_delay_event_list.Keys
            RemovePinEventListener m_delay_event_list(evt).EventName, m_name & "_" & evt & "_delay"
        Next
    End Sub

End Class

Function SequenceShotsHandler(args)
    Dim ownProps, kwargs : ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1)
    Else
        kwargs = args(1) 
    End If
    Dim evt : evt = ownProps(0)
    Dim sequence_shot : Set sequence_shot = ownProps(1)
    Select Case evt
        Case "cancel"
            sequence_shot.Activate
        Case "delay"
            sequence_shot.Deactivate
    End Select
    If IsObject(args(1)) Then
        Set SequenceShotsHandler = kwargs
    Else
        SequenceShotsHandler = kwargs
    End If
End Function
Class GlfShotGroup
    Private m_name
    Private m_mode
    Private m_priority
    private m_base_device
    private m_shots
    private m_common_state
    Private m_enable_rotation_events
    Private m_disable_rotation_events
    Private m_restart_events
    Private m_reset_events
    Private m_rotate_events
    Private m_rotate_left_events
    Private m_rotate_right_events
    Private rotation_enabled
    Private m_temp_shots
    Private m_rotation_pattern
    Private m_rotation_enabled
    Private m_isRotating
 
    Public Property Get Name(): Name = m_name: End Property
    Public Property Get CommonState()
        Dim state : state = m_base_device.Mode.Shots(m_shots(0)).State
        Dim shot
        For Each shot in m_shots
            If state <> m_base_device.Mode.Shots(shot).State Then
                CommonState = Empty
                Exit Property
            End If
        Next
        CommonState = state
    End Property
 
    Public Property Let Shots(value)
        m_shots = value
        m_rotation_pattern = Glf_CopyArray(Glf_ShotProfiles(m_base_device.Mode.Shots(m_shots(0)).Profile).RotationPattern)
    End Property
 
    Public Property Let EnableRotationEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_enable_rotation_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let DisableRotationEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_disable_rotation_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let RestartEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_restart_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let ResetEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_reset_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let RotateEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_rotate_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let RotateLeftEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_rotate_left_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let RotateRightEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_rotate_right_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let EnableEvents(value) : m_base_device.EnableEvents = value : End Property
    Public Property Let DisableEvents(value) : m_base_device.DisableEvents = value : End Property
 
	Public default Function init(name, mode)
        m_name = name
        m_mode = mode.Name
        m_priority = mode.Priority
        m_common_state = Empty
        m_rotation_enabled = True
        m_rotation_pattern = Empty
        m_isRotating = False
 
        Set m_enable_rotation_events = CreateObject("Scripting.Dictionary")
        Set m_disable_rotation_events = CreateObject("Scripting.Dictionary")
        Set m_restart_events = CreateObject("Scripting.Dictionary")
        Set m_reset_events = CreateObject("Scripting.Dictionary")
        Set m_rotate_events = CreateObject("Scripting.Dictionary")
        Set m_rotate_left_events = CreateObject("Scripting.Dictionary")
        Set m_rotate_right_events = CreateObject("Scripting.Dictionary")
        Set m_temp_shots = CreateObject("Scripting.Dictionary")
 
        Set m_base_device = (new GlfBaseModeDevice)(mode, "shot_group", Me)
 
        Set Init = Me
	End Function
 
    Public Sub Activate
        Dim evt
        For Each evt in m_enable_rotation_events.Keys()
            m_rotation_enabled = False
            AddPinEventListener m_enable_rotation_events(evt).EventName, m_name & "_enable_rotation", "ShotGroupEventHandler", m_priority, Array("enable_rotation", Me, evt)
        Next
        For Each evt in m_disable_rotation_events.Keys()
            AddPinEventListener m_disable_rotation_events(evt).EventName, m_name & "_disable_rotation", "ShotGroupEventHandler", m_priority, Array("disable_rotation", Me, evt)
        Next
        For Each evt in m_restart_events.Keys()
            AddPinEventListener m_restart_events(evt).EventName, m_name & "_restart", "ShotGroupEventHandler", m_priority, Array("restart", Me, evt)
        Next
        For Each evt in m_reset_events.Keys()
            AddPinEventListener m_reset_events(evt).EventName, m_name & "_reset", "ShotGroupEventHandler", m_priority, Array("reset", Me, evt)
        Next
        For Each evt in m_rotate_events.Keys()
            AddPinEventListener m_rotate_events(evt).EventName, m_name & "_rotate", "ShotGroupEventHandler", m_priority, Array("rotate", Me, evt)
        Next
        For Each evt in m_rotate_left_events.Keys()
            AddPinEventListener m_rotate_left_events(evt).EventName, m_name & "_rotate_left", "ShotGroupEventHandler", m_priority, Array("rotate_left", Me, evt)
        Next
        For Each evt in m_rotate_right_events.Keys()
            AddPinEventListener m_rotate_right_events(evt).EventName, m_name & "_rotate_right", "ShotGroupEventHandler", m_priority, Array("rotate_right", Me, evt)
        Next
        Dim shot_name
        For Each shot_name in m_shots
            AddPinEventListener shot_name & "_hit", m_name & "_" & m_mode & "_hit", "ShotGroupEventHandler", m_priority, Array("hit", Me)
            AddPlayerStateEventListener "player_shot_" & shot_name, m_name & "_" & m_mode & "_complete", "ShotGroupEventHandler", m_priority, Array("complete", Me)
        Next
    End Sub
 
    Public Sub Deactivate
        Dim evt
        m_rotation_enabled = True
        For Each evt in m_enable_rotation_events.Keys()
            RemovePinEventListener m_enable_rotation_events(evt).EventName, m_name & "_enable_rotation"
        Next
        For Each evt in m_disable_rotation_events.Keys()
            RemovePinEventListener m_disable_rotation_events(evt).EventName, m_name & "_disable_rotation"
        Next
        For Each evt in m_restart_events.Keys()
            RemovePinEventListener m_restart_events(evt).EventName, m_name & "_restart"
        Next
        For Each evt in m_reset_events.Keys()
            RemovePinEventListener m_reset_events(evt).EventName, m_name & "_reset"
        Next
        For Each evt in m_rotate_events.Keys()
            RemovePinEventListener m_rotate_events(evt).EventName, m_name & "_rotate"
        Next
        For Each evt in m_rotate_left_events.Keys()
            RemovePinEventListener m_rotate_left_events(evt).EventName, m_name & "_rotate_left"
        Next
        For Each evt in m_rotate_right_events.Keys()
            RemovePinEventListener m_rotate_right_events(evt).EventName, m_name & "_rotate_right"
        Next
        Dim shot_name
        For Each shot_name in m_shots
            RemovePinEventListener shot_name & "_hit", m_name & "_" & m_mode & "_hit"
            RemovePlayerStateEventListener "player_shot_" & shot_name, m_name & "_" & m_mode & "_complete"
        Next
    End Sub
 
    Public Function CheckForComplete()
        If m_isRotating Then
            Exit Function
        End If
        Dim state : state = CommonState()
        If state = m_common_state Then
            Exit Function
        End If
 
        m_common_state = state
 
        If state = Empty Then
            Exit Function
        End If
 
        Dim state_name : state_name = Glf_ShotProfiles(m_base_device.Mode.Shots(m_shots(0)).Profile).StateName(m_common_state)
 
        m_base_device.Log "Shot group is complete with state: " & state_name
        Dim kwargs : Set kwargs = GlfKwargs()
		With kwargs
            .Add "state", state_name
        End With
        DispatchPinEvent m_name & "_complete", kwargs
        DispatchPinEvent m_name & "_" & state_name & "_complete", Null
 
    End Function
 
    Public Sub Enable()
        Dim shot
        m_base_device.Log "Enabling"
        For Each shot in m_shots
            m_base_device.Mode.Shots(shot).Enable()
        Next
        Dim evt
    End Sub
 
    Public Sub Disable()
        Dim shot
        For Each shot in m_shots
            m_base_device.Mode.Shots(shot).Disable()
        Next
    End Sub
 
    Public Sub EnableRotation
        m_base_device.Log "Enabling Rotation"
        m_rotation_enabled = True
    End Sub
 
    Public Sub DisableRotation
        m_base_device.Log "Disabling Rotation"
        m_rotation_enabled = False
    End Sub
 
    Public Sub Restart
        Dim shot
        For Each shot in m_shots
            m_base_device.Mode.Shots(shot).Restart()
        Next
    End Sub
 
    Public Sub Reset
        Dim shot
        For Each shot in m_shots
            m_base_device.Mode.Shots(shot).Reset()
        Next
    End Sub
 
    Public Sub Rotate(direction)
 
        If m_rotation_enabled = False Then
            Exit Sub
        End If
        Dim shots_to_rotate : shots_to_rotate = Array()
 
        m_temp_shots.RemoveAll
        Dim shot
        For Each shot in m_shots
            If m_base_device.Mode.Shots(shot).CanRotate Then
                m_temp_shots.Add shot, m_base_device.Mode.Shots(shot)
            End If
        Next
 
        Dim shot_states, x
        x=0
        ReDim shot_states(UBound(m_temp_shots.Keys))
        For Each shot in m_temp_shots.Keys
            shot_states(x) = m_temp_shots(shot).State
            x=x+1
        Next 
 
        If direction = Empty Then
            direction = m_rotation_pattern(0)
            Glf_RotateArray m_rotation_pattern, "l"
        End If
 
        shot_states = Glf_RotateArray(shot_states, direction)
        x=0
        m_isRotating = True
        For Each shot in m_temp_shots.Keys
            m_base_device.Log "Rotating Shot:" & shot
            m_temp_shots(shot).Jump shot_states(x), True, False
            x=x+1
        Next 
        m_isRotating = False
        CheckForComplete()
    End Sub
 
    Public Function ToYaml
        Dim yaml
        yaml = "  " & m_name & ":" & vbCrLf
        yaml = yaml & "    shots: " & Join(m_shots, ",") & vbCrLf
 
        If UBound(m_enable_rotation_events.Keys) > -1 Then
            yaml = yaml & "    enable_rotation_events: "
            x=0
            For Each key in m_enable_rotation_events.keys
                yaml = yaml & m_enable_rotation_events(key).Raw
                If x <> UBound(m_enable_rotation_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
 
        If UBound(m_disable_rotation_events.Keys) > -1 Then
            yaml = yaml & "    disable_rotation_events: "
            x=0
            For Each key in m_disable_rotation_events.keys
                yaml = yaml & m_disable_rotation_events(key).Raw
                If x <> UBound(m_disable_rotation_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
 
        If UBound(m_restart_events.Keys) > -1 Then
            yaml = yaml & "    restart_events: "
            x=0
            For Each key in m_restart_events.keys
                yaml = yaml & m_restart_events(key).Raw
                If x <> UBound(m_restart_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
 
        If UBound(m_reset_events.Keys) > -1 Then
            yaml = yaml & "    reset_events: "
            x=0
            For Each key in m_reset_events.keys
                yaml = yaml & m_reset_events(key).Raw
                If x <> UBound(m_reset_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
 
        If UBound(m_rotate_events.Keys) > -1 Then
            yaml = yaml & "    rotate_events: "
            x=0
            For Each key in m_rotate_events.keys
                yaml = yaml & m_rotate_events(key).Raw
                If x <> UBound(m_rotate_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
 
        If UBound(m_rotate_left_events.Keys) > -1 Then
            yaml = yaml & "    rotate_left_events: "
            x=0
            For Each key in m_rotate_left_events.keys
                yaml = yaml & m_rotate_left_events(key).Raw
                If x <> UBound(m_rotate_left_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
 
        If UBound(m_rotate_right_events.Keys) > -1 Then
            yaml = yaml & "    rotate_right_events: "
            x=0
            For Each key in m_rotate_right_events.keys
                yaml = yaml & m_rotate_right_events(key).Raw
                If x <> UBound(m_rotate_right_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
 
        If UBound(m_base_device.EnableEvents.Keys) > -1 Then
            yaml = yaml & "    enable_events: "
            x=0
            For Each key in m_base_device.EnableEvents.keys
                yaml = yaml & m_base_device.EnableEvents(key).Raw
                If x <> UBound(m_base_device.EnableEvents.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
 
        If UBound(m_base_device.DisableEvents.Keys) > -1 Then
            yaml = yaml & "    disable_events: "
            x=0
            For Each key in m_base_device.DisableEvents.keys
                yaml = yaml & m_base_device.DisableEvents(key).Raw
                If x <> UBound(m_base_device.DisableEvents.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If
 
 
        ToYaml = yaml
        End Function
End Class
 
Function ShotGroupEventHandler(args)
    Dim ownProps, kwargs : ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1) 
    Else
        kwargs = args(1)
    End If
    Dim evt : evt = ownProps(0)
    Dim device : Set device = ownProps(1)
    Select Case evt
        Case "hit"
            DispatchPinEvent device.Name & "_hit", Null
            DispatchPinEvent device.Name & "_" & kwargs("state") & "_hit", Null
        Case "complete"
            device.CheckForComplete
        Case "enable_rotation"
            device.EnableRotation
        Case "disable_rotation"
            device.DisableRotation
        Case "restart"
            device.Restart
        Case "reset"
            device.Reset
        Case "rotate"
            device.Rotate Empty
        Case "rotate_left"
            device.Rotate "l"
        Case "rotate_right"
            device.Rotate "r"
    End Select
    If IsObject(args(1)) Then
        Set ShotGroupEventHandler = kwargs
    Else
        ShotGroupEventHandler = kwargs
    End If
 
End Function

Class GlfShotProfile

    Private m_name
    Private m_advance_on_hit
    Private m_block
    Private m_loop
    Private m_rotation_pattern
    Private m_states
    Private m_states_not_to_rotate
    Private m_states_to_rotate

    Public Property Get Name(): Name = m_name: End Property
    Public Property Get AdvanceOnHit(): AdvanceOnHit = m_advance_on_hit: End Property
    Public Property Get Block(): Block = m_block: End Property
    Public Property Let Block(input): m_block = input: End Property
    Public Property Get ProfileLoop(): ProfileLoop = m_loop: End Property
    Public Property Get RotationPattern(): RotationPattern = m_rotation_pattern: End Property
    Public Property Get States(name)
        If m_states.Exists(name) Then
            Set States = m_states(name)
        Else
            Dim new_state : Set new_state = (new GlfShowPlayerItem)()
            m_states.Add name, new_state
            Set States = new_state
        End If
    End Property
    Public Property Get StateForIndex(index)
        Dim stateItems : stateItems = m_states.Items()
        If UBound(stateItems) >= index Then
            Set StateForIndex = stateItems(index)
        Else
            StateForIndex = Null
        End If
    End Property
    Public Property Get StateName(index)
        Dim stateKeys : stateKeys = m_states.Keys()
        If UBound(stateKeys) >= index Then
            StateName = stateKeys(index)
        Else
            StateName = Empty
        End If
    End Property
    Public Property Get StatesCount()
        StatesCount = UBound(m_states.Keys())
    End Property

    Public Property Get StateNamesToRotate(): StateNamesToRotate = m_states_to_rotate: End Property
    Public Property Let StateNamesToRotate(input): m_states_to_rotate = input: End Property
    Public Property Get StateNamesNotToRotate(): StateNamesNotToRotate = m_states_not_to_rotate: End Property
    Public Property Let StateNamesNotToRotate(input): m_states_not_to_rotate = input: End Property
    
	Public default Function init(name)
        m_name = "shotprofile_" & name
        m_advance_on_hit = True
        m_block = False
        m_loop = False
        m_rotation_pattern = Array("r")
        m_states_to_rotate = Array()
        m_states_not_to_rotate = Array()
        Set m_states = CreateObject("Scripting.Dictionary")
        Set Init = Me
	End Function

    Public Function ToYaml()
        Dim yaml
        yaml = yaml & "  " & Replace(m_name, "shotprofile_", "") & ":" & vbCrLf
        yaml = yaml & "    states: " & vbCrLf
        Dim token,evt,state,x : x = 0
        For Each evt in m_states.Keys
            Set state = StateForIndex(x)
            yaml = yaml & "     - name: " & StateName(x) & vbCrLf
            yaml = yaml & "       show: " & state.Show.Name & vbCrLf
            yaml = yaml & "       loops: " & m_states(evt).Loops & vbCrLf
            yaml = yaml & "       speed: " & m_states(evt).Speed & vbCrLf
            yaml = yaml & "       sync_ms: " & m_states(evt).SyncMs & vbCrLf

            If Ubound(state.Tokens().Keys)>-1 Then
                yaml = yaml & "       show_tokens: " & vbCrLf
                For Each token in state.Tokens().Keys()
                    yaml = yaml & "         " & token & ": " & state.Tokens()(token) & vbCrLf
                Next
            End If

            'yaml = yaml & "     block: " & m_block & vbCrLf
            'yaml = yaml & "     advance_on_hit: " & m_advance_on_hit & vbCrLf
            'yaml = yaml & "     loop: " & m_loop & vbCrLf
            'yaml = yaml & "     rotation_pattern: " & m_rotation_pattern & vbCrLf
            'yaml = yaml & "     state_names_to_not_rotate: " & m_states_not_to_rotate & vbCrLf
            'yaml = yaml & "     state_names_to_rotate: " & m_states_to_rotate & vbCrLf
            x = x +1
        Next
        ToYaml = yaml
    End Function

End Class

Class GlfShot

    Private m_name
    Private m_mode
    Private m_priority
    Private m_base_device
    Private m_profile
    Private m_control_events
    Private m_advance_events
    Private m_reset_events
    Private m_restart_events
    Private m_switches
    Private m_tokens
    Private m_hit_events
    Private m_start_enabled
    Private m_show_cache
    Private m_state
    Private m_enabled
    Private m_player_var_name
    Private m_persist
    Private m_internal_cache_id

    Public Property Get Name(): Name = m_name: End Property
    Public Property Get Profile(): Profile = m_profile: End Property
    Public Property Get ShotKey(): ShotKey = m_name & "_" & m_profile: End Property
    Public Property Get State(): State = m_state: End Property
    Public Property Get Tokens() : Set Tokens = m_tokens : End Property
    Public Property Get CanRotate()
        If Glf_IsInArray(Glf_ShotProfiles(m_profile).StateName(m_state), Glf_ShotProfiles(m_profile).StateNamesNotToRotate) Then
            CanRotate = False
        Else
            CanRotate = True
        End If
    End Property
    
    Public Property Get InternalCacheId(): InternalCacheId = m_internal_cache_id: End Property
    Public Property Let InternalCacheId(input): m_internal_cache_id = input: End Property

    Public Property Let EnableEvents(value) : m_base_device.EnableEvents = value : End Property
    Public Property Let DisableEvents(value) : m_base_device.DisableEvents = value : End Property
    Public Property Get ControlEvents(name)
        If m_control_events.Exists(name) Then
            Set ControlEvents = m_control_events(name)
        Else
            Dim newEvent : Set newEvent = (new GlfShotControlEvent)()
            m_control_events.Add name, newEvent
            Set ControlEvents = newEvent
        End If
    End Property
    Public Property Let AdvanceEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_advance_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let ResetEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_reset_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let RestartEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_restart_events.Add newEvent.Name, newEvent
        Next
    End Property   
    Public Property Let Persist(value) : m_persist = value : End Property
    Public Property Let Profile(value) : m_profile = value : End Property
    Public Property Let Switch(value) : m_switches = Array(value) : End Property
    Public Property Let Switches(value) : m_switches = value : End Property
    Public Property Let StartEnabled(value) : m_start_enabled = value : End Property
    Public Property Let HitEvents(value)
        Dim x
        For x=0 to UBound(value)
            Dim newEvent : Set newEvent = (new GlfEvent)(value(x))
            m_hit_events.Add newEvent.Name, newEvent
        Next
    End Property
    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(name, mode)
        m_name = name
        m_mode = mode.Name
        m_priority = mode.Priority
        m_internal_cache_id = -1
        m_enabled = False
        m_persist = True
        Set m_base_device = (new GlfBaseModeDevice)(mode, "shot", Me)

        m_profile = "default"
        m_player_var_name = "shot_" & m_name
        m_state = -1
        m_switches = Array()
        m_start_enabled = Empty
        Set m_hit_events = CreateObject("Scripting.Dictionary")
        Set m_tokens = CreateObject("Scripting.Dictionary")
        Set m_show_cache = CreateObject("Scripting.Dictionary")
        Set m_advance_events = CreateObject("Scripting.Dictionary")
        Set m_control_events = CreateObject("Scripting.Dictionary")
        Set m_reset_events = CreateObject("Scripting.Dictionary")
        Set m_restart_events = CreateObject("Scripting.Dictionary")

        Set Init = Me
	End Function

    Public Sub Activate()
        If GetPlayerState(m_player_var_name) = False Then
            m_state = 0
            If m_persist Then
                SetPlayerState m_player_var_name, 0
            End If
        Else
            m_state = GetPlayerState(m_player_var_name)
        End If
        If m_start_enabled = True Then
            Enable()
        Else
            If IsEmpty(m_start_enabled) And UBound(m_base_device.EnableEvents.Keys) = -1 Then
                Enable()
            End If
        End If
    End Sub

    Public Sub Deactivate()
        Disable()
        Dim evt
        For Each evt in m_switches
            RemovePinEventListener evt, m_mode & "_" & m_name & "_hit"
        Next
        For Each evt in m_hit_events.Keys
            RemovePinEventListener evt, m_mode & "_" & m_name & "_hit"
        Next
        For Each evt in m_advance_events.Keys
            RemovePinEventListener evt, m_mode & "_" & m_name & "_advance"
        Next
        For Each evt in m_control_events.Keys
            Dim cEvt
            For Each cEvt in m_control_events(evt).Events
                RemovePinEventListener cEvt, m_mode & "_" & m_name & "_control"
            Next
        Next
        For Each evt in m_reset_events.Keys
            RemovePinEventListener evt, m_mode & "_" & m_name & "_reset"
        Next
        For Each evt in m_restart_events.Keys
            RemovePinEventListener evt, m_mode & "_" & m_name & "_restart"
        Next
    End Sub

    Public Sub Enable()
        m_base_device.Log "Enabling"
        m_enabled = True
        Dim evt
        For Each evt in m_switches
            AddPinEventListener evt & "_active", m_mode & "_" & m_name & "_hit", "ShotEventHandler", m_priority, Array("hit", Me)
        Next
        For Each evt in m_hit_events.Keys
            AddPinEventListener evt, m_mode & "_" & m_name & "_hit", "ShotEventHandler", m_priority, Array("hit", Me)
        Next
        For Each evt in m_advance_events.Keys
            AddPinEventListener evt, m_mode & "_" & m_name & "_advance", "ShotEventHandler", m_priority, Array("advance", Me)
        Next
        For Each evt in m_control_events.Keys
            Dim cEvt
            For Each cEvt in m_control_events(evt).Events
                AddPinEventListener cEvt, m_mode & "_" & m_name & "_control", "ShotEventHandler", m_priority, Array("control", Me, m_control_events(evt))
            Next
        Next
        For Each evt in m_reset_events.Keys
            AddPinEventListener evt, m_mode & "_" & m_name & "_reset", "ShotEventHandler", m_priority, Array("reset", Me)
        Next
        For Each evt in m_restart_events.Keys
            AddPinEventListener evt, m_mode & "_" & m_name & "_restart", "ShotEventHandler", m_priority, Array("restart", Me)
        Next
        'Play the show for the active state
        PlayShowForState(m_state)
    End Sub

    Public Sub Disable()
        m_base_device.Log "Disabling"
        m_enabled = False
        Dim evt
        For Each evt in m_hit_events.Keys
            RemovePinEventListener evt, m_mode & "_" & m_name & "_hit"
        Next
        Dim x
        For x=0 to Glf_ShotProfiles(m_profile).StatesCount()
            StopShowForState(x)
        Next
    End Sub

    Private Sub StopShowForState(state)
        Dim profileState : Set profileState = Glf_ShotProfiles(m_profile).StateForIndex(state)
        m_base_device.Log "Removing Shot Show: " & m_mode & "_" & m_name & ". Key: " & profileState.Key
        If glf_running_shows.Exists(m_mode & "_" & CStr(state) & "_" & m_name & "_" & profileState.Key) Then 
            glf_running_shows(m_mode & "_" & CStr(state) & "_" & m_name & "_" & profileState.Key).StopRunningShow()
        End If
    End Sub

    Private Sub PlayShowForState(state)
        If m_enabled = False Then
            Exit Sub
        End If
        Dim profileState : Set profileState = Glf_ShotProfiles(m_profile).StateForIndex(state)
        m_base_device.Log "Playing Shot Show: " & m_mode & "_" & m_name & ". Key: " & profileState.Key
        If IsObject(profileState) Then
            If Not IsNull(profileState.Show) Then
                Dim new_running_show
                Set new_running_show = (new GlfRunningShow)(m_mode & "_" & CStr(m_state) & "_" & m_name & "_" & profileState.Key, profileState.Key, profileState, m_priority + profileState.Priority, m_tokens, m_internal_cache_id)
            End If
        End If
    End Sub

    Public Sub Hit(evt)
        If m_enabled = False Then
            Exit Sub
        End If

        Dim profile : Set profile = Glf_ShotProfiles(m_profile)
        Dim old_state : old_state = m_state
        m_base_device.Log "Hit! Profile: "&m_profile&", State: " & profile.StateName(m_state)

        Dim advancing
        If profile.AdvanceOnHit Then
            m_base_device.Log "Advancing shot because advance_on_hit is True."
            advancing = Advance(False)
        Else
            m_base_device.Log "Not advancing shot"
            advancing = False
        End If

    
        If profile.Block Then
            Glf_EventBlocks(evt).Add Name, True
        Else
            Glf_EventBlocks(evt).Add ShotKey, True
        End If
        Dim kwargs : Set kwargs = GlfKwargs()
		With kwargs
            .Add "profile", m_profile
            .Add "state", profile.StateName(old_state)
            .Add "advancing", advancing
        End With

        DispatchPinEvent m_name & "_hit", kwargs
        DispatchPinEvent m_name & "_" & m_profile & "_hit", kwargs
        DispatchPinEvent m_name & "_" & m_profile & "_" & profile.StateName(old_state) & "_hit", kwargs
        DispatchPinEvent m_name & "_" & profile.StateName(old_state) & "_hit", kwargs
        
    End Sub

    Public Function Advance(force)

        If m_enabled = False And force = False Then
            Advance = False
            Exit Function
        End If
        Dim profile : Set profile = Glf_ShotProfiles(m_profile)

        m_base_device.Log "Advancing 1 step. Profile: "&m_profile&", Current State: " & profile.StateName(m_state)

        If profile.StatesCount() = m_state Then
            If profile.ProfileLoop Then
                StopShowForState(m_state)
                m_state = 0
                If m_persist Then
                    SetPlayerState m_player_var_name, 0
                End If
                PlayShowForState(m_state)
            Else
                Advance = False
                Exit Function
            End If
        Else
            StopShowForState(m_state)
            m_state = m_state + 1
            If m_persist Then
                SetPlayerState m_player_var_name, m_state
            End If
            PlayShowForState(m_state)
        End If

        Advance = True
        
    End Function

    Public Sub Reset()
        Jump 0, True, False
    End Sub

    Public Sub Jump(state, force, force_show)
        m_base_device.Log "Received jump request. State: " & state & ", Force: "& force

        If Not m_enabled And Not force Then
            m_base_device.Log "Profile is disabled and force is False. Not jumping"
            Exit Sub
        End If
        If state = m_state And Not force_show Then
            m_base_device.Log "Shot is already in the jump destination state"
            Exit Sub
        End If
        m_base_device.Log "Jumping to profile state " & state

        StopShowForState(m_state)
        m_state = state
        If m_persist Then
            SetPlayerState m_player_var_name, m_state
        End If
        PlayShowForState(m_state)
    End Sub

    Public Sub Restart()
        Reset()
        Enable()
    End Sub

    Public Function ToYaml
        Dim yaml
        yaml = "  " & Replace(m_name, "shot_", "") & ":" & vbCrLf
        If UBound(m_switches) = 0 Then
            yaml = yaml & "    switch: " & m_switches(0) & vbCrLf
        ElseIf UBound(m_switches) > 0 Then
            yaml = yaml & "    switches: " & Join(m_switches, ",") & vbCrLf
        End If
        yaml = yaml & "    show_tokens: " & vbCrLf
        dim key
        For Each key in m_tokens.keys
            If IsArray(m_tokens(key)) Then
                yaml = yaml & "      " & key & ": " & Join(m_tokens(key), ",") & vbCrLf
            Else  
                yaml = yaml & "      " & key & ": " & m_tokens(key) & vbCrLf
            End If
        Next

        If UBound(m_base_device.EnableEvents().Keys) > -1 Then
            yaml = yaml & "    enable_events: "
            x=0
            For Each key in m_base_device.EnableEvents().keys
                yaml = yaml & m_base_device.EnableEvents()(key).Raw
                If x <> UBound(m_base_device.EnableEvents().Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If

        If UBound(m_base_device.DisableEvents().Keys) > -1 Then
            yaml = yaml & "    disable_events: "
            x=0
            For Each key in m_base_device.DisableEvents().keys
                yaml = yaml & m_base_device.DisableEvents()(key).Raw
                If x <> UBound(m_base_device.DisableEvents().Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If

        If UBound(m_advance_events.Keys) > -1 Then
            yaml = yaml & "    advance_events: "
            x=0
            For Each key in m_advance_events.keys
                yaml = yaml & m_advance_events(key).Raw
                If x <> UBound(m_advance_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If

        If UBound(m_hit_events.Keys) > -1 Then
            yaml = yaml & "    hit_events: "
            x=0
            For Each key in m_hit_events.keys
                yaml = yaml & m_hit_events(key).Raw
                If x <> UBound(m_hit_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If

        yaml = yaml & "    profile: " & m_profile & vbCrLf
        If Not IsEmpty(m_start_enabled) Then
            yaml = yaml & "    start_enabled: " & m_start_enabled & vbCrLf
        End If
        If UBound(m_restart_events.Keys) > -1 Then
            yaml = yaml & "    restart_events: "
            x=0
            For Each key in m_restart_events.keys
                yaml = yaml & m_restart_events(key).Raw
                If x <> UBound(m_restart_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If

        If UBound(m_reset_events.Keys) > -1 Then
            yaml = yaml & "    reset_events: "
            x=0
            For Each key in m_reset_events.keys
                yaml = yaml & m_reset_events(key).Raw
                If x <> UBound(m_reset_events.Keys) Then
                    yaml = yaml & ", "
                End If
                x = x + 1
            Next
            yaml = yaml & vbCrLf
        End If

        If UBound(m_control_events.Keys) > -1 Then
            yaml = yaml & "    control_events: " & vbCrLf
            For Each key in m_control_events.keys
                yaml = yaml & "      - events: "
                Dim cEvt
                x=0
                For Each cEvt in m_control_events(key).Events
                    yaml = yaml & cEvt
                    If x <> UBound(m_control_events(key).Events) Then
                        yaml = yaml & ", "
                    End If
                    x = x + 1
                Next
                yaml = yaml & vbCrLf
                yaml = yaml & "        state: " & m_control_events(key).State & vbCrLf
            Next
        End If
        
        ToYaml = yaml
    End Function
End Class

Function ShotEventHandler(args)
    Dim ownProps, kwargs, e
    ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1)
    Else
        kwargs = args(1) 
    End If
    e = args(2)
    Dim evt : evt = ownProps(0)
    Dim shot : Set shot = ownProps(1)
    Select Case evt
        Case "activate"
            shot.Activate
        Case "deactivate"
            shot.Deactivate
        Case "enable"
            shot.Enable
        Case "hit"
            If Not Glf_EventBlocks(e).Exists(shot.Name) And Not Glf_EventBlocks(e).Exists(shot.ShotKey) Then
                shot.Hit e
            End If
        Case "advance"
            shot.Advance False
        Case "control"
            shot.Jump ownProps(2).State, ownProps(2).Force, ownProps(2).ForceShow
        Case "reset"
            shot.Reset
        Case "restart"
            shot.Restart
            
    End Select
    If IsObject(args(1)) Then
        Set ShotEventHandler = kwargs
    Else
        ShotEventHandler = kwargs
    End If
End Function

Class GlfShotControlEvent
	Private m_events, m_state, m_force, m_force_show
  
	Public Property Get Events(): Events = m_events: End Property
    Public Property Let Events(input): m_events = input: End Property

    Public Property Get State(): State = m_state End Property
    Public Property Let State(input): m_state = input End Property

    Public Property Get Force(): Force = m_force: End Property
	Public Property Let Force(input): m_force = input: End Property
  
	Public Property Get ForceShow(): ForceShow = m_force_show: End Property
	Public Property Let ForceShow(input): m_force_show = input: End Property   

	Public default Function init()
        m_events = Array()
        m_state = 0
        m_force = True
        m_force_show = False
	    Set Init = Me
	End Function

End Class

Class GlfShowPlayer

    Private m_priority
    Private m_mode
    Private m_events
    Private m_debug
    Private m_name
    Private m_value
    private m_base_device

    Public Property Get Name() : Name = "show_player" : End Property
    Public Property Get EventShows() : EventShows = m_events.Items() : End Property
    Public Property Get Events(name)
        If m_events.Exists(name) Then
            Set Events = m_events(name)
        Else
            Dim new_event : Set new_event = (new GlfShowPlayerItem)()
            m_events.Add name, new_event
            Set Events = new_event
        End If
    End Property
    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(mode)
        m_name = "show_player_" & mode.name
        m_mode = mode.Name
        m_priority = mode.Priority
        m_debug = True
        Set m_events = CreateObject("Scripting.Dictionary")
        Set m_base_device = (new GlfBaseModeDevice)(mode, "show_player", Me)
        Set Init = Me
	End Function

    Public Sub Activate()
        Dim evt
        For Each evt In m_events.Keys()
            m_base_device.Log "Adding EVENT: " & Replace(evt, "_" & m_events(evt).Key, "")
            AddPinEventListener evt , m_mode & "_" & m_events(evt).Key & "_show_player_play", "ShowPlayerEventHandler", -m_priority, Array("play", Me, m_events(evt), evt)
        Next
    End Sub

    Public Sub Deactivate()
        Dim evt
        For Each evt In m_events.Keys()
            RemovePinEventListener evt, m_mode & "_" & m_events(evt).Key & "_show_player_play"
            PlayOff m_events(evt).Key
        Next
    End Sub

    Public Sub Play(evt, show)
        If show.Action = "stop" Then
           PlayOff show.Key
        Else
            Dim new_running_show
            Set new_running_show = (new GlfRunningShow)(m_name & "_" & show.Key, show.Key, show, m_priority, Null, Null)
        End If
    End Sub

    Public Sub PlayOff(key)
        If glf_running_shows.Exists(m_name & "_" & key) Then 
            glf_running_shows(m_name & "_" & key).StopRunningShow()
        End If
    End Sub

    Public Function ToYaml()
        Dim yaml
        Dim evt
        If UBound(m_events.Keys) > -1 Then
            For Each key in m_events.keys
                yaml = yaml & "  " & key & ": " & vbCrLf
                yaml = yaml & m_events(key).ToYaml
            Next
            yaml = yaml & vbCrLf
        End If
        ToYaml = yaml
    End Function

End Class

Function ShowPlayerEventHandler(args)
    Dim ownProps : ownProps = args(0)
    Dim evt : evt = ownProps(0)
    Dim ShowPlayer : Set ShowPlayer = ownProps(1)
    Select Case evt
        Case "activate"
            ShowPlayer.Activate
        Case "deactivate"
            ShowPlayer.Deactivate
        Case "play"
            ShowPlayer.Play ownProps(3), ownProps(2)
    End Select
    ShowPlayerEventHandler = Null
End Function

Class GlfShowPlayerItem
	Private m_key, m_show, m_loops, m_speed, m_tokens, m_action, m_syncms, m_duration, m_priority, m_internal_cache_id
  
	Public Property Get InternalCacheId(): InternalCacheId = m_internal_cache_id: End Property
    Public Property Let InternalCacheId(input): m_internal_cache_id = input: End Property
    
    Public Property Get Action(): Action = m_action: End Property
    Public Property Let Action(input): m_action = input: End Property

    Public Property Get Key(): Key = m_key End Property
    Public Property Let Key(input): m_key = input End Property

    Public Property Get Priority(): Priority = m_priority End Property
    Public Property Let Priority(input): m_priority = input End Property

    Public Property Get Show()
        If IsNull(m_show) Then
            Show = Null
        Else
            Set Show = m_show
        End If
    End Property
	Public Property Let Show(input)
        'msgbox "input:" & input
        If glf_shows.Exists(input) Then
            Set m_show = glf_shows(input)
        End If
    End Property
  
	Public Property Get Loops(): Loops = m_loops: End Property
	Public Property Let Loops(input): m_loops = input: End Property
  
	Public Property Get Speed(): Speed = m_speed: End Property
	Public Property Let Speed(input): m_speed = input: End Property

    Public Property Get SyncMs(): SyncMs = m_syncms: End Property
    Public Property Let SyncMs(input): m_syncms = input: End Property        

    Public Property Get Tokens()
        Set Tokens = m_tokens
    End Property        
  
    Public Function ToYaml()
        Dim yaml
        yaml = yaml & "    " & m_show.Name &": " & vbCrLf
        If m_action <> "play" Then
            yaml = yaml & "      action: " & m_action & vbCrLf
        End If
        If m_key <> "" Then
            yaml = yaml & "      key: " & m_key & vbCrLf
        End If
        If m_priority <> 0 Then
            yaml = yaml & "      priority: " & m_priority & vbCrLf
        End If
        If m_loops > -1 Then
            yaml = yaml & "      loops: " & m_loops & vbCrLf
        End If
        If m_speed <> 1 Then
            yaml = yaml & "      speed: " & m_speed & vbCrLf
        End If
        If UBound(m_tokens.Keys) > -1 Then
            yaml = yaml & "      show_tokens: " & vbCrLf
            Dim key
            For Each key in m_tokens.Keys
                yaml = yaml & "        " & key & ": " & m_tokens(key) & vbCrLf
            Next
        End If
        If m_syncms > 0 Then
            yaml = yaml & "      sync_ms: " & m_syncms & vbCrLf
        End If
        ToYaml = yaml
    End Function

	Public default Function init()
        m_action = "play"
        m_key = ""
        m_priority = 0
        m_loops = -1
        m_internal_cache_id = -1
        m_speed = 1
        m_syncms = 0
        m_show = Null
        Set m_tokens = CreateObject("Scripting.Dictionary")
	    Set Init = Me
	End Function

End Class


Class GlfShow

    Private m_name
    Private m_steps
    Private m_total_step_time

    Public Property Get Name(): Name = m_name: End Property
    
    Public Property Get Steps() : Set Steps = m_steps : End Property

    Public Function StepAtIndex(index) : Set StepAtIndex = m_steps.Items()(index) : End Function
    
    Public default Function init(name)
        m_name = name
        m_total_step_time = 0
        Set m_steps = CreateObject("Scripting.Dictionary")
        Set Init = Me
	End Function

    Public Function AddStep(absolute_time, relative_time, duration)
        Dim new_step : Set new_step = (new GlfShowStep)()
        new_step.Duration = duration
        new_step.RelativeTime = relative_time
        new_step.AbsoluteTime = absolute_time
        new_step.IsLastStep = True
        
        'Add a empty first step if if show does not start right away
        If UBound(m_steps.Keys) = -1 Then
            If Not IsNull(new_step.Time) And new_step.Time <> 0 Then
                Dim empty_step : Set empty_step = (new GlfShowStep)()
                empty_step.Duration = new_step.Time
                m_total_step_time = new_step.Time
                m_steps.Add CStr(UBound(m_steps.Keys())+1), empty_step        
            End If
        End If
        

        

        If UBound(m_steps.Keys()) > -1 Then
            Dim prevStep : Set prevStep = m_steps.Items()(UBound(m_steps.Keys()))
            prevStep.IsLastStep = False
            'need to work out previous steps duration.
            If IsNull(prevStep.Duration) Then
                'The previous steps duration needs calculating.
                'If this step has a relative time then the last steps duration is that time.
                If Not IsNull(new_step.Time) Then
                    If new_step.IsRelativeTime Then
                        prevStep.Duration = new_step.Time
                    Else
                        prevStep.Duration = new_step.Time - m_total_step_time
                    End If
                Else
                    prevStep.Duration = 1
                End If
            End If
            m_total_step_time = m_total_step_time + prevStep.Duration
        Else
            If IsNull(new_step.Duration) Then
                m_total_step_time = m_total_step_time + 1
            Else
                m_total_step_time = m_total_step_time + new_step.Time
            End If
        End If

        m_steps.Add CStr(UBound(m_steps.Keys())+1), new_step
        Set AddStep = new_step
    End Function

    Public Function ToYaml()
        'Dim yaml
        'yaml = yaml & "  " & Replace(m_name, "shotprofile_", "") & ":" & vbCrLf
        'yaml = yaml & "    states: " & vbCrLf
        'Dim token,evt,x : x = 0
        'For Each evt in m_states.Keys
        '    yaml = yaml & "     - name: " & StateName(x) & vbCrLf
            'yaml = yaml & "       show: " & m_states(evt).Show & vbCrLf
            'yaml = yaml & "       loops: " & m_states(evt).Loops & vbCrLf
            'yaml = yaml & "       speed: " & m_states(evt).Speed & vbCrLf
            'yaml = yaml & "       sync_ms: " & m_states(evt).SyncMs & vbCrLf

            'If Ubound(m_states(evt).Tokens().Keys)>-1 Then
            '    yaml = yaml & "       show_tokens: " & vbCrLf
            '    For Each token in m_states(evt).Tokens().Keys()
            '        yaml = yaml & "         " & token & ": " & m_states(evt).Tokens(token) & vbCrLf
            '    Next
            'End If

            'yaml = yaml & "     block: " & m_block & vbCrLf
            'yaml = yaml & "     advance_on_hit: " & m_advance_on_hit & vbCrLf
            'yaml = yaml & "     loop: " & m_loop & vbCrLf
            'yaml = yaml & "     rotation_pattern: " & m_rotation_pattern & vbCrLf
            'yaml = yaml & "     state_names_to_not_rotate: " & m_states_not_to_rotate & vbCrLf
            'yaml = yaml & "     state_names_to_rotate: " & m_states_to_rotate & vbCrLf
         '   x = x +1
        'Next
        'ToYaml = yaml
    End Function

End Class

Class GlfRunningShow

    Private m_key
    Private m_show_name
    Private m_show_settings
    Private m_current_step
    Private m_priority
    Private m_total_steps
    Private m_tokens
    Private m_internal_cache_id

    Public Property Get CacheName(): CacheName = m_show_name & "_" & m_internal_cache_id & "_" & ShowSettings.InternalCacheId: End Property
    Public Property Get Tokens(): Set Tokens = m_tokens : End Property

    Public Property Get Key(): Key = m_key: End Property
    Public Property Let Key(input): m_key = input: End Property

    Public Property Get Priority(): Priority = m_priority End Property
    Public Property Let Priority(input): m_priority = input End Property        

    Public Property Get CurrentStep(): CurrentStep = m_current_step End Property
    Public Property Let CurrentStep(input): m_current_step = input End Property        

    Public Property Get TotalSteps(): TotalSteps = m_total_steps End Property
    Public Property Let TotalSteps(input): m_total_steps = input End Property        

    Public Property Get ShowName(): ShowName = m_show_name: End Property
    Public Property Let ShowName(input): m_show_name = input: End Property
        
    Public Property Get ShowSettings(): Set ShowSettings = m_show_settings: End Property
    Public Property Let ShowSettings(input): Set m_show_settings = input: End Property
    
    Public default Function init(rname, rkey, show_settings, priority, tokens, cache_id)
        m_show_name = rname
        m_key = rkey
        m_current_step = 0
        m_priority = priority
        m_internal_cache_id = cache_id
        Set m_show_settings = show_settings

        Dim key
        Dim mergedTokens : Set mergedTokens = CreateObject("Scripting.Dictionary")
        If Not IsNull(m_show_settings.Tokens) Then
            For Each key In m_show_settings.Tokens.Keys()
                mergedTokens.Add key, m_show_settings.Tokens()(key)
            Next
        End If
        If Not IsNull(tokens) Then
            For Each key In tokens.Keys
                If mergedTokens.Exists(key) Then
                    mergedTokens(key) = tokens(key)
                Else
                    mergedTokens.Add key, tokens(key)
                End If
            Next
        End If
        Set m_tokens = mergedTokens
        
        m_total_steps = UBound(m_show_settings.Show.Steps.Keys())
        If glf_running_shows.Exists(m_show_name) Then
            glf_running_shows(m_show_name).StopRunningShow()
            glf_running_shows.Add m_show_name, Me
        Else
            glf_running_shows.Add m_show_name, Me
        End If 
        Play
        Set Init = Me
	End Function

    Public Sub Play()
        'Play the show.
        Log "Playing show: " & m_show_name & " With Key: " & m_key
        GlfShowStepHandler(Array(Me))
    End Sub

    Public Sub StopRunningShow()
        Log "Removing show: " & m_show_name & " With Key: " & m_key
        Dim cached_show,light, cached_show_lights
        If glf_cached_shows.Exists(CacheName) Then
            cached_show = glf_cached_shows(CacheName)
            Set cached_show_lights = cached_show(1)
        Else
            msgbox "show not cached! Problem with caching"
        End If
        Dim lightStack
        For Each light in cached_show_lights.Keys()

            Set lightStack = glf_lightStacks(light)
            
            If Not lightStack.IsEmpty() Then
                ' Pop the current top color
                lightStack.Pop()
            End If
            
            If Not lightStack.IsEmpty() Then
                ' Set the light to the next color on the stack
                Dim nextColor
                Set nextColor = lightStack.Peek()
                Glf_SetLight light, nextColor("Color")
            Else
                ' Turn off the light since there's nothing on the stack
                Glf_SetLight light, "000000"
            End If
        Next

        RemoveDelay Me.ShowName & "_" & Me.Key
        glf_running_shows.Remove m_show_name
    End Sub

    Public Sub Log(message)
        glf_debugLog.WriteToLog "Running Show", message
    End Sub
End Class

Function GlfShowStepHandler(args)
    Dim running_show : Set running_show = args(0)
    Dim nextStep : Set nextStep = running_show.ShowSettings.Show.StepAtIndex(running_show.CurrentStep)
    If UBound(nextStep.Lights) > -1 Then
        Dim cached_show, cached_show_seq
        If glf_cached_shows.Exists(running_show.CacheName) Then
            cached_show = glf_cached_shows(running_show.CacheName)
            cached_show_seq = cached_show(0)
        Else
            msgbox "show not cached! Problem with caching"
        End If
'        glf_debugLog.WriteToLog "Running Show", join(cached_show(running_show.CurrentStep))
        LightPlayerCallbackHandler running_show.Key, Array(cached_show_seq(running_show.CurrentStep)), running_show.ShowName, running_show.Priority + running_show.ShowSettings.Priority
    End If
    If nextStep.Duration = -1 Then
        'glf_debugLog.WriteToLog "Running Show", "HOLD"
        Exit Function
    End If
    running_show.CurrentStep = running_show.CurrentStep + 1
    If nextStep.IsLastStep = True Then
        'msgbox "last step"
        If IsNull(nextStep.Duration) Then
            'msgbox "5!"
            nextStep.Duration = 1
        End If
    End If
    If running_show.CurrentStep > running_show.TotalSteps Then
        'End of Show
        'glf_debugLog.WriteToLog "Running Show", "END OF SHOW"
        If running_show.ShowSettings.Loops = -1 Or running_show.ShowSettings.Loops > 1 Then
            If running_show.ShowSettings.Loops > 1 Then
                running_show.ShowSettings.Loops = running_show.ShowSettings.Loops - 1
            End If
            running_show.CurrentStep = 0
            SetDelay running_show.ShowName & "_" & running_show.Key, "GlfShowStepHandler", Array(running_show), (nextStep.Duration / running_show.ShowSettings.Speed) * 1000
        Else
'            glf_debugLog.WriteToLog "Running Show", "STOPPING SHOW, NO Loops"
            running_show.StopRunningShow()
        End If
    Else
'        glf_debugLog.WriteToLog "Running Show", "Scheduling Next Step"
        SetDelay running_show.ShowName & "_" & running_show.Key, "GlfShowStepHandler", Array(running_show), (nextStep.Duration / running_show.ShowSettings.Speed) * 1000
    End If
End Function

Class GlfShowStep

    Private m_lights, m_time, m_duration, m_isLastStep, m_absTime, m_relTime

    Public Property Get Lights(): Lights = m_lights: End Property
    Public Property Let Lights(input) : m_lights = input: End Property

    Public Property Get Time()
        If IsNull(m_relTime) Then
            Time = m_absTime
        Else
            Time = m_relTime
        End If
    End Property

    Public Property Get IsRelativeTime()
        If Not IsNull(m_relTime) Then
            IsRelativeTime = True
        Else
            IsRelativeTime = False
        End If
    End Property

    Public Property Let RelativeTime(input) : m_relTime = input: End Property
    Public Property Let AbsoluteTime(input) : m_absTime = input: End Property

    Public Property Get Duration(): Duration = m_duration: End Property
    Public Property Let Duration(input) : m_duration = input: End Property

    Public Property Get IsLastStep(): IsLastStep = m_isLastStep: End Property
    Public Property Let IsLastStep(input) : m_isLastStep = input: End Property
        
    Public default Function init()
        m_lights = Array()
        m_duration = Null
        m_time = Null
        m_absTime = Null
        m_relTime = Null
        m_isLastStep = False
        Set Init = Me
	End Function

    Public Function ToYaml()
        'Dim yaml
        'yaml = yaml & "  " & Replace(m_name, "shotprofile_", "") & ":" & vbCrLf
        'yaml = yaml & "    states: " & vbCrLf
        'Dim token,evt,x : x = 0
        'For Each evt in m_states.Keys
        '    yaml = yaml & "     - name: " & StateName(x) & vbCrLf
            'yaml = yaml & "       show: " & m_states(evt).Show & vbCrLf
            'yaml = yaml & "       loops: " & m_states(evt).Loops & vbCrLf
            'yaml = yaml & "       speed: " & m_states(evt).Speed & vbCrLf
            'yaml = yaml & "       sync_ms: " & m_states(evt).SyncMs & vbCrLf

            'If Ubound(m_states(evt).Tokens().Keys)>-1 Then
            '    yaml = yaml & "       show_tokens: " & vbCrLf
            '    For Each token in m_states(evt).Tokens().Keys()
            '        yaml = yaml & "         " & token & ": " & m_states(evt).Tokens(token) & vbCrLf
            '    Next
            'End If

            'yaml = yaml & "     block: " & m_block & vbCrLf
            'yaml = yaml & "     advance_on_hit: " & m_advance_on_hit & vbCrLf
            'yaml = yaml & "     loop: " & m_loop & vbCrLf
            'yaml = yaml & "     rotation_pattern: " & m_rotation_pattern & vbCrLf
            'yaml = yaml & "     state_names_to_not_rotate: " & m_states_not_to_rotate & vbCrLf
            'yaml = yaml & "     state_names_to_rotate: " & m_states_to_rotate & vbCrLf
         '   x = x +1
        'Next
        'ToYaml = yaml
    End Function

End Class
Class GlfStateMachine
    Private m_name
    Private m_priority
    private m_base_device
    Private m_states
    Private m_transistions
 
    Private m_current_state
 
    Public Property Get Name(): Name = m_name: End Property
 
    Public Property Get States(): States = m_states: End Property
    Public Property Let States(value)
        m_states = value
    End Property
 
    Public Property Get Transistions(): Transistions = m_transistions: End Property
    Public Property Let Transistions(value)
        m_transistions = value
    End Property
 
    Public Property Get CurrentState(): CurrentState = m_current_state: End Property
    Public Property Let CurrentState(value)
        m_current_state = value
    End Property
 
    Public default Function init(name, mode)
        m_name = name
        m_mode = mode.Name
        m_priority = mode.Priority
 
        Set m_states = CreateObject("Scripting.Dictionary")
        Set m_transistions = CreateObject("Scripting.Dictionary")
 
        Set m_base_device = (new GlfBaseModeDevice)(mode, "state_machine", Me)
 
        Set Init = Me
    End Function
 
End Class
 
Class GlfStateMachineState
	Private m_name, m_label, m_show_when_active, m_show_tokens, m_events_when_started, m_events_when_stopped
 
	Public Property Get Name(): Name = m_name: End Property
    Public Property Let Name(input): m_name = input: End Property
 
    Public Property Get Label(): Label = m_label: End Property
    Public Property Let Label(input): m_label = input: End Property
 
    Public Property Get ShowWhenActive(): ShowWhenActive = m_show_when_active: End Property
    Public Property Let ShowWhenActive(input): m_show_when_active = input: End Property
 
    Public Property Get ShowTokens(): Set ShowTokens = m_show_tokens: End Property
 
    Public Property Get EventsWhenStarted(): EventsWhenStarted = m_events_when_started: End Property
    Public Property Let EventsWhenStarted(input): m_events_when_started = input: End Property
 
    Public Property Get EventsWhenStopped(): EventsWhenStopped = m_events_when_stopped: End Property
    Public Property Let EventsWhenStopped(input): m_events_when_stopped = input: End Property
 
	Public default Function init(name)
        m_name = name
        m_label = Empty
        m_show_when_active = Empty
        Set m_show_tokens = CreateObject("Scripting.Dictionary")
        Set m_events_when_started = Array()
        Set m_events_when_stopped = Array()
	    Set Init = Me
	End Function
 
End Class
 
Class GlfStateMachineTranistion
	Private m_source, m_target, m_events, m_events_when_transistioning
 
    Public Property Get Source(): Source = m_source: End Property
    Public Property Let Source(input): m_source = input: End Property
 
    Public Property Get Target(): Target = m_target: End Property
    Public Property Let Target(input): m_target = input: End Property
 
    Public Property Get Events(): Events = m_events: End Property
    Public Property Let Events(input): m_events = input: End Property
 
    Public Property Get EventsWhenTransitioning(): EventsWhenTransitioning = m_events_when_transitioning: End Property
    Public Property Let EventsWhenTransitioning(input): m_events_when_transitioning = input: End Property
 
	Public default Function init(name)
        m_source = name
        m_target = Empty
        m_events = Array()
        m_events_when_transistioning = Array()
	    Set Init = Me
	End Function
 
End Class


Class GlfTimer

    Private m_name
    Private m_priority
    Private m_mode
    Private m_base_device

    Private m_control_events
    Private m_running
    Private m_ticks
    Private m_ticks_remaining
    Private m_start_value
    Private m_end_value
    Private m_direction
    Private m_tick_interval
    Private m_starting_tick_interval
    Private m_max_value
    Private restart_on_complete
    Private m_start_running

    Public Property Get Name() : Name = m_name : End Property
    Public Property Get ControlEvents(name)
        If m_control_events.Exists(name) Then
            Set ControlEvents = m_control_events(name)
        Else
            Dim newEvent : Set newEvent = (new GlfTimerControlEvent)()
            m_control_events.Add name, newEvent
            Set ControlEvents = newEvent
        End If
    End Property
    Public Property Get StartValue() : StartValue = m_start_value : End Property
    Public Property Get EndValue() : EndValue = m_end_value : End Property
    Public Property Get Direction() : Direction = m_direction : End Property
    Public Property Let StartValue(value) : m_start_value = value : End Property
    Public Property Let EndValue(value) : m_end_value = value : End Property
    Public Property Let Direction(value) : m_direction = value : End Property
    Public Property Let MaxValue(value) : m_max_value = value : End Property
    Public Property Let RestartOnComplete(value) : restart_on_complete = value : End Property
    Public Property Let StartRunning(value) : m_start_running = value : End Property
    Public Property Let TickInterval(value)
        m_tick_interval = value * 1000
        m_starting_tick_interval = value
    End Property

    Public Property Get GetValue(value)
        Select Case value
            Case "ticks_remaining"
              GetValue = m_ticks_remaining
        End Select
    End Property

	Public default Function init(name, mode)
        m_name = "timer_" & name
        m_mode = mode.Name
        m_priority = mode.Priority
        m_direction = "up"
        m_ticks = 0
        m_ticks_remaining = 0
        m_tick_interval = 1000
        m_starting_tick_interval = 1
        restart_on_complete = False
        start_running = False

        Set m_control_events = CreateObject("Scripting.Dictionary")
        m_running = False

        Set m_base_device = (new GlfBaseModeDevice)(mode, "timer", Me)

        glf_timers.Add name, Me

        Set Init = Me
	End Function

    Public Sub Activate()
        Dim evt
        For Each evt in m_control_events.Keys
            AddPinEventListener m_control_events(evt).EventName, m_name & "_action", "TimerEventHandler", m_priority, Array("action", Me, m_control_events(evt))
        Next
        m_ticks = m_start_value
        m_ticks_remaining = m_ticks
        If m_start_running Then
            StartTimer()
        End If
    End Sub

    Public Sub Deactivate()
        Dim evt
        For Each evt in m_control_events.Keys
            RemovePinEventListener m_control_events(evt).EventName, m_name & "_action"
        Next
        RemoveDelay m_name & "_tick"
        m_running = False
    End Sub

    Public Sub Action(controlEvent)

        dim value : value = controlEvent.Value
        Select Case controlEvent.Action
            Case "add"
                Add GetRef(value(0))()
            Case "subtract"
                Subtract GetRef(value(0))()
            Case "jump"
                Jump GetRef(value(0))()
            Case "start"
                StartTimer()
            Case "stop"
                StopTimer()
            Case "reset"
                Reset()
            Case "restart"
                Restart()
            Case "pause"
                Pause GetRef(value(0))()
            Case "set_tick_interval"
                SetTickInterval GetRef(value(0))()
            Case "change_tick_interval"
                ChangeTickInterval GetRef(value(0))()
            Case "reset_tick_interval"
                SetTickInterval m_starting_tick_interval
        End Select

    End Sub

    Private Sub StartTimer()
        If m_running Then
            Exit Sub
        End If

        m_base_device.Log "Starting Timer"
        m_running = True
        RemoveDelay m_name & "_unpause"
        Dim kwargs : Set kwargs = GlfKwargs()
        With kwargs
            .Add "ticks", m_ticks
            .Add "ticks_remaining", m_ticks_remaining
        End With
        DispatchPinEvent m_name & "_started", kwargs
        PostTickEvents()
        SetDelay m_name & "_tick", "TimerEventHandler", Array(Array("tick", Me), Null), m_tick_interval
    End Sub

    Private Sub StopTimer()
        m_base_device.Log "Stopping Timer"
        m_running = False
        Dim kwargs : Set kwargs = GlfKwargs()
        With kwargs
            .Add "ticks", m_ticks
            .Add "ticks_remaining", m_ticks_remaining
        End With
        DispatchPinEvent m_name & "_stopped", kwargs
        RemoveDelay m_name & "_tick"
    End Sub

    Public Sub Pause(pause_ms)
        m_base_device.Log "Pausing Timer for "&pause_ms&" ms"
        m_running = False
        RemoveDelay m_name & "_tick"
        
        Dim kwargs : Set kwargs = GlfKwargs()
        With kwargs
            .Add "ticks", m_ticks
            .Add "ticks_remaining", m_ticks_remaining
        End With
        DispatchPinEvent m_name & "_paused", kwargs

        If pause_ms > 0 Then
            Dim startControlEvent : Set startControlEvent = (new GlfTimerControlEvent)()
            startControlEvent.Action = "start"
            SetDelay m_name & "_unpause", "TimerEventHandler", Array(Array("action", Me, startControlEvent), Null), pause_ms
        End If
    End Sub 

    Public Sub Tick()
        m_base_device.Log "Timer Tick"
        If Not m_running Then
            m_base_device.Log "Timer is not running. Will remove."
            Exit Sub
        End If

        Dim newValue
        If m_direction = "down" Then
            newValue = m_ticks - 1
        Else
            newValue = m_ticks + 1
        End If
        
        m_base_device.Log "ticking: old value: "& m_ticks & ", new Value: " & newValue & ", target: "& m_end_value
        m_ticks = newValue
        If Not PostTickEvents() Then
            SetDelay m_name & "_tick", "TimerEventHandler", Array(Array("tick", Me), Null), m_tick_interval    
        End If
    End Sub

    Private Function CheckForDone

        ' Checks to see if this timer is done. Automatically called anytime the
        ' timer's value changes.
        m_base_device.Log "Checking to see if timer is done. Ticks: "&m_ticks&", End Value: "&m_end_value&", Direction: "& m_direction

        if m_direction = "up" And Not IsEmpty(m_end_value) And m_ticks >= m_end_value Then
            TimerComplete()
            CheckForDone = True
            Exit Function
        End If

        If m_direction = "down" And m_ticks <= m_end_value Then
            TimerComplete()
            CheckForDone = True
            Exit Function
        End If

        If Not IsEmpty(m_end_value) Then 
            m_ticks_remaining = abs(m_end_value - m_ticks)
        End If
        m_base_device.Log "Timer is not done"

        CheckForDone = False

    End Function

    Private Sub TimerComplete

        m_base_device.Log "Timer Complete"

        StopTimer()
        Dim kwargs : Set kwargs = GlfKwargs()
        With kwargs
            .Add "ticks", m_ticks
            .Add "ticks_remaining", m_ticks_remaining
        End With
        DispatchPinEvent m_name & "_complete", kwargs
        
        If m_restart_on_complete Then
            m_base_device.Log "Restart on complete: True"
            Restart()
        End If
    End Sub

    Private Sub Restart
        Reset()
        If Not m_running Then
            StartTimer()
        Else
            PostTickEvents()
        End If
    End Sub

    Private Sub Reset
        m_base_device.Log "Resetting timer. New value: "& m_start_value
        Jump m_start_value
    End Sub

    Private Sub Jump(timer_value)
        m_ticks = (timer_value/1000)

        If m_max_value and m_ticks > m_max_value Then
            m_ticks = m_max_value
        End If

        CheckForDone()
    End Sub

    Public Sub ChangeTickInterval(change)
        m_tick_interval = m_tick_interval * (change/1000)
    End Sub

    Public Sub SetTickInterval(timer_value)
        m_tick_interval = timer_value
    End Sub
        
    Private Function PostTickEvents()
        PostTickEvents = True
        If Not CheckForDone() Then
            PostTickEvents = False
            Dim kwargs : Set kwargs = GlfKwargs()
            With kwargs
                .Add "ticks", m_ticks
                .Add "ticks_remaining", m_ticks_remaining
            End With
            DispatchPinEvent m_name & "_tick", kwargs
            m_base_device.Log "Ticks: "&m_ticks&", Remaining: " & m_ticks_remaining
        End If
    End Function

    Public Sub Add(timer_value) 
        Dim new_value

        new_value = m_ticks + (timer_value/1000)

        If Not IsEmpty(m_max_value) And new_value > m_max_value Then
            new_value = m_max_value
        End If
        m_ticks = new_value
        timer_value = new_value - timer_value

        Dim kwargs : Set kwargs = GlfKwargs()
        With kwargs
            .Add "ticks", m_ticks
            .Add "ticks_added", timer_value
            .Add "ticks_remaining", m_ticks_remaining
        End With
        DispatchPinEvent m_name & "_time_added", kwargs
        CheckForDone()
    End Sub

    Public Sub Subtract(timer_value)
        m_ticks = m_ticks - (timer_value/1000)
        Dim kwargs : Set kwargs = GlfKwargs()
        With kwargs
            .Add "ticks", m_ticks
            .Add "ticks_subtracted", timer_value
            .Add "ticks_remaining", m_ticks_remaining
        End With
        DispatchPinEvent m_name & "_time_subtracted", kwargs
        
        CheckForDone()
    End Sub
End Class

Function TimerEventHandler(args)
    
    Dim ownProps, kwargs : ownProps = args(0) : kwargs = args(1) 
    Dim evt : evt = ownProps(0)
    Dim timer : Set timer = ownProps(1)
    
    Select Case evt
        Case "action"
            Dim controlEvent : Set controlEvent = ownProps(2)
            timer.Action controlEvent
        Case "tick"
            timer.Tick 
    End Select
    TimerEventHandler = kwargs
End Function

Class GlfTimerControlEvent
	Private m_event, m_action, m_value
  
	Public Property Get EventName(): EventName = m_event: End Property
    Public Property Let EventName(input): m_event = input: End Property

    Public Property Get Action(): Action = m_action : End Property
    Public Property Let Action(input): m_action = input : End Property

    Public Property Get Value()
        Value = m_value
    End Property
    Public Property Let Value(input)
        m_value = Glf_ParseInput(input)
    End Property

	Public default Function init()
        m_event = Empty
        m_action = Empty
        m_value = Empty
	    Set Init = Me
	End Function

End Class
Class GlfVariablePlayer

    Private m_priority
    Private m_mode
    Private m_events
    Private m_debug

    Private m_value

    Public Property Get Events(name)
        Dim newEvent : Set newEvent = (new GlfVariablePlayerEvent)(name)
        m_events.Add newEvent.BaseEvent.Name, newEvent
        Set Events = newEvent
    End Property
   
    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(mode)
        m_mode = mode.Name
        m_priority = mode.Priority

        Set m_events = CreateObject("Scripting.Dictionary")
        
        AddPinEventListener m_mode & "_starting", "variable_player_activate", "VariablePlayerEventHandler", m_priority, Array("activate", Me)
        AddPinEventListener m_mode & "_stopping", "variable_player_deactivate", "VariablePlayerEventHandler", m_priority, Array("deactivate", Me)
        Set Init = Me
	End Function

    Public Sub Activate()
        Dim evt
        For Each evt In m_events.Keys()
            AddPinEventListener m_events(evt).BaseEvent.EventName, m_mode & "_variable_player_play", "VariablePlayerEventHandler", m_priority, Array("play", Me, evt)
        Next
    End Sub

    Public Sub Deactivate()
        Dim evt
        For Each evt In m_events.Keys()
            RemovePinEventListener m_events(evt).BaseEvent.EventName, m_mode & "_variable_player_play"
        Next
    End Sub

    Public Sub Play(evt)
        Log "Playing: " & evt
        If Not IsNull(m_events(evt).BaseEvent.Condition) Then
            If GetRef(m_events(evt).BaseEvent.Condition)() = False Then
                Exit Sub
            End If
        End If
        Dim vKey, v
        For Each vKey in m_events(evt).Variables.Keys
            Log "Setting Variable " & vKey
            Set v = m_events(evt).Variable(vKey)
            Dim varValue : varValue = v.VariableValue
            Select Case v.Action
                Case "add"
                    SetPlayerState vKey, GetPlayerState(vKey) + varValue
                Case "set"
                    SetPlayerState vKey, varValue
        End Select
        Next
    End Sub

    Private Sub Log(message)
        If m_debug = True Then
            glf_debugLog.WriteToLog m_mode & "_variable_player_play", message
        End If
    End Sub
End Class

Class GlfVariablePlayerEvent

    Private m_event
	Private m_variables

    Public Property Get BaseEvent() : Set BaseEvent = m_event : End Property
  
	Public Property Get Variable(name)
        If m_variables.Exists(name) Then
            Set Variable = m_variables(name)
        Else
            Dim new_variable : Set new_variable = (new GlfVariablePlayerItem)()
            m_variables.Add name, new_variable
            Set Variable = new_variable
        End If
    End Property
    
    Public Property Get Variables(): Set Variables = m_variables End Property

	Public default Function init(evt)
        Set m_event = (new GlfEvent)(evt)
        Set m_variables = CreateObject("Scripting.Dictionary")
	    Set Init = Me
	End Function

End Class

Class GlfVariablePlayerItem
	Private m_block, m_show, m_float, m_int, m_string, m_player, m_action, m_type
  
	Public Property Get Action(): Action = m_action: End Property
    Public Property Let Action(input): m_action = input: End Property

    Public Property Get Block(): Block = m_block End Property
    Public Property Let Block(input): m_block = input End Property

	Public Property Let Float(input): m_float = Glf_ParseInput(input): m_type = "float" : End Property
  
	Public Property Let Int(input): m_int = Glf_ParseInput(input): m_type = "int" : End Property
  
	Public Property Let String(input): m_string = input: m_type = "string" : End Property

    Public Property Get VariableType(): VariableType = m_type: End Property
    Public Property Get VariableValue()
        Select Case m_type
            Case "float"
                VariableValue = GetRef(m_float(0))()
            Case "int"
                VariableValue = GetRef(m_int(0))()
            Case "string"
                VariableValue = m_string
            Case Else
                VariableValue = Empty
        End Select
    End Property

    Public Property Get Player(): Player = m_player: End Property
    Public Property Let Player(input): m_player = input: End Property

	Public default Function init()
        m_action = "add"
        m_type = Empty
        m_block = False
        m_float = Empty
        m_int = Empty
        m_string = Empty
        m_player = Empty
	    Set Init = Me
	End Function

End Class

Function VariablePlayerEventHandler(args)
    
    Dim ownProps, kwargs : ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1) 
    Else
        kwargs = args(1)
    End If
    Dim evt : evt = ownProps(0)
    Dim variablePlayer : Set variablePlayer = ownProps(1)
    Select Case evt
        Case "activate"
            variablePlayer.Activate
        Case "deactivate"
            variablePlayer.Deactivate
        Case "play"
            variablePlayer.Play ownProps(2)
    End Select
    If IsObject(args(1)) Then
        Set VariablePlayerEventHandler = kwargs
    Else
        VariablePlayerEventHandler = kwargs
    End If
    
End Function


Class DelayObject
	Private m_name, m_callback, m_ttl, m_args
  
	Public Property Get Name(): Name = m_name: End Property
	Public Property Let Name(input): m_name = input: End Property
  
	Public Property Get Callback(): Callback = m_callback: End Property
	Public Property Let Callback(input): m_callback = input: End Property
  
	Public Property Get TTL(): TTL = m_ttl: End Property
	Public Property Let TTL(input): m_ttl = input: End Property
  
	Public Property Get Args(): Args = m_args: End Property
	Public Property Let Args(input): m_args = input: End Property
  
	Public default Function init(name, callback, ttl, args)
	  m_name = name
	  m_callback = callback
	  m_ttl = ttl
	  m_args = args

	  Set Init = Me
	End Function
End Class

Dim delayQueue : Set delayQueue = CreateObject("Scripting.Dictionary")
Dim delayQueueMap : Set delayQueueMap = CreateObject("Scripting.Dictionary")
Dim delayCallbacks : Set delayCallbacks = CreateObject("Scripting.Dictionary")

Sub SetDelay(name, callbackFunc, args, delayInMs)
    Dim executionTime
    executionTime = gametime + delayInMs
    'If gametime >= executionTime Then
    '    executionTime = executionTime + 100
    'End If
    
    If delayQueueMap.Exists(name) Then
        delayQueueMap.Remove name
    End If
    

    If delayQueue.Exists(executionTime) Then
        If delayQueue(executionTime).Exists(name) Then
            delayQueue(executionTime).Remove name
        End If
    Else
        delayQueue.Add executionTime, CreateObject("Scripting.Dictionary")
    End If

    'glf_debugLog.WriteToLog "Delay", "Adding delay for " & name & ", callback: " & callbackFunc & ", ExecutionTime: " & executionTime
    delayQueue(executionTime).Add name, (new DelayObject)(name, callbackFunc, executionTime, args)
    delayQueueMap.Add name, executionTime
    
End Sub

Function AlignToNearest10th(timeMs)
    AlignToNearest10th = Int(timeMs / 100) * 100
End Function

Function RemoveDelay(name)
    If delayQueueMap.Exists(name) Then
        If delayQueue.Exists(delayQueueMap(name)) Then
            If delayQueue(delayQueueMap(name)).Exists(name) Then
                'glf_debugLog.WriteToLog "Delay", "Removing delay for " & name & " and  Execution Time: " & delayQueueMap(name)
                delayQueue(delayQueueMap(name)).Remove name
            End If
            delayQueueMap.Remove name
            RemoveDelay = True
            'glf_debugLog.WriteToLog "Delay", "Removing delay for " & name
            Exit Function
        End If
    End If
    RemoveDelay = False
End Function

Sub DelayTick()
    Dim queueItem, key, delayObject
    For Each queueItem in delayQueue.Keys()
        If Int(queueItem) < gametime Then
            For Each key In delayQueue(queueItem).Keys()
                If IsObject(delayQueue(queueItem)(key)) Then
                    Set delayObject = delayQueue(queueItem)(key)
                    'glf_debugLog.WriteToLog "Delay", "Executing delay: " & key & ", callback: " & delayObject.Callback
                    GetRef(delayObject.Callback)(delayObject.Args)    
                End If
            Next
            delayQueue.Remove queueItem
        End If
    Next
End Sub
Function CreateGlfBallDevice(name)
	Dim device : Set device = (new GlfBallDevice)(name)
	Set CreateGlfBallDevice = device
End Function

Class GlfBallDevice

    Private m_name
    Private m_ball_switches
    Private m_player_controlled_eject_event
    Private m_eject_timeout
    Private m_eject_enable_time
    Private m_balls
    Private m_balls_in_device
    Private m_default_device
    Private m_eject_callback
    Private m_eject_all_events
    Private m_balls_to_eject
    Private m_ejecting_all
    Private m_ejecting
    Private m_mechanical_eject
    Private m_eject_targets
    Private m_entrance_count_delay
    Private m_incoming_balls
    Private m_debug

    Public Property Get Name(): Name = m_name : End Property
    Public Property Get GetValue(value)
        Select Case value
            Case "balls":
                GetValue = m_balls_in_device
        End Select
    End Property
    Public Property Let DefaultDevice(value)
        m_default_device = value
        If m_default_device = True Then
            Set glf_plunger = Me
        End If
    End Property
	Public Property Get HasBall()
        HasBall = (Not IsNull(m_balls(0)) And m_ejecting = False)
    End Property
    
    Public Property Get Balls(): Balls = m_balls_in_device : End Property

    Public Property Let AddIncomingBalls(value) : m_incoming_balls = m_incoming_balls + value : End Property

    Public Property Let EjectCallback(value) : m_eject_callback = value : End Property
    Public Property Let EjectEnableTime(value) : m_eject_enable_time = value : End Property
        
    Public Property Let EjectTimeout(value) : m_eject_timeout = value : End Property
    Public Property Let EntranceCountDelay(value) : m_entrance_count_delay = value : End Property
    Public Property Let EjectAllEvents(value)
        m_eject_all_events = value
        Dim evt
        For Each evt in m_eject_all_events
            AddPinEventListener evt, m_name & "_eject_all", "BallDeviceEventHandler", 1000, Array("ball_eject_all", Me)
        Next
    End Property
    Public Property Let EjectTargets(value)
        m_eject_targets = value
        Dim evt
        For Each evt in m_eject_targets
            AddPinEventListener evt & "_active", m_name & "_eject_target", "BallDeviceEventHandler", 1000, Array("eject_timeout", Me)
        Next
    End Property
    Public Property Let PlayerControlledEjectEvent(value)
        m_player_controlled_eject_event = value
        AddPinEventListener m_player_controlled_eject_event, m_name & "_eject_attempt", "BallDeviceEventHandler", 1000, Array("ball_eject", Me)
    End Property
    Public Property Let BallSwitches(value)
        m_ball_switches = value
        ReDim m_balls(Ubound(m_ball_switches))
        Dim x
        For x=0 to UBound(m_ball_switches)
            m_balls(x) = Null
            AddPinEventListener m_ball_switches(x)&"_active", m_name & "_ball_enter", "BallDeviceEventHandler", 1000, Array("ball_entering", Me, x)
            AddPinEventListener m_ball_switches(x)&"_inactive", m_name & "_ball_exiting", "BallDeviceEventHandler", 1000, Array("ball_exiting", Me, x)
        Next
    End Property
    Public Property Let MechanicalEject(value) : m_mechanical_eject = value : End Property


    Public Property Let Debug(value) : m_debug = value : End Property
        
	Public default Function init(name)
        m_name = "balldevice_" & name
        m_ball_switches = Array()
        m_eject_all_events = Array()
        m_eject_targets = Array()
        m_balls = Array()
        m_debug = False
        m_default_device = False
        m_ejecting = False
        m_eject_callback = Null
        m_ejecting_all = False
        m_balls_to_eject = 0
        m_balls_in_device = 0
        m_mechanical_eject = False
        m_eject_timeout = 1000
        m_eject_enable_time = 0
        m_entrance_count_delay = 500
        m_incoming_balls = 0
        glf_ball_devices.Add name, Me
	    Set Init = Me
	End Function

    Public Sub BallEntering(ball, switch)
        Log "Ball Entering" 
        SetDelay m_name & "_" & switch & "_ball_enter", "BallDeviceEventHandler", Array(Array("ball_enter", Me, switch), ball), m_entrance_count_delay
    End Sub

    Public Sub BallEnter(ball, switch)
        RemoveDelay m_name & "_eject_timeout"
        Set m_balls(switch) = ball
        m_balls_in_device = m_balls_in_device + 1
        Log "Ball Entered" 
        Dim unclaimed_balls: unclaimed_balls = 1

        If m_incoming_balls > 0 Then
            unclaimed_balls = 0
        End If
        If unclaimed_balls > 0 Then
            unclaimed_balls = DispatchRelayPinEvent(m_name & "_ball_enter", 1)
        End If        
        Log "Unclaimed Balls: " & unclaimed_balls
        DispatchPinEvent m_name & "_ball_entered", Null
        If unclaimed_balls > 0 Then
            SetDelay m_name & "_eject_attempt", "BallDeviceEventHandler", Array(Array("ball_eject", Me), ball), 500
        End If
    End Sub

    Public Sub BallExiting(ball, switch)
        RemoveDelay m_name & "_" & switch & "_ball_enter"
        m_balls(switch) = Null
        m_balls_in_device = m_balls_in_device - 1
        DispatchPinEvent m_name & "_ball_exiting", Null
        If m_mechanical_eject = True And m_eject_timeout > 0 Then
            SetDelay m_name & "_eject_timeout", "BallDeviceEventHandler", Array(Array("eject_timeout", Me), ball), m_eject_timeout
        End If
        Log "Ball Exiting"
    End Sub

    Public Sub BallExitSuccess(ball)
        m_ejecting = False
        RemoveDelay m_name & "_eject_timeout"
        If m_incoming_balls > 0 Then
            m_incoming_balls = m_incoming_balls - 1
        End If
        DispatchPinEvent m_name & "_ball_eject_success", Null
        Log "Ball successfully exited"
        If m_ejecting_all = True Then
            If m_balls_to_eject = 0 Then
                m_ejecting_all = False
                Exit Sub
            End If
            If Not IsNull(m_balls(0)) Then
                m_balls_to_eject = m_balls_to_eject - 1
                Eject()
            Else
                SetDelay m_name & "_eject_attempt", "BallDeviceEventHandler", Array(Array("ball_eject", Me), ball), 600
            End If
        End If
    End Sub

    Public Sub Eject
        
        If Not IsNull(m_eject_callback) Then
            If Not IsNull(m_balls(0)) Then
                Log "Ejecting."
                SetDelay m_name & "_eject_timeout", "BallDeviceEventHandler", Array(Array("eject_timeout", Me), m_balls(0)), m_eject_timeout
                m_ejecting = True
            
                GetRef(m_eject_callback)(m_balls(0))
                If m_eject_enable_time > 0 Then
                    SetDelay m_name & "_eject_enable_time", "BallDeviceEventHandler", Array(Array("eject_enable_complete", Me), m_balls(0)), m_eject_enable_time
                End If
            Else
                SetDelay m_name & "_eject_attempt", "BallDeviceEventHandler", Array(Array("ball_eject", Me), Null), 600
            End If
        End If
    End Sub

    Public Sub EjectEnableComplete
        If Not IsNull(m_eject_callback) Then
            GetRef(m_eject_callback)(Null)
        End If
    End Sub

    Public Sub EjectBalls(balls)
        Log "Ejecting "&balls&" Balls."
        m_ejecting_all = True
        m_balls_to_eject = balls - 1
        Eject()
    End Sub

    Public Sub EjectAll
        Log "Ejecting All." 
        m_ejecting_all = True
        m_balls_to_eject = m_balls_in_device - 1 
        Eject()
    End Sub

    Private Sub Log(message)
        If m_debug = True Then
            glf_debugLog.WriteToLog m_name, message
        End If
    End Sub
End Class

Function BallDeviceEventHandler(args)
    Dim ownProps, ball : ownProps = args(0) : Set ball = args(1) 
    Dim evt : evt = ownProps(0)
    Dim ballDevice : Set ballDevice = ownProps(1)
    Dim switch
    Select Case evt
        Case "ball_entering"
            switch = ownProps(2)
            ballDevice.BallEntering ball, switch
        Case "ball_enter"
            switch = ownProps(2)
            ballDevice.BallEnter ball, switch
        Case "ball_eject"
            ballDevice.Eject
        Case "ball_eject_all"
            ballDevice.EjectAll
        Case "ball_exiting"
            switch = ownProps(2)
            If RemoveDelay(ballDevice.Name & "_" & switch & "_ball_enter") = False Then
                ballDevice.BallExiting ball, switch
            End If
        Case "eject_timeout"
            ballDevice.BallExitSuccess ball
        Case "eject_enable_complete"
            ballDevice.EjectEnableComplete
    End Select
End Function
Function CreateGlfDiverter(name)
	Dim diverter : Set diverter = (new GlfDiverter)(name)
	Set CreateGlfDiverter = diverter
End Function

Class GlfDiverter

    Private m_name
    Private m_activate_events
    Private m_deactivate_events
    Private m_activation_time
    Private m_enable_events
    Private m_disable_events
    Private m_activation_switches
    Private m_action_cb
    Private m_enabled
    Private m_active
    Private m_debug

    Public Property Get Name(): Name = m_name : End Property
    Public Property Get GetValue(value)
        Select Case value
            Case "enabled":
                GetValue = m_enabled
            Case "active":
                GetValue = m_active
        End Select
    End Property

    Public Property Let ActionCallback(value) : m_action_cb = value : End Property
    Public Property Let EnableEvents(value)
        Dim evt
        If IsArray(m_enable_events) Then
            For Each evt in m_enable_events
                RemovePinEventListener evt, m_name & "_enable"
            Next
        End If
        m_enable_events = value
        For Each evt in m_enable_events
            AddPinEventListener evt, m_name & "_enable", "DiverterEventHandler", 1000, Array("enable", Me)
        Next
    End Property
    Public Property Let DisableEvents(value)
        Dim evt
        If IsArray(m_disable_events) Then
            For Each evt in m_enable_events
                RemovePinEventListener evt, m_name & "_disable"
            Next
        End If
        m_disable_events = value
        For Each evt in m_disable_events
            AddPinEventListener evt, m_name & "_disable", "DiverterEventHandler", 1000, Array("disable", Me)
        Next
    End Property
    Public Property Let ActivateEvents(value) : m_activate_events = value : End Property
    Public Property Let DeactivateEvents(value) : m_deactivate_events = value : End Property
    Public Property Let ActivationTime(value) : Set m_activation_time = CreateGlfInput(value) : End Property
    Public Property Let ActivationSwitches(value) : m_activation_switches = value : End Property
    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(name)
        m_name = "diverter_" & name
        m_enable_events = Array()
        m_disable_events = Array()
        m_activate_events = Array()
        m_deactivate_events = Array()
        m_activation_switches = Array()
        Set m_activation_time = CreateGlfInput(0)
        m_debug = False
        m_enabled = False
        m_active = False
        glf_diverters.Add name, Me
        Set Init = Me
	End Function

    Public Sub Enable()
        Log "Enabling"
        m_enabled = True
        Dim evt
        For Each evt in m_activate_events
            AddPinEventListener evt, m_name & "_activate", "DiverterEventHandler", 1000, Array("activate", Me)
        Next
        For Each evt in m_deactivate_events
            AddPinEventListener evt, m_name & "_deactivate", "DiverterEventHandler", 1000, Array("deactivate", Me)
        Next
        For Each evt in m_activation_switches
            AddPinEventListener evt & "_active", m_name & "_activate", "DiverterEventHandler", 1000, Array("activate", Me)
        Next
    End Sub

    Public Sub Disable()
        Log "Disabling"
        m_enabled = False
        Dim evt
        For Each evt in m_activate_events
            RemovePinEventListener evt, m_name & "_activate"
        Next
        For Each evt in m_deactivate_events
            RemovePinEventListener evt, m_name & "_deactivate"
        Next
        For Each evt in m_activation_switches
            RemovePinEventListener evt & "_active", m_name & "_activate"
        Next
        RemoveDelay m_name & "_deactivate"
        GetRef(m_action_cb)(0)
    End Sub

    Public Sub Activate()
        Log "Activating"
        m_active = True
        GetRef(m_action_cb)(1)
        If m_activation_time.Value > 0 Then
            SetDelay m_name & "_deactivate", "DiverterEventHandler", Array(Array("deactivate", Me), Null), m_activation_time.Value
        End If
        DispatchPinEvent m_name & "_activating", Null
    End Sub

    Public Sub Deactivate()
        Log "Deactivating"
        m_active = False
        RemoveDelay m_name & "_deactivate"
        GetRef(m_action_cb)(0)
        DispatchPinEvent m_name & "_deactivating", Null
    End Sub

    Private Sub Log(message)
        If m_debug = True Then
            glf_debugLog.WriteToLog m_name, message
        End If
    End Sub
End Class

Function DiverterEventHandler(args)
    Dim ownProps, kwargs : ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1)
    Else
        kwargs = args(1) 
    End If
    Dim evt : evt = ownProps(0)
    Dim diverter : Set diverter = ownProps(1)
    Select Case evt
        Case "enable"
            diverter.Enable
        Case "disable"
            diverter.Disable
        Case "activate"
            diverter.Activate
        Case "deactivate"
            diverter.Deactivate
    End Select
    If IsObject(args(1)) Then
        Set DiverterEventHandler = kwargs
    Else
        DiverterEventHandler = kwargs
    End If
End Function
Function CreateGlfDroptarget(name)
	Dim droptarget : Set droptarget = (new GlfDroptarget)(name)
	Set CreateGlfDroptarget = droptarget
End Function

Class GlfDroptarget

    Private m_name
	Private m_switch
    Private m_enable_keep_up_events
    Private m_disable_keep_up_events
	Private m_action_cb
	Private m_knockdown_events
	Private m_reset_events
    Private m_complete

    
    Private m_debug

	Public Property Let Switch(value)
		m_switch = value
		AddPinEventListener m_switch & "_active", m_name & "_switch_active", "DroptargetEventHandler", 1000, Array("switch_active", Me)
		AddPinEventListener m_switch & "_inactive", m_name & "_switch_inactive", "DroptargetEventHandler", 1000, Array("switch_inactive", Me)
	End Property
    Public Property Let EnableKeepUpEvents(value)
        Dim evt
        If IsArray(m_enable_keep_up_events) Then
            For Each evt in m_enable_keep_up_events
                RemovePinEventListener evt, m_name & "_enable_keepup"
            Next
        End If
        m_enable_keep_up_events = value
        For Each evt in m_enable_keep_up_events
            AddPinEventListener evt, m_name & "_enable_keepup", "DroptargetEventHandler", 1000, Array("enable_keepup", Me)
        Next
    End Property
    Public Property Let DisableKeepUpEvents(value)
        Dim evt
        If IsArray(m_disable_keep_up_events) Then
            For Each evt in m_disable_keep_up_events
                RemovePinEventListener evt, m_name & "_disable_keepup"
            Next
        End If
        m_disable_keep_up_events = value
        For Each evt in m_disable_keep_up_events
            AddPinEventListener evt, m_name & "_disable_keepup", "DroptargetEventHandler", 1000, Array("disable_keepup", Me)
        Next
    End Property

    Public Property Let ActionCallback(value) : m_action_cb = value : End Property
	Public Property Let KnockdownEvents(value)
		Dim evt
		If IsArray(m_knockdown_events) Then
			For Each evt in m_knockdown_events
				RemovePinEventListener evt, m_name & "_knockdown"
			Next
		End If
		m_knockdown_events = value
		For Each evt in m_knockdown_events
			AddPinEventListener evt, m_name & "_knockdown", "DroptargetEventHandler", 1000, Array("knockdown", Me)
		Next
	End Property
	Public Property Let ResetEvents(value)
		Dim evt
		If IsArray(m_reset_events) Then
			For Each evt in m_reset_events
				RemovePinEventListener evt, m_name & "_reset"
			Next
		End If
		m_reset_events = value
		For Each evt in m_reset_events
			AddPinEventListener evt, m_name & "_reset", "DroptargetEventHandler", 1000, Array("reset", Me)
		Next
	End Property
    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(name)
        m_name = "drop_target_" & name
		m_switch = Empty
        EnableKeepUpEvents = Array()
        DisableKeepUpEvents = Array()
		m_action_cb = Empty
		KnockdownEvents = Array()
		ResetEvents = Array()
        m_complete = 0
		m_debug = False
        glf_droptargets.Add name, Me
        Set Init = Me
	End Function

    Public Sub UpdateStateFromSwitch(is_complete)

		Log "Drop target " & m_name & " switch " & m_switch & " has active value " & is_complete & " compared to drop complete " & m_complete

		If is_complete <> m_complete Then
			If is_complete = 1 Then
				Down()
			Else
				Up()
			End	If
		End If
		'UpdateBanks()
    End Sub

    Public Sub Up()
        m_complete = 0
        DispatchPinEvent m_name & "_up", Null
    End Sub

	Public Sub Down()
        m_complete = 1
        DispatchPinEvent m_name & "_down", Null
    End Sub

	Public Sub EnableKeepup()
        If Not IsEmpty(m_action_cb) Then
            GetRef(m_action_cb)(3)
		End If
    End Sub

	Public Sub DisableKeepup()
        If Not IsEmpty(m_action_cb) Then
            GetRef(m_action_cb)(4)
		End If
    End Sub

	Public Sub Knockdown()
        If Not IsEmpty(m_action_cb) And m_complete = 0 Then
            GetRef(m_action_cb)(1)
		End If
    End Sub

	Public Sub Reset()
        If Not IsEmpty(m_action_cb) And m_complete = 1 Then
            GetRef(m_action_cb)(0)
		End If
    End Sub

    Private Sub Log(message)
        If m_debug = True Then
            glf_debugLog.WriteToLog m_name, message
        End If
    End Sub
End Class

Function DroptargetEventHandler(args)
    Dim ownProps, kwargs : ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1) 
    Else
        kwargs = args(1) 
    End If
    Dim evt : evt = ownProps(0)
    Dim droptarget : Set droptarget = ownProps(1)
    Select Case evt
        Case "switch_active"
            droptarget.UpdateStateFromSwitch 1
        Case "switch_inactive"
            droptarget.UpdateStateFromSwitch 0
        Case "enable_keepup"
            droptarget.EnableKeepup
        Case "disable_keepup"
            droptarget.DisableKeepup
        Case "knockdown"
            droptarget.Knockdown
        Case "reset"
            droptarget.Reset
    End Select
    If IsObject(args(1)) Then
        Set DroptargetEventHandler = kwargs
    Else
        DroptargetEventHandler = kwargs
    End If
    
End Function

Function CreateGlfFlipper(name)
	Dim flipper : Set flipper = (new GlfFlipper)(name)
	Set CreateGlfFlipper = flipper
End Function

Class GlfFlipper

    Private m_name
    Private m_enable_events
    Private m_disable_events
    Private m_enabled
    Private m_switches
    Private m_action_cb
    Private m_debug

    Public Property Let Switch(value)
        m_switches = value
    End Property
    Public Property Let ActionCallback(value) : m_action_cb = value : End Property
    Public Property Let EnableEvents(value)
        Dim evt
        If IsArray(m_enable_events) Then
            For Each evt in m_enable_events
                RemovePinEventListener evt, m_name & "_enable"
            Next
        End If
        m_enable_events = value
        For Each evt in m_enable_events
            AddPinEventListener evt, m_name & "_enable", "FlipperEventHandler", 1000, Array("enable", Me)
        Next
    End Property
    Public Property Let DisableEvents(value)
        Dim evt
        If IsArray(m_disable_events) Then
            For Each evt in m_enable_events
                RemovePinEventListener evt, m_name & "_disable"
            Next
        End If
        m_disable_events = value
        For Each evt in m_disable_events
            AddPinEventListener evt, m_name & "_disable", "FlipperEventHandler", 1000, Array("disable", Me)
        Next
    End Property
    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(name)
        m_name = "flipper_" & name
        EnableEvents = Array("ball_started")
        DisableEvents = Array("ball_will_end", "service_mode_entered")
        m_enabled = False
        m_action_cb = Empty
        m_switches = Array()
        m_debug = False
        glf_flippers.Add name, Me
        Set Init = Me
	End Function

    Public Sub Enable()
        Log "Enabling"
        m_enabled = True
        Dim evt
        For Each evt in m_switches
            AddPinEventListener evt & "_active", m_name & "_active", "FlipperEventHandler", 1000, Array("activate", Me)
            AddPinEventListener evt & "_inactive", m_name & "_inactive", "FlipperEventHandler", 1000, Array("deactivate", Me)
        Next
    End Sub

    Public Sub Disable()
        Log "Disabling"
        m_enabled = False
        Deactivate()
        Dim evt
        For Each evt in m_switches
            RemovePinEventListener evt & "_active", m_name & "_active"
            RemovePinEventListener evt & "_inactive", m_name & "_inactive"
        Next
    End Sub

    Public Sub Activate()
        Log "Activating"
        If Not IsEmpty(m_action_cb) Then
            GetRef(m_action_cb)(1)
        End If
        DispatchPinEvent m_name & "_activate", Null
    End Sub

    Public Sub Deactivate()
        Log "Activating"
        If Not IsEmpty(m_action_cb) Then
            GetRef(m_action_cb)(0)
        End If
        DispatchPinEvent m_name & "_deactivate", Null
    End Sub

    Private Sub Log(message)
        If m_debug = True Then
            glf_debugLog.WriteToLog m_name, message
        End If
    End Sub
End Class

Function FlipperEventHandler(args)
    Dim ownProps, kwargs : ownProps = args(0) : kwargs = args(1) 
    Dim evt : evt = ownProps(0)
    Dim flipper : Set flipper = ownProps(1)
    Select Case evt
        Case "enable"
            flipper.Enable
        Case "disable"
            flipper.Disable
        Case "activate"
            flipper.Activate
        Case "deactivate"
            flipper.Deactivate
    End Select
    FlipperEventHandler = kwargs
End Function
Function CreateGlfLightSegmentDisplay(name)
	Dim segment_display : Set segment_display = (new GlfLightSegmentDisplay)(name)
	Set CreateGlfLightSegmentDisplay = segment_display
End Function

Class GlfLightSegmentDisplay

    private m_flash_on
    private m_flashing
    private m_flash_mask
    private m_text
    private m_current_text
    private m_display_state
    private m_lights
    private m_light_group
    private m_segmentmap
    private m_segment_type
    private m_size

    Public Property Get SegmentType() : SegmentType = m_segment_type : End Property
    Public Property Let SegmentType(input)
        m_segment_type = input
        If m_segment_type = "14Segment" Then
            Set m_segmentmap = FOURTEEN_SEGMENTS
        ElseIf m_segment_type = "7Segment" Then
            Set m_segmentmap = SEVEN_SEGMENTS
        End If
        CalculateLights()
    End Property

    Public Property Get LightGroup() : LightGroup = m_light_group : End Property
    Public Property Let LightGroup(input)
        m_light_group = input
        CalculateLights()
    End Property

    Public Property Get SegmentSize() : SegmentSize = m_size : End Property
    Public Property Let SegmentSize(input)
        m_size = input
        CalculateLights()
    End Property

    Public default Function init(name)

        m_flash_on = True
        m_flashing = "no_flash"
        m_flash_mask = Empty
        m_text = Empty
        m_size = 0
        m_segment_type = Empty
        m_segmentmap = Null
        m_light_group = Empty
        m_current_text = Empty
        m_display_state = Empty
        m_lights = Array()  

        glf_segment_displays.Add name, Me
        Set Init = Me
    End Function

    Private Sub CalculateLights()
        If Not IsEmpty(m_segment_type) And m_size > 0 And Not IsEmpty(m_light_group) Then
            m_lights = Array()
            If m_segment_type = "14Segment" Then
                ReDim m_lights(m_size * 15)
            ElseIf m_segment_type = "7Segment" Then
                ReDim m_lights(m_size * 8)
            End If

            Dim i
            For i=0 to UBound(m_lights)
                m_lights(i) = m_light_group & CStr(i+1)
            Next
        End If
    End Sub

    Private Sub SetText(text, flashing, flash_mask)
        'Set a text to the display.
        m_text = text
        m_flashing = flashing

        If flashing = "no_flash" Then
            m_flash_on = True
        ElseIf flashing = "flash_mask" Then
            'm_flash_mask = flash_mask.rjust(len(text))
        End If

        If flashing = "no_flash" or m_flash_on = True or Not IsEmpty(text) Then
            If text <> m_display_state Then
                m_display_state = text
                'Set text to lights.
                If text="" Then
                    text = Glf_FormatValue(text, " >" & CStr(m_size))
                Else
                    text = Right(text, m_size)
                End If
                If text <> m_current_text Then
                    m_current_text = text
                    UpdateText()
                End If
            End If
        End If
    End Sub

    Private Sub UpdateText()
        'iterate lights and chars
        Dim mapped_text, segment
        mapped_text = MapSegmentTextToSegments(m_current_text, m_size, m_segmentmap)
        Dim segment_idx : segment_idx = 1
        For Each segment in mapped_text
            
            If m_segment_type = "14Segment" Then
                Glf_SetLight m_light_group & CStr(segment_idx), SegmentColor(segment.a)
                Glf_SetLight m_light_group & CStr(segment_idx + 1), SegmentColor(segment.b)
                Glf_SetLight m_light_group & CStr(segment_idx + 2), SegmentColor(segment.c)
                Glf_SetLight m_light_group & CStr(segment_idx + 3), SegmentColor(segment.d)
                Glf_SetLight m_light_group & CStr(segment_idx + 4), SegmentColor(segment.e)
                Glf_SetLight m_light_group & CStr(segment_idx + 5), SegmentColor(segment.f)
                Glf_SetLight m_light_group & CStr(segment_idx + 6), SegmentColor(segment.g1)
                Glf_SetLight m_light_group & CStr(segment_idx + 7), SegmentColor(segment.g2)
                Glf_SetLight m_light_group & CStr(segment_idx + 8), SegmentColor(segment.h)
                Glf_SetLight m_light_group & CStr(segment_idx + 9), SegmentColor(segment.j)
                Glf_SetLight m_light_group & CStr(segment_idx + 10), SegmentColor(segment.k)
                Glf_SetLight m_light_group & CStr(segment_idx + 11), SegmentColor(segment.n)
                Glf_SetLight m_light_group & CStr(segment_idx + 12), SegmentColor(segment.m)
                Glf_SetLight m_light_group & CStr(segment_idx + 13), SegmentColor(segment.l)
                Glf_SetLight m_light_group & CStr(segment_idx + 14), SegmentColor(segment.dp)

            ElseIf m_segment_type = "7Segment" Then
                
            End If
            
            segment_idx = segment_idx + 15
        Next
        'for char, lights_for_char in zip(mapped_text, self._lights):
        '    for name, light in lights_for_char.items():
        '        if getattr(char[0], name):
        '            light.color(color=char[1], key=self._key)
        '        else:
        '            light.remove_from_stack_by_key(key=self._key)
    End Sub

    Private Function SegmentColor(value)
        If value = 1 Then
            SegmentColor = "ffffff"
        Else
            SegmentColor = "000000"
        End If
    End Function

    Public Sub AddTextEntry(text, color, flashing, flash_mask, transition, transition_out, priority, key)
        SetText text, "no_flash", Empty
    End Sub

    Public Sub RemoveTextByKey(key)

    End Sub

    Public Sub SetFlashing(flash_type)

    End Sub

    Public Sub SetFlashingMask(mask)

    End Sub

    Public Sub SetColor(color)

    End Sub

End Class

Class FourteenSegments
    Public dp, l, m, n, k, j, h, g2, g1, f, e, d, c, b, a, char

    Public default Function init(dp, l, m, n, k, j, h, g2, g1, f, e, d, c, b, a, char)
        Me.dp = dp
        Me.a = a
        Me.b = b
        Me.c = c
        Me.d = d
        Me.e = e
        Me.f = f
        Me.g1 = g1
        Me.g2 = g2
        Me.h = h
        Me.j = j
        Me.k = k
        Me.n = n
        Me.m = m
        Me.l = l
        Me.char = char
        Set Init = Me
    End Function
End Class

Class SevenSegments
    Public dp, g, f, e, d, c, b, a, char

    Public default Function init(dp, g, f, e, d, c, b, a, char)
        Me.dp = dp
        Me.a = a
        Me.b = b
        Me.c = c
        Me.d = d
        Me.e = e
        Me.f = f
        Me.g = g
        Me.char = char
        Set Init = Me
    End Function
End Class


Dim FOURTEEN_SEGMENTS
Set FOURTEEN_SEGMENTS = CreateObject("Scripting.Dictionary")

FOURTEEN_SEGMENTS.Add Null, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "?")
FOURTEEN_SEGMENTS.Add 32, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " ")
FOURTEEN_SEGMENTS.Add 33, (New FourteenSegments)(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, "!")
FOURTEEN_SEGMENTS.Add 34, (New FourteenSegments)(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, Chr(34)) ' Character "
FOURTEEN_SEGMENTS.Add 35, (New FourteenSegments)(0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, "#")
FOURTEEN_SEGMENTS.Add 36, (New FourteenSegments)(0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, "$")
FOURTEEN_SEGMENTS.Add 37, (New FourteenSegments)(0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, "%")
FOURTEEN_SEGMENTS.Add 38, (New FourteenSegments)(0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, "&")
FOURTEEN_SEGMENTS.Add 39, (New FourteenSegments)(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, "'")
FOURTEEN_SEGMENTS.Add 40, (New FourteenSegments)(0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "(")
FOURTEEN_SEGMENTS.Add 41, (New FourteenSegments)(0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, ")")
FOURTEEN_SEGMENTS.Add 42, (New FourteenSegments)(0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, "*")
FOURTEEN_SEGMENTS.Add 43, (New FourteenSegments)(0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, "+")
FOURTEEN_SEGMENTS.Add 44, (New FourteenSegments)(0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ",")
FOURTEEN_SEGMENTS.Add 45, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, "-")
FOURTEEN_SEGMENTS.Add 46, (New FourteenSegments)(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ".")
FOURTEEN_SEGMENTS.Add 47, (New FourteenSegments)(0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "/")
FOURTEEN_SEGMENTS.Add 48, (New FourteenSegments)(0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, "0")
FOURTEEN_SEGMENTS.Add 49, (New FourteenSegments)(0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, "1")
FOURTEEN_SEGMENTS.Add 50, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, "2")
FOURTEEN_SEGMENTS.Add 51, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, "3")
FOURTEEN_SEGMENTS.Add 52, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, "4")
FOURTEEN_SEGMENTS.Add 53, (New FourteenSegments)(0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, "5")
FOURTEEN_SEGMENTS.Add 54, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, "6")
FOURTEEN_SEGMENTS.Add 55, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, "7")
FOURTEEN_SEGMENTS.Add 56, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, "8")
FOURTEEN_SEGMENTS.Add 57, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, "9")
FOURTEEN_SEGMENTS.Add 58, (New FourteenSegments)(0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ":")
FOURTEEN_SEGMENTS.Add 59, (New FourteenSegments)(0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ";")
FOURTEEN_SEGMENTS.Add 60, (New FourteenSegments)(0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, "<")
FOURTEEN_SEGMENTS.Add 61, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, "=")
FOURTEEN_SEGMENTS.Add 62, (New FourteenSegments)(0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, ">")
FOURTEEN_SEGMENTS.Add 63, (New FourteenSegments)(1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, "?")
FOURTEEN_SEGMENTS.Add 64, (New FourteenSegments)(0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, "@")
FOURTEEN_SEGMENTS.Add 65, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, "A")
FOURTEEN_SEGMENTS.Add 66, (New FourteenSegments)(0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, "B")
FOURTEEN_SEGMENTS.Add 67, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, "C")
FOURTEEN_SEGMENTS.Add 68, (New FourteenSegments)(0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, "D")
FOURTEEN_SEGMENTS.Add 69, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, "E")
FOURTEEN_SEGMENTS.Add 70, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, "F")
FOURTEEN_SEGMENTS.Add 71, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, "G")
FOURTEEN_SEGMENTS.Add 72, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, "H")
FOURTEEN_SEGMENTS.Add 73, (New FourteenSegments)(0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, "I")
FOURTEEN_SEGMENTS.Add 74, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, "J")
FOURTEEN_SEGMENTS.Add 75, (New FourteenSegments)(0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, "K")
FOURTEEN_SEGMENTS.Add 76, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, "L")
FOURTEEN_SEGMENTS.Add 77, (New FourteenSegments)(0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, "M")
FOURTEEN_SEGMENTS.Add 78, (New FourteenSegments)(0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, "N")
FOURTEEN_SEGMENTS.Add 79, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, "O")
FOURTEEN_SEGMENTS.Add 80, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, "P")
FOURTEEN_SEGMENTS.Add 81, (New FourteenSegments)(0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, "Q")
FOURTEEN_SEGMENTS.Add 82, (New FourteenSegments)(0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, "R")
FOURTEEN_SEGMENTS.Add 83, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, "S")
FOURTEEN_SEGMENTS.Add 84, (New FourteenSegments)(0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, "T")
FOURTEEN_SEGMENTS.Add 85, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, "U")
FOURTEEN_SEGMENTS.Add 86, (New FourteenSegments)(0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, "V")
FOURTEEN_SEGMENTS.Add 87, (New FourteenSegments)(0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, "W")
FOURTEEN_SEGMENTS.Add 88, (New FourteenSegments)(0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "X")
FOURTEEN_SEGMENTS.Add 89, (New FourteenSegments)(0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, "Y")
FOURTEEN_SEGMENTS.Add 90, (New FourteenSegments)(0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, "Z")
FOURTEEN_SEGMENTS.Add 91, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, "[")
FOURTEEN_SEGMENTS.Add 92, (New FourteenSegments)(0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, Chr(92)) ' Character \
FOURTEEN_SEGMENTS.Add 93, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, "]")
FOURTEEN_SEGMENTS.Add 94, (New FourteenSegments)(0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "^")
FOURTEEN_SEGMENTS.Add 95, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, "_")
FOURTEEN_SEGMENTS.Add 96, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "`")
FOURTEEN_SEGMENTS.Add 97, (New FourteenSegments)(0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, "a")
FOURTEEN_SEGMENTS.Add 98, (New FourteenSegments)(0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, "b")
FOURTEEN_SEGMENTS.Add 99, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, "c")
FOURTEEN_SEGMENTS.Add 100, (New FourteenSegments)(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, "d")
FOURTEEN_SEGMENTS.Add 101, (New FourteenSegments)(0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, "e")
FOURTEEN_SEGMENTS.Add 102, (New FourteenSegments)(0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, "f")
FOURTEEN_SEGMENTS.Add 103, (New FourteenSegments)(0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, "g")
FOURTEEN_SEGMENTS.Add 104, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, "h")
FOURTEEN_SEGMENTS.Add 105, (New FourteenSegments)(0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "i")
FOURTEEN_SEGMENTS.Add 106, (New FourteenSegments)(0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, "j")
FOURTEEN_SEGMENTS.Add 107, (New FourteenSegments)(0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, "k")
FOURTEEN_SEGMENTS.Add 108, (New FourteenSegments)(0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, "l")
FOURTEEN_SEGMENTS.Add 109, (New FourteenSegments)(0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, "m")
FOURTEEN_SEGMENTS.Add 110, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, "n")
FOURTEEN_SEGMENTS.Add 111, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, "o")
FOURTEEN_SEGMENTS.Add 112, (New FourteenSegments)(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, "p")
FOURTEEN_SEGMENTS.Add 113, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, "q")
FOURTEEN_SEGMENTS.Add 114, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, "r")
FOURTEEN_SEGMENTS.Add 115, (New FourteenSegments)(0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, "s")
FOURTEEN_SEGMENTS.Add 116, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, "t")
FOURTEEN_SEGMENTS.Add 117, (New FourteenSegments)(0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, "u")
FOURTEEN_SEGMENTS.Add 118, (New FourteenSegments)(0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, "v")
FOURTEEN_SEGMENTS.Add 119, (New FourteenSegments)(0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, "w")
FOURTEEN_SEGMENTS.Add 120, (New FourteenSegments)(0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "x")
FOURTEEN_SEGMENTS.Add 121, (New FourteenSegments)(0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, "y")
FOURTEEN_SEGMENTS.Add 122, (New FourteenSegments)(0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, "z")
FOURTEEN_SEGMENTS.Add 123, (New FourteenSegments)(0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, "{")
FOURTEEN_SEGMENTS.Add 124, (New FourteenSegments)(0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, "|")
FOURTEEN_SEGMENTS.Add 125, (New FourteenSegments)(0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, "}")
FOURTEEN_SEGMENTS.Add 126, (New FourteenSegments)(0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, "~")


Dim SEVEN_SEGMENTS
Set SEVEN_SEGMENTS = CreateObject("Scripting.Dictionary")

SEVEN_SEGMENTS.Add Null, (New SevenSegments)(0, 0, 0, 0, 0, 0, 0, 0, "?")
SEVEN_SEGMENTS.Add 32, (New SevenSegments)(0, 0, 0, 0, 0, 0, 0, 0, " ")
SEVEN_SEGMENTS.Add 33, (New SevenSegments)(1, 0, 0, 0, 0, 1, 1, 0, "!")
SEVEN_SEGMENTS.Add 34, (New SevenSegments)(0, 0, 1, 0, 0, 0, 1, 0, Chr(34)) ' Character "
SEVEN_SEGMENTS.Add 35, (New SevenSegments)(0, 1, 1, 1, 1, 1, 1, 0, "#")
SEVEN_SEGMENTS.Add 36, (New SevenSegments)(0, 1, 1, 0, 1, 1, 0, 1, "$")
SEVEN_SEGMENTS.Add 37, (New SevenSegments)(1, 1, 0, 1, 0, 0, 1, 0, "%")
SEVEN_SEGMENTS.Add 38, (New SevenSegments)(0, 1, 0, 0, 0, 1, 1, 0, "&")
SEVEN_SEGMENTS.Add 39, (New SevenSegments)(0, 0, 1, 0, 0, 0, 0, 0, "'")
SEVEN_SEGMENTS.Add 40, (New SevenSegments)(0, 0, 1, 0, 1, 0, 0, 1, "(")
SEVEN_SEGMENTS.Add 41, (New SevenSegments)(0, 0, 0, 0, 1, 0, 1, 1, ")")
SEVEN_SEGMENTS.Add 42, (New SevenSegments)(0, 0, 1, 0, 0, 0, 0, 1, "*")
SEVEN_SEGMENTS.Add 43, (New SevenSegments)(0, 1, 1, 1, 0, 0, 0, 0, "+")
SEVEN_SEGMENTS.Add 44, (New SevenSegments)(0, 0, 0, 1, 0, 0, 0, 0, ",")
SEVEN_SEGMENTS.Add 45, (New SevenSegments)(0, 1, 0, 0, 0, 0, 0, 0, "-")
SEVEN_SEGMENTS.Add 46, (New SevenSegments)(1, 0, 0, 0, 0, 0, 0, 0, ".")
SEVEN_SEGMENTS.Add 47, (New SevenSegments)(0, 1, 0, 1, 0, 0, 1, 0, "/")
SEVEN_SEGMENTS.Add 48, (New SevenSegments)(0, 0, 1, 1, 1, 1, 1, 1, "0")
SEVEN_SEGMENTS.Add 49, (New SevenSegments)(0, 0, 0, 0, 0, 1, 1, 0, "1")
SEVEN_SEGMENTS.Add 50, (New SevenSegments)(0, 1, 0, 1, 1, 0, 1, 1, "2")
SEVEN_SEGMENTS.Add 51, (New SevenSegments)(0, 1, 0, 0, 1, 1, 1, 1, "3")
SEVEN_SEGMENTS.Add 52, (New SevenSegments)(0, 1, 1, 0, 0, 1, 1, 0, "4")
SEVEN_SEGMENTS.Add 53, (New SevenSegments)(0, 1, 1, 0, 1, 1, 0, 1, "5")
SEVEN_SEGMENTS.Add 54, (New SevenSegments)(0, 1, 1, 1, 1, 1, 0, 1, "6")
SEVEN_SEGMENTS.Add 55, (New SevenSegments)(0, 0, 0, 0, 0, 1, 1, 1, "7")
SEVEN_SEGMENTS.Add 56, (New SevenSegments)(0, 1, 1, 1, 1, 1, 1, 1, "8")
SEVEN_SEGMENTS.Add 57, (New SevenSegments)(0, 1, 1, 0, 1, 1, 1, 1, "9")
SEVEN_SEGMENTS.Add 58, (New SevenSegments)(0, 0, 0, 0, 1, 0, 0, 1, ":")
SEVEN_SEGMENTS.Add 59, (New SevenSegments)(0, 0, 0, 0, 1, 1, 0, 1, ";")
SEVEN_SEGMENTS.Add 60, (New SevenSegments)(0, 1, 1, 0, 0, 0, 0, 1, "<")
SEVEN_SEGMENTS.Add 61, (New SevenSegments)(0, 1, 0, 0, 1, 0, 0, 0, "=")
SEVEN_SEGMENTS.Add 62, (New SevenSegments)(0, 1, 0, 0, 0, 0, 1, 1, ">")
SEVEN_SEGMENTS.Add 63, (New SevenSegments)(1, 1, 0, 1, 0, 0, 1, 1, "?")
SEVEN_SEGMENTS.Add 64, (New SevenSegments)(0, 1, 0, 1, 1, 1, 1, 1, "@")
SEVEN_SEGMENTS.Add 65, (New SevenSegments)(0, 1, 1, 1, 0, 1, 1, 1, "A")
SEVEN_SEGMENTS.Add 66, (New SevenSegments)(0, 1, 1, 1, 1, 1, 0, 0, "B")
SEVEN_SEGMENTS.Add 67, (New SevenSegments)(0, 0, 1, 1, 1, 0, 0, 1, "C")
SEVEN_SEGMENTS.Add 68, (New SevenSegments)(0, 1, 0, 1, 1, 1, 1, 0, "D")
SEVEN_SEGMENTS.Add 69, (New SevenSegments)(0, 1, 1, 1, 1, 0, 0, 1, "E")
SEVEN_SEGMENTS.Add 70, (New SevenSegments)(0, 1, 1, 1, 0, 0, 0, 1, "F")
SEVEN_SEGMENTS.Add 71, (New SevenSegments)(0, 0, 1, 1, 1, 1, 0, 1, "G")
SEVEN_SEGMENTS.Add 72, (New SevenSegments)(0, 1, 1, 1, 0, 1, 1, 0, "H")
SEVEN_SEGMENTS.Add 73, (New SevenSegments)(0, 0, 1, 1, 0, 0, 0, 0, "I")
SEVEN_SEGMENTS.Add 74, (New SevenSegments)(0, 0, 0, 1, 1, 1, 1, 0, "J")
SEVEN_SEGMENTS.Add 75, (New SevenSegments)(0, 1, 1, 1, 0, 1, 0, 1, "K")
SEVEN_SEGMENTS.Add 76, (New SevenSegments)(0, 0, 1, 1, 1, 0, 0, 0, "L")
SEVEN_SEGMENTS.Add 77, (New SevenSegments)(0, 0, 0, 1, 0, 1, 0, 1, "M")
SEVEN_SEGMENTS.Add 78, (New SevenSegments)(0, 0, 1, 1, 0, 1, 1, 1, "N")
SEVEN_SEGMENTS.Add 79, (New SevenSegments)(0, 0, 1, 1, 1, 1, 1, 1, "O")
SEVEN_SEGMENTS.Add 80, (New SevenSegments)(0, 1, 1, 1, 0, 0, 1, 1, "P")
SEVEN_SEGMENTS.Add 81, (New SevenSegments)(0, 1, 1, 0, 1, 0, 1, 1, "Q")
SEVEN_SEGMENTS.Add 82, (New SevenSegments)(0, 0, 1, 1, 0, 0, 1, 1, "R")
SEVEN_SEGMENTS.Add 83, (New SevenSegments)(0, 1, 1, 0, 1, 1, 0, 1, "S")
SEVEN_SEGMENTS.Add 84, (New SevenSegments)(0, 1, 1, 1, 1, 0, 0, 0, "T")
SEVEN_SEGMENTS.Add 85, (New SevenSegments)(0, 0, 1, 1, 1, 1, 1, 0, "U")
SEVEN_SEGMENTS.Add 86, (New SevenSegments)(0, 0, 1, 1, 1, 1, 1, 0, "V")
SEVEN_SEGMENTS.Add 87, (New SevenSegments)(0, 0, 1, 0, 1, 0, 1, 0, "W")
SEVEN_SEGMENTS.Add 88, (New SevenSegments)(0, 1, 1, 1, 0, 1, 1, 0, "X")
SEVEN_SEGMENTS.Add 89, (New SevenSegments)(0, 1, 1, 0, 1, 1, 1, 0, "Y")
SEVEN_SEGMENTS.Add 90, (New SevenSegments)(0, 1, 0, 1, 1, 0, 1, 1, "Z")
SEVEN_SEGMENTS.Add 91, (New SevenSegments)(0, 0, 1, 1, 1, 0, 0, 1, "[")
SEVEN_SEGMENTS.Add 92, (New SevenSegments)(0, 1, 1, 0, 0, 1, 0, 0, Chr(92)) ' Character \
SEVEN_SEGMENTS.Add 93, (New SevenSegments)(0, 0, 0, 0, 1, 1, 1, 1, "]")
SEVEN_SEGMENTS.Add 94, (New SevenSegments)(0, 0, 1, 0, 0, 0, 1, 1, "^")
SEVEN_SEGMENTS.Add 95, (New SevenSegments)(0, 0, 0, 0, 1, 0, 0, 0, "_")
SEVEN_SEGMENTS.Add 96, (New SevenSegments)(0, 0, 0, 0, 0, 0, 1, 0, "`")
SEVEN_SEGMENTS.Add 97, (New SevenSegments)(0, 1, 0, 1, 1, 1, 1, 1, "a")
SEVEN_SEGMENTS.Add 98, (New SevenSegments)(0, 1, 1, 1, 1, 1, 0, 0, "b")
SEVEN_SEGMENTS.Add 99, (New SevenSegments)(0, 1, 0, 1, 1, 0, 0, 0, "c")
SEVEN_SEGMENTS.Add 100, (New SevenSegments)(0, 1, 0, 1, 1, 1, 1, 0, "d")
SEVEN_SEGMENTS.Add 101, (New SevenSegments)(0, 1, 1, 1, 1, 0, 1, 1, "e")
SEVEN_SEGMENTS.Add 102, (New SevenSegments)(0, 1, 1, 1, 0, 0, 0, 1, "f")
SEVEN_SEGMENTS.Add 103, (New SevenSegments)(0, 1, 1, 0, 1, 1, 1, 1, "g")
SEVEN_SEGMENTS.Add 104, (New SevenSegments)(0, 1, 1, 1, 0, 1, 0, 0, "h")
SEVEN_SEGMENTS.Add 105, (New SevenSegments)(0, 0, 0, 1, 0, 0, 0, 0, "i")
SEVEN_SEGMENTS.Add 106, (New SevenSegments)(0, 0, 0, 0, 1, 1, 0, 0, "j")
SEVEN_SEGMENTS.Add 107, (New SevenSegments)(0, 1, 1, 1, 0, 1, 0, 1, "k")
SEVEN_SEGMENTS.Add 108, (New SevenSegments)(0, 0, 1, 1, 0, 0, 0, 0, "l")
SEVEN_SEGMENTS.Add 109, (New SevenSegments)(0, 0, 0, 1, 0, 1, 0, 0, "m")
SEVEN_SEGMENTS.Add 110, (New SevenSegments)(0, 1, 0, 1, 0, 1, 0, 0, "n")
SEVEN_SEGMENTS.Add 111, (New SevenSegments)(0, 1, 0, 1, 1, 1, 0, 0, "o")
SEVEN_SEGMENTS.Add 112, (New SevenSegments)(0, 1, 1, 1, 0, 0, 1, 1, "p")
SEVEN_SEGMENTS.Add 113, (New SevenSegments)(0, 1, 1, 0, 0, 1, 1, 1, "q")
SEVEN_SEGMENTS.Add 114, (New SevenSegments)(0, 1, 0, 1, 0, 0, 0, 0, "r")
SEVEN_SEGMENTS.Add 115, (New SevenSegments)(0, 1, 1, 0, 1, 1, 0, 1, "s")
SEVEN_SEGMENTS.Add 116, (New SevenSegments)(0, 1, 1, 1, 1, 0, 0, 0, "t")
SEVEN_SEGMENTS.Add 117, (New SevenSegments)(0, 0, 0, 1, 1, 1, 0, 0, "u")
SEVEN_SEGMENTS.Add 118, (New SevenSegments)(0, 0, 0, 1, 1, 1, 0, 0, "v")
SEVEN_SEGMENTS.Add 119, (New SevenSegments)(0, 0, 0, 1, 0, 1, 0, 0, "w")
SEVEN_SEGMENTS.Add 120, (New SevenSegments)(0, 1, 1, 1, 0, 1, 1, 0, "x")
SEVEN_SEGMENTS.Add 121, (New SevenSegments)(0, 1, 1, 0, 1, 1, 1, 0, "y")
SEVEN_SEGMENTS.Add 122, (New SevenSegments)(0, 1, 0, 1, 1, 0, 1, 1, "z")
SEVEN_SEGMENTS.Add 123, (New SevenSegments)(0, 1, 0, 0, 0, 1, 1, 0, "{")
SEVEN_SEGMENTS.Add 124, (New SevenSegments)(0, 0, 1, 1, 0, 0, 0, 0, "|")
SEVEN_SEGMENTS.Add 125, (New SevenSegments)(0, 1, 1, 1, 0, 0, 0, 0, "}")
SEVEN_SEGMENTS.Add 126, (New SevenSegments)(0, 0, 0, 0, 0, 0, 0, 1, "~")


Function MapSegmentTextToSegments(text, display_width, segment_mapping)
    'Map a segment display text to a certain display mapping.
    Dim segments()
	ReDim segments(Len(text)-1)

	Dim charCode, i
    For i = 1 To Len(text)
        char = Mid(text, i, 1)
        charCode = Asc(char)
        If segment_mapping.Exists(CharCode) Then
            Set mapping = segment_mapping(CharCode)
        Else
            Set mapping = segment_mapping(Null)
        End If
        Set segments(i-1) = mapping
    Next

    MapSegmentTextToSegments = segments
End Function
Function CreateGlfMagnet(name)
	Dim magnet : Set magnet = (new GlfMagnet)(name)
	Set CreateGlfMagnet = magnet
End Function

Class GlfMagnet

    Private m_name
    Private m_enable_events
    Private m_disable_events
    Private m_fling_ball_events
    Private m_fling_drop_time
    Private m_fling_regrab_time
    Private m_grab_ball_events
    Private m_grab_switch
    Private m_grab_time
    Private m_release_ball_events
    Private m_release_time
    Private m_reset_events
    Private m_action_cb

    Private m_active
    Private m_release_in_progress

    Private m_debug

    Public Property Let EnableEvents(value)
        Dim evt
        If IsArray(m_enable_events) Then
            For Each evt in m_enable_events
                RemovePinEventListener evt, m_name & "_enable"
            Next
        End If
        m_enable_events = value
        For Each evt in m_enable_events
            AddPinEventListener evt, m_name & "_enable", "MagnetEventHandler", 1000, Array("enable", Me)
        Next
    End Property
    Public Property Let DisableEvents(value)
        Dim evt
        If IsArray(m_disable_events) Then
            For Each evt in m_enable_events
                RemovePinEventListener evt, m_name & "_disable"
            Next
        End If
        m_disable_events = value
        For Each evt in m_disable_events
            AddPinEventListener evt, m_name & "_disable", "MagnetEventHandler", 1000, Array("disable", Me)
        Next
    End Property
    Public Property Let ActionCallback(value) : m_action_cb = value : End Property
    Public Property Let FlingBallEvents(value) : m_fling_ball_events = value : End Property
    Public Property Let FlingDropTime(value) : Set m_fling_drop_time = CreateGlfInput(value) : End Property
    Public Property Let FlingRegrabTime(value) : Set m_fling_regrab_time = CreateGlfInput(value) : End Property
    Public Property Let GrabBallEvents(value) : m_grab_ball_events = value : End Property
    Public Property Let GrabSwitch(value)
        m_grab_switch = value
    End Property
    Public Property Let GrabTime(value) : Set m_grab_time = CreateGlfInput(value) : End Property
    Public Property Let ReleaseBallEvents(value) : m_release_ball_events = value : End Property
    Public Property Let ReleaseTime(value) : Set m_release_time = CreateGlfInput(value) : End Property
    Public Property Let ResetEvents(value) : m_reset_events = value : End Property
    Public Property Let Debug(value) : m_debug = value : End Property

	Public default Function init(name)
        m_name = "magnet_" & name
        EnableEvents = Array("ball_started")
        DisableEvents = Array("ball_will_end", "service_mode_entered")
        m_action_cb = Empty
        m_fling_ball_events = Array()
        Set m_fling_drop_time = CreateGlfInput(250)
        Set m_fling_regrab_time = CreateGlfInput(50)
        m_grab_ball_events = Array()
        m_grab_switch = Empty
        Set m_grab_time = CreateGlfInput(1500)
        m_release_ball_events = Array()
        Set m_release_time = CreateGlfInput(500)
        m_reset_events = Array("machine_reset_phase_3", "ball_starting")
        m_active = False
        m_release_in_progress = False
        m_debug = False
        glf_magnets.Add name, Me
        Set Init = Me
	End Function

    Public Sub Enable()
        Log "Enabling"
        Dim evt
        For Each evt in m_fling_ball_events
            AddPinEventListener evt, m_name & "_fling", "MagnetEventHandler", 1000, Array("fling", Me)
        Next
        For Each evt in m_grab_ball_events
            AddPinEventListener evt, m_name & "_grab", "MagnetEventHandler", 1000, Array("grab", Me)
        Next
        For Each evt in m_release_ball_events
            AddPinEventListener evt, m_name & "_release", "MagnetEventHandler", 1000, Array("release", Me)
        Next
        AddPinEventListener m_grab_switch & "_active", m_name & "_grab_switch", "MagnetEventHandler", 1000, Array("grab", Me)
    End Sub

    Public Sub Disable()
        Log "Disabling"
        Dim evt
        For Each evt in m_fling_ball_events
            RemovePinEventListener evt, m_name & "_fling"
        Next
        For Each evt in m_grab_ball_events
            RemovePinEventListener evt, m_name & "_grab"
        Next
        For Each evt in m_release_ball_events
            RemovePinEventListener evt, m_name & "_release"
        Next
        RemovePinEventListener m_grab_switch & "_active", m_name & "_grab_switch"
    End Sub

    Public Sub AddBall(ball)
        m_magnet.AddBall ball
    End Sub

    Public Sub RemoveBall(ball)
        m_magnet.RemoveBall ball
    End Sub

    Public Sub Fling()
        If m_active = False or m_release_in_progress = True Then
            Exit Sub
        End If
        m_active = False
        m_release_in_progress = True
        Log "Flinging Ball"
        DispatchPinEvent m_name & "flinging_ball", Null
        GetRef(m_action_cb)(0)
        SetDelay m_name & "_fling_reenable", "MagnetEventHandler" , Array(Array("fling_reenable", Me),Null), m_fling_drop_time.Value
    End Sub

    Public Sub FlingReenable()
        GetRef(m_action_cb)(1)
        SetDelay m_name & "_fling_regrab", "MagnetEventHandler" , Array(Array("fling_regrab", Me),Null), m_fling_regrab_time.Value
    End Sub

    Public Sub FlingRegrab()
        m_release_in_progress = False
        GetRef(m_action_cb)(0)
        DispatchPinEvent m_name & "_flinged_ball", Null
    End Sub

    Public Sub Grab()
        If m_active = True Or m_release_in_progress = True Then
            Exit Sub
        End If
        Log "Grabbing Ball"
        m_active = True
        GetRef(m_action_cb)(1)
        DispatchPinEvent m_name & "_grabbing_ball", Null
        SetDelay m_name & "_grabbing_done", "MagnetEventHandler" , Array(Array("grabbing_done", Me),Null), m_grab_time.Value
    End Sub

    Public Sub GrabbingDone()
        DispatchPinEvent m_name & "_grabbed_ball", Null
    End Sub

    Public Sub Release()
        If m_active = False or m_release_in_progress = True Then
            Exit Sub
        End If
        m_active = False
        m_release_in_progress = True
        Log "Releasing Ball"
        DispatchPinEvent m_name & "releasing_ball", Null
        GetRef(m_action_cb)(0)
        SetDelay m_name & "_release_done", "MagnetEventHandler" , Array(Array("release_done", Me),Null), m_release_time.Value
    End Sub

    Public Sub ReleaseDone()
        m_release_in_progress = False
        DispatchPinEvent m_name & "released_ball", Null
    End Sub

    Private Sub Log(message)
        If m_debug = True Then
            glf_debugLog.WriteToLog m_name, message
        End If
    End Sub
End Class

Function MagnetEventHandler(args)
    Dim ownProps, kwargs : ownProps = args(0)
    If IsObject(args(1)) Then
        Set kwargs = args(1) 
    Else
        kwargs = args(1) 
    End If
    Dim evt : evt = ownProps(0)
    Dim magnet : Set magnet = ownProps(1)
    Select Case evt
        Case "enable"
            magnet.Enable
        Case "disable"
            magnet.Disable
        Case "fling"
            magnet.Fling
        Case "grab"
            magnet.Grab
        Case "release"
            magnet.Release
        Case "grabbing_done"
            magnet.GrabbingDone
        Case "release_done"
            magnet.ReleaseDone
        Case "fling_reenable"
            magnet.FlingReenable
        Case "fling_regrab"
            magnet.FlingRegrab
    End Select
    If IsObject(args(1)) Then
        Set MagnetEventHandler = kwargs
    Else
        MagnetEventHandler = kwargs
    End If
    
End Function

Class GlfEvent
	Private m_raw, m_name, m_event, m_condition
  
    Public Property Get Name() : Name = m_name : End Property
    Public Property Get EventName() : EventName = m_event : End Property
    Public Property Get Condition() : Condition = m_condition : End Property
    Public Property Get Raw() : Raw = m_raw : End Property

    Public Function Evaluate()
        If Not IsNull(m_condition) Then
            Evaluate = GetRef(m_condition)()
        Else
            Evaluate = True
        End If
    End Function

	Public default Function init(evt)
        m_raw = evt
        Dim parsedEvent : parsedEvent = Glf_ParseEventInput(evt)
        m_name = parsedEvent(0)
        m_event = parsedEvent(1)
        m_condition = parsedEvent(2)
	    Set Init = Me
	End Function

End Class


'******************************************************
'*****  Player Setup                               ****
'******************************************************

Sub Glf_AddPlayer()
    Select Case UBound(glf_playerState.Keys())
        Case -1:
            glf_playerState.Add "PLAYER 1", Glf_InitNewPlayer()
            Glf_BcpAddPlayer 1
            glf_currentPlayer = "PLAYER 1"
        Case 0:     
            If GetPlayerState(GLF_CURRENT_BALL) = 1 Then
                glf_playerState.Add "PLAYER 2", Glf_InitNewPlayer()
                Glf_BcpAddPlayer 2
            End If
        Case 1:
            If GetPlayerState(GLF_CURRENT_BALL) = 1 Then
                glf_playerState.Add "PLAYER 3", Glf_InitNewPlayer()
                Glf_BcpAddPlayer 3
            End If     
        Case 2:   
            If GetPlayerState(GLF_CURRENT_BALL) = 1 Then
                glf_playerState.Add "PLAYER 4", Glf_InitNewPlayer()
                Glf_BcpAddPlayer 4
            End If  
            glf_canAddPlayers = False
    End Select
End Sub

Function Glf_InitNewPlayer()
    Dim state : Set state = CreateObject("Scripting.Dictionary")
    state.Add GLF_SCORE, 0
    state.Add GLF_INITIALS, ""
    state.Add GLF_CURRENT_BALL, 1
    Set Glf_InitNewPlayer = state
End Function


'****************************
' Setup Player
' Event Listeners:  
    AddPinEventListener GLF_GAME_STARTED,   "start_game_setup",   "Glf_SetupPlayer", 1000, Null
    AddPinEventListener GLF_NEXT_PLAYER,    "next_player_setup",  "Glf_SetupPlayer", 1000, Null
'
'*****************************
Function Glf_SetupPlayer(args)
    EmitAllglf_playerEvents()
End Function

'****************************
' StartGame
'
'*****************************
Sub Glf_StartGame()
    glf_gameStarted = True
    DispatchPinEvent GLF_GAME_START, Null
    If useBcp Then
        bcpController.Send "player_turn_start?player_num=int:1"
        bcpController.Send "ball_start?player_num=int:1&ball=int:1"
        bcpController.PlaySlide "base", "base", 1000
        bcpController.SendPlayerVariable "number", 1, 0
    End If
    DispatchPinEvent GLF_GAME_STARTED, Null
End Sub


'******************************************************
'*****   Ball Release                              ****
'******************************************************

'****************************
' Release Ball
' Event Listeners:  
AddPinEventListener GLF_GAME_STARTED, "start_game_release_ball",   "Glf_ReleaseBall", 1000, True
AddPinEventListener GLF_NEXT_PLAYER, "next_player_release_ball",   "Glf_ReleaseBall", 1000, True
'
'*****************************
Function Glf_ReleaseBall(args)
    If Not IsNull(args) Then
        If args(0) = True Then
            DispatchPinEvent GLF_BALL_STARTED, Null
            If useBcp Then
                bcpController.SendPlayerVariable GLF_CURRENT_BALL, GetPlayerState(GLF_CURRENT_BALL), GetPlayerState(GLF_CURRENT_BALL)-1
                bcpController.SendPlayerVariable GLF_SCORE, GetPlayerState(GLF_SCORE), GetPlayerState(GLF_SCORE)
            End If
        End If
    End If
    glf_debugLog.WriteToLog "Release Ball", "swTrough1: " & swTrough1.BallCntOver
    glf_plunger.AddIncomingBalls = 1
    swTrough1.kick 90, 10
    DispatchPinEvent "trough_eject", Null
    glf_debugLog.WriteToLog "Release Ball", "Just Kicked"
    glf_BIP = glf_BIP + 1
End Function


'****************************
' End Of Ball
' Event Listeners:      
    AddPinEventListener GLF_BALL_DRAIN, "ball_drain", "Glf_Drain", 20, Null
'
'*****************************
Function Glf_Drain(args)
    
    Dim ballsToSave : ballsToSave = args(1) 
    glf_debugLog.WriteToLog "end_of_ball, unclaimed balls", CStr(ballsToSave)
    glf_debugLog.WriteToLog "end_of_ball, balls in play", CStr(glf_BIP)
    If ballsToSave <= 0 Then
        Exit Function
    End If

    If glf_BIP > 0 Then
        Exit Function
    End If
    
    DispatchPinEvent GLF_BALL_WILL_END, Null
    DispatchPinEvent GLF_BALL_ENDING, Null
    DispatchPinEvent GLF_BALL_ENDED, Null
    SetPlayerState GLF_CURRENT_BALL, GetPlayerState(GLF_CURRENT_BALL) + 1

    Dim previousPlayerNumber : previousPlayerNumber = Getglf_currentPlayerNumber()
    Select Case glf_currentPlayer
        Case "PLAYER 1":
            If UBound(glf_playerState.Keys()) > 0 Then
                glf_currentPlayer = "PLAYER 2"
            End If
        Case "PLAYER 2":
            If UBound(glf_playerState.Keys()) > 1 Then
                glf_currentPlayer = "PLAYER 3"
            Else
                glf_currentPlayer = "PLAYER 1"
            End If
        Case "PLAYER 3":
            If UBound(glf_playerState.Keys()) > 2 Then
                glf_currentPlayer = "PLAYER 4"
            Else
                glf_currentPlayer = "PLAYER 1"
            End If
        Case "PLAYER 4":
            glf_currentPlayer = "PLAYER 1"
    End Select
    
    If useBcp Then
        bcpController.SendPlayerVariable "number", Getglf_currentPlayerNumber(), previousPlayerNumber
    End If
    If GetPlayerState(GLF_CURRENT_BALL) > glf_ballsPerGame Then
        DispatchPinEvent GLF_GAME_OVER, Null
        glf_gameStarted = False
        glf_currentPlayer = Null
        glf_playerState.RemoveAll()
    Else
        SetDelay "end_of_ball_delay", "EndOfBallNextPlayer", Null, 1000 
    End If
    
End Function

Public Function EndOfBallNextPlayer(args)
    DispatchPinEvent GLF_NEXT_PLAYER, Null
End Function
'*****************************************************************************************************************************************
'  ERROR LOGS by baldgeek
'*****************************************************************************************************************************************
Class GlfDebugLogFile
	Private Filename
	Private TxtFileStream

	Public default Function init()
        Filename = cGameName + "_" & GetTimeStamp & "_debug_log.txt"
		TxtFileStream = Null
		Set Init = Me
	End Function

	Public Sub EnableLogs()
		If glf_debugEnabled = True Then
			DisableLogs()
			Dim FormattedMsg, Timestamp, fso, logFolder
			Set fso = CreateObject("Scripting.FileSystemObject")
			logFolder = "glf_logs"
			If Not fso.FolderExists(logFolder) Then
				fso.CreateFolder logFolder
			End If
			Set TxtFileStream = fso.OpenTextFile(logFolder & "\" & Filename, 8, True)
		End If
	End Sub

	Public Sub DisableLogs()
		If Not IsNull(TxtFileStream) Then
			TxtFileStream.Close
		End If
	End Sub
	
	Private Function LZ(ByVal Number, ByVal Places)
		Dim Zeros
		Zeros = String(CInt(Places), "0")
		LZ = Right(Zeros & CStr(Number), Places)
	End Function
	
	Private Function GetTimeStamp
		Dim CurrTime, Elapsed, MilliSecs
		CurrTime = Now()
		Elapsed = Timer()
		MilliSecs = Int((Elapsed - Int(Elapsed)) * 1000)
		GetTimeStamp = _
		LZ(Year(CurrTime),   4) & "-" _
		 & LZ(Month(CurrTime),  2) & "-" _
		 & LZ(Day(CurrTime),	2) & "_" _
		 & LZ(Hour(CurrTime),   2) & "_" _
		 & LZ(Minute(CurrTime), 2) & "_" _
		 & LZ(Second(CurrTime), 2) & "_" _
		 & LZ(MilliSecs, 4)
	End Function
	
	' *** Debug.Print the time with milliseconds, and a message of your choice
	Public Sub WriteToLog(label, message)
		If glf_debugEnabled = True Then
			Dim FormattedMsg, Timestamp
			Timestamp = GetTimeStamp
			FormattedMsg = Timestamp & ": " & label & ": " & message
			TxtFileStream.WriteLine FormattedMsg
			Debug.Print label & ": " & message
		End If
	End Sub
End Class

'*****************************************************************************************************************************************
'  END ERROR LOGS by baldgeek
'*****************************************************************************************************************************************


Dim glf_lastPinEvent : glf_lastPinEvent = Null

Dim glf_dispatch_parent : glf_dispatch_parent = 0
Dim glf_dispatch_q : Set glf_dispatch_q = CreateObject("Scripting.Dictionary")

Sub DispatchPinEvent(e, kwargs)
    If glf_dispatch_parent > 0 Then
        'There's already a dispatch running.
        glf_dispatch_q.Add e, kwargs
    Else

        If Not glf_pinEvents.Exists(e) Then
            glf_debugLog.WriteToLog "DispatchPinEvent", e & " has no listeners"
            Exit Sub
        End If
        glf_dispatch_parent = glf_dispatch_parent + 1 'Increment the parent count

        If Not Glf_EventBlocks.Exists(e) Then
            Glf_EventBlocks.Add e, CreateObject("Scripting.Dictionary")
        End If
        glf_lastPinEvent = e
        Dim k
        Dim handlers : Set handlers = glf_pinEvents(e)
        glf_debugLog.WriteToLog "DispatchPinEvent", e
        Dim handler
        For Each k In glf_pinEventsOrder(e)
            glf_debugLog.WriteToLog "DispatchPinEvent_"&e, "key: " & k(1) & ", priority: " & k(0)
            If handlers.Exists(k(1)) Then
                handler = handlers(k(1))
                GetRef(handler(0))(Array(handler(2), kwargs, e))
            Else
                glf_debugLog.WriteToLog "DispatchPinEvent_"&e, "Handler does not exist: " & k(1)
            End If
        Next
        Glf_EventBlocks(e).RemoveAll

        glf_dispatch_parent = glf_dispatch_parent - 1 'Handlers finsihed, reduce count.Add
        'process any q items
        Dim keys : keys =  glf_dispatch_q.Keys()
        Dim items : items = glf_dispatch_q.Items()
        glf_dispatch_q.RemoveAll()
        Dim i
        For i=0 To UBound(keys)
            DispatchPinEvent keys(i), items(i)
        Next
    End If
End Sub

Function DispatchRelayPinEvent(e, kwargs)
    If Not glf_pinEvents.Exists(e) Then
        'glf_debugLog.WriteToLog "DispatchRelayPinEvent", e & " has no listeners"
        DispatchRelayPinEvent = kwargs
        Exit Function
    End If
    If Not Glf_EventBlocks.Exists(e) Then
        Glf_EventBlocks.Add e, CreateObject("Scripting.Dictionary")
    End If
    glf_lastPinEvent = e
    Dim k
    Dim handlers : Set handlers = glf_pinEvents(e)
    'glf_debugLog.WriteToLog "DispatchReplayPinEvent", e
    For Each k In glf_pinEventsOrder(e)
        'glf_debugLog.WriteToLog "DispatchReplayPinEvent_"&e, "key: " & k(1) & ", priority: " & k(0)
        kwargs = GetRef(handlers(k(1))(0))(Array(handlers(k(1))(2), kwargs, e))
    Next
    DispatchRelayPinEvent = kwargs
    Glf_EventBlocks(e).RemoveAll
End Function

Function DispatchQueuePinEvent(e, kwargs)
    If Not glf_pinEvents.Exists(e) Then
        'glf_debugLog.WriteToLog "DispatchRelayPinEvent", e & " has no listeners"
        Exit Function
    End If
    If Not Glf_EventBlocks.Exists(e) Then
        Glf_EventBlocks.Add e, CreateObject("Scripting.Dictionary")
    End If
    glf_lastPinEvent = e
    Dim k,i,retArgs
    Dim handlers : Set handlers = glf_pinEvents(e)
    If IsNull(kwargs) Then
        Set kwargs = GlfKwargs()
    End If
    'glf_debugLog.WriteToLog "DispatchReplayPinEvent", e
    For i=0 to UBound(glf_pinEventsOrder(e))
        k = glf_pinEventsOrder(e)(i)
        'glf_debugLog.WriteToLog "DispatchQueuePinEvent"&e, "key: " & k(1) & ", priority: " & k(0)
        'msgbox "DispatchQueuePinEvent: " & e & " , key: " & k(1) & ", priority: " & k(0)
        'msgbox handlers(k(1))(0)
        'Call the handlers.
        'The handlers might return a waitfor command.
        'If NO wait for command, continue calling handlers.
        'IF wait for command, then AddPinEventListener for the waitfor event. The callback handler needs to be ContinueDispatchQueuePinEvent.
        Set retArgs = GetRef(handlers(k(1))(0))(Array(handlers(k(1))(2), kwargs, e))
        If retArgs.Exists("wait_for") And i<Ubound(glf_pinEventsOrder(e)) Then
            'pause execution of handlers at index I. 
            AddPinEventListener retArgs("wait_for"), k(1) & "_wait_for", "ContinueDispatchQueuePinEvent", k(0), Array(e, kwargs, i+1)
            Exit For
            'add event listener for the wait_for event.
            'pass in the index and handlers from this.
            'in the handler for resume queue event, process from the index the remaining handlers.
        End If
    Next
    Glf_EventBlocks(e).RemoveAll
End Function


'args Array(3)
' Array(original_event, orignal_kwargs, index)
' wait_for kwargs
' event
Function ContinueDispatchQueuePinEvent(args)
    Dim arrContinue : arrContinue = args(0)
    Dim e : e = arrContinue(0)
    Dim kwargs : kwargs = arrContinue(1)
    Dim idx : idx = arrContinue(2)
    
    If Not glf_pinEvents.Exists(e) Then
        'glf_debugLog.WriteToLog "DispatchRelayPinEvent", e & " has no listeners"
        Exit Function
    End If
    If Not Glf_EventBlocks.Exists(e) Then
        Glf_EventBlocks.Add e, CreateObject("Scripting.Dictionary")
    End If
    glf_lastPinEvent = e
    Dim k,i,retArgs
    Dim handlers : Set handlers = glf_pinEvents(e)
    'glf_debugLog.WriteToLog "DispatchReplayPinEvent", e
    For i=idx to UBound(glf_pinEventsOrder(e))
        k = glf_pinEventsOrder(e)(i)
        'glf_debugLog.WriteToLog "DispatchReplayPinEvent_"&e, "key: " & k(1) & ", priority: " & k(0)

        'Call the handlers.
        'The handlers might return a waitfor command.
        'If NO wait for command, continue calling handlers.
        'IF wait for command, then AddPinEventListener for the waitfor event. The callback handler needs to be ContinueDispatchQueuePinEvent.
        Set retArgs = GetRef(handlers(k(1))(0))(Array(handlers(k(1))(2), kwargs, e))
        If retArgs.Exists("wait_for") And i<Ubound(glf_pinEventsOrder(e)) Then
            'pause execution of handlers at index I. 
            AddPinEventListener retArgs("wait_for"), k(1) & "_wait_for", "ContinueDispatchQueuePinEvent", k(0), Array(e, kwargs, i)
            Exit For
            'add event listener for the wait_for event.
            'pass in the index and handlers from this.
            'in the handler for resume queue event, process from the index the remaining handlers.
        End If
    Next
    Glf_EventBlocks(e).RemoveAll
End Function

Sub AddPinEventListener(evt, key, callbackName, priority, args)
    Dim i, inserted, tempArray
    If Not glf_pinEvents.Exists(evt) Then
        glf_pinEvents.Add evt, CreateObject("Scripting.Dictionary")
    End If
    If Not glf_pinEvents(evt).Exists(key) Then
        glf_pinEvents(evt).Add key, Array(callbackName, priority, args)
        Sortglf_pinEventsByPriority evt, priority, key, True
    End If
End Sub

Sub RemovePinEventListener(evt, key)
    If glf_pinEvents.Exists(evt) Then
        If glf_pinEvents(evt).Exists(key) Then
            glf_pinEvents(evt).Remove key
            Sortglf_pinEventsByPriority evt, Null, key, False
        End If
    End If
End Sub

Sub Sortglf_pinEventsByPriority(evt, priority, key, isAdding)
    Dim tempArray, i, inserted, foundIndex
    
    ' Initialize or update the glf_pinEventsOrder to maintain order based on priority
    If Not glf_pinEventsOrder.Exists(evt) Then
        ' If the event does not exist in glf_pinEventsOrder, just add it directly if we're adding
        If isAdding Then
            glf_pinEventsOrder.Add evt, Array(Array(priority, key))
        End If
    Else
        tempArray = glf_pinEventsOrder(evt)
        If isAdding Then
            ' Prepare to add one more element if adding
            ReDim Preserve tempArray(UBound(tempArray) + 1)
            inserted = False
            
            For i = 0 To UBound(tempArray) - 1
                If priority > tempArray(i)(0) Then ' Compare priorities
                    ' Move existing elements to insert the new callback at the correct position
                    Dim j
                    For j = UBound(tempArray) To i + 1 Step -1
                        tempArray(j) = tempArray(j - 1)
                    Next
                    ' Insert the new callback
                    tempArray(i) = Array(priority, key)
                    inserted = True
                    Exit For
                End If
            Next
            
            ' If the new callback has the lowest priority, add it at the end
            If Not inserted Then
                tempArray(UBound(tempArray)) = Array(priority, key)
            End If
        Else
            ' Code to remove an element by key
            foundIndex = -1 ' Initialize to an invalid index
            
            ' First, find the element's index
            For i = 0 To UBound(tempArray)
                If tempArray(i)(1) = key Then
                    foundIndex = i
                    Exit For
                End If
            Next
            
            ' If found, remove the element by shifting others
            If foundIndex <> -1 Then
                For i = foundIndex To UBound(tempArray) - 1
                    tempArray(i) = tempArray(i + 1)
                Next
                
                ' Resize the array to reflect the removal
                ReDim Preserve tempArray(UBound(tempArray) - 1)
            End If
        End If
        
        ' Update the glf_pinEventsOrder with the newly ordered or modified list
        glf_pinEventsOrder(evt) = tempArray
    End If
End Sub
Function GetPlayerState(key)
    If IsNull(glf_currentPlayer) Then
        Exit Function
    End If

    If glf_playerState(glf_currentPlayer).Exists(key)  Then
        GetPlayerState = glf_playerState(glf_currentPlayer)(key)
    Else
        GetPlayerState = False
    End If
End Function

Function GetPlayerScore(player)
    dim p
    Select Case player
        Case 1:
            p = "PLAYER 1"
        Case 2:
            p = "PLAYER 2"
        Case 3:
            p = "PLAYER 3"
        Case 4:
            p = "PLAYER 4"
    End Select

    If glf_playerState.Exists(p) Then
        GetPlayerScore = glf_playerState(p)(SCORE)
    Else
        GetPlayerScore = 0
    End If
End Function

Function Getglf_currentPlayerNumber()
    Select Case glf_currentPlayer
        Case "PLAYER 1":
            Getglf_currentPlayerNumber = 1
        Case "PLAYER 2":
            Getglf_currentPlayerNumber = 2
        Case "PLAYER 3":
            Getglf_currentPlayerNumber = 3
        Case "PLAYER 4":
            Getglf_currentPlayerNumber = 4
    End Select
End Function

Function SetPlayerState(key, value)
    If IsNull(glf_currentPlayer) Then
        Exit Function
    End If

    If IsArray(value) Then
        If Join(GetPlayerState(key)) = Join(value) Then
            Exit Function
        End If
    Else
        If GetPlayerState(key) = value Then
            Exit Function
        End If
    End If   
    Dim prevValue
    If glf_playerState(glf_currentPlayer).Exists(key) Then
        prevValue = glf_playerState(glf_currentPlayer)(key)
        glf_playerState(glf_currentPlayer).Remove key
    End If
    glf_playerState(glf_currentPlayer).Add key, value
    
    If glf_playerEvents.Exists(key) Then
        FirePlayerEventHandlers key, value, prevValue
    End If
    
    SetPlayerState = Null
End Function

Sub FirePlayerEventHandlers(evt, value, prevValue)
    If Not glf_playerEvents.Exists(evt) Then
        Exit Sub
    End If    
    Dim k
    Dim handlers : Set handlers = glf_playerEvents(evt)
    For Each k In glf_playerEventsOrder(evt)
        GetRef(handlers(k(1))(0))(Array(handlers(k(1))(2), Array(evt,value,prevValue)))
    Next
End Sub

Sub AddPlayerStateEventListener(evt, key, callbackName, priority, args)
    If Not glf_playerEvents.Exists(evt) Then
        glf_playerEvents.Add evt, CreateObject("Scripting.Dictionary")
    End If
    If Not glf_playerEvents(evt).Exists(key) Then
        glf_playerEvents(evt).Add key, Array(callbackName, priority, args)
        Sortglf_playerEventsByPriority evt, priority, key, True
    End If
End Sub

Sub RemovePlayerStateEventListener(evt, key)
    If glf_playerEvents.Exists(evt) Then
        If glf_playerEvents(evt).Exists(key) Then
            glf_playerEvents(evt).Remove key
            Sortglf_playerEventsByPriority evt, Null, key, False
        End If
    End If
End Sub

Sub Sortglf_playerEventsByPriority(evt, priority, key, isAdding)
    Dim tempArray, i, inserted, foundIndex
    
    ' Initialize or update the glf_playerEventsOrder to maintain order based on priority
    If Not glf_playerEventsOrder.Exists(evt) Then
        ' If the event does not exist in glf_playerEventsOrder, just add it directly if we're adding
        If isAdding Then
            glf_playerEventsOrder.Add evt, Array(Array(priority, key))
        End If
    Else
        tempArray = glf_playerEventsOrder(evt)
        If isAdding Then
            ' Prepare to add one more element if adding
            ReDim Preserve tempArray(UBound(tempArray) + 1)
            inserted = False
            
            For i = 0 To UBound(tempArray) - 1
                If priority > tempArray(i)(0) Then ' Compare priorities
                    ' Move existing elements to insert the new callback at the correct position
                    Dim j
                    For j = UBound(tempArray) To i + 1 Step -1
                        tempArray(j) = tempArray(j - 1)
                    Next
                    ' Insert the new callback
                    tempArray(i) = Array(priority, key)
                    inserted = True
                    Exit For
                End If
            Next
            
            ' If the new callback has the lowest priority, add it at the end
            If Not inserted Then
                tempArray(UBound(tempArray)) = Array(priority, key)
            End If
        Else
            ' Code to remove an element by key
            foundIndex = -1 ' Initialize to an invalid index
            
            ' First, find the element's index
            For i = 0 To UBound(tempArray)
                If tempArray(i)(1) = key Then
                    foundIndex = i
                    Exit For
                End If
            Next
            
            ' If found, remove the element by shifting others
            If foundIndex <> -1 Then
                For i = foundIndex To UBound(tempArray) - 1
                    tempArray(i) = tempArray(i + 1)
                Next
                
                ' Resize the array to reflect the removal
                ReDim Preserve tempArray(UBound(tempArray) - 1)
            End If
        End If
        
        ' Update the glf_playerEventsOrder with the newly ordered or modified list
        glf_playerEventsOrder(evt) = tempArray
    End If
End Sub

Sub EmitAllglf_playerEvents()
    Dim key
    For Each key in glf_playerState(glf_currentPlayer).Keys()
        FirePlayerEventHandlers key, GetPlayerState(key), GetPlayerState(key)
    Next
End Sub

'*******************************************
'  Drain, Trough, and Ball Release
'*******************************************
' It is best practice to never destroy balls. This leads to more stable and accurate pinball game simulations.
' The following code supports a "physical trough" where balls are not destroyed.
' To use this, 
'   - The trough geometry needs to be modeled with walls, and a set of kickers needs to be added to 
'	 the trough. The number of kickers depends on the number of physical balls on the table.
'   - A timer called "UpdateTroughTimer" needs to be added to the table. It should have an interval of 100 and be initially disabled.
'   - The balls need to be created within the Table1_Init sub. A global ball array (gBOT) can be created and used throughout the script


Dim ballInReleasePostion : ballInReleasePostion = False
'TROUGH 
Sub swTrough1_Hit
	ballInReleasePostion = True
	UpdateTrough
End Sub
Sub swTrough1_UnHit
	ballInReleasePostion = False
	UpdateTrough
End Sub
Sub swTrough2_Hit
	UpdateTrough
End Sub
Sub swTrough2_UnHit
	UpdateTrough
End Sub
Sub swTrough3_Hit
	UpdateTrough
End Sub
Sub swTrough3_UnHit
	UpdateTrough
End Sub
Sub swTrough4_Hit
	UpdateTrough
End Sub
Sub swTrough4_UnHit
	UpdateTrough
End Sub
Sub swTrough5_Hit
	UpdateTrough
End Sub
Sub swTrough5_UnHit
	UpdateTrough
End Sub
Sub swTrough6_Hit
	UpdateTrough
End Sub
Sub swTrough6_UnHit
	UpdateTrough
End Sub
Sub swTrough7_Hit
	UpdateTrough
End Sub
Sub swTrough7_UnHit
	UpdateTrough
End Sub
Sub Drain_Hit
	UpdateTrough
    If glf_gameStarted = True Then
        glf_BIP = glf_BIP - 1
        DispatchRelayPinEvent GLF_BALL_DRAIN, 1
    End If
End Sub
Sub Drain_UnHit
	UpdateTrough
End Sub

Sub UpdateTrough
	SetDelay "update_trough", "UpdateTroughDebounced", Null, 100
End Sub

Sub UpdateTroughDebounced(args)
	If glf_troughSize > 1 Then
		If swTrough1.BallCntOver = 0 Then swTrough2.kick 57, 10
	End If
	If glf_troughSize > 2 Then
		If swTrough2.BallCntOver = 0 Then swTrough3.kick 57, 10
	End If
	If glf_troughSize > 3 Then 
		If swTrough3.BallCntOver = 0 Then swTrough4.kick 57, 10
	End If
	If glf_troughSize > 4 Then 
		If swTrough4.BallCntOver = 0 Then swTrough5.kick 57, 10
	End If
	If glf_troughSize > 5 Then
		If swTrough5.BallCntOver = 0 Then swTrough6.kick 57, 10
	End If
	If glf_troughSize > 6 Then
		If swTrough6.BallCntOver = 0 Then swTrough7.kick 57, 10
	End If

	If glf_lastTroughSw.BallCntOver = 0 Then Drain.kick 57, 10
End Sub
