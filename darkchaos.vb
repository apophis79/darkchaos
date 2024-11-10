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
Dim BP_Asteroid1: BP_Asteroid1=Array(BM_Asteroid1, LM_F_FL1_Asteroid1, LM_F_FL2_Asteroid1, LM_F_FL3_Asteroid1, LM_F_FL4_Asteroid1, LM_F_FL7_Asteroid1, LM_L_LB2_Asteroid1, LM_L_LB3_Asteroid1, LM_L_LB4_Asteroid1, LM_L_LM3_Asteroid1, LM_L_LPC4_Asteroid1, LM_L_LPC5_Asteroid1, LM_L_LPF_Asteroid1, LM_L_LSwC1_Asteroid1, LM_L_LSwC2_Asteroid1, LM_L_LSwC3_Asteroid1, LM_L_Lspot1_Asteroid1, LM_GI_gi16_Asteroid1, LM_GI_gi20_Asteroid1, LM_GI_gi21_Asteroid1)
Dim BP_Asteroid2: BP_Asteroid2=Array(BM_Asteroid2, LM_F_FL1_Asteroid2, LM_F_FL2_Asteroid2, LM_F_FL3_Asteroid2, LM_F_FL4_Asteroid2, LM_F_FL7_Asteroid2, LM_L_LB2_Asteroid2, LM_L_LB3_Asteroid2, LM_L_LB4_Asteroid2, LM_L_LM3_Asteroid2, LM_L_LPC4_Asteroid2, LM_L_LPC5_Asteroid2, LM_L_LPF_Asteroid2, LM_L_LSwC1_Asteroid2, LM_L_LSwC2_Asteroid2, LM_L_LSwC3_Asteroid2, LM_L_Lspot1_Asteroid2, LM_GI_gi16_Asteroid2, LM_GI_gi20_Asteroid2, LM_GI_gi21_Asteroid2)
Dim BP_Asteroid3: BP_Asteroid3=Array(BM_Asteroid3, LM_F_FL1_Asteroid3, LM_F_FL2_Asteroid3, LM_F_FL3_Asteroid3, LM_F_FL4_Asteroid3, LM_F_FL7_Asteroid3, LM_L_LB2_Asteroid3, LM_L_LB3_Asteroid3, LM_L_LB4_Asteroid3, LM_L_LM3_Asteroid3, LM_L_LPC4_Asteroid3, LM_L_LPC5_Asteroid3, LM_L_LPF_Asteroid3, LM_L_LSwC1_Asteroid3, LM_L_LSwC2_Asteroid3, LM_L_LSwC3_Asteroid3, LM_L_Lspot1_Asteroid3, LM_GI_gi16_Asteroid3, LM_GI_gi20_Asteroid3, LM_GI_gi21_Asteroid3)
Dim BP_Asteroid4: BP_Asteroid4=Array(BM_Asteroid4, LM_F_FL1_Asteroid4, LM_F_FL2_Asteroid4, LM_F_FL3_Asteroid4, LM_F_FL4_Asteroid4, LM_F_FL7_Asteroid4, LM_L_LB2_Asteroid4, LM_L_LB3_Asteroid4, LM_L_LB4_Asteroid4, LM_L_LM3_Asteroid4, LM_L_LPC1_Asteroid4, LM_L_LPC4_Asteroid4, LM_L_LPC5_Asteroid4, LM_L_LPF_Asteroid4, LM_L_LSwC1_Asteroid4, LM_L_LSwC2_Asteroid4, LM_L_LSwC3_Asteroid4, LM_L_Lspot1_Asteroid4, LM_GI_gi16_Asteroid4, LM_GI_gi20_Asteroid4, LM_GI_gi21_Asteroid4)
Dim BP_BR1: BP_BR1=Array(BM_BR1, LM_F_FL5_BR1, LM_F_FL6_BR1, LM_F_FL7_BR1, LM_L_LB1_BR1, LM_L_LMet1_BR1, LM_L_LSwL1_BR1)
Dim BP_BR2: BP_BR2=Array(BM_BR2, LM_F_FL1_BR2, LM_F_FL2_BR2, LM_F_FL3_BR2, LM_F_FL7_BR2, LM_L_LB2_BR2, LM_L_LB3_BR2, LM_L_LB4_BR2, LM_GI_gi16_BR2)
Dim BP_BR3: BP_BR3=Array(BM_BR3, LM_F_FL1_BR3, LM_F_FL2_BR3, LM_F_FL3_BR3, LM_F_FL7_BR3, LM_L_LB2_BR3, LM_L_LB3_BR3, LM_L_LB4_BR3, LM_GI_gi16_BR3)
Dim BP_BR4: BP_BR4=Array(BM_BR4, LM_F_FL1_BR4, LM_F_FL2_BR4, LM_F_FL3_BR4, LM_F_FL7_BR4, LM_L_LB2_BR4, LM_L_LB3_BR4, LM_L_LB4_BR4, LM_L_Lspot1_BR4, LM_GI_gi13_BR4, LM_GI_gi16_BR4)
Dim BP_BS1: BP_BS1=Array(BM_BS1, LM_F_FL1_BS1, LM_F_FL2_BS1, LM_F_FL3_BS1, LM_F_FL6_BS1, LM_F_FL7_BS1, LM_L_LB1_BS1, LM_L_LMet1_BS1, LM_L_LMet2_BS1, LM_L_LSwL1_BS1, LM_L_LSwL2_BS1, LM_L_LW4_BS1, LM_L_LW5_BS1, LM_GI_gi19_BS1)
Dim BP_BS2: BP_BS2=Array(BM_BS2, LM_F_FL1_BS2, LM_F_FL2_BS2, LM_F_FL3_BS2, LM_F_FL7_BS2, LM_L_LB2_BS2, LM_L_LB3_BS2, LM_L_LB4_BS2, LM_GI_gi16_BS2)
Dim BP_BS3: BP_BS3=Array(BM_BS3, LM_F_FL1_BS3, LM_F_FL2_BS3, LM_F_FL3_BS3, LM_F_FL7_BS3, LM_L_LB2_BS3, LM_L_LB3_BS3, LM_L_LB4_BS3, LM_GI_gi16_BS3)
Dim BP_BS4: BP_BS4=Array(BM_BS4, LM_F_FL1_BS4, LM_F_FL2_BS4, LM_F_FL3_BS4, LM_F_FL7_BS4, LM_L_LB2_BS4, LM_L_LB3_BS4, LM_L_LB4_BS4, LM_L_Lspot1_BS4, LM_GI_gi13_BS4, LM_GI_gi16_BS4)
Dim BP_BmpBot: BP_BmpBot=Array(BM_BmpBot, LM_F_FL1_BmpBot, LM_F_FL2_BmpBot, LM_F_FL3_BmpBot, LM_F_FL7_BmpBot, LM_L_LB1_BmpBot, LM_L_LB2_BmpBot, LM_L_LB3_BmpBot, LM_L_LB4_BmpBot, LM_L_LSwL2_BmpBot, LM_GI_gi13_BmpBot, LM_GI_gi16_BmpBot)
Dim BP_BmpTopB: BP_BmpTopB=Array(BM_BmpTopB, LM_F_FL1_BmpTopB, LM_F_FL2_BmpTopB, LM_F_FL3_BmpTopB, LM_F_FL4_BmpTopB, LM_F_FL7_BmpTopB, LM_L_LB2_BmpTopB, LM_L_LB3_BmpTopB, LM_L_LB4_BmpTopB, LM_L_LSwC2_BmpTopB, LM_L_Lspot1_BmpTopB, LM_GI_gi13_BmpTopB, LM_GI_gi16_BmpTopB)
Dim BP_BmpTopR: BP_BmpTopR=Array(BM_BmpTopR, LM_L_LB1_BmpTopR, LM_L_LCWiz_BmpTopR, LM_L_LMet1_BmpTopR, LM_L_LSwL1_BmpTopR, LM_L_LSwL2_BmpTopR, LM_L_LW7_BmpTopR)
Dim BP_DiverterPin: BP_DiverterPin=Array(BM_DiverterPin, LM_F_FL1_DiverterPin, LM_F_FL2_DiverterPin, LM_F_FL3_DiverterPin, LM_F_FL7_DiverterPin, LM_L_LB2_DiverterPin, LM_L_LB3_DiverterPin)
Dim BP_Gate2: BP_Gate2=Array(BM_Gate2, LM_F_FL1_Gate2, LM_GI_gi10_Gate2, LM_GI_gi14_Gate2)
Dim BP_GateL: BP_GateL=Array(BM_GateL, LM_F_FL2_GateL, LM_F_FL3_GateL, LM_F_FL5_GateL, LM_F_FL6_GateL, LM_F_FL7_GateL, LM_L_LB1_GateL, LM_L_LPC1_GateL, LM_L_Lspot2_GateL, LM_GI_gi20_GateL)
Dim BP_GateR: BP_GateR=Array(BM_GateR, LM_F_FL1_GateR, LM_F_FL2_GateR, LM_F_FL3_GateR, LM_F_FL4_GateR, LM_F_FL7_GateR, LM_L_LB4_GateR, LM_L_LMR_GateR, LM_L_Lspot1_GateR, LM_GI_gi13_GateR, LM_GI_gi16_GateR)
Dim BP_LArm: BP_LArm=Array(BM_LArm, LM_F_FL5_LArm, LM_F_FL6_LArm, LM_L_Lspot2_LArm, LM_GI_gi01_LArm, LM_GI_gi02_LArm, LM_GI_gi03_LArm, LM_GI_gi04_LArm, LM_GI_gi08_LArm)
Dim BP_LFlip: BP_LFlip=Array(BM_LFlip, LM_F_FL5_LFlip, LM_F_FL6_LFlip, LM_L_LC1_LFlip, LM_L_LH1_LFlip, LM_L_LH2_LFlip, LM_L_LH3_LFlip, LM_L_LSA_LFlip, LM_L_Lspot2_LFlip, LM_GI_gi01_LFlip, LM_GI_gi02_LFlip, LM_GI_gi03_LFlip, LM_GI_gi04_LFlip)
Dim BP_LFlipU: BP_LFlipU=Array(BM_LFlipU, LM_F_FL5_LFlipU, LM_F_FL6_LFlipU, LM_L_LC1_LFlipU, LM_L_LC2_LFlipU, LM_L_LC3_LFlipU, LM_L_LC4_LFlipU, LM_L_LH1_LFlipU, LM_L_LH2_LFlipU, LM_L_LH3_LFlipU, LM_L_LH4_LFlipU, LM_L_LH5_LFlipU, LM_L_LPR4_LFlipU, LM_L_LPR5_LFlipU, LM_L_LSA_LFlipU, LM_L_Lspot2_LFlipU, LM_GI_gi01_LFlipU, LM_GI_gi02_LFlipU, LM_GI_gi03_LFlipU, LM_GI_gi04_LFlipU, LM_GI_gi07_LFlipU)
Dim BP_LockPin: BP_LockPin=Array(BM_LockPin, LM_F_FL1_LockPin, LM_F_FL2_LockPin, LM_F_FL3_LockPin, LM_F_FL5_LockPin, LM_F_FL7_LockPin, LM_L_LB1_LockPin, LM_L_Lspot2_LockPin, LM_GI_gi14_LockPin, LM_GI_gi15_LockPin, LM_GI_gi19_LockPin)
Dim BP_Lsling1: BP_Lsling1=Array(BM_Lsling1, LM_F_FL5_Lsling1, LM_F_FL6_Lsling1, LM_L_LCR1_Lsling1, LM_L_LCR2_Lsling1, LM_L_Lspot2_Lsling1, LM_GI_gi01_Lsling1, LM_GI_gi02_Lsling1, LM_GI_gi03_Lsling1, LM_GI_gi04_Lsling1)
Dim BP_Lsling2: BP_Lsling2=Array(BM_Lsling2, LM_F_FL1_Lsling2, LM_F_FL2_Lsling2, LM_F_FL3_Lsling2, LM_F_FL5_Lsling2, LM_F_FL6_Lsling2, LM_F_FL7_Lsling2, LM_L_LCR1_Lsling2, LM_L_LCR2_Lsling2, LM_L_Lspot2_Lsling2, LM_GI_gi01_Lsling2, LM_GI_gi02_Lsling2, LM_GI_gi03_Lsling2, LM_GI_gi04_Lsling2)
Dim BP_Parts: BP_Parts=Array(BM_Parts, LM_L_LShip_Parts, LM_F_FL1_Parts, LM_F_FL2_Parts, LM_F_FL3_Parts, LM_F_FL4_Parts, LM_F_FL5_Parts, LM_F_FL6_Parts, LM_F_FL7_Parts, LM_L_LB1_Parts, LM_L_LB2_Parts, LM_L_LB3_Parts, LM_L_LB4_Parts, LM_L_LC1_Parts, LM_L_LC6_Parts, LM_L_LC7_Parts, LM_L_LC8_Parts, LM_L_LCC1_Parts, LM_L_LCC2_Parts, LM_L_LCC3_Parts, LM_L_LCR1_Parts, LM_L_LCR2_Parts, LM_L_LCWiz_Parts, LM_L_LEBR_Parts, LM_L_LF1_Parts, LM_L_LF2_Parts, LM_L_LF3_Parts, LM_L_LH1_Parts, LM_L_LH2_Parts, LM_L_LH8_Parts, LM_L_LH9_Parts, LM_L_LLI_Parts, LM_L_LLO_Parts, LM_L_LLWiz_Parts, LM_L_LM1_Parts, LM_L_LM2_Parts, LM_L_LM4_Parts, LM_L_LM5_Parts, LM_L_LMLR_Parts, LM_L_LMR1_Parts, LM_L_LMR2_Parts, LM_L_LMR_Parts, LM_L_LMet1_Parts, LM_L_LMet2_Parts, LM_L_LMet3_Parts, LM_L_LMet4_Parts, LM_L_LPC1_Parts, LM_L_LPC2_Parts, LM_L_LPC3_Parts, LM_L_LPC4_Parts, LM_L_LPC5_Parts, LM_L_LPR1_Parts, LM_L_LPR2_Parts, LM_L_LPR3_Parts, LM_L_LPR4_Parts, LM_L_LPR5_Parts, LM_L_LPR6_Parts, LM_L_LRI_Parts, LM_L_LRO_Parts, LM_L_LS1_Parts, _
	LM_L_LS2_Parts, LM_L_LS3_Parts, LM_L_LS4_Parts, LM_L_LS5_Parts, LM_L_LS6_Parts, LM_L_LSC1_Parts, LM_L_LSC2_Parts, LM_L_LSC3_Parts, LM_L_LSC4_Parts, LM_L_LSL_Parts, LM_L_LSR_Parts, LM_Stars_Parts, LM_L_LSwC1_Parts, LM_L_LSwC2_Parts, LM_L_LSwC3_Parts, LM_L_LSwL1_Parts, LM_L_LSwL2_Parts, LM_L_LTW1_Parts, LM_L_LTW2_Parts, LM_L_LTW3_Parts, LM_L_LTW4_Parts, LM_L_LW1_Parts, LM_L_LW2_Parts, LM_L_LW3_Parts, LM_L_LW4_Parts, LM_L_LW5_Parts, LM_L_LW6_Parts, LM_L_LW7_Parts, LM_L_LW8_Parts, LM_L_LW9_Parts, LM_L_LWiz_Parts, LM_L_LX_Parts, LM_L_Lspot1_Parts, LM_L_Lspot2_Parts, LM_D_a00_Parts, LM_D_a01_Parts, LM_D_a02_Parts, LM_D_a03_Parts, LM_D_a04_Parts, LM_D_a05_Parts, LM_D_a06_Parts, LM_D_a10_Parts, LM_D_a11_Parts, LM_D_a12_Parts, LM_D_a13_Parts, LM_D_a14_Parts, LM_D_a15_Parts, LM_D_a16_Parts, LM_GI_gi01_Parts, LM_GI_gi02_Parts, LM_GI_gi03_Parts, LM_GI_gi04_Parts, LM_GI_gi05_Parts, LM_GI_gi06_Parts, LM_GI_gi07_Parts, LM_GI_gi08_Parts, LM_GI_gi09_Parts, LM_GI_gi10_Parts, LM_GI_gi11_Parts, LM_GI_gi12_Parts, _
	LM_GI_gi13_Parts, LM_GI_gi14_Parts, LM_GI_gi15_Parts, LM_GI_gi16_Parts, LM_GI_gi17_Parts, LM_GI_gi18_Parts, LM_GI_gi19_Parts, LM_GI_gi20_Parts, LM_GI_gi21_Parts)
Dim BP_Playfield: BP_Playfield=Array(BM_Playfield, LM_F_FL1_Playfield, LM_F_FL2_Playfield, LM_F_FL3_Playfield, LM_F_FL4_Playfield, LM_F_FL5_Playfield, LM_F_FL6_Playfield, LM_F_FL7_Playfield, LM_L_LB1_Playfield, LM_L_LB2_Playfield, LM_L_LB3_Playfield, LM_L_LB4_Playfield, LM_L_LC1_Playfield, LM_L_LC2_Playfield, LM_L_LC3_Playfield, LM_L_LC4_Playfield, LM_L_LC5_Playfield, LM_L_LC6_Playfield, LM_L_LC7_Playfield, LM_L_LC8_Playfield, LM_L_LCC1_Playfield, LM_L_LCC2_Playfield, LM_L_LCC3_Playfield, LM_L_LCR1_Playfield, LM_L_LCR2_Playfield, LM_L_LCWiz_Playfield, LM_L_LEBR_Playfield, LM_L_LF1_Playfield, LM_L_LF2_Playfield, LM_L_LF3_Playfield, LM_L_LH1_Playfield, LM_L_LH2_Playfield, LM_L_LH3_Playfield, LM_L_LH4_Playfield, LM_L_LH5_Playfield, LM_L_LH6_Playfield, LM_L_LH7_Playfield, LM_L_LH8_Playfield, LM_L_LH9_Playfield, LM_L_LLI_Playfield, LM_L_LLO_Playfield, LM_L_LLWiz_Playfield, LM_L_LM1_Playfield, LM_L_LM2_Playfield, LM_L_LM3_Playfield, LM_L_LM4_Playfield, LM_L_LM5_Playfield, LM_L_LMLR_Playfield, LM_L_LMR1_Playfield, _
	LM_L_LMR2_Playfield, LM_L_LMR_Playfield, LM_L_LMet1_Playfield, LM_L_LMet2_Playfield, LM_L_LMet3_Playfield, LM_L_LMet4_Playfield, LM_L_LPC1_Playfield, LM_L_LPC2_Playfield, LM_L_LPC3_Playfield, LM_L_LPC4_Playfield, LM_L_LPC5_Playfield, LM_L_LPF_Playfield, LM_L_LPR1_Playfield, LM_L_LPR2_Playfield, LM_L_LPR3_Playfield, LM_L_LPR4_Playfield, LM_L_LPR5_Playfield, LM_L_LPR6_Playfield, LM_L_LRI_Playfield, LM_L_LRO_Playfield, LM_L_LS1_Playfield, LM_L_LS2_Playfield, LM_L_LS3_Playfield, LM_L_LS4_Playfield, LM_L_LS5_Playfield, LM_L_LS6_Playfield, LM_L_LSA_Playfield, LM_L_LSC1_Playfield, LM_L_LSC2_Playfield, LM_L_LSC3_Playfield, LM_L_LSC4_Playfield, LM_L_LSL_Playfield, LM_L_LSR_Playfield, LM_L_LSwC1_Playfield, LM_L_LSwC2_Playfield, LM_L_LSwC3_Playfield, LM_L_LSwL1_Playfield, LM_L_LSwL2_Playfield, LM_L_LTW1_Playfield, LM_L_LTW2_Playfield, LM_L_LTW3_Playfield, LM_L_LTW4_Playfield, LM_L_LW1_Playfield, LM_L_LW2_Playfield, LM_L_LW3_Playfield, LM_L_LW4_Playfield, LM_L_LW5_Playfield, LM_L_LW6_Playfield, LM_L_LW7_Playfield, _
	LM_L_LW8_Playfield, LM_L_LW9_Playfield, LM_L_LWiz_Playfield, LM_L_LX_Playfield, LM_L_Lspot1_Playfield, LM_L_Lspot2_Playfield, LM_D_a00_Playfield, LM_D_a01_Playfield, LM_D_a04_Playfield, LM_D_a05_Playfield, LM_D_a06_Playfield, LM_D_a10_Playfield, LM_D_a11_Playfield, LM_D_a12_Playfield, LM_D_a14_Playfield, LM_D_a15_Playfield, LM_D_a16_Playfield, LM_GI_gi01_Playfield, LM_GI_gi02_Playfield, LM_GI_gi03_Playfield, LM_GI_gi04_Playfield, LM_GI_gi05_Playfield, LM_GI_gi06_Playfield, LM_GI_gi07_Playfield, LM_GI_gi08_Playfield, LM_GI_gi09_Playfield, LM_GI_gi10_Playfield, LM_GI_gi11_Playfield, LM_GI_gi12_Playfield, LM_GI_gi13_Playfield, LM_GI_gi14_Playfield, LM_GI_gi15_Playfield, LM_GI_gi16_Playfield, LM_GI_gi17_Playfield, LM_GI_gi18_Playfield, LM_GI_gi19_Playfield, LM_GI_gi20_Playfield, LM_GI_gi21_Playfield)
Dim BP_RArm: BP_RArm=Array(BM_RArm, LM_F_FL1_RArm, LM_F_FL2_RArm, LM_F_FL3_RArm, LM_F_FL5_RArm, LM_F_FL6_RArm, LM_F_FL7_RArm, LM_L_Lspot2_RArm, LM_GI_gi05_RArm, LM_GI_gi06_RArm, LM_GI_gi07_RArm, LM_GI_gi08_RArm)
Dim BP_RFlip: BP_RFlip=Array(BM_RFlip, LM_F_FL5_RFlip, LM_F_FL6_RFlip, LM_L_LC8_RFlip, LM_L_LH7_RFlip, LM_L_LH8_RFlip, LM_L_LH9_RFlip, LM_L_LSA_RFlip, LM_L_Lspot2_RFlip, LM_GI_gi01_RFlip, LM_GI_gi05_RFlip, LM_GI_gi06_RFlip, LM_GI_gi07_RFlip, LM_GI_gi08_RFlip)
Dim BP_RFlip1: BP_RFlip1=Array(BM_RFlip1, LM_F_FL1_RFlip1, LM_F_FL4_RFlip1, LM_L_LB1_RFlip1, LM_L_LS6_RFlip1, LM_GI_gi14_RFlip1, LM_GI_gi15_RFlip1, LM_GI_gi19_RFlip1)
Dim BP_RFlip1U: BP_RFlip1U=Array(BM_RFlip1U, LM_F_FL1_RFlip1U, LM_F_FL4_RFlip1U, LM_L_LB1_RFlip1U, LM_L_LF3_RFlip1U, LM_L_LS5_RFlip1U, LM_L_LS6_RFlip1U, LM_GI_gi10_RFlip1U, LM_GI_gi13_RFlip1U, LM_GI_gi14_RFlip1U, LM_GI_gi15_RFlip1U, LM_GI_gi19_RFlip1U)
Dim BP_RFlipU: BP_RFlipU=Array(BM_RFlipU, LM_F_FL5_RFlipU, LM_F_FL6_RFlipU, LM_L_LC5_RFlipU, LM_L_LC6_RFlipU, LM_L_LC7_RFlipU, LM_L_LC8_RFlipU, LM_L_LH5_RFlipU, LM_L_LH6_RFlipU, LM_L_LH7_RFlipU, LM_L_LH8_RFlipU, LM_L_LH9_RFlipU, LM_L_LPR6_RFlipU, LM_L_LSA_RFlipU, LM_L_Lspot2_RFlipU, LM_D_a01_RFlipU, LM_GI_gi01_RFlipU, LM_GI_gi03_RFlipU, LM_GI_gi05_RFlipU, LM_GI_gi06_RFlipU, LM_GI_gi07_RFlipU, LM_GI_gi08_RFlipU)
Dim BP_Rails: BP_Rails=Array(BM_Rails, LM_F_FL1_Rails)
Dim BP_Ramp: BP_Ramp=Array(BM_Ramp, LM_F_FL1_Ramp, LM_F_FL2_Ramp, LM_F_FL3_Ramp, LM_F_FL4_Ramp, LM_F_FL5_Ramp, LM_F_FL6_Ramp, LM_F_FL7_Ramp, LM_L_LB1_Ramp, LM_L_LCC1_Ramp, LM_L_LPC1_Ramp, LM_L_LPC4_Ramp, LM_Stars_Ramp, LM_L_LTW1_Ramp, LM_L_LTW2_Ramp, LM_L_Lspot1_Ramp, LM_L_Lspot2_Ramp, LM_GI_gi16_Ramp, LM_GI_gi20_Ramp, LM_GI_gi21_Ramp)
Dim BP_Rsling1: BP_Rsling1=Array(BM_Rsling1, LM_F_FL1_Rsling1, LM_F_FL2_Rsling1, LM_F_FL3_Rsling1, LM_F_FL5_Rsling1, LM_F_FL6_Rsling1, LM_F_FL7_Rsling1, LM_L_LB1_Rsling1, LM_L_LMR1_Rsling1, LM_L_LMR2_Rsling1, LM_L_Lspot2_Rsling1, LM_GI_gi05_Rsling1, LM_GI_gi07_Rsling1, LM_GI_gi08_Rsling1)
Dim BP_Rsling2: BP_Rsling2=Array(BM_Rsling2, LM_F_FL5_Rsling2, LM_F_FL6_Rsling2, LM_L_LB1_Rsling2, LM_L_LMR1_Rsling2, LM_L_LMR2_Rsling2, LM_L_Lspot2_Rsling2, LM_GI_gi05_Rsling2, LM_GI_gi07_Rsling2, LM_GI_gi08_Rsling2)
Dim BP_Ship: BP_Ship=Array(BM_Ship, LM_L_LShip_Ship, LM_F_FL1_Ship, LM_F_FL2_Ship, LM_F_FL3_Ship, LM_F_FL5_Ship, LM_F_FL6_Ship, LM_F_FL7_Ship, LM_L_LB1_Ship, LM_L_Lspot2_Ship)
Dim BP_Spin: BP_Spin=Array(BM_Spin, LM_F_FL1_Spin, LM_F_FL2_Spin, LM_F_FL3_Spin, LM_F_FL4_Spin, LM_F_FL7_Spin, LM_L_LB3_Spin, LM_L_Lspot1_Spin, LM_GI_gi20_Spin, LM_GI_gi21_Spin)
Dim BP_SpinU: BP_SpinU=Array(BM_SpinU, LM_F_FL1_SpinU, LM_F_FL2_SpinU, LM_F_FL3_SpinU, LM_F_FL4_SpinU, LM_F_FL7_SpinU, LM_L_LPC1_SpinU, LM_L_Lspot1_SpinU, LM_GI_gi20_SpinU, LM_GI_gi21_SpinU)
Dim BP_SpinWire: BP_SpinWire=Array(BM_SpinWire, LM_F_FL2_SpinWire, LM_F_FL3_SpinWire, LM_F_FL7_SpinWire, LM_L_Lspot1_SpinWire, LM_GI_gi20_SpinWire, LM_GI_gi21_SpinWire)
Dim BP_TM1: BP_TM1=Array(BM_TM1, LM_F_FL5_TM1, LM_L_LB1_TM1, LM_L_LM1_TM1, LM_L_LS1_TM1, LM_L_LSwL1_TM1)
Dim BP_TM2: BP_TM2=Array(BM_TM2, LM_F_FL1_TM2, LM_F_FL2_TM2, LM_F_FL4_TM2, LM_F_FL7_TM2, LM_L_LM2_TM2, LM_L_LPC1_TM2, LM_L_LPC2_TM2, LM_L_LPC3_TM2, LM_GI_gi20_TM2)
Dim BP_TM3: BP_TM3=Array(BM_TM3, LM_F_FL1_TM3, LM_F_FL2_TM3, LM_F_FL3_TM3, LM_F_FL4_TM3, LM_F_FL7_TM3, LM_L_LM3_TM3, LM_L_LPC4_TM3, LM_L_LPC5_TM3, LM_L_LPF_TM3, LM_L_LSwC2_TM3, LM_L_Lspot1_TM3)
Dim BP_TM4: BP_TM4=Array(BM_TM4, LM_F_FL1_TM4, LM_F_FL2_TM4, LM_F_FL3_TM4, LM_F_FL4_TM4, LM_F_FL7_TM4, LM_L_LB3_TM4, LM_L_LB4_TM4, LM_L_LEBR_TM4, LM_L_LM4_TM4, LM_L_LMR_TM4, LM_L_LPC5_TM4, LM_L_Lspot1_TM4, LM_GI_gi13_TM4, LM_GI_gi16_TM4)
Dim BP_TM5: BP_TM5=Array(BM_TM5, LM_F_FL1_TM5, LM_F_FL7_TM5, LM_L_LB2_TM5, LM_L_LF3_TM5, LM_L_LM5_TM5, LM_L_LMLR_TM5, LM_L_LS5_TM5, LM_GI_gi13_TM5, LM_GI_gi14_TM5)
Dim BP_TMet1: BP_TMet1=Array(BM_TMet1, LM_L_LB1_TMet1, LM_L_LMet1_TMet1)
Dim BP_TMet2: BP_TMet2=Array(BM_TMet2, LM_L_LMet2_TMet2, LM_L_LS3_TMet2)
Dim BP_TMet3: BP_TMet3=Array(BM_TMet3, LM_L_LMet3_TMet3)
Dim BP_TMet4: BP_TMet4=Array(BM_TMet4, LM_L_LMet4_TMet4)
Dim BP_TS1: BP_TS1=Array(BM_TS1, LM_L_LSC1_TS1, LM_L_LSC2_TS1, LM_GI_gi10_TS1)
Dim BP_TS2: BP_TS2=Array(BM_TS2, LM_F_FL6_TS2, LM_L_LSC1_TS2, LM_L_LSC2_TS2, LM_L_LSC3_TS2, LM_GI_gi10_TS2)
Dim BP_TS3: BP_TS3=Array(BM_TS3, LM_F_FL6_TS3, LM_L_LSC2_TS3, LM_L_LSC3_TS3, LM_GI_gi10_TS3)
Dim BP_TS4: BP_TS4=Array(BM_TS4, LM_F_FL6_TS4, LM_L_LSC3_TS4, LM_L_LSC4_TS4, LM_GI_gi10_TS4)
Dim BP_TrustPost: BP_TrustPost=Array(BM_TrustPost, LM_F_FL5_TrustPost, LM_F_FL6_TrustPost, LM_L_LSA_TrustPost)
Dim BP_UnderPF: BP_UnderPF=Array(BM_UnderPF, LM_F_FL1_UnderPF, LM_F_FL2_UnderPF, LM_F_FL3_UnderPF, LM_F_FL4_UnderPF, LM_F_FL5_UnderPF, LM_F_FL6_UnderPF, LM_F_FL7_UnderPF, LM_L_LB1_UnderPF, LM_L_LB3_UnderPF, LM_L_LC1_UnderPF, LM_L_LC2_UnderPF, LM_L_LC3_UnderPF, LM_L_LC4_UnderPF, LM_L_LC5_UnderPF, LM_L_LC6_UnderPF, LM_L_LC7_UnderPF, LM_L_LC8_UnderPF, LM_L_LCC1_UnderPF, LM_L_LCC2_UnderPF, LM_L_LCC3_UnderPF, LM_L_LCR1_UnderPF, LM_L_LCR2_UnderPF, LM_L_LCWiz_UnderPF, LM_L_LEBR_UnderPF, LM_L_LF1_UnderPF, LM_L_LF2_UnderPF, LM_L_LF3_UnderPF, LM_L_LH1_UnderPF, LM_L_LH2_UnderPF, LM_L_LH3_UnderPF, LM_L_LH4_UnderPF, LM_L_LH5_UnderPF, LM_L_LH6_UnderPF, LM_L_LH7_UnderPF, LM_L_LH8_UnderPF, LM_L_LH9_UnderPF, LM_L_LLI_UnderPF, LM_L_LLO_UnderPF, LM_L_LLWiz_UnderPF, LM_L_LM1_UnderPF, LM_L_LM2_UnderPF, LM_L_LM3_UnderPF, LM_L_LM4_UnderPF, LM_L_LM5_UnderPF, LM_L_LMLR_UnderPF, LM_L_LMR1_UnderPF, LM_L_LMR2_UnderPF, LM_L_LMR_UnderPF, LM_L_LMet1_UnderPF, LM_L_LMet2_UnderPF, LM_L_LMet3_UnderPF, LM_L_LMet4_UnderPF, LM_L_LPC1_UnderPF, _
	LM_L_LPC2_UnderPF, LM_L_LPC3_UnderPF, LM_L_LPC4_UnderPF, LM_L_LPC5_UnderPF, LM_L_LPF_UnderPF, LM_L_LPR1_UnderPF, LM_L_LPR2_UnderPF, LM_L_LPR3_UnderPF, LM_L_LPR4_UnderPF, LM_L_LPR5_UnderPF, LM_L_LPR6_UnderPF, LM_L_LRI_UnderPF, LM_L_LRO_UnderPF, LM_L_LS1_UnderPF, LM_L_LS2_UnderPF, LM_L_LS3_UnderPF, LM_L_LS4_UnderPF, LM_L_LS5_UnderPF, LM_L_LS6_UnderPF, LM_L_LSA_UnderPF, LM_L_LSC1_UnderPF, LM_L_LSC2_UnderPF, LM_L_LSC3_UnderPF, LM_L_LSC4_UnderPF, LM_L_LSL_UnderPF, LM_L_LSR_UnderPF, LM_L_LSwC1_UnderPF, LM_L_LSwC2_UnderPF, LM_L_LSwC3_UnderPF, LM_L_LSwL1_UnderPF, LM_L_LSwL2_UnderPF, LM_L_LTW1_UnderPF, LM_L_LTW2_UnderPF, LM_L_LTW3_UnderPF, LM_L_LTW4_UnderPF, LM_L_LW1_UnderPF, LM_L_LW2_UnderPF, LM_L_LW3_UnderPF, LM_L_LW4_UnderPF, LM_L_LW5_UnderPF, LM_L_LW6_UnderPF, LM_L_LW7_UnderPF, LM_L_LW8_UnderPF, LM_L_LW9_UnderPF, LM_L_LWiz_UnderPF, LM_L_LX_UnderPF, LM_L_Lspot1_UnderPF, LM_L_Lspot2_UnderPF, LM_D_a00_UnderPF, LM_D_a10_UnderPF, LM_GI_gi01_UnderPF, LM_GI_gi02_UnderPF, LM_GI_gi04_UnderPF, LM_GI_gi05_UnderPF, _
	LM_GI_gi06_UnderPF, LM_GI_gi07_UnderPF, LM_GI_gi08_UnderPF, LM_GI_gi10_UnderPF, LM_GI_gi13_UnderPF, LM_GI_gi15_UnderPF, LM_GI_gi16_UnderPF)
Dim BP_swC1: BP_swC1=Array(BM_swC1, LM_F_FL2_swC1, LM_F_FL3_swC1, LM_F_FL4_swC1, LM_F_FL7_swC1, LM_L_LPC4_swC1, LM_L_LSwC1_swC1, LM_L_Lspot1_swC1, LM_GI_gi20_swC1)
Dim BP_swC2: BP_swC2=Array(BM_swC2, LM_F_FL2_swC2, LM_F_FL3_swC2, LM_F_FL4_swC2, LM_F_FL7_swC2, LM_L_LSwC1_swC2, LM_L_LSwC2_swC2, LM_L_LSwC3_swC2, LM_L_Lspot1_swC2)
Dim BP_swC3: BP_swC3=Array(BM_swC3, LM_F_FL2_swC3, LM_F_FL3_swC3, LM_F_FL4_swC3, LM_F_FL5_swC3, LM_F_FL6_swC3, LM_F_FL7_swC3, LM_L_LPC5_swC3, LM_L_LSwC3_swC3, LM_L_Lspot1_swC3, LM_GI_gi16_swC3)
Dim BP_swI1: BP_swI1=Array(BM_swI1, LM_F_FL2_swI1, LM_F_FL3_swI1, LM_F_FL6_swI1, LM_F_FL7_swI1, LM_GI_gi20_swI1)
Dim BP_swI2: BP_swI2=Array(BM_swI2, LM_F_FL1_swI2, LM_F_FL2_swI2, LM_F_FL3_swI2, LM_F_FL7_swI2, LM_L_LB3_swI2, LM_L_Lspot1_swI2)
Dim BP_swL1: BP_swL1=Array(BM_swL1, LM_F_FL2_swL1, LM_F_FL3_swL1, LM_F_FL7_swL1, LM_GI_gi20_swL1, LM_GI_gi21_swL1)
Dim BP_swL2: BP_swL2=Array(BM_swL2, LM_F_FL2_swL2, LM_F_FL3_swL2, LM_F_FL7_swL2, LM_GI_gi20_swL2, LM_GI_gi21_swL2)
Dim BP_swLB1: BP_swLB1=Array(BM_swLB1, LM_F_FL5_swLB1, LM_F_FL6_swLB1, LM_L_LB1_swLB1, LM_L_LS1_swLB1, LM_L_LSwL1_swLB1, LM_L_Lspot2_swLB1)
Dim BP_swLB2: BP_swLB2=Array(BM_swLB2, LM_F_FL6_swLB2, LM_F_FL7_swLB2, LM_L_LB1_swLB2, LM_L_LSwL2_swLB2)
Dim BP_swLI: BP_swLI=Array(BM_swLI, LM_F_FL5_swLI, LM_F_FL6_swLI, LM_L_LLI_swLI, LM_L_Lspot2_swLI, LM_GI_gi01_swLI, LM_GI_gi02_swLI, LM_GI_gi03_swLI, LM_GI_gi04_swLI, LM_GI_gi09_swLI)
Dim BP_swLO: BP_swLO=Array(BM_swLO, LM_F_FL5_swLO, LM_L_LLO_swLO, LM_L_LSL_swLO, LM_L_Lspot2_swLO, LM_GI_gi01_swLO, LM_GI_gi02_swLO, LM_GI_gi03_swLO, LM_GI_gi04_swLO)
Dim BP_swP1: BP_swP1=Array(BM_swP1)
Dim BP_swP2: BP_swP2=Array(BM_swP2)
Dim BP_swR1: BP_swR1=Array(BM_swR1, LM_F_FL1_swR1, LM_F_FL3_swR1, LM_F_FL7_swR1, LM_L_LF1_swR1)
Dim BP_swR2: BP_swR2=Array(BM_swR2, LM_F_FL1_swR2, LM_F_FL2_swR2, LM_F_FL3_swR2, LM_F_FL7_swR2, LM_L_LB2_swR2, LM_L_LB3_swR2, LM_L_LB4_swR2)
Dim BP_swRI: BP_swRI=Array(BM_swRI, LM_F_FL5_swRI, LM_F_FL6_swRI, LM_L_LRI_swRI, LM_GI_gi05_swRI, LM_GI_gi06_swRI, LM_GI_gi07_swRI, LM_GI_gi08_swRI)
Dim BP_swRO: BP_swRO=Array(BM_swRO, LM_F_FL6_swRO, LM_L_LRO_swRO, LM_L_LSR_swRO, LM_GI_gi07_swRO, LM_GI_gi08_swRO)
' Arrays per lighting scenario
Dim BL_D_a00: BL_D_a00=Array(LM_D_a00_Parts, LM_D_a00_Playfield, LM_D_a00_UnderPF)
Dim BL_D_a01: BL_D_a01=Array(LM_D_a01_Parts, LM_D_a01_Playfield, LM_D_a01_RFlipU)
Dim BL_D_a02: BL_D_a02=Array(LM_D_a02_Parts)
Dim BL_D_a03: BL_D_a03=Array(LM_D_a03_Parts)
Dim BL_D_a04: BL_D_a04=Array(LM_D_a04_Parts, LM_D_a04_Playfield)
Dim BL_D_a05: BL_D_a05=Array(LM_D_a05_Parts, LM_D_a05_Playfield)
Dim BL_D_a06: BL_D_a06=Array(LM_D_a06_Parts, LM_D_a06_Playfield)
Dim BL_D_a10: BL_D_a10=Array(LM_D_a10_Parts, LM_D_a10_Playfield, LM_D_a10_UnderPF)
Dim BL_D_a11: BL_D_a11=Array(LM_D_a11_Parts, LM_D_a11_Playfield)
Dim BL_D_a12: BL_D_a12=Array(LM_D_a12_Parts, LM_D_a12_Playfield)
Dim BL_D_a13: BL_D_a13=Array(LM_D_a13_Parts)
Dim BL_D_a14: BL_D_a14=Array(LM_D_a14_Parts, LM_D_a14_Playfield)
Dim BL_D_a15: BL_D_a15=Array(LM_D_a15_Parts, LM_D_a15_Playfield)
Dim BL_D_a16: BL_D_a16=Array(LM_D_a16_Parts, LM_D_a16_Playfield)
Dim BL_F_FL1: BL_F_FL1=Array(LM_F_FL1_Asteroid1, LM_F_FL1_Asteroid2, LM_F_FL1_Asteroid3, LM_F_FL1_Asteroid4, LM_F_FL1_BR2, LM_F_FL1_BR3, LM_F_FL1_BR4, LM_F_FL1_BS1, LM_F_FL1_BS2, LM_F_FL1_BS3, LM_F_FL1_BS4, LM_F_FL1_BmpBot, LM_F_FL1_BmpTopB, LM_F_FL1_DiverterPin, LM_F_FL1_Gate2, LM_F_FL1_GateR, LM_F_FL1_LockPin, LM_F_FL1_Lsling2, LM_F_FL1_Parts, LM_F_FL1_Playfield, LM_F_FL1_RArm, LM_F_FL1_RFlip1, LM_F_FL1_RFlip1U, LM_F_FL1_Rails, LM_F_FL1_Ramp, LM_F_FL1_Rsling1, LM_F_FL1_Ship, LM_F_FL1_Spin, LM_F_FL1_SpinU, LM_F_FL1_TM2, LM_F_FL1_TM3, LM_F_FL1_TM4, LM_F_FL1_TM5, LM_F_FL1_UnderPF, LM_F_FL1_swI2, LM_F_FL1_swR1, LM_F_FL1_swR2)
Dim BL_F_FL2: BL_F_FL2=Array(LM_F_FL2_Asteroid1, LM_F_FL2_Asteroid2, LM_F_FL2_Asteroid3, LM_F_FL2_Asteroid4, LM_F_FL2_BR2, LM_F_FL2_BR3, LM_F_FL2_BR4, LM_F_FL2_BS1, LM_F_FL2_BS2, LM_F_FL2_BS3, LM_F_FL2_BS4, LM_F_FL2_BmpBot, LM_F_FL2_BmpTopB, LM_F_FL2_DiverterPin, LM_F_FL2_GateL, LM_F_FL2_GateR, LM_F_FL2_LockPin, LM_F_FL2_Lsling2, LM_F_FL2_Parts, LM_F_FL2_Playfield, LM_F_FL2_RArm, LM_F_FL2_Ramp, LM_F_FL2_Rsling1, LM_F_FL2_Ship, LM_F_FL2_Spin, LM_F_FL2_SpinU, LM_F_FL2_SpinWire, LM_F_FL2_TM2, LM_F_FL2_TM3, LM_F_FL2_TM4, LM_F_FL2_UnderPF, LM_F_FL2_swC1, LM_F_FL2_swC2, LM_F_FL2_swC3, LM_F_FL2_swI1, LM_F_FL2_swI2, LM_F_FL2_swL1, LM_F_FL2_swL2, LM_F_FL2_swR2)
Dim BL_F_FL3: BL_F_FL3=Array(LM_F_FL3_Asteroid1, LM_F_FL3_Asteroid2, LM_F_FL3_Asteroid3, LM_F_FL3_Asteroid4, LM_F_FL3_BR2, LM_F_FL3_BR3, LM_F_FL3_BR4, LM_F_FL3_BS1, LM_F_FL3_BS2, LM_F_FL3_BS3, LM_F_FL3_BS4, LM_F_FL3_BmpBot, LM_F_FL3_BmpTopB, LM_F_FL3_DiverterPin, LM_F_FL3_GateL, LM_F_FL3_GateR, LM_F_FL3_LockPin, LM_F_FL3_Lsling2, LM_F_FL3_Parts, LM_F_FL3_Playfield, LM_F_FL3_RArm, LM_F_FL3_Ramp, LM_F_FL3_Rsling1, LM_F_FL3_Ship, LM_F_FL3_Spin, LM_F_FL3_SpinU, LM_F_FL3_SpinWire, LM_F_FL3_TM3, LM_F_FL3_TM4, LM_F_FL3_UnderPF, LM_F_FL3_swC1, LM_F_FL3_swC2, LM_F_FL3_swC3, LM_F_FL3_swI1, LM_F_FL3_swI2, LM_F_FL3_swL1, LM_F_FL3_swL2, LM_F_FL3_swR1, LM_F_FL3_swR2)
Dim BL_F_FL4: BL_F_FL4=Array(LM_F_FL4_Asteroid1, LM_F_FL4_Asteroid2, LM_F_FL4_Asteroid3, LM_F_FL4_Asteroid4, LM_F_FL4_BmpTopB, LM_F_FL4_GateR, LM_F_FL4_Parts, LM_F_FL4_Playfield, LM_F_FL4_RFlip1, LM_F_FL4_RFlip1U, LM_F_FL4_Ramp, LM_F_FL4_Spin, LM_F_FL4_SpinU, LM_F_FL4_TM2, LM_F_FL4_TM3, LM_F_FL4_TM4, LM_F_FL4_UnderPF, LM_F_FL4_swC1, LM_F_FL4_swC2, LM_F_FL4_swC3)
Dim BL_F_FL5: BL_F_FL5=Array(LM_F_FL5_BR1, LM_F_FL5_GateL, LM_F_FL5_LArm, LM_F_FL5_LFlip, LM_F_FL5_LFlipU, LM_F_FL5_LockPin, LM_F_FL5_Lsling1, LM_F_FL5_Lsling2, LM_F_FL5_Parts, LM_F_FL5_Playfield, LM_F_FL5_RArm, LM_F_FL5_RFlip, LM_F_FL5_RFlipU, LM_F_FL5_Ramp, LM_F_FL5_Rsling1, LM_F_FL5_Rsling2, LM_F_FL5_Ship, LM_F_FL5_TM1, LM_F_FL5_TrustPost, LM_F_FL5_UnderPF, LM_F_FL5_swC3, LM_F_FL5_swLB1, LM_F_FL5_swLI, LM_F_FL5_swLO, LM_F_FL5_swRI)
Dim BL_F_FL6: BL_F_FL6=Array(LM_F_FL6_BR1, LM_F_FL6_BS1, LM_F_FL6_GateL, LM_F_FL6_LArm, LM_F_FL6_LFlip, LM_F_FL6_LFlipU, LM_F_FL6_Lsling1, LM_F_FL6_Lsling2, LM_F_FL6_Parts, LM_F_FL6_Playfield, LM_F_FL6_RArm, LM_F_FL6_RFlip, LM_F_FL6_RFlipU, LM_F_FL6_Ramp, LM_F_FL6_Rsling1, LM_F_FL6_Rsling2, LM_F_FL6_Ship, LM_F_FL6_TS2, LM_F_FL6_TS3, LM_F_FL6_TS4, LM_F_FL6_TrustPost, LM_F_FL6_UnderPF, LM_F_FL6_swC3, LM_F_FL6_swI1, LM_F_FL6_swLB1, LM_F_FL6_swLB2, LM_F_FL6_swLI, LM_F_FL6_swRI, LM_F_FL6_swRO)
Dim BL_F_FL7: BL_F_FL7=Array(LM_F_FL7_Asteroid1, LM_F_FL7_Asteroid2, LM_F_FL7_Asteroid3, LM_F_FL7_Asteroid4, LM_F_FL7_BR1, LM_F_FL7_BR2, LM_F_FL7_BR3, LM_F_FL7_BR4, LM_F_FL7_BS1, LM_F_FL7_BS2, LM_F_FL7_BS3, LM_F_FL7_BS4, LM_F_FL7_BmpBot, LM_F_FL7_BmpTopB, LM_F_FL7_DiverterPin, LM_F_FL7_GateL, LM_F_FL7_GateR, LM_F_FL7_LockPin, LM_F_FL7_Lsling2, LM_F_FL7_Parts, LM_F_FL7_Playfield, LM_F_FL7_RArm, LM_F_FL7_Ramp, LM_F_FL7_Rsling1, LM_F_FL7_Ship, LM_F_FL7_Spin, LM_F_FL7_SpinU, LM_F_FL7_SpinWire, LM_F_FL7_TM2, LM_F_FL7_TM3, LM_F_FL7_TM4, LM_F_FL7_TM5, LM_F_FL7_UnderPF, LM_F_FL7_swC1, LM_F_FL7_swC2, LM_F_FL7_swC3, LM_F_FL7_swI1, LM_F_FL7_swI2, LM_F_FL7_swL1, LM_F_FL7_swL2, LM_F_FL7_swLB2, LM_F_FL7_swR1, LM_F_FL7_swR2)
Dim BL_GI_gi01: BL_GI_gi01=Array(LM_GI_gi01_LArm, LM_GI_gi01_LFlip, LM_GI_gi01_LFlipU, LM_GI_gi01_Lsling1, LM_GI_gi01_Lsling2, LM_GI_gi01_Parts, LM_GI_gi01_Playfield, LM_GI_gi01_RFlip, LM_GI_gi01_RFlipU, LM_GI_gi01_UnderPF, LM_GI_gi01_swLI, LM_GI_gi01_swLO)
Dim BL_GI_gi02: BL_GI_gi02=Array(LM_GI_gi02_LArm, LM_GI_gi02_LFlip, LM_GI_gi02_LFlipU, LM_GI_gi02_Lsling1, LM_GI_gi02_Lsling2, LM_GI_gi02_Parts, LM_GI_gi02_Playfield, LM_GI_gi02_UnderPF, LM_GI_gi02_swLI, LM_GI_gi02_swLO)
Dim BL_GI_gi03: BL_GI_gi03=Array(LM_GI_gi03_LArm, LM_GI_gi03_LFlip, LM_GI_gi03_LFlipU, LM_GI_gi03_Lsling1, LM_GI_gi03_Lsling2, LM_GI_gi03_Parts, LM_GI_gi03_Playfield, LM_GI_gi03_RFlipU, LM_GI_gi03_swLI, LM_GI_gi03_swLO)
Dim BL_GI_gi04: BL_GI_gi04=Array(LM_GI_gi04_LArm, LM_GI_gi04_LFlip, LM_GI_gi04_LFlipU, LM_GI_gi04_Lsling1, LM_GI_gi04_Lsling2, LM_GI_gi04_Parts, LM_GI_gi04_Playfield, LM_GI_gi04_UnderPF, LM_GI_gi04_swLI, LM_GI_gi04_swLO)
Dim BL_GI_gi05: BL_GI_gi05=Array(LM_GI_gi05_Parts, LM_GI_gi05_Playfield, LM_GI_gi05_RArm, LM_GI_gi05_RFlip, LM_GI_gi05_RFlipU, LM_GI_gi05_Rsling1, LM_GI_gi05_Rsling2, LM_GI_gi05_UnderPF, LM_GI_gi05_swRI)
Dim BL_GI_gi06: BL_GI_gi06=Array(LM_GI_gi06_Parts, LM_GI_gi06_Playfield, LM_GI_gi06_RArm, LM_GI_gi06_RFlip, LM_GI_gi06_RFlipU, LM_GI_gi06_UnderPF, LM_GI_gi06_swRI)
Dim BL_GI_gi07: BL_GI_gi07=Array(LM_GI_gi07_LFlipU, LM_GI_gi07_Parts, LM_GI_gi07_Playfield, LM_GI_gi07_RArm, LM_GI_gi07_RFlip, LM_GI_gi07_RFlipU, LM_GI_gi07_Rsling1, LM_GI_gi07_Rsling2, LM_GI_gi07_UnderPF, LM_GI_gi07_swRI, LM_GI_gi07_swRO)
Dim BL_GI_gi08: BL_GI_gi08=Array(LM_GI_gi08_LArm, LM_GI_gi08_Parts, LM_GI_gi08_Playfield, LM_GI_gi08_RArm, LM_GI_gi08_RFlip, LM_GI_gi08_RFlipU, LM_GI_gi08_Rsling1, LM_GI_gi08_Rsling2, LM_GI_gi08_UnderPF, LM_GI_gi08_swRI, LM_GI_gi08_swRO)
Dim BL_GI_gi09: BL_GI_gi09=Array(LM_GI_gi09_Parts, LM_GI_gi09_Playfield, LM_GI_gi09_swLI)
Dim BL_GI_gi10: BL_GI_gi10=Array(LM_GI_gi10_Gate2, LM_GI_gi10_Parts, LM_GI_gi10_Playfield, LM_GI_gi10_RFlip1U, LM_GI_gi10_TS1, LM_GI_gi10_TS2, LM_GI_gi10_TS3, LM_GI_gi10_TS4, LM_GI_gi10_UnderPF)
Dim BL_GI_gi11: BL_GI_gi11=Array(LM_GI_gi11_Parts, LM_GI_gi11_Playfield)
Dim BL_GI_gi12: BL_GI_gi12=Array(LM_GI_gi12_Parts, LM_GI_gi12_Playfield)
Dim BL_GI_gi13: BL_GI_gi13=Array(LM_GI_gi13_BR4, LM_GI_gi13_BS4, LM_GI_gi13_BmpBot, LM_GI_gi13_BmpTopB, LM_GI_gi13_GateR, LM_GI_gi13_Parts, LM_GI_gi13_Playfield, LM_GI_gi13_RFlip1U, LM_GI_gi13_TM4, LM_GI_gi13_TM5, LM_GI_gi13_UnderPF)
Dim BL_GI_gi14: BL_GI_gi14=Array(LM_GI_gi14_Gate2, LM_GI_gi14_LockPin, LM_GI_gi14_Parts, LM_GI_gi14_Playfield, LM_GI_gi14_RFlip1, LM_GI_gi14_RFlip1U, LM_GI_gi14_TM5)
Dim BL_GI_gi15: BL_GI_gi15=Array(LM_GI_gi15_LockPin, LM_GI_gi15_Parts, LM_GI_gi15_Playfield, LM_GI_gi15_RFlip1, LM_GI_gi15_RFlip1U, LM_GI_gi15_UnderPF)
Dim BL_GI_gi16: BL_GI_gi16=Array(LM_GI_gi16_Asteroid1, LM_GI_gi16_Asteroid2, LM_GI_gi16_Asteroid3, LM_GI_gi16_Asteroid4, LM_GI_gi16_BR2, LM_GI_gi16_BR3, LM_GI_gi16_BR4, LM_GI_gi16_BS2, LM_GI_gi16_BS3, LM_GI_gi16_BS4, LM_GI_gi16_BmpBot, LM_GI_gi16_BmpTopB, LM_GI_gi16_GateR, LM_GI_gi16_Parts, LM_GI_gi16_Playfield, LM_GI_gi16_Ramp, LM_GI_gi16_TM4, LM_GI_gi16_UnderPF, LM_GI_gi16_swC3)
Dim BL_GI_gi17: BL_GI_gi17=Array(LM_GI_gi17_Parts, LM_GI_gi17_Playfield)
Dim BL_GI_gi18: BL_GI_gi18=Array(LM_GI_gi18_Parts, LM_GI_gi18_Playfield)
Dim BL_GI_gi19: BL_GI_gi19=Array(LM_GI_gi19_BS1, LM_GI_gi19_LockPin, LM_GI_gi19_Parts, LM_GI_gi19_Playfield, LM_GI_gi19_RFlip1, LM_GI_gi19_RFlip1U)
Dim BL_GI_gi20: BL_GI_gi20=Array(LM_GI_gi20_Asteroid1, LM_GI_gi20_Asteroid2, LM_GI_gi20_Asteroid3, LM_GI_gi20_Asteroid4, LM_GI_gi20_GateL, LM_GI_gi20_Parts, LM_GI_gi20_Playfield, LM_GI_gi20_Ramp, LM_GI_gi20_Spin, LM_GI_gi20_SpinU, LM_GI_gi20_SpinWire, LM_GI_gi20_TM2, LM_GI_gi20_swC1, LM_GI_gi20_swI1, LM_GI_gi20_swL1, LM_GI_gi20_swL2)
Dim BL_GI_gi21: BL_GI_gi21=Array(LM_GI_gi21_Asteroid1, LM_GI_gi21_Asteroid2, LM_GI_gi21_Asteroid3, LM_GI_gi21_Asteroid4, LM_GI_gi21_Parts, LM_GI_gi21_Playfield, LM_GI_gi21_Ramp, LM_GI_gi21_Spin, LM_GI_gi21_SpinU, LM_GI_gi21_SpinWire, LM_GI_gi21_swL1, LM_GI_gi21_swL2)
Dim BL_L_LB1: BL_L_LB1=Array(LM_L_LB1_BR1, LM_L_LB1_BS1, LM_L_LB1_BmpBot, LM_L_LB1_BmpTopR, LM_L_LB1_GateL, LM_L_LB1_LockPin, LM_L_LB1_Parts, LM_L_LB1_Playfield, LM_L_LB1_RFlip1, LM_L_LB1_RFlip1U, LM_L_LB1_Ramp, LM_L_LB1_Rsling1, LM_L_LB1_Rsling2, LM_L_LB1_Ship, LM_L_LB1_TM1, LM_L_LB1_TMet1, LM_L_LB1_UnderPF, LM_L_LB1_swLB1, LM_L_LB1_swLB2)
Dim BL_L_LB2: BL_L_LB2=Array(LM_L_LB2_Asteroid1, LM_L_LB2_Asteroid2, LM_L_LB2_Asteroid3, LM_L_LB2_Asteroid4, LM_L_LB2_BR2, LM_L_LB2_BR3, LM_L_LB2_BR4, LM_L_LB2_BS2, LM_L_LB2_BS3, LM_L_LB2_BS4, LM_L_LB2_BmpBot, LM_L_LB2_BmpTopB, LM_L_LB2_DiverterPin, LM_L_LB2_Parts, LM_L_LB2_Playfield, LM_L_LB2_TM5, LM_L_LB2_swR2)
Dim BL_L_LB3: BL_L_LB3=Array(LM_L_LB3_Asteroid1, LM_L_LB3_Asteroid2, LM_L_LB3_Asteroid3, LM_L_LB3_Asteroid4, LM_L_LB3_BR2, LM_L_LB3_BR3, LM_L_LB3_BR4, LM_L_LB3_BS2, LM_L_LB3_BS3, LM_L_LB3_BS4, LM_L_LB3_BmpBot, LM_L_LB3_BmpTopB, LM_L_LB3_DiverterPin, LM_L_LB3_Parts, LM_L_LB3_Playfield, LM_L_LB3_Spin, LM_L_LB3_TM4, LM_L_LB3_UnderPF, LM_L_LB3_swI2, LM_L_LB3_swR2)
Dim BL_L_LB4: BL_L_LB4=Array(LM_L_LB4_Asteroid1, LM_L_LB4_Asteroid2, LM_L_LB4_Asteroid3, LM_L_LB4_Asteroid4, LM_L_LB4_BR2, LM_L_LB4_BR3, LM_L_LB4_BR4, LM_L_LB4_BS2, LM_L_LB4_BS3, LM_L_LB4_BS4, LM_L_LB4_BmpBot, LM_L_LB4_BmpTopB, LM_L_LB4_GateR, LM_L_LB4_Parts, LM_L_LB4_Playfield, LM_L_LB4_TM4, LM_L_LB4_swR2)
Dim BL_L_LC1: BL_L_LC1=Array(LM_L_LC1_LFlip, LM_L_LC1_LFlipU, LM_L_LC1_Parts, LM_L_LC1_Playfield, LM_L_LC1_UnderPF)
Dim BL_L_LC2: BL_L_LC2=Array(LM_L_LC2_LFlipU, LM_L_LC2_Playfield, LM_L_LC2_UnderPF)
Dim BL_L_LC3: BL_L_LC3=Array(LM_L_LC3_LFlipU, LM_L_LC3_Playfield, LM_L_LC3_UnderPF)
Dim BL_L_LC4: BL_L_LC4=Array(LM_L_LC4_LFlipU, LM_L_LC4_Playfield, LM_L_LC4_UnderPF)
Dim BL_L_LC5: BL_L_LC5=Array(LM_L_LC5_Playfield, LM_L_LC5_RFlipU, LM_L_LC5_UnderPF)
Dim BL_L_LC6: BL_L_LC6=Array(LM_L_LC6_Parts, LM_L_LC6_Playfield, LM_L_LC6_RFlipU, LM_L_LC6_UnderPF)
Dim BL_L_LC7: BL_L_LC7=Array(LM_L_LC7_Parts, LM_L_LC7_Playfield, LM_L_LC7_RFlipU, LM_L_LC7_UnderPF)
Dim BL_L_LC8: BL_L_LC8=Array(LM_L_LC8_Parts, LM_L_LC8_Playfield, LM_L_LC8_RFlip, LM_L_LC8_RFlipU, LM_L_LC8_UnderPF)
Dim BL_L_LCC1: BL_L_LCC1=Array(LM_L_LCC1_Parts, LM_L_LCC1_Playfield, LM_L_LCC1_Ramp, LM_L_LCC1_UnderPF)
Dim BL_L_LCC2: BL_L_LCC2=Array(LM_L_LCC2_Parts, LM_L_LCC2_Playfield, LM_L_LCC2_UnderPF)
Dim BL_L_LCC3: BL_L_LCC3=Array(LM_L_LCC3_Parts, LM_L_LCC3_Playfield, LM_L_LCC3_UnderPF)
Dim BL_L_LCR1: BL_L_LCR1=Array(LM_L_LCR1_Lsling1, LM_L_LCR1_Lsling2, LM_L_LCR1_Parts, LM_L_LCR1_Playfield, LM_L_LCR1_UnderPF)
Dim BL_L_LCR2: BL_L_LCR2=Array(LM_L_LCR2_Lsling1, LM_L_LCR2_Lsling2, LM_L_LCR2_Parts, LM_L_LCR2_Playfield, LM_L_LCR2_UnderPF)
Dim BL_L_LCWiz: BL_L_LCWiz=Array(LM_L_LCWiz_BmpTopR, LM_L_LCWiz_Parts, LM_L_LCWiz_Playfield, LM_L_LCWiz_UnderPF)
Dim BL_L_LEBR: BL_L_LEBR=Array(LM_L_LEBR_Parts, LM_L_LEBR_Playfield, LM_L_LEBR_TM4, LM_L_LEBR_UnderPF)
Dim BL_L_LF1: BL_L_LF1=Array(LM_L_LF1_Parts, LM_L_LF1_Playfield, LM_L_LF1_UnderPF, LM_L_LF1_swR1)
Dim BL_L_LF2: BL_L_LF2=Array(LM_L_LF2_Parts, LM_L_LF2_Playfield, LM_L_LF2_UnderPF)
Dim BL_L_LF3: BL_L_LF3=Array(LM_L_LF3_Parts, LM_L_LF3_Playfield, LM_L_LF3_RFlip1U, LM_L_LF3_TM5, LM_L_LF3_UnderPF)
Dim BL_L_LH1: BL_L_LH1=Array(LM_L_LH1_LFlip, LM_L_LH1_LFlipU, LM_L_LH1_Parts, LM_L_LH1_Playfield, LM_L_LH1_UnderPF)
Dim BL_L_LH2: BL_L_LH2=Array(LM_L_LH2_LFlip, LM_L_LH2_LFlipU, LM_L_LH2_Parts, LM_L_LH2_Playfield, LM_L_LH2_UnderPF)
Dim BL_L_LH3: BL_L_LH3=Array(LM_L_LH3_LFlip, LM_L_LH3_LFlipU, LM_L_LH3_Playfield, LM_L_LH3_UnderPF)
Dim BL_L_LH4: BL_L_LH4=Array(LM_L_LH4_LFlipU, LM_L_LH4_Playfield, LM_L_LH4_UnderPF)
Dim BL_L_LH5: BL_L_LH5=Array(LM_L_LH5_LFlipU, LM_L_LH5_Playfield, LM_L_LH5_RFlipU, LM_L_LH5_UnderPF)
Dim BL_L_LH6: BL_L_LH6=Array(LM_L_LH6_Playfield, LM_L_LH6_RFlipU, LM_L_LH6_UnderPF)
Dim BL_L_LH7: BL_L_LH7=Array(LM_L_LH7_Playfield, LM_L_LH7_RFlip, LM_L_LH7_RFlipU, LM_L_LH7_UnderPF)
Dim BL_L_LH8: BL_L_LH8=Array(LM_L_LH8_Parts, LM_L_LH8_Playfield, LM_L_LH8_RFlip, LM_L_LH8_RFlipU, LM_L_LH8_UnderPF)
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
Dim BL_L_LMet2: BL_L_LMet2=Array(LM_L_LMet2_BS1, LM_L_LMet2_Parts, LM_L_LMet2_Playfield, LM_L_LMet2_TMet2, LM_L_LMet2_UnderPF)
Dim BL_L_LMet3: BL_L_LMet3=Array(LM_L_LMet3_Parts, LM_L_LMet3_Playfield, LM_L_LMet3_TMet3, LM_L_LMet3_UnderPF)
Dim BL_L_LMet4: BL_L_LMet4=Array(LM_L_LMet4_Parts, LM_L_LMet4_Playfield, LM_L_LMet4_TMet4, LM_L_LMet4_UnderPF)
Dim BL_L_LPC1: BL_L_LPC1=Array(LM_L_LPC1_Asteroid4, LM_L_LPC1_GateL, LM_L_LPC1_Parts, LM_L_LPC1_Playfield, LM_L_LPC1_Ramp, LM_L_LPC1_SpinU, LM_L_LPC1_TM2, LM_L_LPC1_UnderPF)
Dim BL_L_LPC2: BL_L_LPC2=Array(LM_L_LPC2_Parts, LM_L_LPC2_Playfield, LM_L_LPC2_TM2, LM_L_LPC2_UnderPF)
Dim BL_L_LPC3: BL_L_LPC3=Array(LM_L_LPC3_Parts, LM_L_LPC3_Playfield, LM_L_LPC3_TM2, LM_L_LPC3_UnderPF)
Dim BL_L_LPC4: BL_L_LPC4=Array(LM_L_LPC4_Asteroid1, LM_L_LPC4_Asteroid2, LM_L_LPC4_Asteroid3, LM_L_LPC4_Asteroid4, LM_L_LPC4_Parts, LM_L_LPC4_Playfield, LM_L_LPC4_Ramp, LM_L_LPC4_TM3, LM_L_LPC4_UnderPF, LM_L_LPC4_swC1)
Dim BL_L_LPC5: BL_L_LPC5=Array(LM_L_LPC5_Asteroid1, LM_L_LPC5_Asteroid2, LM_L_LPC5_Asteroid3, LM_L_LPC5_Asteroid4, LM_L_LPC5_Parts, LM_L_LPC5_Playfield, LM_L_LPC5_TM3, LM_L_LPC5_TM4, LM_L_LPC5_UnderPF, LM_L_LPC5_swC3)
Dim BL_L_LPF: BL_L_LPF=Array(LM_L_LPF_Asteroid1, LM_L_LPF_Asteroid2, LM_L_LPF_Asteroid3, LM_L_LPF_Asteroid4, LM_L_LPF_Playfield, LM_L_LPF_TM3, LM_L_LPF_UnderPF)
Dim BL_L_LPR1: BL_L_LPR1=Array(LM_L_LPR1_Parts, LM_L_LPR1_Playfield, LM_L_LPR1_UnderPF)
Dim BL_L_LPR2: BL_L_LPR2=Array(LM_L_LPR2_Parts, LM_L_LPR2_Playfield, LM_L_LPR2_UnderPF)
Dim BL_L_LPR3: BL_L_LPR3=Array(LM_L_LPR3_Parts, LM_L_LPR3_Playfield, LM_L_LPR3_UnderPF)
Dim BL_L_LPR4: BL_L_LPR4=Array(LM_L_LPR4_LFlipU, LM_L_LPR4_Parts, LM_L_LPR4_Playfield, LM_L_LPR4_UnderPF)
Dim BL_L_LPR5: BL_L_LPR5=Array(LM_L_LPR5_LFlipU, LM_L_LPR5_Parts, LM_L_LPR5_Playfield, LM_L_LPR5_UnderPF)
Dim BL_L_LPR6: BL_L_LPR6=Array(LM_L_LPR6_Parts, LM_L_LPR6_Playfield, LM_L_LPR6_RFlipU, LM_L_LPR6_UnderPF)
Dim BL_L_LRI: BL_L_LRI=Array(LM_L_LRI_Parts, LM_L_LRI_Playfield, LM_L_LRI_UnderPF, LM_L_LRI_swRI)
Dim BL_L_LRO: BL_L_LRO=Array(LM_L_LRO_Parts, LM_L_LRO_Playfield, LM_L_LRO_UnderPF, LM_L_LRO_swRO)
Dim BL_L_LS1: BL_L_LS1=Array(LM_L_LS1_Parts, LM_L_LS1_Playfield, LM_L_LS1_TM1, LM_L_LS1_UnderPF, LM_L_LS1_swLB1)
Dim BL_L_LS2: BL_L_LS2=Array(LM_L_LS2_Parts, LM_L_LS2_Playfield, LM_L_LS2_UnderPF)
Dim BL_L_LS3: BL_L_LS3=Array(LM_L_LS3_Parts, LM_L_LS3_Playfield, LM_L_LS3_TMet2, LM_L_LS3_UnderPF)
Dim BL_L_LS4: BL_L_LS4=Array(LM_L_LS4_Parts, LM_L_LS4_Playfield, LM_L_LS4_UnderPF)
Dim BL_L_LS5: BL_L_LS5=Array(LM_L_LS5_Parts, LM_L_LS5_Playfield, LM_L_LS5_RFlip1U, LM_L_LS5_TM5, LM_L_LS5_UnderPF)
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
Dim BL_L_LW4: BL_L_LW4=Array(LM_L_LW4_BS1, LM_L_LW4_Parts, LM_L_LW4_Playfield, LM_L_LW4_UnderPF)
Dim BL_L_LW5: BL_L_LW5=Array(LM_L_LW5_BS1, LM_L_LW5_Parts, LM_L_LW5_Playfield, LM_L_LW5_UnderPF)
Dim BL_L_LW6: BL_L_LW6=Array(LM_L_LW6_Parts, LM_L_LW6_Playfield, LM_L_LW6_UnderPF)
Dim BL_L_LW7: BL_L_LW7=Array(LM_L_LW7_BmpTopR, LM_L_LW7_Parts, LM_L_LW7_Playfield, LM_L_LW7_UnderPF)
Dim BL_L_LW8: BL_L_LW8=Array(LM_L_LW8_Parts, LM_L_LW8_Playfield, LM_L_LW8_UnderPF)
Dim BL_L_LW9: BL_L_LW9=Array(LM_L_LW9_Parts, LM_L_LW9_Playfield, LM_L_LW9_UnderPF)
Dim BL_L_LWiz: BL_L_LWiz=Array(LM_L_LWiz_Parts, LM_L_LWiz_Playfield, LM_L_LWiz_UnderPF)
Dim BL_L_LX: BL_L_LX=Array(LM_L_LX_Parts, LM_L_LX_Playfield, LM_L_LX_UnderPF)
Dim BL_L_Lspot1: BL_L_Lspot1=Array(LM_L_Lspot1_Asteroid1, LM_L_Lspot1_Asteroid2, LM_L_Lspot1_Asteroid3, LM_L_Lspot1_Asteroid4, LM_L_Lspot1_BR4, LM_L_Lspot1_BS4, LM_L_Lspot1_BmpTopB, LM_L_Lspot1_GateR, LM_L_Lspot1_Parts, LM_L_Lspot1_Playfield, LM_L_Lspot1_Ramp, LM_L_Lspot1_Spin, LM_L_Lspot1_SpinU, LM_L_Lspot1_SpinWire, LM_L_Lspot1_TM3, LM_L_Lspot1_TM4, LM_L_Lspot1_UnderPF, LM_L_Lspot1_swC1, LM_L_Lspot1_swC2, LM_L_Lspot1_swC3, LM_L_Lspot1_swI2)
Dim BL_L_Lspot2: BL_L_Lspot2=Array(LM_L_Lspot2_GateL, LM_L_Lspot2_LArm, LM_L_Lspot2_LFlip, LM_L_Lspot2_LFlipU, LM_L_Lspot2_LockPin, LM_L_Lspot2_Lsling1, LM_L_Lspot2_Lsling2, LM_L_Lspot2_Parts, LM_L_Lspot2_Playfield, LM_L_Lspot2_RArm, LM_L_Lspot2_RFlip, LM_L_Lspot2_RFlipU, LM_L_Lspot2_Ramp, LM_L_Lspot2_Rsling1, LM_L_Lspot2_Rsling2, LM_L_Lspot2_Ship, LM_L_Lspot2_UnderPF, LM_L_Lspot2_swLB1, LM_L_Lspot2_swLI, LM_L_Lspot2_swLO)
Dim BL_Stars: BL_Stars=Array(LM_Stars_Parts, LM_Stars_Ramp)
Dim BL_World: BL_World=Array(BM_Asteroid1, BM_Asteroid2, BM_Asteroid3, BM_Asteroid4, BM_BR1, BM_BR2, BM_BR3, BM_BR4, BM_BS1, BM_BS2, BM_BS3, BM_BS4, BM_BmpBot, BM_BmpTopB, BM_BmpTopR, BM_DiverterPin, BM_Gate2, BM_GateL, BM_GateR, BM_LArm, BM_LFlip, BM_LFlipU, BM_LockPin, BM_Lsling1, BM_Lsling2, BM_Parts, BM_Playfield, BM_RArm, BM_RFlip, BM_RFlip1, BM_RFlip1U, BM_RFlipU, BM_Rails, BM_Ramp, BM_Rsling1, BM_Rsling2, BM_Ship, BM_Spin, BM_SpinU, BM_SpinWire, BM_TM1, BM_TM2, BM_TM3, BM_TM4, BM_TM5, BM_TMet1, BM_TMet2, BM_TMet3, BM_TMet4, BM_TS1, BM_TS2, BM_TS3, BM_TS4, BM_TrustPost, BM_UnderPF, BM_swC1, BM_swC2, BM_swC3, BM_swI1, BM_swI2, BM_swL1, BM_swL2, BM_swLB1, BM_swLB2, BM_swLI, BM_swLO, BM_swP1, BM_swP2, BM_swR1, BM_swR2, BM_swRI, BM_swRO)
' Global arrays
Dim BG_Bakemap: BG_Bakemap=Array(BM_Asteroid1, BM_Asteroid2, BM_Asteroid3, BM_Asteroid4, BM_BR1, BM_BR2, BM_BR3, BM_BR4, BM_BS1, BM_BS2, BM_BS3, BM_BS4, BM_BmpBot, BM_BmpTopB, BM_BmpTopR, BM_DiverterPin, BM_Gate2, BM_GateL, BM_GateR, BM_LArm, BM_LFlip, BM_LFlipU, BM_LockPin, BM_Lsling1, BM_Lsling2, BM_Parts, BM_Playfield, BM_RArm, BM_RFlip, BM_RFlip1, BM_RFlip1U, BM_RFlipU, BM_Rails, BM_Ramp, BM_Rsling1, BM_Rsling2, BM_Ship, BM_Spin, BM_SpinU, BM_SpinWire, BM_TM1, BM_TM2, BM_TM3, BM_TM4, BM_TM5, BM_TMet1, BM_TMet2, BM_TMet3, BM_TMet4, BM_TS1, BM_TS2, BM_TS3, BM_TS4, BM_TrustPost, BM_UnderPF, BM_swC1, BM_swC2, BM_swC3, BM_swI1, BM_swI2, BM_swL1, BM_swL2, BM_swLB1, BM_swLB2, BM_swLI, BM_swLO, BM_swP1, BM_swP2, BM_swR1, BM_swR2, BM_swRI, BM_swRO)
Dim BG_Lightmap: BG_Lightmap=Array(LM_D_a00_Parts, LM_D_a00_Playfield, LM_D_a00_UnderPF, LM_D_a01_Parts, LM_D_a01_Playfield, LM_D_a01_RFlipU, LM_D_a02_Parts, LM_D_a03_Parts, LM_D_a04_Parts, LM_D_a04_Playfield, LM_D_a05_Parts, LM_D_a05_Playfield, LM_D_a06_Parts, LM_D_a06_Playfield, LM_D_a10_Parts, LM_D_a10_Playfield, LM_D_a10_UnderPF, LM_D_a11_Parts, LM_D_a11_Playfield, LM_D_a12_Parts, LM_D_a12_Playfield, LM_D_a13_Parts, LM_D_a14_Parts, LM_D_a14_Playfield, LM_D_a15_Parts, LM_D_a15_Playfield, LM_D_a16_Parts, LM_D_a16_Playfield, LM_F_FL1_Asteroid1, LM_F_FL1_Asteroid2, LM_F_FL1_Asteroid3, LM_F_FL1_Asteroid4, LM_F_FL1_BR2, LM_F_FL1_BR3, LM_F_FL1_BR4, LM_F_FL1_BS1, LM_F_FL1_BS2, LM_F_FL1_BS3, LM_F_FL1_BS4, LM_F_FL1_BmpBot, LM_F_FL1_BmpTopB, LM_F_FL1_DiverterPin, LM_F_FL1_Gate2, LM_F_FL1_GateR, LM_F_FL1_LockPin, LM_F_FL1_Lsling2, LM_F_FL1_Parts, LM_F_FL1_Playfield, LM_F_FL1_RArm, LM_F_FL1_RFlip1, LM_F_FL1_RFlip1U, LM_F_FL1_Rails, LM_F_FL1_Ramp, LM_F_FL1_Rsling1, LM_F_FL1_Ship, LM_F_FL1_Spin, LM_F_FL1_SpinU, _
	LM_F_FL1_TM2, LM_F_FL1_TM3, LM_F_FL1_TM4, LM_F_FL1_TM5, LM_F_FL1_UnderPF, LM_F_FL1_swI2, LM_F_FL1_swR1, LM_F_FL1_swR2, LM_F_FL2_Asteroid1, LM_F_FL2_Asteroid2, LM_F_FL2_Asteroid3, LM_F_FL2_Asteroid4, LM_F_FL2_BR2, LM_F_FL2_BR3, LM_F_FL2_BR4, LM_F_FL2_BS1, LM_F_FL2_BS2, LM_F_FL2_BS3, LM_F_FL2_BS4, LM_F_FL2_BmpBot, LM_F_FL2_BmpTopB, LM_F_FL2_DiverterPin, LM_F_FL2_GateL, LM_F_FL2_GateR, LM_F_FL2_LockPin, LM_F_FL2_Lsling2, LM_F_FL2_Parts, LM_F_FL2_Playfield, LM_F_FL2_RArm, LM_F_FL2_Ramp, LM_F_FL2_Rsling1, LM_F_FL2_Ship, LM_F_FL2_Spin, LM_F_FL2_SpinU, LM_F_FL2_SpinWire, LM_F_FL2_TM2, LM_F_FL2_TM3, LM_F_FL2_TM4, LM_F_FL2_UnderPF, LM_F_FL2_swC1, LM_F_FL2_swC2, LM_F_FL2_swC3, LM_F_FL2_swI1, LM_F_FL2_swI2, LM_F_FL2_swL1, LM_F_FL2_swL2, LM_F_FL2_swR2, LM_F_FL3_Asteroid1, LM_F_FL3_Asteroid2, LM_F_FL3_Asteroid3, LM_F_FL3_Asteroid4, LM_F_FL3_BR2, LM_F_FL3_BR3, LM_F_FL3_BR4, LM_F_FL3_BS1, LM_F_FL3_BS2, LM_F_FL3_BS3, LM_F_FL3_BS4, LM_F_FL3_BmpBot, LM_F_FL3_BmpTopB, LM_F_FL3_DiverterPin, LM_F_FL3_GateL, LM_F_FL3_GateR, _
	LM_F_FL3_LockPin, LM_F_FL3_Lsling2, LM_F_FL3_Parts, LM_F_FL3_Playfield, LM_F_FL3_RArm, LM_F_FL3_Ramp, LM_F_FL3_Rsling1, LM_F_FL3_Ship, LM_F_FL3_Spin, LM_F_FL3_SpinU, LM_F_FL3_SpinWire, LM_F_FL3_TM3, LM_F_FL3_TM4, LM_F_FL3_UnderPF, LM_F_FL3_swC1, LM_F_FL3_swC2, LM_F_FL3_swC3, LM_F_FL3_swI1, LM_F_FL3_swI2, LM_F_FL3_swL1, LM_F_FL3_swL2, LM_F_FL3_swR1, LM_F_FL3_swR2, LM_F_FL4_Asteroid1, LM_F_FL4_Asteroid2, LM_F_FL4_Asteroid3, LM_F_FL4_Asteroid4, LM_F_FL4_BmpTopB, LM_F_FL4_GateR, LM_F_FL4_Parts, LM_F_FL4_Playfield, LM_F_FL4_RFlip1, LM_F_FL4_RFlip1U, LM_F_FL4_Ramp, LM_F_FL4_Spin, LM_F_FL4_SpinU, LM_F_FL4_TM2, LM_F_FL4_TM3, LM_F_FL4_TM4, LM_F_FL4_UnderPF, LM_F_FL4_swC1, LM_F_FL4_swC2, LM_F_FL4_swC3, LM_F_FL5_BR1, LM_F_FL5_GateL, LM_F_FL5_LArm, LM_F_FL5_LFlip, LM_F_FL5_LFlipU, LM_F_FL5_LockPin, LM_F_FL5_Lsling1, LM_F_FL5_Lsling2, LM_F_FL5_Parts, LM_F_FL5_Playfield, LM_F_FL5_RArm, LM_F_FL5_RFlip, LM_F_FL5_RFlipU, LM_F_FL5_Ramp, LM_F_FL5_Rsling1, LM_F_FL5_Rsling2, LM_F_FL5_Ship, LM_F_FL5_TM1, LM_F_FL5_TrustPost, _
	LM_F_FL5_UnderPF, LM_F_FL5_swC3, LM_F_FL5_swLB1, LM_F_FL5_swLI, LM_F_FL5_swLO, LM_F_FL5_swRI, LM_F_FL6_BR1, LM_F_FL6_BS1, LM_F_FL6_GateL, LM_F_FL6_LArm, LM_F_FL6_LFlip, LM_F_FL6_LFlipU, LM_F_FL6_Lsling1, LM_F_FL6_Lsling2, LM_F_FL6_Parts, LM_F_FL6_Playfield, LM_F_FL6_RArm, LM_F_FL6_RFlip, LM_F_FL6_RFlipU, LM_F_FL6_Ramp, LM_F_FL6_Rsling1, LM_F_FL6_Rsling2, LM_F_FL6_Ship, LM_F_FL6_TS2, LM_F_FL6_TS3, LM_F_FL6_TS4, LM_F_FL6_TrustPost, LM_F_FL6_UnderPF, LM_F_FL6_swC3, LM_F_FL6_swI1, LM_F_FL6_swLB1, LM_F_FL6_swLB2, LM_F_FL6_swLI, LM_F_FL6_swRI, LM_F_FL6_swRO, LM_F_FL7_Asteroid1, LM_F_FL7_Asteroid2, LM_F_FL7_Asteroid3, LM_F_FL7_Asteroid4, LM_F_FL7_BR1, LM_F_FL7_BR2, LM_F_FL7_BR3, LM_F_FL7_BR4, LM_F_FL7_BS1, LM_F_FL7_BS2, LM_F_FL7_BS3, LM_F_FL7_BS4, LM_F_FL7_BmpBot, LM_F_FL7_BmpTopB, LM_F_FL7_DiverterPin, LM_F_FL7_GateL, LM_F_FL7_GateR, LM_F_FL7_LockPin, LM_F_FL7_Lsling2, LM_F_FL7_Parts, LM_F_FL7_Playfield, LM_F_FL7_RArm, LM_F_FL7_Ramp, LM_F_FL7_Rsling1, LM_F_FL7_Ship, LM_F_FL7_Spin, LM_F_FL7_SpinU, LM_F_FL7_SpinWire, _
	LM_F_FL7_TM2, LM_F_FL7_TM3, LM_F_FL7_TM4, LM_F_FL7_TM5, LM_F_FL7_UnderPF, LM_F_FL7_swC1, LM_F_FL7_swC2, LM_F_FL7_swC3, LM_F_FL7_swI1, LM_F_FL7_swI2, LM_F_FL7_swL1, LM_F_FL7_swL2, LM_F_FL7_swLB2, LM_F_FL7_swR1, LM_F_FL7_swR2, LM_GI_gi01_LArm, LM_GI_gi01_LFlip, LM_GI_gi01_LFlipU, LM_GI_gi01_Lsling1, LM_GI_gi01_Lsling2, LM_GI_gi01_Parts, LM_GI_gi01_Playfield, LM_GI_gi01_RFlip, LM_GI_gi01_RFlipU, LM_GI_gi01_UnderPF, LM_GI_gi01_swLI, LM_GI_gi01_swLO, LM_GI_gi02_LArm, LM_GI_gi02_LFlip, LM_GI_gi02_LFlipU, LM_GI_gi02_Lsling1, LM_GI_gi02_Lsling2, LM_GI_gi02_Parts, LM_GI_gi02_Playfield, LM_GI_gi02_UnderPF, LM_GI_gi02_swLI, LM_GI_gi02_swLO, LM_GI_gi03_LArm, LM_GI_gi03_LFlip, LM_GI_gi03_LFlipU, LM_GI_gi03_Lsling1, LM_GI_gi03_Lsling2, LM_GI_gi03_Parts, LM_GI_gi03_Playfield, LM_GI_gi03_RFlipU, LM_GI_gi03_swLI, LM_GI_gi03_swLO, LM_GI_gi04_LArm, LM_GI_gi04_LFlip, LM_GI_gi04_LFlipU, LM_GI_gi04_Lsling1, LM_GI_gi04_Lsling2, LM_GI_gi04_Parts, LM_GI_gi04_Playfield, LM_GI_gi04_UnderPF, LM_GI_gi04_swLI, LM_GI_gi04_swLO, _
	LM_GI_gi05_Parts, LM_GI_gi05_Playfield, LM_GI_gi05_RArm, LM_GI_gi05_RFlip, LM_GI_gi05_RFlipU, LM_GI_gi05_Rsling1, LM_GI_gi05_Rsling2, LM_GI_gi05_UnderPF, LM_GI_gi05_swRI, LM_GI_gi06_Parts, LM_GI_gi06_Playfield, LM_GI_gi06_RArm, LM_GI_gi06_RFlip, LM_GI_gi06_RFlipU, LM_GI_gi06_UnderPF, LM_GI_gi06_swRI, LM_GI_gi07_LFlipU, LM_GI_gi07_Parts, LM_GI_gi07_Playfield, LM_GI_gi07_RArm, LM_GI_gi07_RFlip, LM_GI_gi07_RFlipU, LM_GI_gi07_Rsling1, LM_GI_gi07_Rsling2, LM_GI_gi07_UnderPF, LM_GI_gi07_swRI, LM_GI_gi07_swRO, LM_GI_gi08_LArm, LM_GI_gi08_Parts, LM_GI_gi08_Playfield, LM_GI_gi08_RArm, LM_GI_gi08_RFlip, LM_GI_gi08_RFlipU, LM_GI_gi08_Rsling1, LM_GI_gi08_Rsling2, LM_GI_gi08_UnderPF, LM_GI_gi08_swRI, LM_GI_gi08_swRO, LM_GI_gi09_Parts, LM_GI_gi09_Playfield, LM_GI_gi09_swLI, LM_GI_gi10_Gate2, LM_GI_gi10_Parts, LM_GI_gi10_Playfield, LM_GI_gi10_RFlip1U, LM_GI_gi10_TS1, LM_GI_gi10_TS2, LM_GI_gi10_TS3, LM_GI_gi10_TS4, LM_GI_gi10_UnderPF, LM_GI_gi11_Parts, LM_GI_gi11_Playfield, LM_GI_gi12_Parts, LM_GI_gi12_Playfield, _
	LM_GI_gi13_BR4, LM_GI_gi13_BS4, LM_GI_gi13_BmpBot, LM_GI_gi13_BmpTopB, LM_GI_gi13_GateR, LM_GI_gi13_Parts, LM_GI_gi13_Playfield, LM_GI_gi13_RFlip1U, LM_GI_gi13_TM4, LM_GI_gi13_TM5, LM_GI_gi13_UnderPF, LM_GI_gi14_Gate2, LM_GI_gi14_LockPin, LM_GI_gi14_Parts, LM_GI_gi14_Playfield, LM_GI_gi14_RFlip1, LM_GI_gi14_RFlip1U, LM_GI_gi14_TM5, LM_GI_gi15_LockPin, LM_GI_gi15_Parts, LM_GI_gi15_Playfield, LM_GI_gi15_RFlip1, LM_GI_gi15_RFlip1U, LM_GI_gi15_UnderPF, LM_GI_gi16_Asteroid1, LM_GI_gi16_Asteroid2, LM_GI_gi16_Asteroid3, LM_GI_gi16_Asteroid4, LM_GI_gi16_BR2, LM_GI_gi16_BR3, LM_GI_gi16_BR4, LM_GI_gi16_BS2, LM_GI_gi16_BS3, LM_GI_gi16_BS4, LM_GI_gi16_BmpBot, LM_GI_gi16_BmpTopB, LM_GI_gi16_GateR, LM_GI_gi16_Parts, LM_GI_gi16_Playfield, LM_GI_gi16_Ramp, LM_GI_gi16_TM4, LM_GI_gi16_UnderPF, LM_GI_gi16_swC3, LM_GI_gi17_Parts, LM_GI_gi17_Playfield, LM_GI_gi18_Parts, LM_GI_gi18_Playfield, LM_GI_gi19_BS1, LM_GI_gi19_LockPin, LM_GI_gi19_Parts, LM_GI_gi19_Playfield, LM_GI_gi19_RFlip1, LM_GI_gi19_RFlip1U, LM_GI_gi20_Asteroid1, _
	LM_GI_gi20_Asteroid2, LM_GI_gi20_Asteroid3, LM_GI_gi20_Asteroid4, LM_GI_gi20_GateL, LM_GI_gi20_Parts, LM_GI_gi20_Playfield, LM_GI_gi20_Ramp, LM_GI_gi20_Spin, LM_GI_gi20_SpinU, LM_GI_gi20_SpinWire, LM_GI_gi20_TM2, LM_GI_gi20_swC1, LM_GI_gi20_swI1, LM_GI_gi20_swL1, LM_GI_gi20_swL2, LM_GI_gi21_Asteroid1, LM_GI_gi21_Asteroid2, LM_GI_gi21_Asteroid3, LM_GI_gi21_Asteroid4, LM_GI_gi21_Parts, LM_GI_gi21_Playfield, LM_GI_gi21_Ramp, LM_GI_gi21_Spin, LM_GI_gi21_SpinU, LM_GI_gi21_SpinWire, LM_GI_gi21_swL1, LM_GI_gi21_swL2, LM_L_LB1_BR1, LM_L_LB1_BS1, LM_L_LB1_BmpBot, LM_L_LB1_BmpTopR, LM_L_LB1_GateL, LM_L_LB1_LockPin, LM_L_LB1_Parts, LM_L_LB1_Playfield, LM_L_LB1_RFlip1, LM_L_LB1_RFlip1U, LM_L_LB1_Ramp, LM_L_LB1_Rsling1, LM_L_LB1_Rsling2, LM_L_LB1_Ship, LM_L_LB1_TM1, LM_L_LB1_TMet1, LM_L_LB1_UnderPF, LM_L_LB1_swLB1, LM_L_LB1_swLB2, LM_L_LB2_Asteroid1, LM_L_LB2_Asteroid2, LM_L_LB2_Asteroid3, LM_L_LB2_Asteroid4, LM_L_LB2_BR2, LM_L_LB2_BR3, LM_L_LB2_BR4, LM_L_LB2_BS2, LM_L_LB2_BS3, LM_L_LB2_BS4, LM_L_LB2_BmpBot, _
	LM_L_LB2_BmpTopB, LM_L_LB2_DiverterPin, LM_L_LB2_Parts, LM_L_LB2_Playfield, LM_L_LB2_TM5, LM_L_LB2_swR2, LM_L_LB3_Asteroid1, LM_L_LB3_Asteroid2, LM_L_LB3_Asteroid3, LM_L_LB3_Asteroid4, LM_L_LB3_BR2, LM_L_LB3_BR3, LM_L_LB3_BR4, LM_L_LB3_BS2, LM_L_LB3_BS3, LM_L_LB3_BS4, LM_L_LB3_BmpBot, LM_L_LB3_BmpTopB, LM_L_LB3_DiverterPin, LM_L_LB3_Parts, LM_L_LB3_Playfield, LM_L_LB3_Spin, LM_L_LB3_TM4, LM_L_LB3_UnderPF, LM_L_LB3_swI2, LM_L_LB3_swR2, LM_L_LB4_Asteroid1, LM_L_LB4_Asteroid2, LM_L_LB4_Asteroid3, LM_L_LB4_Asteroid4, LM_L_LB4_BR2, LM_L_LB4_BR3, LM_L_LB4_BR4, LM_L_LB4_BS2, LM_L_LB4_BS3, LM_L_LB4_BS4, LM_L_LB4_BmpBot, LM_L_LB4_BmpTopB, LM_L_LB4_GateR, LM_L_LB4_Parts, LM_L_LB4_Playfield, LM_L_LB4_TM4, LM_L_LB4_swR2, LM_L_LC1_LFlip, LM_L_LC1_LFlipU, LM_L_LC1_Parts, LM_L_LC1_Playfield, LM_L_LC1_UnderPF, LM_L_LC2_LFlipU, LM_L_LC2_Playfield, LM_L_LC2_UnderPF, LM_L_LC3_LFlipU, LM_L_LC3_Playfield, LM_L_LC3_UnderPF, LM_L_LC4_LFlipU, LM_L_LC4_Playfield, LM_L_LC4_UnderPF, LM_L_LC5_Playfield, LM_L_LC5_RFlipU, _
	LM_L_LC5_UnderPF, LM_L_LC6_Parts, LM_L_LC6_Playfield, LM_L_LC6_RFlipU, LM_L_LC6_UnderPF, LM_L_LC7_Parts, LM_L_LC7_Playfield, LM_L_LC7_RFlipU, LM_L_LC7_UnderPF, LM_L_LC8_Parts, LM_L_LC8_Playfield, LM_L_LC8_RFlip, LM_L_LC8_RFlipU, LM_L_LC8_UnderPF, LM_L_LCC1_Parts, LM_L_LCC1_Playfield, LM_L_LCC1_Ramp, LM_L_LCC1_UnderPF, LM_L_LCC2_Parts, LM_L_LCC2_Playfield, LM_L_LCC2_UnderPF, LM_L_LCC3_Parts, LM_L_LCC3_Playfield, LM_L_LCC3_UnderPF, LM_L_LCR1_Lsling1, LM_L_LCR1_Lsling2, LM_L_LCR1_Parts, LM_L_LCR1_Playfield, LM_L_LCR1_UnderPF, LM_L_LCR2_Lsling1, LM_L_LCR2_Lsling2, LM_L_LCR2_Parts, LM_L_LCR2_Playfield, LM_L_LCR2_UnderPF, LM_L_LCWiz_BmpTopR, LM_L_LCWiz_Parts, LM_L_LCWiz_Playfield, LM_L_LCWiz_UnderPF, LM_L_LEBR_Parts, LM_L_LEBR_Playfield, LM_L_LEBR_TM4, LM_L_LEBR_UnderPF, LM_L_LF1_Parts, LM_L_LF1_Playfield, LM_L_LF1_UnderPF, LM_L_LF1_swR1, LM_L_LF2_Parts, LM_L_LF2_Playfield, LM_L_LF2_UnderPF, LM_L_LF3_Parts, LM_L_LF3_Playfield, LM_L_LF3_RFlip1U, LM_L_LF3_TM5, LM_L_LF3_UnderPF, LM_L_LH1_LFlip, LM_L_LH1_LFlipU, _
	LM_L_LH1_Parts, LM_L_LH1_Playfield, LM_L_LH1_UnderPF, LM_L_LH2_LFlip, LM_L_LH2_LFlipU, LM_L_LH2_Parts, LM_L_LH2_Playfield, LM_L_LH2_UnderPF, LM_L_LH3_LFlip, LM_L_LH3_LFlipU, LM_L_LH3_Playfield, LM_L_LH3_UnderPF, LM_L_LH4_LFlipU, LM_L_LH4_Playfield, LM_L_LH4_UnderPF, LM_L_LH5_LFlipU, LM_L_LH5_Playfield, LM_L_LH5_RFlipU, LM_L_LH5_UnderPF, LM_L_LH6_Playfield, LM_L_LH6_RFlipU, LM_L_LH6_UnderPF, LM_L_LH7_Playfield, LM_L_LH7_RFlip, LM_L_LH7_RFlipU, LM_L_LH7_UnderPF, LM_L_LH8_Parts, LM_L_LH8_Playfield, LM_L_LH8_RFlip, LM_L_LH8_RFlipU, LM_L_LH8_UnderPF, LM_L_LH9_Parts, LM_L_LH9_Playfield, LM_L_LH9_RFlip, LM_L_LH9_RFlipU, LM_L_LH9_UnderPF, LM_L_LLI_Parts, LM_L_LLI_Playfield, LM_L_LLI_UnderPF, LM_L_LLI_swLI, LM_L_LLO_Parts, LM_L_LLO_Playfield, LM_L_LLO_UnderPF, LM_L_LLO_swLO, LM_L_LLWiz_Parts, LM_L_LLWiz_Playfield, LM_L_LLWiz_UnderPF, LM_L_LM1_Parts, LM_L_LM1_Playfield, LM_L_LM1_TM1, LM_L_LM1_UnderPF, LM_L_LM2_Parts, LM_L_LM2_Playfield, LM_L_LM2_TM2, LM_L_LM2_UnderPF, LM_L_LM3_Asteroid1, LM_L_LM3_Asteroid2, _
	LM_L_LM3_Asteroid3, LM_L_LM3_Asteroid4, LM_L_LM3_Playfield, LM_L_LM3_TM3, LM_L_LM3_UnderPF, LM_L_LM4_Parts, LM_L_LM4_Playfield, LM_L_LM4_TM4, LM_L_LM4_UnderPF, LM_L_LM5_Parts, LM_L_LM5_Playfield, LM_L_LM5_TM5, LM_L_LM5_UnderPF, LM_L_LMLR_Parts, LM_L_LMLR_Playfield, LM_L_LMLR_TM5, LM_L_LMLR_UnderPF, LM_L_LMR_GateR, LM_L_LMR_Parts, LM_L_LMR_Playfield, LM_L_LMR_TM4, LM_L_LMR_UnderPF, LM_L_LMR1_Parts, LM_L_LMR1_Playfield, LM_L_LMR1_Rsling1, LM_L_LMR1_Rsling2, LM_L_LMR1_UnderPF, LM_L_LMR2_Parts, LM_L_LMR2_Playfield, LM_L_LMR2_Rsling1, LM_L_LMR2_Rsling2, LM_L_LMR2_UnderPF, LM_L_LMet1_BR1, LM_L_LMet1_BS1, LM_L_LMet1_BmpTopR, LM_L_LMet1_Parts, LM_L_LMet1_Playfield, LM_L_LMet1_TMet1, LM_L_LMet1_UnderPF, LM_L_LMet2_BS1, LM_L_LMet2_Parts, LM_L_LMet2_Playfield, LM_L_LMet2_TMet2, LM_L_LMet2_UnderPF, LM_L_LMet3_Parts, LM_L_LMet3_Playfield, LM_L_LMet3_TMet3, LM_L_LMet3_UnderPF, LM_L_LMet4_Parts, LM_L_LMet4_Playfield, LM_L_LMet4_TMet4, LM_L_LMet4_UnderPF, LM_L_LPC1_Asteroid4, LM_L_LPC1_GateL, LM_L_LPC1_Parts, _
	LM_L_LPC1_Playfield, LM_L_LPC1_Ramp, LM_L_LPC1_SpinU, LM_L_LPC1_TM2, LM_L_LPC1_UnderPF, LM_L_LPC2_Parts, LM_L_LPC2_Playfield, LM_L_LPC2_TM2, LM_L_LPC2_UnderPF, LM_L_LPC3_Parts, LM_L_LPC3_Playfield, LM_L_LPC3_TM2, LM_L_LPC3_UnderPF, LM_L_LPC4_Asteroid1, LM_L_LPC4_Asteroid2, LM_L_LPC4_Asteroid3, LM_L_LPC4_Asteroid4, LM_L_LPC4_Parts, LM_L_LPC4_Playfield, LM_L_LPC4_Ramp, LM_L_LPC4_TM3, LM_L_LPC4_UnderPF, LM_L_LPC4_swC1, LM_L_LPC5_Asteroid1, LM_L_LPC5_Asteroid2, LM_L_LPC5_Asteroid3, LM_L_LPC5_Asteroid4, LM_L_LPC5_Parts, LM_L_LPC5_Playfield, LM_L_LPC5_TM3, LM_L_LPC5_TM4, LM_L_LPC5_UnderPF, LM_L_LPC5_swC3, LM_L_LPF_Asteroid1, LM_L_LPF_Asteroid2, LM_L_LPF_Asteroid3, LM_L_LPF_Asteroid4, LM_L_LPF_Playfield, LM_L_LPF_TM3, LM_L_LPF_UnderPF, LM_L_LPR1_Parts, LM_L_LPR1_Playfield, LM_L_LPR1_UnderPF, LM_L_LPR2_Parts, LM_L_LPR2_Playfield, LM_L_LPR2_UnderPF, LM_L_LPR3_Parts, LM_L_LPR3_Playfield, LM_L_LPR3_UnderPF, LM_L_LPR4_LFlipU, LM_L_LPR4_Parts, LM_L_LPR4_Playfield, LM_L_LPR4_UnderPF, LM_L_LPR5_LFlipU, LM_L_LPR5_Parts, _
	LM_L_LPR5_Playfield, LM_L_LPR5_UnderPF, LM_L_LPR6_Parts, LM_L_LPR6_Playfield, LM_L_LPR6_RFlipU, LM_L_LPR6_UnderPF, LM_L_LRI_Parts, LM_L_LRI_Playfield, LM_L_LRI_UnderPF, LM_L_LRI_swRI, LM_L_LRO_Parts, LM_L_LRO_Playfield, LM_L_LRO_UnderPF, LM_L_LRO_swRO, LM_L_LS1_Parts, LM_L_LS1_Playfield, LM_L_LS1_TM1, LM_L_LS1_UnderPF, LM_L_LS1_swLB1, LM_L_LS2_Parts, LM_L_LS2_Playfield, LM_L_LS2_UnderPF, LM_L_LS3_Parts, LM_L_LS3_Playfield, LM_L_LS3_TMet2, LM_L_LS3_UnderPF, LM_L_LS4_Parts, LM_L_LS4_Playfield, LM_L_LS4_UnderPF, LM_L_LS5_Parts, LM_L_LS5_Playfield, LM_L_LS5_RFlip1U, LM_L_LS5_TM5, LM_L_LS5_UnderPF, LM_L_LS6_Parts, LM_L_LS6_Playfield, LM_L_LS6_RFlip1, LM_L_LS6_RFlip1U, LM_L_LS6_UnderPF, LM_L_LSA_LFlip, LM_L_LSA_LFlipU, LM_L_LSA_Playfield, LM_L_LSA_RFlip, LM_L_LSA_RFlipU, LM_L_LSA_TrustPost, LM_L_LSA_UnderPF, LM_L_LSC1_Parts, LM_L_LSC1_Playfield, LM_L_LSC1_TS1, LM_L_LSC1_TS2, LM_L_LSC1_UnderPF, LM_L_LSC2_Parts, LM_L_LSC2_Playfield, LM_L_LSC2_TS1, LM_L_LSC2_TS2, LM_L_LSC2_TS3, LM_L_LSC2_UnderPF, LM_L_LSC3_Parts, _
	LM_L_LSC3_Playfield, LM_L_LSC3_TS2, LM_L_LSC3_TS3, LM_L_LSC3_TS4, LM_L_LSC3_UnderPF, LM_L_LSC4_Parts, LM_L_LSC4_Playfield, LM_L_LSC4_TS4, LM_L_LSC4_UnderPF, LM_L_LSL_Parts, LM_L_LSL_Playfield, LM_L_LSL_UnderPF, LM_L_LSL_swLO, LM_L_LSR_Parts, LM_L_LSR_Playfield, LM_L_LSR_UnderPF, LM_L_LSR_swRO, LM_L_LShip_Parts, LM_L_LShip_Ship, LM_L_LSwC1_Asteroid1, LM_L_LSwC1_Asteroid2, LM_L_LSwC1_Asteroid3, LM_L_LSwC1_Asteroid4, LM_L_LSwC1_Parts, LM_L_LSwC1_Playfield, LM_L_LSwC1_UnderPF, LM_L_LSwC1_swC1, LM_L_LSwC1_swC2, LM_L_LSwC2_Asteroid1, LM_L_LSwC2_Asteroid2, LM_L_LSwC2_Asteroid3, LM_L_LSwC2_Asteroid4, LM_L_LSwC2_BmpTopB, LM_L_LSwC2_Parts, LM_L_LSwC2_Playfield, LM_L_LSwC2_TM3, LM_L_LSwC2_UnderPF, LM_L_LSwC2_swC2, LM_L_LSwC3_Asteroid1, LM_L_LSwC3_Asteroid2, LM_L_LSwC3_Asteroid3, LM_L_LSwC3_Asteroid4, LM_L_LSwC3_Parts, LM_L_LSwC3_Playfield, LM_L_LSwC3_UnderPF, LM_L_LSwC3_swC2, LM_L_LSwC3_swC3, LM_L_LSwL1_BR1, LM_L_LSwL1_BS1, LM_L_LSwL1_BmpTopR, LM_L_LSwL1_Parts, LM_L_LSwL1_Playfield, LM_L_LSwL1_TM1, LM_L_LSwL1_UnderPF, _
	LM_L_LSwL1_swLB1, LM_L_LSwL2_BS1, LM_L_LSwL2_BmpBot, LM_L_LSwL2_BmpTopR, LM_L_LSwL2_Parts, LM_L_LSwL2_Playfield, LM_L_LSwL2_UnderPF, LM_L_LSwL2_swLB2, LM_L_LTW1_Parts, LM_L_LTW1_Playfield, LM_L_LTW1_Ramp, LM_L_LTW1_UnderPF, LM_L_LTW2_Parts, LM_L_LTW2_Playfield, LM_L_LTW2_Ramp, LM_L_LTW2_UnderPF, LM_L_LTW3_Parts, LM_L_LTW3_Playfield, LM_L_LTW3_UnderPF, LM_L_LTW4_Parts, LM_L_LTW4_Playfield, LM_L_LTW4_UnderPF, LM_L_LW1_Parts, LM_L_LW1_Playfield, LM_L_LW1_UnderPF, LM_L_LW2_Parts, LM_L_LW2_Playfield, LM_L_LW2_UnderPF, LM_L_LW3_Parts, LM_L_LW3_Playfield, LM_L_LW3_UnderPF, LM_L_LW4_BS1, LM_L_LW4_Parts, LM_L_LW4_Playfield, LM_L_LW4_UnderPF, LM_L_LW5_BS1, LM_L_LW5_Parts, LM_L_LW5_Playfield, LM_L_LW5_UnderPF, LM_L_LW6_Parts, LM_L_LW6_Playfield, LM_L_LW6_UnderPF, LM_L_LW7_BmpTopR, LM_L_LW7_Parts, LM_L_LW7_Playfield, LM_L_LW7_UnderPF, LM_L_LW8_Parts, LM_L_LW8_Playfield, LM_L_LW8_UnderPF, LM_L_LW9_Parts, LM_L_LW9_Playfield, LM_L_LW9_UnderPF, LM_L_LWiz_Parts, LM_L_LWiz_Playfield, LM_L_LWiz_UnderPF, LM_L_LX_Parts, _
	LM_L_LX_Playfield, LM_L_LX_UnderPF, LM_L_Lspot1_Asteroid1, LM_L_Lspot1_Asteroid2, LM_L_Lspot1_Asteroid3, LM_L_Lspot1_Asteroid4, LM_L_Lspot1_BR4, LM_L_Lspot1_BS4, LM_L_Lspot1_BmpTopB, LM_L_Lspot1_GateR, LM_L_Lspot1_Parts, LM_L_Lspot1_Playfield, LM_L_Lspot1_Ramp, LM_L_Lspot1_Spin, LM_L_Lspot1_SpinU, LM_L_Lspot1_SpinWire, LM_L_Lspot1_TM3, LM_L_Lspot1_TM4, LM_L_Lspot1_UnderPF, LM_L_Lspot1_swC1, LM_L_Lspot1_swC2, LM_L_Lspot1_swC3, LM_L_Lspot1_swI2, LM_L_Lspot2_GateL, LM_L_Lspot2_LArm, LM_L_Lspot2_LFlip, LM_L_Lspot2_LFlipU, LM_L_Lspot2_LockPin, LM_L_Lspot2_Lsling1, LM_L_Lspot2_Lsling2, LM_L_Lspot2_Parts, LM_L_Lspot2_Playfield, LM_L_Lspot2_RArm, LM_L_Lspot2_RFlip, LM_L_Lspot2_RFlipU, LM_L_Lspot2_Ramp, LM_L_Lspot2_Rsling1, LM_L_Lspot2_Rsling2, LM_L_Lspot2_Ship, LM_L_Lspot2_UnderPF, LM_L_Lspot2_swLB1, LM_L_Lspot2_swLI, LM_L_Lspot2_swLO, LM_Stars_Parts, LM_Stars_Ramp)
Dim BG_All: BG_All=Array(BM_Asteroid1, BM_Asteroid2, BM_Asteroid3, BM_Asteroid4, BM_BR1, BM_BR2, BM_BR3, BM_BR4, BM_BS1, BM_BS2, BM_BS3, BM_BS4, BM_BmpBot, BM_BmpTopB, BM_BmpTopR, BM_DiverterPin, BM_Gate2, BM_GateL, BM_GateR, BM_LArm, BM_LFlip, BM_LFlipU, BM_LockPin, BM_Lsling1, BM_Lsling2, BM_Parts, BM_Playfield, BM_RArm, BM_RFlip, BM_RFlip1, BM_RFlip1U, BM_RFlipU, BM_Rails, BM_Ramp, BM_Rsling1, BM_Rsling2, BM_Ship, BM_Spin, BM_SpinU, BM_SpinWire, BM_TM1, BM_TM2, BM_TM3, BM_TM4, BM_TM5, BM_TMet1, BM_TMet2, BM_TMet3, BM_TMet4, BM_TS1, BM_TS2, BM_TS3, BM_TS4, BM_TrustPost, BM_UnderPF, BM_swC1, BM_swC2, BM_swC3, BM_swI1, BM_swI2, BM_swL1, BM_swL2, BM_swLB1, BM_swLB2, BM_swLI, BM_swLO, BM_swP1, BM_swP2, BM_swR1, BM_swR2, BM_swRI, BM_swRO, LM_D_a00_Parts, LM_D_a00_Playfield, LM_D_a00_UnderPF, LM_D_a01_Parts, LM_D_a01_Playfield, LM_D_a01_RFlipU, LM_D_a02_Parts, LM_D_a03_Parts, LM_D_a04_Parts, LM_D_a04_Playfield, LM_D_a05_Parts, LM_D_a05_Playfield, LM_D_a06_Parts, LM_D_a06_Playfield, LM_D_a10_Parts, _
	LM_D_a10_Playfield, LM_D_a10_UnderPF, LM_D_a11_Parts, LM_D_a11_Playfield, LM_D_a12_Parts, LM_D_a12_Playfield, LM_D_a13_Parts, LM_D_a14_Parts, LM_D_a14_Playfield, LM_D_a15_Parts, LM_D_a15_Playfield, LM_D_a16_Parts, LM_D_a16_Playfield, LM_F_FL1_Asteroid1, LM_F_FL1_Asteroid2, LM_F_FL1_Asteroid3, LM_F_FL1_Asteroid4, LM_F_FL1_BR2, LM_F_FL1_BR3, LM_F_FL1_BR4, LM_F_FL1_BS1, LM_F_FL1_BS2, LM_F_FL1_BS3, LM_F_FL1_BS4, LM_F_FL1_BmpBot, LM_F_FL1_BmpTopB, LM_F_FL1_DiverterPin, LM_F_FL1_Gate2, LM_F_FL1_GateR, LM_F_FL1_LockPin, LM_F_FL1_Lsling2, LM_F_FL1_Parts, LM_F_FL1_Playfield, LM_F_FL1_RArm, LM_F_FL1_RFlip1, LM_F_FL1_RFlip1U, LM_F_FL1_Rails, LM_F_FL1_Ramp, LM_F_FL1_Rsling1, LM_F_FL1_Ship, LM_F_FL1_Spin, LM_F_FL1_SpinU, LM_F_FL1_TM2, LM_F_FL1_TM3, LM_F_FL1_TM4, LM_F_FL1_TM5, LM_F_FL1_UnderPF, LM_F_FL1_swI2, LM_F_FL1_swR1, LM_F_FL1_swR2, LM_F_FL2_Asteroid1, LM_F_FL2_Asteroid2, LM_F_FL2_Asteroid3, LM_F_FL2_Asteroid4, LM_F_FL2_BR2, LM_F_FL2_BR3, LM_F_FL2_BR4, LM_F_FL2_BS1, LM_F_FL2_BS2, LM_F_FL2_BS3, LM_F_FL2_BS4, _
	LM_F_FL2_BmpBot, LM_F_FL2_BmpTopB, LM_F_FL2_DiverterPin, LM_F_FL2_GateL, LM_F_FL2_GateR, LM_F_FL2_LockPin, LM_F_FL2_Lsling2, LM_F_FL2_Parts, LM_F_FL2_Playfield, LM_F_FL2_RArm, LM_F_FL2_Ramp, LM_F_FL2_Rsling1, LM_F_FL2_Ship, LM_F_FL2_Spin, LM_F_FL2_SpinU, LM_F_FL2_SpinWire, LM_F_FL2_TM2, LM_F_FL2_TM3, LM_F_FL2_TM4, LM_F_FL2_UnderPF, LM_F_FL2_swC1, LM_F_FL2_swC2, LM_F_FL2_swC3, LM_F_FL2_swI1, LM_F_FL2_swI2, LM_F_FL2_swL1, LM_F_FL2_swL2, LM_F_FL2_swR2, LM_F_FL3_Asteroid1, LM_F_FL3_Asteroid2, LM_F_FL3_Asteroid3, LM_F_FL3_Asteroid4, LM_F_FL3_BR2, LM_F_FL3_BR3, LM_F_FL3_BR4, LM_F_FL3_BS1, LM_F_FL3_BS2, LM_F_FL3_BS3, LM_F_FL3_BS4, LM_F_FL3_BmpBot, LM_F_FL3_BmpTopB, LM_F_FL3_DiverterPin, LM_F_FL3_GateL, LM_F_FL3_GateR, LM_F_FL3_LockPin, LM_F_FL3_Lsling2, LM_F_FL3_Parts, LM_F_FL3_Playfield, LM_F_FL3_RArm, LM_F_FL3_Ramp, LM_F_FL3_Rsling1, LM_F_FL3_Ship, LM_F_FL3_Spin, LM_F_FL3_SpinU, LM_F_FL3_SpinWire, LM_F_FL3_TM3, LM_F_FL3_TM4, LM_F_FL3_UnderPF, LM_F_FL3_swC1, LM_F_FL3_swC2, LM_F_FL3_swC3, LM_F_FL3_swI1, _
	LM_F_FL3_swI2, LM_F_FL3_swL1, LM_F_FL3_swL2, LM_F_FL3_swR1, LM_F_FL3_swR2, LM_F_FL4_Asteroid1, LM_F_FL4_Asteroid2, LM_F_FL4_Asteroid3, LM_F_FL4_Asteroid4, LM_F_FL4_BmpTopB, LM_F_FL4_GateR, LM_F_FL4_Parts, LM_F_FL4_Playfield, LM_F_FL4_RFlip1, LM_F_FL4_RFlip1U, LM_F_FL4_Ramp, LM_F_FL4_Spin, LM_F_FL4_SpinU, LM_F_FL4_TM2, LM_F_FL4_TM3, LM_F_FL4_TM4, LM_F_FL4_UnderPF, LM_F_FL4_swC1, LM_F_FL4_swC2, LM_F_FL4_swC3, LM_F_FL5_BR1, LM_F_FL5_GateL, LM_F_FL5_LArm, LM_F_FL5_LFlip, LM_F_FL5_LFlipU, LM_F_FL5_LockPin, LM_F_FL5_Lsling1, LM_F_FL5_Lsling2, LM_F_FL5_Parts, LM_F_FL5_Playfield, LM_F_FL5_RArm, LM_F_FL5_RFlip, LM_F_FL5_RFlipU, LM_F_FL5_Ramp, LM_F_FL5_Rsling1, LM_F_FL5_Rsling2, LM_F_FL5_Ship, LM_F_FL5_TM1, LM_F_FL5_TrustPost, LM_F_FL5_UnderPF, LM_F_FL5_swC3, LM_F_FL5_swLB1, LM_F_FL5_swLI, LM_F_FL5_swLO, LM_F_FL5_swRI, LM_F_FL6_BR1, LM_F_FL6_BS1, LM_F_FL6_GateL, LM_F_FL6_LArm, LM_F_FL6_LFlip, LM_F_FL6_LFlipU, LM_F_FL6_Lsling1, LM_F_FL6_Lsling2, LM_F_FL6_Parts, LM_F_FL6_Playfield, LM_F_FL6_RArm, LM_F_FL6_RFlip, _
	LM_F_FL6_RFlipU, LM_F_FL6_Ramp, LM_F_FL6_Rsling1, LM_F_FL6_Rsling2, LM_F_FL6_Ship, LM_F_FL6_TS2, LM_F_FL6_TS3, LM_F_FL6_TS4, LM_F_FL6_TrustPost, LM_F_FL6_UnderPF, LM_F_FL6_swC3, LM_F_FL6_swI1, LM_F_FL6_swLB1, LM_F_FL6_swLB2, LM_F_FL6_swLI, LM_F_FL6_swRI, LM_F_FL6_swRO, LM_F_FL7_Asteroid1, LM_F_FL7_Asteroid2, LM_F_FL7_Asteroid3, LM_F_FL7_Asteroid4, LM_F_FL7_BR1, LM_F_FL7_BR2, LM_F_FL7_BR3, LM_F_FL7_BR4, LM_F_FL7_BS1, LM_F_FL7_BS2, LM_F_FL7_BS3, LM_F_FL7_BS4, LM_F_FL7_BmpBot, LM_F_FL7_BmpTopB, LM_F_FL7_DiverterPin, LM_F_FL7_GateL, LM_F_FL7_GateR, LM_F_FL7_LockPin, LM_F_FL7_Lsling2, LM_F_FL7_Parts, LM_F_FL7_Playfield, LM_F_FL7_RArm, LM_F_FL7_Ramp, LM_F_FL7_Rsling1, LM_F_FL7_Ship, LM_F_FL7_Spin, LM_F_FL7_SpinU, LM_F_FL7_SpinWire, LM_F_FL7_TM2, LM_F_FL7_TM3, LM_F_FL7_TM4, LM_F_FL7_TM5, LM_F_FL7_UnderPF, LM_F_FL7_swC1, LM_F_FL7_swC2, LM_F_FL7_swC3, LM_F_FL7_swI1, LM_F_FL7_swI2, LM_F_FL7_swL1, LM_F_FL7_swL2, LM_F_FL7_swLB2, LM_F_FL7_swR1, LM_F_FL7_swR2, LM_GI_gi01_LArm, LM_GI_gi01_LFlip, LM_GI_gi01_LFlipU, _
	LM_GI_gi01_Lsling1, LM_GI_gi01_Lsling2, LM_GI_gi01_Parts, LM_GI_gi01_Playfield, LM_GI_gi01_RFlip, LM_GI_gi01_RFlipU, LM_GI_gi01_UnderPF, LM_GI_gi01_swLI, LM_GI_gi01_swLO, LM_GI_gi02_LArm, LM_GI_gi02_LFlip, LM_GI_gi02_LFlipU, LM_GI_gi02_Lsling1, LM_GI_gi02_Lsling2, LM_GI_gi02_Parts, LM_GI_gi02_Playfield, LM_GI_gi02_UnderPF, LM_GI_gi02_swLI, LM_GI_gi02_swLO, LM_GI_gi03_LArm, LM_GI_gi03_LFlip, LM_GI_gi03_LFlipU, LM_GI_gi03_Lsling1, LM_GI_gi03_Lsling2, LM_GI_gi03_Parts, LM_GI_gi03_Playfield, LM_GI_gi03_RFlipU, LM_GI_gi03_swLI, LM_GI_gi03_swLO, LM_GI_gi04_LArm, LM_GI_gi04_LFlip, LM_GI_gi04_LFlipU, LM_GI_gi04_Lsling1, LM_GI_gi04_Lsling2, LM_GI_gi04_Parts, LM_GI_gi04_Playfield, LM_GI_gi04_UnderPF, LM_GI_gi04_swLI, LM_GI_gi04_swLO, LM_GI_gi05_Parts, LM_GI_gi05_Playfield, LM_GI_gi05_RArm, LM_GI_gi05_RFlip, LM_GI_gi05_RFlipU, LM_GI_gi05_Rsling1, LM_GI_gi05_Rsling2, LM_GI_gi05_UnderPF, LM_GI_gi05_swRI, LM_GI_gi06_Parts, LM_GI_gi06_Playfield, LM_GI_gi06_RArm, LM_GI_gi06_RFlip, LM_GI_gi06_RFlipU, LM_GI_gi06_UnderPF, _
	LM_GI_gi06_swRI, LM_GI_gi07_LFlipU, LM_GI_gi07_Parts, LM_GI_gi07_Playfield, LM_GI_gi07_RArm, LM_GI_gi07_RFlip, LM_GI_gi07_RFlipU, LM_GI_gi07_Rsling1, LM_GI_gi07_Rsling2, LM_GI_gi07_UnderPF, LM_GI_gi07_swRI, LM_GI_gi07_swRO, LM_GI_gi08_LArm, LM_GI_gi08_Parts, LM_GI_gi08_Playfield, LM_GI_gi08_RArm, LM_GI_gi08_RFlip, LM_GI_gi08_RFlipU, LM_GI_gi08_Rsling1, LM_GI_gi08_Rsling2, LM_GI_gi08_UnderPF, LM_GI_gi08_swRI, LM_GI_gi08_swRO, LM_GI_gi09_Parts, LM_GI_gi09_Playfield, LM_GI_gi09_swLI, LM_GI_gi10_Gate2, LM_GI_gi10_Parts, LM_GI_gi10_Playfield, LM_GI_gi10_RFlip1U, LM_GI_gi10_TS1, LM_GI_gi10_TS2, LM_GI_gi10_TS3, LM_GI_gi10_TS4, LM_GI_gi10_UnderPF, LM_GI_gi11_Parts, LM_GI_gi11_Playfield, LM_GI_gi12_Parts, LM_GI_gi12_Playfield, LM_GI_gi13_BR4, LM_GI_gi13_BS4, LM_GI_gi13_BmpBot, LM_GI_gi13_BmpTopB, LM_GI_gi13_GateR, LM_GI_gi13_Parts, LM_GI_gi13_Playfield, LM_GI_gi13_RFlip1U, LM_GI_gi13_TM4, LM_GI_gi13_TM5, LM_GI_gi13_UnderPF, LM_GI_gi14_Gate2, LM_GI_gi14_LockPin, LM_GI_gi14_Parts, LM_GI_gi14_Playfield, _
	LM_GI_gi14_RFlip1, LM_GI_gi14_RFlip1U, LM_GI_gi14_TM5, LM_GI_gi15_LockPin, LM_GI_gi15_Parts, LM_GI_gi15_Playfield, LM_GI_gi15_RFlip1, LM_GI_gi15_RFlip1U, LM_GI_gi15_UnderPF, LM_GI_gi16_Asteroid1, LM_GI_gi16_Asteroid2, LM_GI_gi16_Asteroid3, LM_GI_gi16_Asteroid4, LM_GI_gi16_BR2, LM_GI_gi16_BR3, LM_GI_gi16_BR4, LM_GI_gi16_BS2, LM_GI_gi16_BS3, LM_GI_gi16_BS4, LM_GI_gi16_BmpBot, LM_GI_gi16_BmpTopB, LM_GI_gi16_GateR, LM_GI_gi16_Parts, LM_GI_gi16_Playfield, LM_GI_gi16_Ramp, LM_GI_gi16_TM4, LM_GI_gi16_UnderPF, LM_GI_gi16_swC3, LM_GI_gi17_Parts, LM_GI_gi17_Playfield, LM_GI_gi18_Parts, LM_GI_gi18_Playfield, LM_GI_gi19_BS1, LM_GI_gi19_LockPin, LM_GI_gi19_Parts, LM_GI_gi19_Playfield, LM_GI_gi19_RFlip1, LM_GI_gi19_RFlip1U, LM_GI_gi20_Asteroid1, LM_GI_gi20_Asteroid2, LM_GI_gi20_Asteroid3, LM_GI_gi20_Asteroid4, LM_GI_gi20_GateL, LM_GI_gi20_Parts, LM_GI_gi20_Playfield, LM_GI_gi20_Ramp, LM_GI_gi20_Spin, LM_GI_gi20_SpinU, LM_GI_gi20_SpinWire, LM_GI_gi20_TM2, LM_GI_gi20_swC1, LM_GI_gi20_swI1, LM_GI_gi20_swL1, LM_GI_gi20_swL2, _
	LM_GI_gi21_Asteroid1, LM_GI_gi21_Asteroid2, LM_GI_gi21_Asteroid3, LM_GI_gi21_Asteroid4, LM_GI_gi21_Parts, LM_GI_gi21_Playfield, LM_GI_gi21_Ramp, LM_GI_gi21_Spin, LM_GI_gi21_SpinU, LM_GI_gi21_SpinWire, LM_GI_gi21_swL1, LM_GI_gi21_swL2, LM_L_LB1_BR1, LM_L_LB1_BS1, LM_L_LB1_BmpBot, LM_L_LB1_BmpTopR, LM_L_LB1_GateL, LM_L_LB1_LockPin, LM_L_LB1_Parts, LM_L_LB1_Playfield, LM_L_LB1_RFlip1, LM_L_LB1_RFlip1U, LM_L_LB1_Ramp, LM_L_LB1_Rsling1, LM_L_LB1_Rsling2, LM_L_LB1_Ship, LM_L_LB1_TM1, LM_L_LB1_TMet1, LM_L_LB1_UnderPF, LM_L_LB1_swLB1, LM_L_LB1_swLB2, LM_L_LB2_Asteroid1, LM_L_LB2_Asteroid2, LM_L_LB2_Asteroid3, LM_L_LB2_Asteroid4, LM_L_LB2_BR2, LM_L_LB2_BR3, LM_L_LB2_BR4, LM_L_LB2_BS2, LM_L_LB2_BS3, LM_L_LB2_BS4, LM_L_LB2_BmpBot, LM_L_LB2_BmpTopB, LM_L_LB2_DiverterPin, LM_L_LB2_Parts, LM_L_LB2_Playfield, LM_L_LB2_TM5, LM_L_LB2_swR2, LM_L_LB3_Asteroid1, LM_L_LB3_Asteroid2, LM_L_LB3_Asteroid3, LM_L_LB3_Asteroid4, LM_L_LB3_BR2, LM_L_LB3_BR3, LM_L_LB3_BR4, LM_L_LB3_BS2, LM_L_LB3_BS3, LM_L_LB3_BS4, LM_L_LB3_BmpBot, _
	LM_L_LB3_BmpTopB, LM_L_LB3_DiverterPin, LM_L_LB3_Parts, LM_L_LB3_Playfield, LM_L_LB3_Spin, LM_L_LB3_TM4, LM_L_LB3_UnderPF, LM_L_LB3_swI2, LM_L_LB3_swR2, LM_L_LB4_Asteroid1, LM_L_LB4_Asteroid2, LM_L_LB4_Asteroid3, LM_L_LB4_Asteroid4, LM_L_LB4_BR2, LM_L_LB4_BR3, LM_L_LB4_BR4, LM_L_LB4_BS2, LM_L_LB4_BS3, LM_L_LB4_BS4, LM_L_LB4_BmpBot, LM_L_LB4_BmpTopB, LM_L_LB4_GateR, LM_L_LB4_Parts, LM_L_LB4_Playfield, LM_L_LB4_TM4, LM_L_LB4_swR2, LM_L_LC1_LFlip, LM_L_LC1_LFlipU, LM_L_LC1_Parts, LM_L_LC1_Playfield, LM_L_LC1_UnderPF, LM_L_LC2_LFlipU, LM_L_LC2_Playfield, LM_L_LC2_UnderPF, LM_L_LC3_LFlipU, LM_L_LC3_Playfield, LM_L_LC3_UnderPF, LM_L_LC4_LFlipU, LM_L_LC4_Playfield, LM_L_LC4_UnderPF, LM_L_LC5_Playfield, LM_L_LC5_RFlipU, LM_L_LC5_UnderPF, LM_L_LC6_Parts, LM_L_LC6_Playfield, LM_L_LC6_RFlipU, LM_L_LC6_UnderPF, LM_L_LC7_Parts, LM_L_LC7_Playfield, LM_L_LC7_RFlipU, LM_L_LC7_UnderPF, LM_L_LC8_Parts, LM_L_LC8_Playfield, LM_L_LC8_RFlip, LM_L_LC8_RFlipU, LM_L_LC8_UnderPF, LM_L_LCC1_Parts, LM_L_LCC1_Playfield, LM_L_LCC1_Ramp, _
	LM_L_LCC1_UnderPF, LM_L_LCC2_Parts, LM_L_LCC2_Playfield, LM_L_LCC2_UnderPF, LM_L_LCC3_Parts, LM_L_LCC3_Playfield, LM_L_LCC3_UnderPF, LM_L_LCR1_Lsling1, LM_L_LCR1_Lsling2, LM_L_LCR1_Parts, LM_L_LCR1_Playfield, LM_L_LCR1_UnderPF, LM_L_LCR2_Lsling1, LM_L_LCR2_Lsling2, LM_L_LCR2_Parts, LM_L_LCR2_Playfield, LM_L_LCR2_UnderPF, LM_L_LCWiz_BmpTopR, LM_L_LCWiz_Parts, LM_L_LCWiz_Playfield, LM_L_LCWiz_UnderPF, LM_L_LEBR_Parts, LM_L_LEBR_Playfield, LM_L_LEBR_TM4, LM_L_LEBR_UnderPF, LM_L_LF1_Parts, LM_L_LF1_Playfield, LM_L_LF1_UnderPF, LM_L_LF1_swR1, LM_L_LF2_Parts, LM_L_LF2_Playfield, LM_L_LF2_UnderPF, LM_L_LF3_Parts, LM_L_LF3_Playfield, LM_L_LF3_RFlip1U, LM_L_LF3_TM5, LM_L_LF3_UnderPF, LM_L_LH1_LFlip, LM_L_LH1_LFlipU, LM_L_LH1_Parts, LM_L_LH1_Playfield, LM_L_LH1_UnderPF, LM_L_LH2_LFlip, LM_L_LH2_LFlipU, LM_L_LH2_Parts, LM_L_LH2_Playfield, LM_L_LH2_UnderPF, LM_L_LH3_LFlip, LM_L_LH3_LFlipU, LM_L_LH3_Playfield, LM_L_LH3_UnderPF, LM_L_LH4_LFlipU, LM_L_LH4_Playfield, LM_L_LH4_UnderPF, LM_L_LH5_LFlipU, LM_L_LH5_Playfield, _
	LM_L_LH5_RFlipU, LM_L_LH5_UnderPF, LM_L_LH6_Playfield, LM_L_LH6_RFlipU, LM_L_LH6_UnderPF, LM_L_LH7_Playfield, LM_L_LH7_RFlip, LM_L_LH7_RFlipU, LM_L_LH7_UnderPF, LM_L_LH8_Parts, LM_L_LH8_Playfield, LM_L_LH8_RFlip, LM_L_LH8_RFlipU, LM_L_LH8_UnderPF, LM_L_LH9_Parts, LM_L_LH9_Playfield, LM_L_LH9_RFlip, LM_L_LH9_RFlipU, LM_L_LH9_UnderPF, LM_L_LLI_Parts, LM_L_LLI_Playfield, LM_L_LLI_UnderPF, LM_L_LLI_swLI, LM_L_LLO_Parts, LM_L_LLO_Playfield, LM_L_LLO_UnderPF, LM_L_LLO_swLO, LM_L_LLWiz_Parts, LM_L_LLWiz_Playfield, LM_L_LLWiz_UnderPF, LM_L_LM1_Parts, LM_L_LM1_Playfield, LM_L_LM1_TM1, LM_L_LM1_UnderPF, LM_L_LM2_Parts, LM_L_LM2_Playfield, LM_L_LM2_TM2, LM_L_LM2_UnderPF, LM_L_LM3_Asteroid1, LM_L_LM3_Asteroid2, LM_L_LM3_Asteroid3, LM_L_LM3_Asteroid4, LM_L_LM3_Playfield, LM_L_LM3_TM3, LM_L_LM3_UnderPF, LM_L_LM4_Parts, LM_L_LM4_Playfield, LM_L_LM4_TM4, LM_L_LM4_UnderPF, LM_L_LM5_Parts, LM_L_LM5_Playfield, LM_L_LM5_TM5, LM_L_LM5_UnderPF, LM_L_LMLR_Parts, LM_L_LMLR_Playfield, LM_L_LMLR_TM5, LM_L_LMLR_UnderPF, LM_L_LMR_GateR, _
	LM_L_LMR_Parts, LM_L_LMR_Playfield, LM_L_LMR_TM4, LM_L_LMR_UnderPF, LM_L_LMR1_Parts, LM_L_LMR1_Playfield, LM_L_LMR1_Rsling1, LM_L_LMR1_Rsling2, LM_L_LMR1_UnderPF, LM_L_LMR2_Parts, LM_L_LMR2_Playfield, LM_L_LMR2_Rsling1, LM_L_LMR2_Rsling2, LM_L_LMR2_UnderPF, LM_L_LMet1_BR1, LM_L_LMet1_BS1, LM_L_LMet1_BmpTopR, LM_L_LMet1_Parts, LM_L_LMet1_Playfield, LM_L_LMet1_TMet1, LM_L_LMet1_UnderPF, LM_L_LMet2_BS1, LM_L_LMet2_Parts, LM_L_LMet2_Playfield, LM_L_LMet2_TMet2, LM_L_LMet2_UnderPF, LM_L_LMet3_Parts, LM_L_LMet3_Playfield, LM_L_LMet3_TMet3, LM_L_LMet3_UnderPF, LM_L_LMet4_Parts, LM_L_LMet4_Playfield, LM_L_LMet4_TMet4, LM_L_LMet4_UnderPF, LM_L_LPC1_Asteroid4, LM_L_LPC1_GateL, LM_L_LPC1_Parts, LM_L_LPC1_Playfield, LM_L_LPC1_Ramp, LM_L_LPC1_SpinU, LM_L_LPC1_TM2, LM_L_LPC1_UnderPF, LM_L_LPC2_Parts, LM_L_LPC2_Playfield, LM_L_LPC2_TM2, LM_L_LPC2_UnderPF, LM_L_LPC3_Parts, LM_L_LPC3_Playfield, LM_L_LPC3_TM2, LM_L_LPC3_UnderPF, LM_L_LPC4_Asteroid1, LM_L_LPC4_Asteroid2, LM_L_LPC4_Asteroid3, LM_L_LPC4_Asteroid4, _
	LM_L_LPC4_Parts, LM_L_LPC4_Playfield, LM_L_LPC4_Ramp, LM_L_LPC4_TM3, LM_L_LPC4_UnderPF, LM_L_LPC4_swC1, LM_L_LPC5_Asteroid1, LM_L_LPC5_Asteroid2, LM_L_LPC5_Asteroid3, LM_L_LPC5_Asteroid4, LM_L_LPC5_Parts, LM_L_LPC5_Playfield, LM_L_LPC5_TM3, LM_L_LPC5_TM4, LM_L_LPC5_UnderPF, LM_L_LPC5_swC3, LM_L_LPF_Asteroid1, LM_L_LPF_Asteroid2, LM_L_LPF_Asteroid3, LM_L_LPF_Asteroid4, LM_L_LPF_Playfield, LM_L_LPF_TM3, LM_L_LPF_UnderPF, LM_L_LPR1_Parts, LM_L_LPR1_Playfield, LM_L_LPR1_UnderPF, LM_L_LPR2_Parts, LM_L_LPR2_Playfield, LM_L_LPR2_UnderPF, LM_L_LPR3_Parts, LM_L_LPR3_Playfield, LM_L_LPR3_UnderPF, LM_L_LPR4_LFlipU, LM_L_LPR4_Parts, LM_L_LPR4_Playfield, LM_L_LPR4_UnderPF, LM_L_LPR5_LFlipU, LM_L_LPR5_Parts, LM_L_LPR5_Playfield, LM_L_LPR5_UnderPF, LM_L_LPR6_Parts, LM_L_LPR6_Playfield, LM_L_LPR6_RFlipU, LM_L_LPR6_UnderPF, LM_L_LRI_Parts, LM_L_LRI_Playfield, LM_L_LRI_UnderPF, LM_L_LRI_swRI, LM_L_LRO_Parts, LM_L_LRO_Playfield, LM_L_LRO_UnderPF, LM_L_LRO_swRO, LM_L_LS1_Parts, LM_L_LS1_Playfield, LM_L_LS1_TM1, LM_L_LS1_UnderPF, _
	LM_L_LS1_swLB1, LM_L_LS2_Parts, LM_L_LS2_Playfield, LM_L_LS2_UnderPF, LM_L_LS3_Parts, LM_L_LS3_Playfield, LM_L_LS3_TMet2, LM_L_LS3_UnderPF, LM_L_LS4_Parts, LM_L_LS4_Playfield, LM_L_LS4_UnderPF, LM_L_LS5_Parts, LM_L_LS5_Playfield, LM_L_LS5_RFlip1U, LM_L_LS5_TM5, LM_L_LS5_UnderPF, LM_L_LS6_Parts, LM_L_LS6_Playfield, LM_L_LS6_RFlip1, LM_L_LS6_RFlip1U, LM_L_LS6_UnderPF, LM_L_LSA_LFlip, LM_L_LSA_LFlipU, LM_L_LSA_Playfield, LM_L_LSA_RFlip, LM_L_LSA_RFlipU, LM_L_LSA_TrustPost, LM_L_LSA_UnderPF, LM_L_LSC1_Parts, LM_L_LSC1_Playfield, LM_L_LSC1_TS1, LM_L_LSC1_TS2, LM_L_LSC1_UnderPF, LM_L_LSC2_Parts, LM_L_LSC2_Playfield, LM_L_LSC2_TS1, LM_L_LSC2_TS2, LM_L_LSC2_TS3, LM_L_LSC2_UnderPF, LM_L_LSC3_Parts, LM_L_LSC3_Playfield, LM_L_LSC3_TS2, LM_L_LSC3_TS3, LM_L_LSC3_TS4, LM_L_LSC3_UnderPF, LM_L_LSC4_Parts, LM_L_LSC4_Playfield, LM_L_LSC4_TS4, LM_L_LSC4_UnderPF, LM_L_LSL_Parts, LM_L_LSL_Playfield, LM_L_LSL_UnderPF, LM_L_LSL_swLO, LM_L_LSR_Parts, LM_L_LSR_Playfield, LM_L_LSR_UnderPF, LM_L_LSR_swRO, LM_L_LShip_Parts, _
	LM_L_LShip_Ship, LM_L_LSwC1_Asteroid1, LM_L_LSwC1_Asteroid2, LM_L_LSwC1_Asteroid3, LM_L_LSwC1_Asteroid4, LM_L_LSwC1_Parts, LM_L_LSwC1_Playfield, LM_L_LSwC1_UnderPF, LM_L_LSwC1_swC1, LM_L_LSwC1_swC2, LM_L_LSwC2_Asteroid1, LM_L_LSwC2_Asteroid2, LM_L_LSwC2_Asteroid3, LM_L_LSwC2_Asteroid4, LM_L_LSwC2_BmpTopB, LM_L_LSwC2_Parts, LM_L_LSwC2_Playfield, LM_L_LSwC2_TM3, LM_L_LSwC2_UnderPF, LM_L_LSwC2_swC2, LM_L_LSwC3_Asteroid1, LM_L_LSwC3_Asteroid2, LM_L_LSwC3_Asteroid3, LM_L_LSwC3_Asteroid4, LM_L_LSwC3_Parts, LM_L_LSwC3_Playfield, LM_L_LSwC3_UnderPF, LM_L_LSwC3_swC2, LM_L_LSwC3_swC3, LM_L_LSwL1_BR1, LM_L_LSwL1_BS1, LM_L_LSwL1_BmpTopR, LM_L_LSwL1_Parts, LM_L_LSwL1_Playfield, LM_L_LSwL1_TM1, LM_L_LSwL1_UnderPF, LM_L_LSwL1_swLB1, LM_L_LSwL2_BS1, LM_L_LSwL2_BmpBot, LM_L_LSwL2_BmpTopR, LM_L_LSwL2_Parts, LM_L_LSwL2_Playfield, LM_L_LSwL2_UnderPF, LM_L_LSwL2_swLB2, LM_L_LTW1_Parts, LM_L_LTW1_Playfield, LM_L_LTW1_Ramp, LM_L_LTW1_UnderPF, LM_L_LTW2_Parts, LM_L_LTW2_Playfield, LM_L_LTW2_Ramp, LM_L_LTW2_UnderPF, LM_L_LTW3_Parts, _
	LM_L_LTW3_Playfield, LM_L_LTW3_UnderPF, LM_L_LTW4_Parts, LM_L_LTW4_Playfield, LM_L_LTW4_UnderPF, LM_L_LW1_Parts, LM_L_LW1_Playfield, LM_L_LW1_UnderPF, LM_L_LW2_Parts, LM_L_LW2_Playfield, LM_L_LW2_UnderPF, LM_L_LW3_Parts, LM_L_LW3_Playfield, LM_L_LW3_UnderPF, LM_L_LW4_BS1, LM_L_LW4_Parts, LM_L_LW4_Playfield, LM_L_LW4_UnderPF, LM_L_LW5_BS1, LM_L_LW5_Parts, LM_L_LW5_Playfield, LM_L_LW5_UnderPF, LM_L_LW6_Parts, LM_L_LW6_Playfield, LM_L_LW6_UnderPF, LM_L_LW7_BmpTopR, LM_L_LW7_Parts, LM_L_LW7_Playfield, LM_L_LW7_UnderPF, LM_L_LW8_Parts, LM_L_LW8_Playfield, LM_L_LW8_UnderPF, LM_L_LW9_Parts, LM_L_LW9_Playfield, LM_L_LW9_UnderPF, LM_L_LWiz_Parts, LM_L_LWiz_Playfield, LM_L_LWiz_UnderPF, LM_L_LX_Parts, LM_L_LX_Playfield, LM_L_LX_UnderPF, LM_L_Lspot1_Asteroid1, LM_L_Lspot1_Asteroid2, LM_L_Lspot1_Asteroid3, LM_L_Lspot1_Asteroid4, LM_L_Lspot1_BR4, LM_L_Lspot1_BS4, LM_L_Lspot1_BmpTopB, LM_L_Lspot1_GateR, LM_L_Lspot1_Parts, LM_L_Lspot1_Playfield, LM_L_Lspot1_Ramp, LM_L_Lspot1_Spin, LM_L_Lspot1_SpinU, LM_L_Lspot1_SpinWire, _
	LM_L_Lspot1_TM3, LM_L_Lspot1_TM4, LM_L_Lspot1_UnderPF, LM_L_Lspot1_swC1, LM_L_Lspot1_swC2, LM_L_Lspot1_swC3, LM_L_Lspot1_swI2, LM_L_Lspot2_GateL, LM_L_Lspot2_LArm, LM_L_Lspot2_LFlip, LM_L_Lspot2_LFlipU, LM_L_Lspot2_LockPin, LM_L_Lspot2_Lsling1, LM_L_Lspot2_Lsling2, LM_L_Lspot2_Parts, LM_L_Lspot2_Playfield, LM_L_Lspot2_RArm, LM_L_Lspot2_RFlip, LM_L_Lspot2_RFlipU, LM_L_Lspot2_Ramp, LM_L_Lspot2_Rsling1, LM_L_Lspot2_Rsling2, LM_L_Lspot2_Ship, LM_L_Lspot2_UnderPF, LM_L_Lspot2_swLB1, LM_L_Lspot2_swLI, LM_L_Lspot2_swLO, LM_Stars_Parts, LM_Stars_Ramp)
' VLM  Arrays - End

' BL array. Must be in same order as AllControlLights collection
Dim BL_Array: BL_Array = Array(BL_L_LB1,BL_L_LB2,BL_L_LB3,BL_L_LB4,BL_L_LC1,BL_L_LC2,BL_L_LC3,BL_L_LC4,BL_L_LC5,BL_L_LC6,BL_L_LC7,BL_L_LC8,BL_L_LCC1,BL_L_LCC2,BL_L_LCC3,BL_L_LCR1,BL_L_LCR2, _
	BL_L_LCWiz,BL_L_LEBR,BL_L_LF1,BL_L_LF2,BL_L_LF3,BL_L_LH1,BL_L_LH2,BL_L_LH3,BL_L_LH4,BL_L_LH5,BL_L_LH6,BL_L_LH7,BL_L_LH8,BL_L_LH9,BL_L_LLI,BL_L_LLO,BL_L_LLWiz,BL_L_LM1,BL_L_LM2,BL_L_LM3, _
	BL_L_LM4,BL_L_LM5,BL_L_LMet1,BL_L_LMet2,BL_L_LMet3,BL_L_LMet4,BL_L_LMLR,BL_L_LMR,BL_L_LMR1,BL_L_LMR2,BL_L_LPC1,BL_L_LPC2,BL_L_LPC3,BL_L_LPC4,BL_L_LPC5,BL_L_LPF,BL_L_LPR1,BL_L_LPR2,BL_L_LPR3, _
	BL_L_LPR4,BL_L_LPR5,BL_L_LPR6,BL_L_LRI,BL_L_LRO,BL_L_LS1,BL_L_LS2,BL_L_LS3,BL_L_LS4,BL_L_LS5,BL_L_LS6,BL_L_LSA,BL_L_LSC1,BL_L_LSC2,BL_L_LSC3,BL_L_LSC4,BL_L_LSL,BL_L_Lspot1,BL_L_Lspot2, _
	BL_L_LSR,BL_L_LSwC1,BL_L_LSwC2,BL_L_LSwC3,BL_L_LSwL1,BL_L_LSwL2,BL_L_LTW1,BL_L_LTW2,BL_L_LTW3,BL_L_LTW4,BL_L_LW1,BL_L_LW2,BL_L_LW3,BL_L_LW4,BL_L_LW5,BL_L_LW6,BL_L_LW7,BL_L_LW8, _
	BL_L_LW9,BL_L_LWiz,BL_L_LX)

Dim LenControlLights: LenControlLights = UBound(BL_Array)


'*****************************************************************************************************************************************
'  ZVAR : Table Variables
'*****************************************************************************************************************************************

Const KeepLogs = False 		'set True to save debug log file
Const KeepDOFLogs = False 	'set True to save DOF logs. KeepLogs must also be True
Const PrintDebugs = True	'set True to print debug strings to debug window

' Constants and Global Variables

Const cGameName = "darkchaos"
Const TableName = "Dark Chaos"


Const BallSize = 50					'Ball size must be 50
Const BallMass = 1					'Ball mass must be 1
Const tnob = 5						'Total number of balls
Const lob = 0						'Locked balls


Const MaxPlayers = 4
Const MaxExtraBallsPerGame = 2

Dim PlayersPlayingGame
Dim CurrentPlayer : CurrentPlayer=0
Dim Credits
Dim TotalGamesPlayed

Dim Tilt
Dim MechTilt
Dim TiltSensitivity
Dim bTilted
Dim bMechTiltJustHit

Dim Balls2Eject 
Dim BallsOnPlayfield
Dim BallsLocked

Dim PointMultiplier
Dim PointMultiplierLimit
Dim EoBMultiplier
Dim SpinnerMultiplier
Dim Jackpot
Dim SuperJackpot


Dim bSkillshotActive
Dim bSkillshotAvailable
Dim bSkillShotReady

Dim bMysteryActive

Dim bAttractMode
Dim bEndCredits
Dim bGameInPlay
Dim bOnTheFirstBall

Dim bMultiBallMode
Dim bWizardMode

Dim bBallInPlungerLane 
Dim bBallSaverActive
Dim bBallSaverReady
Dim bMusicOn
Dim bJustStarted
Dim bStartOfNewBall

Dim bFlippersEnabled
Dim bAutoPlunger

Dim bInnerOrbRecentlyHit
Dim bEarthJustHit

Dim bIntroSegmentRan

Dim tablewidth: tablewidth = Table1.width
Dim tableheight: tableheight = Table1.height

Dim PlungerIM ' autofire plunger


'*******************************************
' ZPLA : Player state class 
'*******************************************

Class PlayerState

	Public Score
	Public BonusPoints
	Public ExtraBallsAwards
	Public TotalExtraBallsAwarded
	Public BallsRemaining

	Public NumProtonRounds
	Public NumClusterRounds
	Public NumMoonRounds
	Public NumProtonLoaded
	Public NumClusterLoaded
	Public NumMoonLocked
	Public NumRepairHits
	Public Health

    Public WaveTime
    Public MaxWaveTime
    Public CurrentWave
    Public LastWaveCompleted
    Public bInWave

	Public bShieldsOn

	Public SavedLampStates(150)
	Public SavedLampColors(150)
	
	Private xx

	Public Sub Class_Initialize 
		Reset
	End Sub


	Public Sub Reset
		Score = 0
		BonusPoints = 0
		ExtraBallsAwards = 0
		TotalExtraBallsAwarded = 0
		BallsRemaining = 3

		NumProtonRounds = 1
		NumClusterRounds = 1
		NumMoonRounds = 1
		NumProtonLoaded = 0
		NumClusterLoaded = 0
		NumMoonLocked = 0
		NumRepairHits = 0
		Health = 9

        WaveTime = 0
        MaxWaveTime = 60
        CurrentWave = 0
        LastWaveCompleted = 0
        bInWave = False
	
		bShieldsOn = False

		for xx = 0 to 150 : SavedLampStates(xx) = 0 : next
		for xx = 0 to 150 : SavedLampColors(xx) = ColorRGB("white") : next


		SavedLampColors(LampNumber(LCC1)) = ColorRGB(ClusterColor)
		SavedLampColors(LampNumber(LCC2)) = ColorRGB(ClusterColor)
		SavedLampColors(LampNumber(LCC3)) = ColorRGB(ClusterColor)

		SavedLampColors(LampNumber(LTW1)) = ColorRGB(TimeWarpColor)
		SavedLampColors(LampNumber(LTW2)) = ColorRGB(TimeWarpColor)
		SavedLampColors(LampNumber(LTW3)) = ColorRGB(TimeWarpColor)
		SavedLampColors(LampNumber(LTW4)) = ColorRGB(TimeWarpColor)

		SavedLampColors(LampNumber(LPC1)) = ColorRGB(ProtonColor)
		SavedLampColors(LampNumber(LPC2)) = ColorRGB(ProtonColor)
		SavedLampColors(LampNumber(LPC3)) = ColorRGB(ProtonColor)

		SavedLampColors(LampNumber(LF1)) = ColorRGB(FortifyColor)
		SavedLampColors(LampNumber(LF2)) = ColorRGB(FortifyColor)
		SavedLampColors(LampNumber(LF3)) = ColorRGB(FortifyColor)

		SavedLampColors(LampNumber(LSC1)) = ColorRGB(ShieldsColor)
		SavedLampColors(LampNumber(LSC2)) = ColorRGB(ShieldsColor)
		SavedLampColors(LampNumber(LSC3)) = ColorRGB(ShieldsColor)
		SavedLampColors(LampNumber(LSC4)) = ColorRGB(ShieldsColor)


		SavedLampStates(LampNumber(LPR1)) = 1
		SavedLampStates(LampNumber(LCR1)) = 1
		SavedLampStates(LampNumber(LMR1)) = 1

		SavedLampStates(LampNumber(LMLR)) = 2
		SavedLampColors(LampNumber(LMLR)) = ColorRGB(MoonMissleColor)

		SavedLampStates(LampNumber(LLO)) = 1
		SavedLampStates(LampNumber(LLI)) = 1
		SavedLampStates(LampNumber(LRI)) = 1
		SavedLampStates(LampNumber(LRO)) = 1
		SavedLampColors(LampNumber(LLO)) = ColorRGB(MoonMissleColor)
		SavedLampColors(LampNumber(LLI)) = ColorRGB(MoonMissleColor)
		SavedLampColors(LampNumber(LRI)) = ColorRGB(MoonMissleColor)
		SavedLampColors(LampNumber(LRO)) = ColorRGB(MoonMissleColor)

		SavedLampStates(LampNumber(LH1)) = 1
		SavedLampStates(LampNumber(LH2)) = 1
		SavedLampStates(LampNumber(LH3)) = 1
		SavedLampStates(LampNumber(LH4)) = 1
		SavedLampStates(LampNumber(LH5)) = 1
		SavedLampStates(LampNumber(LH6)) = 1
		SavedLampStates(LampNumber(LH7)) = 1
		SavedLampStates(LampNumber(LH8)) = 1
		SavedLampStates(LampNumber(LH9)) = 1
		SavedLampColors(LampNumber(LH1)) = ColorRGB(HealthColor789)
		SavedLampColors(LampNumber(LH2)) = ColorRGB(HealthColor789)
		SavedLampColors(LampNumber(LH3)) = ColorRGB(HealthColor789)
		SavedLampColors(LampNumber(LH4)) = ColorRGB(HealthColor789)
		SavedLampColors(LampNumber(LH5)) = ColorRGB(HealthColor789)
		SavedLampColors(LampNumber(LH6)) = ColorRGB(HealthColor789)
		SavedLampColors(LampNumber(LH7)) = ColorRGB(HealthColor789)
		SavedLampColors(LampNumber(LH8)) = ColorRGB(HealthColor789)
		SavedLampColors(LampNumber(LH9)) = ColorRGB(HealthColor789)

	End Sub 

	Public Sub SaveLamps
		for xx = 0 to LenControlLights : SavedLampStates(xx) = LampNrState(xx) : next
		for xx = 0 to LenControlLights : SavedLampColors(xx) = LampNrColor(xx) : next
	End Sub

	Public Sub RestoreLamps
		for xx = 0 to LenControlLights : SetLampNrState xx,SavedLampStates(xx) : next
		for xx = 0 to LenControlLights : SetLampNrColorRGB xx,SavedLampColors(xx) : next
	End Sub

	Public Sub RestorLamps_ClusterCharge
		xx = LampNumber(LCC1) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LCC2) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LCC3) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
	End Sub

	Public Sub RestorLamps_ProtonCharge
		xx = LampNumber(LPC1) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LPC2) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LPC3) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
	End Sub

	Public Sub RestorLamps_Mystery
		xx = LampNumber(LM1) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LM2) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LM3) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LM4) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LM5) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LMR) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
	End Sub

	Public Sub RestorLamps_Fortify
		xx = LampNumber(LF1) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LF2) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LF3) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
	End Sub

	Public Sub RestorLamps_SheildCharge
		xx = LampNumber(LSC1) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LSC2) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LSC3) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LSC4) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LSL) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LSR) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
	End Sub

	Public Sub RestorLamps_MoonLockLanes
		xx = LampNumber(LLO) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LLI) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LRI) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LRO) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
		xx = LampNumber(LMLR) : SetLampNrState xx,SavedLampStates(xx) : SetLampNrColorRGB xx,SavedLampColors(xx)
	End Sub


End Class



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

'Debug textbox
tbDebug.Timerenabled = True
Sub tbDebug_Timer
	me.text = Player(CurrentPlayer).BallsRemaining
End Sub




'***************************************************************
' VPIN WORKSHOP ADVANCED QUEUING SYSTEM - 0.4.2 ALPHA (UNTESTED)
'***************************************************************
' WHAT IS IT?
' The VPin Workshop Advanced Queuing System allows table authors
' to put sub routine calls in a queue without creating a bunch
' of timers. There are many use cases for this: queuing sequences
' for light shows and DMD scenes, delaying solenoids until the
' DMD is finished playing all its sequences (such as holding a
' ball in a scoop), managing what actions take priority over
' others (e.g. an extra ball sequence is probably more important
' than a small jackpot), and many more. 
'
' Unlike vpinmame timers, this system uses Scripting.Dictionary
' and a single timer to keep track of everything in the queue.
' This allows for better stability and a virtually unlimited
' number of items in the queue. It also allows for greater
' versatility, like pre-delays, queue delays, priorities, and
' even modifying items in the queue. However, it comes at the 
' cost of using more resources (CPU) and less time precision 
' on the delays. Furthermore, this does not support ROM
' functionality out of the box like vpinmame timers do.
'
' This is a very versatile system. I recommend reading all the 
' comments before you implement the queuing system into your 
' table.
'
' WHAT YOU NEED to use the queuing system:
' 1) Put this VBS file in your scripts folder.
' 2) Include this file via Scripting.FileSystemObject, and
'    ExecuteGlobal it.
' 3) Make one or more queues by constructing the vpwQueueManager:
'    Dim queue : Set queue = New vpwQueueManager
' 4) Create (or use) a timer that is always enabled and
'    preferably has an interval of 10 milliseconds. Use a
'    higher number for less time precision but less resource
'    use, and a lower number for higher time precision but
'    higher resource use. You only need one timer even if you
'    have multiple queues.
' 5) For each queue you created, call its Tick routine in
'    the timer's *_timer() routine:
'    queue.Tick
' 6) You're done! Refer to the routines in vpwQueueManager to
'    learn how to use the queuing system.
'***************************************************************

Dim QueueCallout : Set QueueCallout = New vpwQueueManager
Dim QueueDMD : Set QueueDMD = New vpwQueueManager

Sub QueueTimer_Timer
	QueueCallout.Tick
	'QueueDMD.Tick
End Sub

'===========================================
' vpwQueueManager
' This class manages a queue of 
' vpwQueueItems and executes them.
'===========================================
Class vpwQueueManager
	Public qItems ' A dictionary of vpwQueueItems in the queue
	Public qCurrentItem ' A string containing the qItems key of the item currently active / at the top of the queue
	Public qPaused ' Set to true to pause the queue tick timer and false to resume

	Private Sub Class_Initialize
		Set qItems = CreateObject("Scripting.Dictionary")
		qCurrentItem = ""
		qPaused = false
	End Sub

	'----------------------------------------------------------
	' vpwQueueManager.Tick
	' This is where all the magic happens! Call this method in
	' your timer's _timer routine to tick every item in the 
	' queue and execute / expire items when necessary. 
	' "Ticking" means to advance the internal clocks / counters
	' by 1. You'll learn more about this in the Add routine.
	'----------------------------------------------------------
	Public Sub Tick()
		' Don't tick anything if we are paused
		If qPaused Then
			Exit Sub
		End If

		If qItems.Count > 0 Then ' Don't waste precious resources if we have nothing in the queue

			' If no items are active, or the currently active item no longer exists, move to the next item in the queue.
			' (This is also a failsafe to ensure the queue continues to work even if an item gets manually deleted from the dictionary).
			If qCurrentItem = "" Or Not qItems.Exists(qCurrentItem) Then
				DoNextItem
			End If

			' Loop through each item in the queue
			Dim k, key
			k = qItems.Keys
			For Each key In k
				Dim item
				Set item = qItems.Item(key)

				' Increase the tick counters by 1
				item.PassiveTick
				If qCurrentItem = key Then item.ActiveTick

				' If a queue item expires, remove it
				If Not item.executed And item.timeToLive > 0 And item.ticksAfterQueue >= item.timeToLive Then
					qItems.Remove key

				' If a queue item was pre-queued and is ready to be considered as actually in the queue, re-add it without a pre-queue delay
				ElseIf item.preQueueDelay > 0 And item.ticksPreQueueDelay >= item.preQueueDelay Then
					qItems.Remove key
					item.preQueueDelay = 0
					qItems.Add key, item
				End If

				' If an executed item's post delay has passed, remove the item and execute the next one in the queue.
				If item.executed And item.postDelay > -1 And item.ticksPostDelay >= item.postDelay Then
					qItems.Remove key
					If qCurrentItem = key Then
						qCurrentItem = ""
						DoNextItem
						Exit For
					End If
				End If
			Next
		End If
	End Sub

	'----------------------------------------------------------
	' vpwQueueManager.DoNextItem
	' Goes to the next item in the queue and deletes the
	' currently active one.
	'----------------------------------------------------------
	Public Sub DoNextItem()
		' Remove the current item from the queue if it still exists
		If Not qCurrentItem = "" Then
			If qItems.Exists(qCurrentItem) Then qItems.Remove qCurrentItem
			qCurrentItem = ""
		End If

		If qItems.Count > 0 Then
			Dim k, key
			Dim nextItem
			Dim nextItemPriority
			Dim item
			nextItemPriority = 0
			nextItem = ""

			' Find which item needs to run next based on priority first, queue order second (ignore items with an active preQueueDelay)
			k = qItems.Keys
			For Each key In k
				Set item = qItems.Item(key)

				If item.preQueueDelay <= 0 And item.priority > nextItemPriority Then
					nextItem = key
					nextItemPriority = item.priority
				End If
			Next

			' Set item as current / active, and execute if it has no pre-delay (otherwise Tick will take care of pre-delay)
			If qItems.Exists(nextItem) Then
				qCurrentItem = nextItem
				Set item = qItems.Item(nextItem)
				If item.preDelay <= 0 Then item.Execute
			End If
		End If
	End Sub

	'----------------------------------------------------------
	' vpwQueueManager.Add
	' REQUIRES Class vpwQueueItem
	'
	' Add an item to the queue.
	'
	' PARAMETERS:
	'
	' key (string) - Unique name for this queue item
	' (warning: Specifying a key that already exists will
	'  overwrite the item in the queue)
	' 
	' qCallback (object|string) - An object to be called, 
	' or string to be executed globally, when this queue item 
	' runs. I highly recommend making sub routines for groups 
	' of things that should be executed by the queue so that 
	' your qCallback string does not get long, and you can 
	' easily organize your callbacks. Also, use double 
	' double-quotes when the call itself has quotes in it 
	' (VBScript escaping).
	' Example: "playsound ""Plunger"""
	'
	' priority (number) - Items in the queue will be executed 
	' in order from highest priority to lowest. Items with the
	' same priority will be executed in order according to 
	' when they were added to the queue. Use any number
	' greater than 0. My recommendation is to make a plan for
	' your table on how you will prioritize various types of
	' queue items and what priority number each type should
	' have. Also, you should reserve priority 1 (lowest) to
	' items which should wait until everything else in the
	' queue is done (such as ejecting a ball from a scoop).
	'
	' preQueueDelay (number) - The number of 
	' vpwQueueManager.Tick calls before the queue actually 
	' considers this item as "in the queue" (pretend you 
	' started a timer to add this item into the queue after 
	' this delay; this logically works in a similar way; the 
	' only difference is timeToLive is still considered even 
	' when an item is pre-queued.) Set to 0 to add to the 
	' queue immediately. NOTE: this should be less than 
	' timeToLive.
	'
	' preDelay (number) - The number of vpwQueueManager.Tick 
	' calls before the qCallback executes once this item is 
	' active (top) in the queue. Set this to 0 to immediately 
	' execute the qCallback when this item becomes active. 
	' NOTE: this should be less than timeToLive.
	'
	' postDelay (number) - After the qCallback executes, the 
	' number of vpwQueueManager.Tick calls before moving on to 
	' the next item in the queue. Set this to -1 to have an 
	' indefinite delay until vpwQueueManager.DoNextItem is 
	' called. This is useful where we do not know how long the 
	' delay should be. But we can call the above sub after some 
	' callback or event is triggered indicating it is time to 
	' move to the next item in the queue.
	'
	' timeToLive (number) - After this item is added to the 
	' queue, the number of vpwQueueManager.Tick calls before 
	' this queue item expires / is removed if the qCallback is 
	' not executed by then. Set to 0 to never expire. NOTE: If 
	' not 0, this should be greater than 
	' preDelay + preQueueDelay or the item will expire before 
	' the qCallback is executed.
	' Example use case: Maybe a player scored a jackpot, but
	' it would be awkward / irrelevant to play that jackpot
	' sequence if it hasn't played after a few seconds (e.g.
	' other items in the queue took priority).
	'
	' TIP: For preQueueDelay, preDelay, postDelay, and 
	' timeToLive, take the number of ticks specified and 
	' multiply it by the interval of the timer calling 
	' vpwQueueManager.Tick. This will equal about the number 
	' of milliseconds of delay you will have (note this is not 
	' precise because it depends on timing between when the 
	' delay starts and how long until the timer fires again 
	' for the next tick. This is why I generally recommend 
	' having a timer with a 10ms interval or less if your 
	' system can handle it; lower intervals yield more 
	' precision but also more resource use.)
	'
	' executeNow (boolean) - Specify true if this item 
	' should interrupt the queue and run immediately. This
	' will only happen, however, if the currently active item
	' has a priority less than or equal to the item you are
	' adding. Note this does not bypass preQueueDelay nor
	' preDelay if set.
	' Example: If a player scores an extra ball, you might
	' want that to interrupt everything else going on as it
	' is an important milestone.
	'----------------------------------------------------------
	Public Sub Add(key, qCallback, priority, preQueueDelay, preDelay, postDelay, timeToLive, executeNow)
		' Remove duplicate if it exists
		If qItems.Exists(key) Then
			qItems.Remove key
		End If

		' Construct the item class
		Dim newClass
		Set newClass = New vpwQueueItem
		With newClass
			.qCallback = qCallback
			.priority = priority
			.preQueueDelay = preQueueDelay
			.preDelay = preDelay
			.postDelay = postDelay
			.timeToLive = timeToLive
		End With

		' Determine execution stuff if this item does not have a pre-queue delay
		If preQueueDelay <= 0 Then
			If executeNow = true then
				' Make sure this item does not immediately execute if the current item has a higher priority
				If Not qCurrentItem = "" and qItems.Exists(qCurrentItem) Then 
					Dim item
					Set item = qItems.Item(qCurrentItem)
					If item.priority <= priority Then
						qItems.Remove qCurrentItem
							qCurrentItem = key
							If preDelay <= 0 Then newClass.Execute
					End If
				Else
					qCurrentItem = key
					If preDelay <= 0 Then newClass.Execute
				End If
			ElseIf qCurrentItem = key Then ' TODO: Is this really necessary?
				If preDelay <= 0 Then newClass.Execute
			End If
		End If

		qItems.Add key, newClass
	End Sub

	'----------------------------------------------------------
	' vpwQueueManager.Remove
	'
	' Removes an item from the queue. It is better to use this
	' than to remove the item from qItems directly as this sub
	' will also call DoNextItem to advance the queue if
	' the item removed was the active item.
	'
	' PARAMETERS:
	'
	' key (string) - Unique name of the queue item to remove.
	'----------------------------------------------------------
	Public Sub Remove(key)
		If qItems.Exists(key) Then
			qItems.Remove key
			If qCurrentItem = key Then DoNextItem ' Ensure the queue does not get stuck
		End If
	End Sub

	'----------------------------------------------------------
	' vpwQueueManager.RemoveAll
	'
	' Removes all items from the queue / clears the queue.
	' It is better to call this sub than to remove all items
	' from qItems directly because this sub cleans up the queue
	' to ensure it continues to work properly.
	'----------------------------------------------------------
	Public Sub RemoveAll()
		' Loop through each item in the queue and remove it
		Dim k, key
		k = qItems.Keys
		For Each key In k
			qItems.Remove key
		Next
		qCurrentItem = ""
	End Sub

End Class

'===========================================
' vpwQueueItem
' Represents a single item for the queue
' system. Do NOT use this class directly.
' Instead, use the vpwQueueManager.Add 
' routine.

' You can, however, access an individual
' item in the queue via 
' vpwQueueManager.qItems and then modify
' its properties while it is still in the 
' queue.
'===========================================
Class vpwQueueItem
	Public priority ' The item's set priority
	Public timeToLive ' The item's set timeToLive / expiration tick count requested
	Public preQueueDelay ' The item's pre-queue tick count requested
	Public preDelay ' The item's pre delay tick count requested
	Public postDelay ' The item's post delay tick count requested
	Public qCallback ' The item's callback object or string

	Public ticksAfterQueue ' The number of ticks that have passed since this item was added to the queue (compared with timeToLive for expiration)
	Public ticksPreQueueDelay ' The number of ticks that have passed in the preQueueDelay
	Public ticksPreDelay ' The number of ticks that have passed since the item became top / active in the queue (compared with preDelay to determine when to execute qCallback)
	Public ticksPostDelay ' The number of ticks that have passed since qCallback was executed (compared with postDelay to determine when the manager should move to the next item)
	Public executed ' Whether or not this item's qCallback was executed yet

	Private Sub Class_Initialize
		' Defaults
		priority = 0
		timeToLive = 0
		preQueueDelay = 0
		preDelay = 0
		postDelay = 0
		qCallback = ""

		' State checking
		executed = false
		ticksAfterQueue = 0
		ticksPreQueueDelay = 0
		ticksPreDelay = 0
		ticksPostDelay = 0
	End Sub

	'----------------------------------------------------------
	' vpwQueueItem.ActiveTick
	' Called when this item is the qCurrentItem in the manager
	' to advance preDelay ticks when applicable.
	'----------------------------------------------------------
	Public Sub ActiveTick()
		' Execute the qCallback once pre-delay has finished
		If Not executed Then
			If preDelay > 0 and ticksPreDelay < preDelay Then
				ticksPreDelay = ticksPreDelay + 1
			Else
				Execute
			End If
		End If
	End Sub

	'----------------------------------------------------------
	' vpwQueueItem.PassiveTick()
	' Called each time the vpwQueueManager's tick is called
	' to advance various tick counters in this item.
	'----------------------------------------------------------
	Public Sub PassiveTick()
		ticksAfterQueue = ticksAfterQueue + 1
		if preQueueDelay > 0 Then ticksPreQueueDelay = ticksPreQueueDelay + 1
		If executed Then ticksPostDelay = ticksPostDelay + 1
	End Sub

	'----------------------------------------------------------
	' vpwQueueItem.Execute
	' Executes the qCallback on this item if it was not yet
	' already executed.
	'----------------------------------------------------------
	Public Sub Execute()
		If executed then Exit Sub ' Do not allow an item's qCallback to ever execute more than one time

		' Execute qCallback
		If isObject(qCallback) Then
			Call qCallback(0)
		ElseIf varType(qCallback) = vbString Then
			If qCallback > "" Then ExecuteGlobal qCallback
		End If

		executed = true
	End Sub
End Class



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








'  ERROR LOGS by baldgeek
'*******************************

' Log File Usage:
'   WriteToLog "Label 1", "Message 1 "
'   WriteToLog "Label 2", "Message 2 "


Class DebugLogFile

    Private Filename
    Private TxtFileStream
    
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
            & LZ(Day(CurrTime),    2) & " " _
            & LZ(Hour(CurrTime),   2) & ":" _
            & LZ(Minute(CurrTime), 2) & ":" _
            & LZ(Second(CurrTime), 2) & ":" _
            & LZ(MilliSecs, 4)
    End Function

' *** Debug.Print the time with milliseconds, and a message of your choice
    Public Sub WriteToLog(label, message, code)
        Dim FormattedMsg, Timestamp
        'Filename = UserDirectory + "\" + cGameName + "_debug_log.txt"
		Filename = cGameName + "_debug_log.txt"
      
        Set TxtFileStream = CreateObject("Scripting.FileSystemObject").OpenTextFile(Filename, code, True)
        Timestamp  = GetTimeStamp     
        FormattedMsg = GetTimeStamp + " : " + label + " : " + message
        TxtFileStream.WriteLine FormattedMsg
        TxtFileStream.Close
		debug.print label & " : " & message
	End Sub

End Class

Sub WriteToLog(label, message)
	if KeepLogs Then
		Dim LogFileObj
		Set LogFileObj = New DebugLogFile
		LogFileObj.WriteToLog label, message, 8
	end if
End Sub

Sub NewLog()
	if KeepLogs Then
		Dim LogFileObj
		Set LogFileObj = New DebugLogFile
		LogFileObj.WriteToLog "NEW LOG", " ", 2
	end if
End Sub


Sub DebugPrint(str)
	If PrintDebugs Then debug.print str
End Sub





'*******************************************
'  ZINI : Table Initialization
'*******************************************

Dim PBall1, PBall2, PBall3, PBall4, PBall5, gBOT
Dim Player0, Player1, Player2, Player3, Player4, Player
Dim GrabMag

Sub Table1_Init

	' Debug logs
	NewLog
	WriteToLog "-------------", "TABLE INIT"

	' Controller
	LoadCoreFiles
	LoadEM

	'Ball initializations need for physical trough
	Set PBall1 = swTrough1.CreateSizedballWithMass(Ballsize/2,Ballmass)
	Set PBall2 = swTrough2.CreateSizedballWithMass(Ballsize/2,Ballmass)
	Set PBall3 = swTrough3.CreateSizedballWithMass(Ballsize/2,Ballmass)
	Set PBall4 = swTrough4.CreateSizedballWithMass(Ballsize/2,Ballmass)
	Set PBall5 = swTrough5.CreateSizedballWithMass(Ballsize/2,Ballmass)

	'*** Use gBOT in the script wherever BOT is normally used. Then there is no need for GetBalls calls ***
	gBOT = Array(PBall1, PBall2, PBall3, PBall4, PBall5)

	'Initialize Players
	Set Player0 = New PlayerState
	Set Player1 = New PlayerState
	Set Player2 = New PlayerState
	Set Player3 = New PlayerState
	Set Player4 = New PlayerState
	Player = Array(Player0,Player1,Player2,Player3,Player4)
	

	' Grab magnet
    Set GrabMag= New cvpmMagnet
    With GrabMag
        .InitMagnet GrabMagnet, 16  
        .GrabCenter = False
		.strength = 12
        .CreateEvents "GrabMag"
    End With

	'Impulse Plunger as autoplunger
	Const IMPowerSetting = 60 ' Plunger Power
	Const IMTime = 1.1        ' Time in seconds for Full Plunge
	Set plungerIM = New cvpmImpulseP
	With plungerIM
		.InitImpulseP swPlungerIM, IMPowerSetting, IMTime
		.Random 1.5
		.InitExitSnd SoundFX("mfx_Saucer_Kick", DOFContactors), SoundFX("mfx_Relay_On", DOFContactors)
		.CreateEvents "plungerIM"
	End With

	' Setup lamp assignments
	InitLampStates

	' Ball rolling sounds
	InitRolling

	' Flipper and sling corrections
	InitPolarity
	InitSlingCorrection

	' Turn off the bumper lights
	SetLampState LB1,0
	SetLampState LB2,0
	SetLampState LB3,0
	SetLampState LB4,0

	' Turn off the Flashers
	Flash1 False
	Flash2 False
	Flash3 False
	Flash4 False
	Flash5 False
	Flash6 False

	'Drop targets Init (all dropped)
    InitMeteors
	SolDT1 False
	SolDT2 False
	SolDT3 False
	SolDT4 False

	'Segmented Displays
	InitSegDisplays

	' Turn on the GI lights
	dim xx
	For Each xx in GI
		xx.state = 1
	Next

'	' Turn on light squencer
'	LightSeq001.updateinterval = 100
'	LightSeq001.play SeqRandom,2,,1000000


	' Game variables
	GameInit

	' Game
	LoadHS

	StartAttractMode
	'SetLampState LSpot1,1
	LStars.state = 1

	' Spin the asteroid
	'SolSpinAsteroid true

End Sub


Sub Table1_Exit
	WriteToLog "Table1_Exit", ""
	If B2SOn Then
		Controller.Pause = False
		Controller.Stop
	End If
End Sub


Sub Table1_Paused
	WriteToLog "Table1_Paused", ""
End Sub


Sub Table1_UnPaused
	WriteToLog "Table1_UnPaused", ""
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

    ' Sound volumes
    BackglassVol = Table1.Option("Game Sounds Volume", 0, 1, 0.01, 0.8, 1)
	CalloutVol = Table1.Option("Callout Volume", 0, 1, 0.01, 0.8, 1)
    MechVol = Table1.Option("Mechanical Sounds Volume", 0, 1, 0.01, 0.8, 1)
    BallRollVolume = Table1.Option("Ball Roll Volume", 0, 1, 0.01, 0.5, 1)
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
	b_base = 120 * BallBrightness + 135*gilvl	' orig was 120 and 70

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



'*******************************************
'  ZDRA : Drain, Trough, and Ball Release
'*******************************************


'TROUGH 
Sub swTrough1_Hit   : UpdateTrough : End Sub
Sub swTrough1_UnHit : UpdateTrough : End Sub
Sub swTrough2_Hit   : UpdateTrough : End Sub
Sub swTrough2_UnHit : UpdateTrough : End Sub
Sub swTrough3_Hit   : UpdateTrough : End Sub
Sub swTrough3_UnHit : UpdateTrough : End Sub
Sub swTrough4_Hit   : UpdateTrough : End Sub
Sub swTrough4_UnHit : UpdateTrough : End Sub
Sub swTrough5_Hit   : UpdateTrough : End Sub
Sub swTrough5_UnHit : UpdateTrough : End Sub


Sub UpdateTrough
	UpdateTroughTimer.Interval = 100
	UpdateTroughTimer.Enabled = 1
End Sub

Sub UpdateTroughTimer_Timer
	If swTrough1.BallCntOver = 0 Then swTrough2.kick 57, 10
	If swTrough2.BallCntOver = 0 Then swTrough3.kick 57, 10
	If swTrough3.BallCntOver = 0 Then swTrough4.kick 57, 10
	If swTrough4.BallCntOver = 0 Then swTrough5.kick 57, 10
	Me.Enabled = 0
End Sub


' DRAIN & RELEASE
Sub Drain_Hit 
	SwitchWasHit "Drain"
	HandleDrain
	RandomSoundDrain Drain 
	Drain.kick 57, 20
	'vpmTimer.AddTimer 500, "Drain.kick 57, 20'" 
End Sub


Sub SolRelease(enabled)
	If enabled Then 
		swTrough1.kick 90, 10		
		RandomSoundBallRelease swTrough1
	End If
End Sub



'*******************************************
'  ZKEY : Key Press Handling
'*******************************************

Sub Table1_KeyDown(ByVal keycode)

	' ANY TIME
	If keycode = AddCreditKey or keycode = AddCreditKey2 Then RandomCoinSound
	If keycode = PlungerKey Then Plunger.Pullback : SoundPlungerPull 
	If keycode = StartGameKey Then SoundStartButton : AudioCallout "boot"
	If keycode = LeftTiltKey Then 
		Nudge 90, 2
		ShipNudge 1, -1, ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
		SoundNudgeLeft
		CheckTilt
	End If
	If keycode = RightTiltKey Then 
		Nudge 270, 2
		ShipNudge 1, 1, ShipVelX, ShipTimeX, ShipVelX2, ShipMaxMovement, ShipAcc
		SoundNudgeRight
		CheckTilt
	End If
	If keycode = CenterTiltKey Then 
		Nudge 0, 3
		ShipNudge 1, -1, ShipVelY, ShipTimeY, ShipVelY2, ShipMaxMovement, ShipAcc
		SoundNudgeCenter
		CheckTilt
	End If

	'IN HIGH SCORE MODE
	If bHSModeActive = True Then
		EnterHighScoreKey(keycode)


	' IN GAME
	Elseif bGameInPlay Then

		If NOT bTilted Then
			If keycode = LeftFlipperKey and bFlippersEnabled Then
				FlipperActivate LeftFlipper, LFPress
				SolLFlipper True						'This would be called by the solenoid callbacks if using a ROM
				RotateLaneLightsLeft
			End If

			If keycode = RightFlipperKey and bFlippersEnabled Then
				FlipperActivate RightFlipper, RFPress
				SolRFlipper True						'This would be called by the solenoid callbacks if using a ROM
				RotateLaneLightsRight
			End If

			If keycode = LeftMagnaSave Then
				FireClusterRound
				LeftMagnaTimer.Enabled = True
			End If

			If keycode = RightMagnaSave Then
				LauchMoonMissiles
			End If


			If keycode = MechanicalTilt Then 
				SoundNudgeCenter
				CheckMechTilt
			End If
	
			If keycode = StartGameKey Then
				If((PlayersPlayingGame <MaxPlayers) AND(bOnTheFirstBall = True) ) Then
					PlayersPlayingGame = PlayersPlayingGame + 1

					If PlayersPlayingGame = 2 Then

					End If

					If PlayersPlayingGame = 3 Then

					End If

					If PlayersPlayingGame = 4 Then

					End If

					TotalGamesPlayed = TotalGamesPlayed + 1
					Savegp
				End If
			End If
		End if


	' NOT IN GAME
	Else
		If NOT bTilted Then
			If keycode = StartGameKey Then 
				If BallsOnPlayfield = 0 Then
					ResetForNewGame
				End If
			End If
		End If
	End If

End Sub



Sub Table1_KeyUp(ByVal keycode)

	' ANY TIME

	If KeyCode = PlungerKey Then
		Plunger.Fire
		If bBallInPlungerLane Then
			SoundPlungerReleaseBall()			'Plunger release sound when there is a ball in shooter lane
		Else
			SoundPlungerReleaseNoBall()			'Plunger release sound when there is no ball in shooter lane
		End If
	End If


	If keycode = LeftFlipperKey Then
		FlipperDeActivate LeftFlipper, LFPress
		SolLFlipper False						'This would be called by the solenoid callbacks if using a ROM
	End If

	If keycode = RightFlipperKey Then
		FlipperDeActivate RightFlipper, RFPress
		SolRFlipper False						'This would be called by the solenoid callbacks if using a ROM
	End If


	' IN GAME
	If bGameInPlay and not bHSModeActive Then

		If keycode = LeftMagnaSave Then
			LeftMagnaTimer.Enabled = False
		End If

	End If


End Sub



Sub LeftMagnaTimer_Timer
	LeftMagnaTimer.Enabled = False
	StartEarthKillerWizard
End Sub



'********************************************
' ZTLT : Tilt
'********************************************


'NOTE: The TiltDecreaseTimer Subtracts .01 from the "Tilt" variable every round
Sub CheckTilt                                    	'Called when table is nudged
	If Not bGameInPlay Then Exit Sub
	Tilt = Tilt + TiltSensitivity                	'Add to tilt count
	TiltDecreaseTimer.Enabled = True
	If(Tilt > TiltSensitivity) AND (Tilt <= 15) Then ShowTiltWarning 'show a warning
	If Tilt > 15 Then TiltMachine  					'If more than 15 then TILT the table
End Sub

Sub CheckMechTilt                                	'Called when mechanical tilt bob switch closed
	If Not bGameInPlay Then Exit Sub
	If Not bMechTiltJustHit Then
		MechTilt = MechTilt + 1               		'Add to tilt count
		If(MechTilt > 0) AND (MechTilt <= 2) Then ShowTiltWarning 'show a warning
		If MechTilt > 2 Then TiltMachine  			'If more than 2 then TILT the table
		bMechTiltJustHit = True
		TiltDebounceTimer.Enabled = True
	End If
End Sub

Sub ShowTiltWarning
	AudioCallout "tilt warning"
	'DMDBigText "TILT WARNING",77,1
	'pNote "CAREFUL!","TILT WARNING"
	'PlaySound "buzz"
End Sub

Sub TiltMachine
	AudioCallout "tilt"
	bTilted = True
	'DMDBigText "TILT!",77,1
	'pNote "TILT",""
	'PlaySound "powerdownn"
	'PuPlayer.playlistplayex pBackglass,"videotilt","",100,4
	DisableTable True
	TiltRecoveryTimer.Enabled = True 'start the Tilt delay to check for all the balls to be drained
End Sub


Sub TiltDecreaseTimer_Timer
	' DecreaseTilt
	If Tilt> 0 Then
		Tilt = Tilt - 0.1
	Else
		TiltDecreaseTimer.Enabled = False
	End If
End Sub


Sub TiltDebounceTimer_Timer
	bMechTiltJustHit = False
	TiltDebounceTimer.Enabled = False
End Sub


Sub DisableTable(Enabled)
	If Enabled Then
		'GiOff
		' Add tilt messages and sounds
		LeftFlipper.RotateToStart
		RightFlipper.RotateToStart
		RightFlipper1.RotateToStart
		LeftSlingshot.Disabled = 1
		RightSlingshot.Disabled = 1
		bFlippersEnabled = False
	Else
		'GiOn
		LeftSlingshot.Disabled = 0
		RightSlingshot.Disabled = 0
		bFlippersEnabled = True
	End If
End Sub


Sub TiltRecoveryTimer_Timer()
	If (BallsOnPlayfield = 0) Then
		EndOfBall
		TiltRecoveryTimer.Enabled = False
	End If
End Sub



'*******************************************
' ZATT : Attract mode
'*******************************************

Sub StartAttractMode

	bAttractMode = True
	StartRainbow AllControlLights
	StartLightSeqAttract

'	UltraDMDTimer.Enabled = 1
'	StartLightSeq
'	'ShowTableInfo
'	DMDintroloop
'	StartRainbow2 GI
'	DMDattract.Enabled = 1
'	intromover.enabled = true

End Sub

Sub StopAttractMode

	bAttractMode = False
	StopRainbow AllControlLights
	LightSeqAttract.StopPlay

'	DMDScoreNow
'	LightSeqAttract.StopPlay
'	LightSeqAttract2.StopPlay
'	StopRainbow2 GI
'	ResetAllLightsColor
'	DMDattract.Enabled = 0
'	intromover.enabled = false

	'StopSong
End Sub


' Rainbow Attract Lights
'*******************************************


Dim RGBStep, RGBFactor, rRed, rGreen, rBlue, RainbowLights

Sub StartRainbow(n)
	set RainbowLights = n
	RGBStep = 0
	RGBFactor = 5
	rRed = 255
	rGreen = 0
	rBlue = 0
	RainbowTimer.Enabled = True
End Sub

Sub StopRainbow(n)
	Dim obj
	RainbowTimer.Enabled = False
	For each obj in RainbowLights
		SetLampState obj,0          'off
		SetLampColor obj,"white"    'white
	Next
End Sub

Sub RainbowTimer_Timer 'rainbow led light color changing
	Dim obj
	Select Case RGBStep
		Case 0 'Green
			rGreen = rGreen + RGBFactor
			If rGreen > 255 then
				rGreen = 255
				RGBStep = 1
			End If
		Case 1 'Red
			rRed = rRed - RGBFactor
			If rRed < 0 then
				rRed = 0
				RGBStep = 2
			End If
		Case 2 'Blue
			rBlue = rBlue + RGBFactor
			If rBlue > 255 then
				rBlue = 255
				RGBStep = 3
			End If
		Case 3 'Green
			rGreen = rGreen - RGBFactor
			If rGreen < 0 then
				rGreen = 0
				RGBStep = 4
			End If
		Case 4 'Red
			rRed = rRed + RGBFactor
			If rRed > 255 then
				rRed = 255
				RGBStep = 5
			End If
		Case 5 'Blue
			rBlue = rBlue - RGBFactor
			If rBlue < 0 then
				rBlue = 0
				RGBStep = 0
			End If
	End Select
	For each obj in RainbowLights
		SetLampRGB obj,RGB(rRed, rGreen, rBlue)
	Next
End Sub


Sub StartLightSeqAttract()
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 50, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqCircleOutOn, 15, 2
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 25, 1
	LightSeqAttract.UpdateInterval = 10
	LightSeqAttract.Play SeqCircleOutOn, 15, 3
	LightSeqAttract.UpdateInterval = 5
	LightSeqAttract.Play SeqRightOn, 50, 1
	LightSeqAttract.UpdateInterval = 5
	LightSeqAttract.Play SeqLeftOn, 50, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqRightOn, 50, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 50, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqRightOn, 40, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 40, 1
	LightSeqAttract.UpdateInterval = 10
	LightSeqAttract.Play SeqRightOn, 30, 1
	LightSeqAttract.UpdateInterval = 10
	LightSeqAttract.Play SeqLeftOn, 30, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqRightOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqRightOn, 15, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 15, 1
	LightSeqAttract.UpdateInterval = 10
	LightSeqAttract.Play SeqCircleOutOn, 15, 3
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqRightOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 25, 1
	LightSeqAttract.UpdateInterval = 5
	LightSeqAttract.Play SeqStripe1VertOn, 50, 2
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqCircleOutOn, 15, 2
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqStripe1VertOn, 50, 3
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqRightOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqCircleOutOn, 15, 2
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqStripe2VertOn, 50, 3
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqRightOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 25, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqStripe1VertOn, 25, 3
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqStripe2VertOn, 25, 3
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 15, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 15, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 15, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 15, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqUpOn, 15, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqDownOn, 15, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqRightOn, 15, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 15, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqRightOn, 15, 1
	LightSeqAttract.UpdateInterval = 8
	LightSeqAttract.Play SeqLeftOn, 15, 1
End Sub

Sub LightSeqAttract_PlayDone
	StartLightSeqAttract
End Sub

'Sub LightSeqTilt_PlayDone()
'	LightSeqTilt.Play SeqAllOff
'End Sub
'
'Sub LightSeqSkillshot_PlayDone()
'	LightSeqSkillshot.Play SeqAllOff
'End Sub


'*******************************************
' ZLUT : LUT selection code
'*******************************************




'*******************************************
' ZSCO : Scoring
'*******************************************

Sub Addscore(points)
	If Not bTilted Then
		Player(CurrentPlayer).Score = Player(CurrentPlayer).Score + points*PointMultiplier
	End if
End Sub


Sub AddBonus(points)
	If Not bTilted Then
		Player(CurrentPlayer).BonusPoints  = Player(CurrentPlayer).BonusPoints  + points*PointMultiplier
	End if
End Sub


Sub AwardSpecial
	Credits = Credits + 1
	SaveCredits
	SolKnocker true
End Sub


Sub AwardExtraBall 
	Player(CurrentPlayer).TotalExtraBallsAwarded = Player(CurrentPlayer).TotalExtraBallsAwarded + 1
	if Player(CurrentPlayer).TotalExtraBallsAwarded <= MaxExtraBallsPerGame Then
		Player(CurrentPlayer).ExtraBallsAwards = Player(CurrentPlayer).ExtraBallsAwards + 1
		AudioCallout "extraball" 
		'DMDBigText "EXTRA BALL",250,1
		ChangeLamp LSA,1,"white",7,3,3,1
		ChangeLamp LEBR,0,"green",7,3,3,1
	End If 
End Sub





'*******************************************
' ZHIG : Highscores
'*******************************************

Const bResetHighscores = False

Dim bHSModeActive:bHSModeActive = False
Dim HighScore(3)
Dim HighScoreName(3)
Dim hschecker:hschecker = 0

Sub Loadhs

	If bResetHighscores Then
		HighScore(0) = 50000000
		HighScore(1) = 30000000
		HighScore(2) = 10000000

		HighScoreName(0) = "VPX"
		HighScoreName(1) = "VPX"
		HighScoreName(2) = "VPX"
		Savehs

	Else
		Dim x
		x = LoadValue(TableName, "HighScore1")
		If(x <> "") Then HighScore(0) = CDbl(x) Else HighScore(0) = 50000000 End If

		x = LoadValue(TableName, "HighScore1Name")
		If(x <> "") Then HighScoreName(0) = x Else HighScoreName(0) = "VPX" End If

		x = LoadValue(TableName, "HighScore2")
		If(x <> "") then HighScore(1) = CDbl(x) Else HighScore(1) = 30000000 End If

		x = LoadValue(TableName, "HighScore2Name")
		If(x <> "") then HighScoreName(1) = x Else HighScoreName(1) = "VPX" End If

		x = LoadValue(TableName, "HighScore3")
		If(x <> "") then HighScore(2) = CDbl(x) Else HighScore(2) = 10000000 End If

		x = LoadValue(TableName, "HighScore3Name")
		If(x <> "") then HighScoreName(2) = x Else HighScoreName(2) = "VPX" End If

		x = LoadValue(TableName, "HighScore4")
		If(x <> "") then HighScore(3) = CDbl(x) Else HighScore(3) = 10000000 End If

		x = LoadValue(TableName, "Credits")
		If(x <> "") then Credits = CInt(x) Else Credits = 0 End If

		x = LoadValue(TableName, "TotalGamesPlayed")
		If(x <> "") then TotalGamesPlayed = CInt(x) Else TotalGamesPlayed = 0 End If

		If hschecker = 0 Then
			CheckHSOrder
		End If
	End If

End Sub


Sub CheckHSOrder
	Dim hs3,hs2,hs1,hs0,hsn3,hsn2,hsn1,hsn0
	hschecker = 1
	hs3 = HighScore(3)
	hs2 = HighScore(2)
	hs1 = HighScore(1)
	hs0 = HighScore(0)
	hsn3 = HighScoreName(3)
	hsn2 = HighScoreName(2)
	hsn1 = HighScoreName(1)
	hsn0 = HighScoreName(0)
	If hs3 > hs0 Then
		HighScore(0) = hs3
		HighScoreName(0) = hsn3	
		HighScore(1) = hs0
		HighScoreName(1) = hsn0	
		HighScore(2) = hs1
		HighScoreName(2) = hsn1	
		HighScore(3) = hs2
		HighScoreName(3) = hsn2

	ElseIf hs3 > hs1 Then
		HighScore(0) = hs0
		HighScoreName(0) = hsn0	
		HighScore(1) = hs3
		HighScoreName(1) = hsn3	
		HighScore(2) = hs1
		HighScoreName(2) = hsn1	
		HighScore(3) = hs2
		HighScoreName(3) = hsn2
	ElseIf hs3 > hs2 Then
		HighScore(0) = hs0
		HighScoreName(0) = hsn0	
		HighScore(1) = hs1
		HighScoreName(1) = hsn1	
		HighScore(2) = hs3
		HighScoreName(2) = hsn3	
		HighScore(3) = hs2
		HighScoreName(3) = hsn2
	ElseIf hs3 < hs2 Then
		HighScore(0) = hs0
		HighScoreName(0) = hsn0	
		HighScore(1) = hs1
		HighScoreName(1) = hsn1	
		HighScore(2) = hs2
		HighScoreName(2) = hsn2	
		HighScore(3) = hs3
		HighScoreName(3) = hsn3
	End If

	Savehs
End Sub



Sub Savehs
	SaveValue TableName, "HighScore1", HighScore(0)
	SaveValue TableName, "HighScore1Name", HighScoreName(0)
	SaveValue TableName, "HighScore2", HighScore(1)
	SaveValue TableName, "HighScore2Name", HighScoreName(1)
	SaveValue TableName, "HighScore3", HighScore(2)
	SaveValue TableName, "HighScore3Name", HighScoreName(2)
	SaveValue TableName, "HighScore4", HighScore(3)
	SaveValue TableName, "HighScore4Name", HighScoreName(3)
End Sub



Sub SaveCredits
	SaveValue TableName, "Credits", Credits
End Sub



Sub Savegp
	SaveValue TableName, "TotalGamesPlayed", TotalGamesPlayed
	vpmtimer.addtimer 1000, "Loadhs'"
End Sub






' Initials

Dim hsEnteredName
Dim hsEnteredDigits(3)
Dim hsCurrentDigit
Dim hsValidLetters
Dim hsCurrentLetter
Dim hsLetterFlash

' Check the scores to see if you got one

Sub CheckHighscore()
	Dim tmp
	tmp = Player(CurrentPlayer).Score

	If tmp > HighScore(3) Then
		AwardSpecial
		HighScore(3) = tmp
		'enter player's name
		HighScoreEntryInit
	Else
		EndOfBallComplete
	End If
End Sub





Sub HighScoreEntryInit
	bHSModeActive = True
	'DMDBigText "HIGH SCORE!",77,1
	hsEnteredDigits(1) = "A"
	hsEnteredDigits(2) = " "
	hsEnteredDigits(3) = " "

	hsCurrentDigit = 1

	HighScoreDisplayName
	HighScorelabels	
End Sub

' flipper moving around the letters

Sub EnterHighScoreKey(keycode)
	If keycode = LeftFlipperKey Then
		If hsletter = 0 Then
			hsletter = 26
		Else
			hsLetter = hsLetter - 1
		End If
		HighScoreDisplayName
	End If

	If keycode = RightFlipperKey Then
		If hsletter = 26 Then
			hsletter = 0
		Else
			hsLetter = hsLetter + 1
		End If
		HighScoreDisplayName
	End If

	If keycode = StartGameKey or keycode = PlungerKey Then
		If hsCurrentDigit = 3 Then
			If hsletter = 0 Then
				hsCurrentDigit = hsCurrentDigit -1
			Else
				AssignLetter
				vpmtimer.addtimer 700, "HighScoreCommitName'"
			End If
		End If
		If hsCurrentDigit < 3 Then
			If hsletter = 0 Then
				If hsCurrentDigit = 1 Then
				Else
					hsCurrentDigit = hsCurrentDigit -1
				End If
			Else
				AssignLetter
				hsCurrentDigit = hsCurrentDigit + 1
				HighScoreDisplayName

			End If
		End If
	End if
End Sub

Dim hsletter
hsletter = 1

dim hsdigit:hsdigit = 1

Sub AssignLetter
	if hscurrentdigit = 1 Then
		hsdigit = 1
	End If
	if hscurrentdigit = 2 Then
		hsdigit = 2
	End If
	if hscurrentdigit = 3 Then
		hsdigit = 3
	End If
	If hsletter = 1 Then 
		hsEnteredDigits(hsdigit) = "A"
	End If
	If hsletter = 2 Then 
		hsEnteredDigits(hsdigit) = "B"
	End If
	If hsletter = 3 Then 
		hsEnteredDigits(hsdigit) = "C"
	End If
	If hsletter = 4 Then 
		hsEnteredDigits(hsdigit) = "D"
	End If
	If hsletter = 5 Then 
		hsEnteredDigits(hsdigit) = "E"
	End If
	If hsletter = 6 Then 
		hsEnteredDigits(hsdigit) = "F"
	End If
	If hsletter = 7 Then 
		hsEnteredDigits(hsdigit) = "G"
	End If
	If hsletter = 8 Then 
		hsEnteredDigits(hsdigit) = "H"
	End If
	If hsletter = 9 Then 
		hsEnteredDigits(hsdigit) = "I"
	End If
	If hsletter = 10 Then 
		hsEnteredDigits(hsdigit) = "J"
	End If
	If hsletter = 11 Then 
		hsEnteredDigits(hsdigit) = "K"
	End If
	If hsletter = 12 Then 
		hsEnteredDigits(hsdigit) = "L"
	End If
	If hsletter = 13 Then 
		hsEnteredDigits(hsdigit) = "M"
	End If
	If hsletter = 14 Then 
		hsEnteredDigits(hsdigit) = "N"
	End If
	If hsletter = 15 Then 
		hsEnteredDigits(hsdigit) = "O"
	End If
	If hsletter = 16 Then 
		hsEnteredDigits(hsdigit) = "P"
	End If
	If hsletter = 17 Then 
		hsEnteredDigits(hsdigit) = "Q"
	End If
	If hsletter = 18 Then 
		hsEnteredDigits(hsdigit) = "R"
	End If
	If hsletter = 19 Then 
		hsEnteredDigits(hsdigit) = "S"
	End If
	If hsletter = 20 Then 
		hsEnteredDigits(hsdigit) = "T"
	End If
	If hsletter = 21 Then 
		hsEnteredDigits(hsdigit) = "U"
	End If
	If hsletter = 22 Then 
		hsEnteredDigits(hsdigit) = "V"
	End If
	If hsletter = 23 Then 
		hsEnteredDigits(hsdigit) = "W"
	End If
	If hsletter = 24 Then 
		hsEnteredDigits(hsdigit) = "X"
	End If
	If hsletter = 25 Then 
		hsEnteredDigits(hsdigit) = "Y"
	End If
	If hsletter = 26 Then 
		hsEnteredDigits(hsdigit) = "Z"
	End If

End Sub

Sub HighScorelabels
'	PuPlayer.LabelSet pBackglass,"HighScore","YOU GOT A\rHIGH SCORE!",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL1","A",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL2"," ",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL3"," ",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL4",Score(CurrentPlayer),1,""
	hsletter = 1
End Sub

Sub HighScoreDisplayName

'	Select case hsLetter
'		Case 0
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","<",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","<",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","<",1,""
'		Case 1
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","A",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","A",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","A",1,""
'		Case 2
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","B",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","B",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","B",1,""
'		Case 3
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","C",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","C",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","C",1,""
'		Case 4
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","D",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","D",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","D",1,""
'		Case 5
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","E",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","E",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","E",1,""
'		Case 6
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","F",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","F",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","F",1,""
'		Case 7
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","G",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","G",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","G",1,""
'		Case 8
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","H",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","H",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","H",1,""
'		Case 9
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","I",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","I",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","I",1,""
'		Case 10
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","J",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","J",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","J",1,""
'		Case 11
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","K",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","K",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","K",1,""
'		Case 12
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","L",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","L",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","L",1,""
'		Case 13
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","M",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","M",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","M",1,""
'		Case 14
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","N",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","N",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","N",1,""
'		Case 15
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","O",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","O",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","O",1,""
'		Case 16
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","P",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","P",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","P",1,""
'		Case 17
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","Q",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","Q",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","Q",1,""
'		Case 18
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","R",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","R",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","R",1,""
'		Case 19
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","S",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","S",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","S",1,""
'		Case 20
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","T",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","T",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","T",1,""
'		Case 21
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","U",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","U",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","U",1,""
'		Case 22
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","V",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","V",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","V",1,""
'		Case 23
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","W",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","W",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","W",1,""
'		Case 24
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","X",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","X",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","X",1,""
'		Case 25
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","Y",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","Y",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","Y",1,""
'		Case 26
'			if(hsCurrentDigit = 1) then PuPlayer.LabelSet pBackglass,"HighScoreL1","Z",1,""
'			if(hsCurrentDigit = 2) then PuPlayer.LabelSet pBackglass,"HighScoreL2","Z",1,""
'			if(hsCurrentDigit = 3) then PuPlayer.LabelSet pBackglass,"HighScoreL3","Z",1,""
'	End Select
End Sub

' post the high score letters


Sub HighScoreCommitName
	hsEnteredName = hsEnteredDigits(1) & hsEnteredDigits(2) & hsEnteredDigits(3)
	HighScoreName(3) = hsEnteredName
	CheckHSOrder
	EndOfBallComplete
'	PuPlayer.LabelSet pBackglass,"HighScore","",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL1","",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL2"," ",1,""
'	PuPlayer.LabelSet pBackglass,"HighScoreL3"," ",1,""
End Sub



'*******************************************
'  ZFLP : Flippers
'*******************************************

Const ReflipAngle = 20

' Flipper Solenoid Callbacks (these subs mimics how you would handle flippers in ROM based tables)
Sub SolLFlipper(Enabled)
	If Enabled Then
		LF.Fire  'leftflipper.rotatetoend

		If LeftFlipper.currentangle < LeftFlipper.endangle + ReflipAngle Then 
			RandomSoundReflipUpLeft LeftFlipper
		Else 
			SoundFlipperUpAttackLeft LeftFlipper
			RandomSoundFlipperUpLeft LeftFlipper
		End If		
	Else
		LeftFlipper.RotateToStart
		If LeftFlipper.currentangle < LeftFlipper.startAngle - 5 Then
			RandomSoundFlipperDownLeft LeftFlipper
		End If
		FlipperLeftHitParm = FlipperUpSoundLevel
	End If
End Sub

Sub SolRFlipper(Enabled)
	If Enabled Then
		RF.Fire 'RightFlipper.rotatetoend
		RightFlipper1.rotatetoend
		If RightFlipper.currentangle > RightFlipper.endangle - ReflipAngle Then
			RandomSoundReflipUpRight RightFlipper
		Else 
			SoundFlipperUpAttackRight RightFlipper
			RandomSoundFlipperUpRight RightFlipper
		End If
	Else
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
'  ZBMP : Bumpers
'*******************************************
Sub Bumper1_Hit 
	SwitchWasHit "Bumper1"
	CheckRepair
	Addscore 250
	RandomSoundBumperTop Bumper1
	SetLampState LB1,1
	Bumper1.timerenabled = True
End Sub

Sub Bumper1_Timer
	SetLampState LB1,0
End Sub

Sub Bumper2_Hit 
	SwitchWasHit "Bumper2"
	CheckRepair
	Addscore 250
	RandomSoundBumperMiddle Bumper2
	SetLampState LB2,1
	Bumper2.timerenabled = True
End Sub

Sub Bumper2_Timer
	SetLampState LB2,0
End Sub

Sub Bumper3_Hit 
	SwitchWasHit "Bumper3"
	CheckRepair
	Addscore 250
	RandomSoundBumperBottom Bumper3
	SetLampState LB3,1
	Bumper3.timerenabled = True
End Sub

Sub Bumper3_Timer
	SetLampState LB3,0
End Sub

Sub Bumper4_Hit 
	SwitchWasHit "Bumper4"
	CheckRepair
	Addscore 250
	RandomSoundBumperBottom Bumper4
	SetLampState LB4,1
	Bumper4.timerenabled = True
End Sub

Sub Bumper4_Timer
	SetLampState LB4,0
End Sub





'****************************************************************
'  ZSLN : Slingshots
'****************************************************************

Dim LStep : LStep = 0 : LeftSlingShot.TimerEnabled = 1
Dim RStep : RStep = 0 : RightSlingShot.TimerEnabled = 1

Sub RightSlingShot_Slingshot
	SwitchWasHit "RightSlingShot"
	Flash6 True
	RS.VelocityCorrect(ActiveBall)
	Addscore 10
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



Sub LeftSlingShot_Slingshot
	SwitchWasHit "LeftSlingShot"
	Flash5 True
	LS.VelocityCorrect(ActiveBall)
	Addscore 10
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




'*******************************************
'  ZSOL : Other Solenoids
'*******************************************



'  Kickers, Saucers
'*******************************************

'To include some randomness in the Kicker's kick, use the following parmeters
Const KickerAngleTol = 0.4   		'Number of degrees the kicker angle varies around its intended direction
Const KickerStrengthTol = 3   	'Number of strength units the kicker varies around its intended strength

Sub SolKickerScoop(Enabled)
	'DebugPrint "SolGrabMagnet " & Enabled
	if Enabled then
		SoundSaucerKick 1, KickerScoop
		KickerScoop.Kick 13.8+RndNum(-KickerAngleTol,KickerAngleTol), 75+RndNum(-KickerStrengthTol,KickerStrengthTol)
	end if
End Sub

Sub KickerScoop_Hit
	Addscore 5000
	SoundSaucerLock
	KickerScoop.timerenabled=True
	CheckMysteryAward
	CheckExtraBallAward
End Sub

Sub KickerScoop_Timer
	' Kick out ball
	If bMysteryActive Then
		bMysteryActive = False
		bWaveTimerPaused = False
	End If
	SolKickerScoop True
	KickerScoop.timerenabled=False
End Sub



'  Grab Magnet
'*******************************************

Sub SolGrabMagnet(Enabled)
	'DebugPrint "SolGrabMagnet " & Enabled
	if Enabled then
		GrabMag.MagnetOn = 1
		GrabMagnetTimer.Enabled = true
	Else
		GrabMag.MagnetOn = 0
	end if
end sub

Sub GrabMagnetTimer_Timer
	GrabMagnetTimer.Enabled = false
	SolGrabMagnet False
End Sub



'  Diverters
'*******************************************


Sub SolDiverterPin(Enabled)
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


Sub SolLockPin(Enabled)
	Dim BP
	If Enabled Then
		LockPin.isdropped=False
		SoundSaucerKick 0,swLock1
		For each BP in BP_LockPin: BP.transz = 0: Next
	Else
		LockPin.isdropped=True
		SoundSaucerKick 0,swLock1
		For each BP in BP_LockPin: BP.transz = -50: Next  'FIXME  check height. Animate with flipper?
	End If
End Sub



'  Knocker
'*******************************************

Sub SolKnocker(Enabled)
	If enabled Then
		KnockerSolenoid 'Add knocker position object
	End If
End Sub



'  Drop Targets
'*******************************************

Sub SolDT1(Enabled)
	If Enabled Then
		DTRaise 1
	Else
		DTDrop 1
	End If 
End Sub

Sub SolDT2(Enabled)
	If Enabled Then
		DTRaise 2
	Else
		DTDrop 2
	End If 
End Sub

Sub SolDT3(Enabled)
	If Enabled Then
		DTRaise 3
	Else
		DTDrop 3
	End If 
End Sub

Sub SolDT4(Enabled)
	If Enabled Then
		DTRaise 4
	Else
		DTDrop 4
	End If 
End Sub




'*******************************************
' ZSWI : Switch hits and handling
'*******************************************



Sub swPlunger1_Hit
	SwitchWasHit "swPlunger1"
	bBallInPlungerLane = True
	If bAutoPlunger or SwitchRecentlyHit("swPlunger2") or Not bStartOfNewBall Then
		autoplungerdelay.enabled = True
	End If
	If bSkillShotReady Then
		UpdateSkillshot
	End If
End Sub

Sub swPlunger1_UnHit
	bBallInPlungerLane = False
	If bSkillShotReady Then
		ResetSkillShotTimer.Enabled = True
	End If
	If bStartOfNewBall Then
		bStartOfNewBall = False
		bWaveTimerPaused = False
	End If
End Sub


Sub swPlunger2_Hit
	SwitchWasHit "swPlunger2"
	If (bBallSaverReady = True) And (bBallSaverActive = False) Then
		EnableBallSaver 10
	End If
End Sub



Sub swLeftOutlane_Hit
	SwitchWasHit "swLeftOutlane"
	If Player(CurrentPlayer).NumMoonLocked < 2 and Not Player(CurrentPlayer).bInWave Then ChangeLamp LLO,1,MoonMissleColor,7,3,3,1
	CheckMoonLockReady
	If Player(CurrentPlayer).bShieldsOn and Not bBallSaverActive Then 
		AddMultiball 1
		ShieldsDown
	End If
End Sub

Sub swLeftInlane_Hit
	SwitchWasHit "swLeftInlane"
	If Player(CurrentPlayer).NumMoonLocked < 2 and Not Player(CurrentPlayer).bInWave Then ChangeLamp LLI,1,MoonMissleColor,7,3,3,1
	CheckMoonLockReady
	activeball.vely = activeball.vely*0.9
	activeball.angmomz = 0
End Sub

Sub swRightInlane_Hit
	SwitchWasHit "swRightInlane"
	If Player(CurrentPlayer).NumMoonLocked < 2 and Not Player(CurrentPlayer).bInWave Then ChangeLamp LRI,1,MoonMissleColor,7,3,3,1
	CheckMoonLockReady
	activeball.vely = activeball.vely*0.9
	activeball.angmomz = 0
End Sub

Sub swRightOutlane_Hit
	SwitchWasHit "swRightOutlane"
	If Player(CurrentPlayer).NumMoonLocked < 2 and Not Player(CurrentPlayer).bInWave Then ChangeLamp LRO,1,MoonMissleColor,7,3,3,1
	CheckMoonLockReady
	If Player(CurrentPlayer).bShieldsOn and Not bBallSaverActive Then 
		AddMultiball 1
		ShieldsDown
	End If
End Sub



Sub swLeftBumper1_Hit
	SwitchWasHit "swLeftBumper1"
	If SwitchRecentlyHit("swLeftBumper2") Then 
		DebugPrint "Left SemiOrb - Down"
		AwardSecretSkillShot
		CheckCombo
	End If
End Sub

Sub swLeftBumper2_Hit
	SwitchWasHit "swLeftBumper2"
	If SwitchRecentlyHit("swLeftBumper1") Then 
		DebugPrint "Left SemiOrb - Up"
		CheckCombo
	End If
End Sub

Sub swCenterOrb1_Hit
	SwitchWasHit "swCenterOrb1"
	If SwitchRecentlyHit("swCenterOrb3") and SwitchRecentlyHit("swCenterOrb2")  Then 
		DebugPrint "Center Orbit - Counter Clockwise"
		CheckProtonCharge
		CheckCombo
		FireProtonRound
		BlinkTrail baProtonChargeCCW,ProtonColor,2,5,10,5,1  
	End If
End Sub

Sub swCenterOrb2_Hit
	SwitchWasHit "swCenterOrb2"
End Sub

Sub swCenterOrb3_Hit
	SwitchWasHit "swCenterOrb3"
	If SwitchRecentlyHit("swCenterOrb1") and SwitchRecentlyHit("swCenterOrb2")  Then 
		DebugPrint "Center Orbit - Clockwise"
		CheckProtonCharge
		CheckCombo
		FireProtonRound
		BlinkTrail baProtonChargeCW,ProtonColor,2,5,10,5,1  
	End If
End Sub

Sub swInnerOrb1_Hit
	SwitchWasHit "swInnerOrb1"
	ResetSkillShotTimer_Timer
End Sub


Sub swInnerOrb2_Hit
	SwitchWasHit "swInnerOrb2"
	If SwitchRecentlyHit("swInnerOrb1") Then 
		DebugPrint "Inner Orbit"
		bInnerOrbRecentlyHit = True
		vpmTimer.AddTimer 500,"bInnerOrbRecentlyHit = False'"
		CheckProtonCharge
		CheckCombo
	End If
End Sub

Sub swLeftOrb1_Hit
	SwitchWasHit "swLeftOrb1"
End Sub

Sub swLeftOrb2_Hit
	SwitchWasHit "swLeftOrb2"
	If SwitchRecentlyHit("swLeftOrb1") Then 
		DebugPrint "Left Outer Orbit"
		CheckClusterCharge
		CheckCombo
	End If
End Sub

Sub swRightOrb1_Hit
	SwitchWasHit "swRightOrb1"
End Sub

Sub swRightOrb2_Hit
	SwitchWasHit "swRightOrb2"
	bInnerOrbRecentlyHit = False
	If SwitchRecentlyHit("swRightOrb1") Then 
		DebugPrint "Right Outer Orbit"
		CheckFortify
		CheckCombo
	End If
End Sub




'  Ramp Triggers
'*******************************************
Sub swRamp1_hit
	SwitchWasHit "swRamp1"
	If activeball.vely<0 Then
		WireRampOn True 'plastic
	Else
		WireRampOff
	End If
End Sub

Sub swRamp2_hit
	SwitchWasHit "swRamp2"
	WireRampOff
	WireRampOn False 'wire
	CheckTimeWarp
	CheckCombo
	If Player(CurrentPlayer).bInWave Then AudioCallout "jackpot proton" : ReloadProtonRound
End Sub

Sub swRamp3_hit
	SwitchWasHit "swRamp3"
	WireRampOff
End Sub

Sub swRamp4_hit
	SwitchWasHit "swRamp4"
	If activeball.vely<0 Then
		WireRampOn True 'plastic
	Else
		WireRampOff
	End If
End Sub

Sub swRamp5_hit
	SwitchWasHit "swRamp5"
	WireRampOff
End Sub

Sub swRamp6_hit
	SwitchWasHit "swRamp6"
	WireRampOn True 'plastic
End Sub

Sub swRamp7_hit
	SwitchWasHit "swRamp7"
	WireRampOff
	WireRampOn False 'wire
	CheckMoonLock
	CheckCombo
	If Player(CurrentPlayer).bInWave Then AudioCallout "jackpot cluster" : ReloadClusterRound 
End Sub

Sub swRamp8_hit
	SwitchWasHit "swRamp8"
	WireRampOff
End Sub

Sub swRamp9_hit
	WireRampOn False 'wire
End Sub

'  Lock Triggers
'*******************************************


Sub swLock1_Hit
	SwitchWasHit "swLock1"
	swLock1State = 1
	swLock1.Timerenabled = True
End Sub

Sub swLock1_UnHit
	swLock1State = 0
	swLock1.Timerenabled = False
End Sub

Sub swLock2_Hit
	SwitchWasHit "swLock2"
	swLock2State = 1
	swLock2.Timerenabled = True
End Sub

Sub swLock2_UnHit
	swLock2State = 0
	swLock2.Timerenabled = False
End Sub

Sub swLock3_Hit
	SwitchWasHit "swLock3"
	swLock3State = 1
	swLock3.Timerenabled = True
End Sub

Sub swLock3_UnHit
	swLock3State = 0
	swLock3.Timerenabled = False
End Sub



'  Switch Hit Timing Handler
'*******************************************

Dim SwitchHitTimes(50)
Const SwitchHitRecentlyTime = 500  'this threshold determines if a swtich was recently hit

Sub SwitchWasHit(swName)
	Select Case swName
		Case "swPlunger1" 			: SwitchHitTimes(1) = gametime
		Case "swPlunger2" 			: SwitchHitTimes(2) = gametime
		Case "swLeftOutlane" 		: SwitchHitTimes(3) = gametime
		Case "swLeftInlane" 		: SwitchHitTimes(4) = gametime
		Case "swRightInlane" 		: SwitchHitTimes(5) = gametime
		Case "swRightOutlane" 		: SwitchHitTimes(6) = gametime
		Case "swLeftBumper1" 		: SwitchHitTimes(7) = gametime
		Case "swLeftBumper2" 		: SwitchHitTimes(8) = gametime
		Case "swCenterOrb1" 		: SwitchHitTimes(9) = gametime
		Case "swCenterOrb2" 		: SwitchHitTimes(10) = gametime
		Case "swCenterOrb3" 		: SwitchHitTimes(11) = gametime
		Case "swInnerOrb1" 			: SwitchHitTimes(12) = gametime
		Case "swInnerOrb2" 			: SwitchHitTimes(13) = gametime
		Case "swLeftOrb1" 			: SwitchHitTimes(14) = gametime
		Case "swLeftOrb2" 			: SwitchHitTimes(15) = gametime
		Case "swRightOrb1" 			: SwitchHitTimes(16) = gametime
		Case "swRightOrb2" 			: SwitchHitTimes(17) = gametime
		Case "KickerScoop" 			: SwitchHitTimes(18) = gametime
		Case "swRamp1" 				: SwitchHitTimes(19) = gametime
		Case "swRamp2" 				: SwitchHitTimes(20) = gametime
		Case "swRamp3" 				: SwitchHitTimes(21) = gametime
		Case "swRamp4" 				: SwitchHitTimes(22) = gametime
		Case "swRamp5" 				: SwitchHitTimes(23) = gametime
		Case "swRamp6" 				: SwitchHitTimes(24) = gametime
		Case "swRamp7" 				: SwitchHitTimes(25) = gametime
		Case "swRamp8" 				: SwitchHitTimes(26) = gametime
		Case "TargetMystery1"		: SwitchHitTimes(27) = gametime
		Case "TargetMystery2"		: SwitchHitTimes(28) = gametime
		Case "TargetMystery3"		: SwitchHitTimes(29) = gametime
		Case "TargetMystery4"		: SwitchHitTimes(30) = gametime
		Case "TargetMystery5"		: SwitchHitTimes(31) = gametime
		Case "TargetShield1"		: SwitchHitTimes(32) = gametime
		Case "TargetShield2"		: SwitchHitTimes(33) = gametime
		Case "TargetShield3"		: SwitchHitTimes(34) = gametime
		Case "TargetShield4"		: SwitchHitTimes(35) = gametime
		Case "DTMeteor1"			: SwitchHitTimes(36) = gametime
		Case "DTMeteor2"			: SwitchHitTimes(37) = gametime
		Case "DTMeteor3"			: SwitchHitTimes(38) = gametime
		Case "DTMeteor4"			: SwitchHitTimes(39) = gametime
		Case "Bumper1"				: SwitchHitTimes(40) = gametime
		Case "Bumper2"				: SwitchHitTimes(41) = gametime
		Case "Bumper3"				: SwitchHitTimes(42) = gametime
		Case "Bumper4"				: SwitchHitTimes(43) = gametime
		Case "RightSlingShot"		: SwitchHitTimes(44) = gametime
		Case "LeftSlingShot"		: SwitchHitTimes(45) = gametime
		Case "swLock1" 				: SwitchHitTimes(46) = gametime
		Case "swLock2" 				: SwitchHitTimes(47) = gametime
		Case "swLock3" 				: SwitchHitTimes(48) = gametime
	End Select
End Sub

Function SwitchRecentlyHit(swName)
	dim delta : delta = SwitchHitRecentlyTime + 1
	Select Case swName
		Case "swPlunger1" 			: delta = gametime - SwitchHitTimes(1)
		Case "swPlunger2" 			: delta = gametime - SwitchHitTimes(2)
		Case "swLeftOutlane" 		: delta = gametime - SwitchHitTimes(3)
		Case "swLeftInlane" 		: delta = gametime - SwitchHitTimes(4)
		Case "swRightInlane" 		: delta = gametime - SwitchHitTimes(5)
		Case "swRightOutlane" 		: delta = gametime - SwitchHitTimes(6)
		Case "swLeftBumper1" 		: delta = gametime - SwitchHitTimes(7)
		Case "swLeftBumper2" 		: delta = gametime - SwitchHitTimes(8)
		Case "swCenterOrb1" 		: delta = gametime - SwitchHitTimes(9)
		Case "swCenterOrb2" 		: delta = gametime - SwitchHitTimes(10)
		Case "swCenterOrb3" 		: delta = gametime - SwitchHitTimes(11)
		Case "swInnerOrb1" 			: delta = gametime - SwitchHitTimes(12)
		Case "swInnerOrb2" 			: delta = gametime - SwitchHitTimes(13)
		Case "swLeftOrb1" 			: delta = gametime - SwitchHitTimes(14)
		Case "swLeftOrb2" 			: delta = gametime - SwitchHitTimes(15)
		Case "swRightOrb1" 			: delta = gametime - SwitchHitTimes(16)
		Case "swRightOrb2" 			: delta = gametime - SwitchHitTimes(17)
		Case "KickerScoop" 			: delta = gametime - SwitchHitTimes(18)
		Case "swRamp1" 				: delta = gametime - SwitchHitTimes(19)
		Case "swRamp2" 				: delta = gametime - SwitchHitTimes(20)
		Case "swRamp3" 				: delta = gametime - SwitchHitTimes(21)
		Case "swRamp4" 				: delta = gametime - SwitchHitTimes(22)
		Case "swRamp5" 				: delta = gametime - SwitchHitTimes(23)
		Case "swRamp6" 				: delta = gametime - SwitchHitTimes(24)
		Case "swRamp7" 				: delta = gametime - SwitchHitTimes(25)
		Case "swRamp8" 				: delta = gametime - SwitchHitTimes(26)
		Case "TargetMystery1"		: delta = gametime - SwitchHitTimes(27)
		Case "TargetMystery2"		: delta = gametime - SwitchHitTimes(28)
		Case "TargetMystery3"		: delta = gametime - SwitchHitTimes(29)
		Case "TargetMystery4"		: delta = gametime - SwitchHitTimes(30)
		Case "TargetMystery5"		: delta = gametime - SwitchHitTimes(31)
		Case "TargetShield1"		: delta = gametime - SwitchHitTimes(32)
		Case "TargetShield2"		: delta = gametime - SwitchHitTimes(33)
		Case "TargetShield3"		: delta = gametime - SwitchHitTimes(34)
		Case "TargetShield4"		: delta = gametime - SwitchHitTimes(35)
		Case "DTMeteor1"			: delta = gametime - SwitchHitTimes(36)
		Case "DTMeteor2"			: delta = gametime - SwitchHitTimes(37)
		Case "DTMeteor3"			: delta = gametime - SwitchHitTimes(38)
		Case "DTMeteor4"			: delta = gametime - SwitchHitTimes(39)
		Case "Bumper1"				: delta = gametime - SwitchHitTimes(40)
		Case "Bumper2"				: delta = gametime - SwitchHitTimes(41)
		Case "Bumper3"				: delta = gametime - SwitchHitTimes(42)
		Case "Bumper4"				: delta = gametime - SwitchHitTimes(43)
		Case "RightSlingShot"		: delta = gametime - SwitchHitTimes(44)
		Case "LeftSlingShot"		: delta = gametime - SwitchHitTimes(45)
		Case "swLock1" 				: delta = gametime - SwitchHitTimes(46)
		Case "swLock2" 				: delta = gametime - SwitchHitTimes(47)
		Case "swLock3" 				: delta = gametime - SwitchHitTimes(48)
	End Select
	If delta < SwitchHitRecentlyTime Then
		SwitchRecentlyHit = True
	Else
		SwitchRecentlyHit = False
	End If
End Function






'********************************************
' ZSPN : Spinners
'********************************************

Dim LMs_Spin, LMs_SpinU

Sub Spinner_Spin
	Addscore 110
	SoundSpinner Spinner
	Flash2 True						'Demo of the flasher
End Sub




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




'********************************************
'  ZTAR : Targets
'********************************************

Dim MagnetFlashCnt


' Standup Targets
'********************************************


Sub MagnetFlashTimer_timer
	MagnetFlashCnt = MagnetFlashCnt + 1
	If MagnetFlashCnt Mod 2 = 0 Then
		Flash1 False
	Else
		Flash1 True
	End If
	if MagnetFlashCnt = 4 Then MagnetFlashTimer.interval = 75
	if MagnetFlashCnt = 8 Then MagnetFlashTimer.enabled = False
End Sub


Sub TargetMystery1_Hit: STHit 1: End Sub
Sub TargetMystery1_Action
	SwitchWasHit "TargetMystery1"
	TargetBouncer Activeball, 0.7
	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM1,1,MysteryColor,7,3,3,1
	CheckMysteryCharge
End Sub

Sub TargetMystery2_Hit: STHit 2: End Sub
Sub TargetMystery2_Action
	SwitchWasHit "TargetMystery2"
	TargetBouncer Activeball, 0.7
	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM2,1,MysteryColor,7,3,3,1
	CheckMysteryCharge
	Flash2 True								'Demo of the flasher
	AwardSkillShot
End Sub

Sub TargetMystery3_Hit: STHit 3: End Sub
Sub TargetMystery3_Action
	SwitchWasHit "TargetMystery3"
	TargetBouncer Activeball, 0.7
	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM3,1,MysteryColor,7,3,3,1
	CheckMysteryCharge
	If Player(CurrentPlayer).NumProtonLoaded > 0 and NumMeteorsActive > 0 Then FireProtonRound: Flash4 True: End If
End Sub

Sub TargetMystery4_Hit: STHit 4: End Sub
Sub TargetMystery4_Action
	SwitchWasHit "TargetMystery4"
	TargetBouncer Activeball, 0.7
	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM4,1,MysteryColor,7,3,3,1
	CheckMysteryCharge
	Flash3 True								'Demo of the flasher
End Sub

Sub TargetMystery5_Hit: STHit 5: End Sub
Sub TargetMystery5_Action
	SwitchWasHit "TargetMystery5"
	If Not Player(CurrentPlayer).bInWave Then ChangeLamp LM5,1,MysteryColor,7,3,3,1
	CheckMysteryCharge
	MagnetFlashCnt = 0
	MagnetFlashTimer.interval = 150
	MagnetFlashTimer.enabled = True
	SolGrabMagnet True
End Sub



' Shield charging targets
Sub TargetShield1_Hit: STHit 6: End Sub
Sub TargetShield1_Action
	SwitchWasHit "TargetShield1"
	CheckShieldCharge
End Sub

Sub TargetShield2_Hit: STHit 7: End Sub
Sub TargetShield2_Action
	SwitchWasHit "TargetShield2"
	CheckShieldCharge
End Sub

Sub TargetShield3_Hit: STHit 8: End Sub
Sub TargetShield3_Action
	SwitchWasHit "TargetShield3"
	CheckShieldCharge
End Sub

Sub TargetShield4_Hit: STHit 9: End Sub
Sub TargetShield4_Action
	SwitchWasHit "TargetShield4"
	CheckShieldCharge
End Sub


' Drop Targets
'********************************************


Sub DTMeteor1_Hit
	DTHit 1 
	If Meteor1.TimeLeft < TimePerMeteor*0.3 Then 
		AudioCallout "nice shot"
	Else
		OccationalNiceShotCallout
	End If
	OccationalEcouragementCallout
End Sub

Sub DTMeteor2_Hit
	DTHit 2 
	If Meteor2.TimeLeft < TimePerMeteor*0.3 Then 
		AudioCallout "nice shot"
	Else
		OccationalNiceShotCallout
	End If
	OccationalEcouragementCallout
End Sub

Sub DTMeteor3_Hit
	DTHit 3 
	If Meteor3.TimeLeft < TimePerMeteor*0.3 Then 
		AudioCallout "nice shot"
	Else
		OccationalNiceShotCallout
	End If
	OccationalEcouragementCallout
End Sub

Sub DTMeteor4_Hit
	DTHit 4 
	If Meteor4.TimeLeft < TimePerMeteor*0.3 Then 
		AudioCallout "nice shot"
	Else
		OccationalNiceShotCallout
	End If
	OccationalEcouragementCallout
End Sub



'****************************************************************
'  ZGIL : GI Lights
'****************************************************************

dim gilvl:gilvl = 1		
Sub EnableGI(Enabled)
	dim xx
	If enabled Then
		for each xx in GI:xx.state = 1:Next
		gilvl = 1
	Else
		for each xx in GI:xx.state = 0:Next	
		gilvl = 0
	End If
	Sound_GI_Relay enabled, bumper1
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
			aBall.velz = aBall.velz * coef
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
'  ZDRT : DROP TARGETS by Rothbauerw
'******************************************************

'  DROP TARGETS INITIALIZATION

Class DropTarget
  Private m_primary, m_secondary, m_prim, m_sw, m_animate, m_isDropped

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

  Public Property Get IsDropped(): IsDropped = m_isDropped: End Property
  Public Property Let IsDropped(input): m_isDropped = input: End Property

  Public default Function init(primary, secondary, prim, sw, animate, isDropped)
    Set m_primary = primary
    Set m_secondary = secondary
    Set m_prim = prim
    m_sw = sw
    m_animate = animate
    m_isDropped = isDropped

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
	DTArray(i).animate = DTCheckBrick(ActiveBall,DTArray(i).prim)
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
			DTAction switchid
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

Sub DTAction(switchid)
	Select Case switchid
		Case 1:
			SwitchWasHit "DTMeteor1"
            Meteors(0).Hit
            'TODO: hit light show
		Case 2:
			SwitchWasHit "DTMeteor2"
            Meteors(1).Hit
            'TODO: hit light show
		Case 3:
			SwitchWasHit "DTMeteor3"
            Meteors(2).Hit
            'TODO: hit light show
		Case 4:
			SwitchWasHit "DTMeteor4"
            Meteors(3).Hit
            'TODO: hit light show
	End Select
End Sub





'******************************************************
'	ZSUT: STAND-UP TARGETS by Rothbauerw
'******************************************************

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

Function STAnimate(primary, prim, switch,  animate)
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
		STAction switch
		STAnimate = 2
		Exit Function
	ElseIf animate = 2 Then
		prim.transy = prim.transy + STAnimStep
		If prim.transy >= 0 Then
			prim.transy = 0
			primary.collidable = 1
			STAnimate = 0
			Exit Function
		Else
			STAnimate = 2
		End If
	End If
End Function


Sub STAction(Switch)
	Select Case Switch
		Case 1: TargetMystery1_Action
		Case 2: TargetMystery2_Action
		Case 3: TargetMystery3_Action
		Case 4: TargetMystery4_Action
		Case 5: TargetMystery5_Action
		Case 6: TargetShield1_Action
		Case 7: TargetShield2_Action
		Case 8: TargetShield3_Action
		Case 9: TargetShield4_Action
	End Select
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



'******************************************************
'**** END RAMP ROLLING SFX
'******************************************************





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






'******************************************************
'****  ZBLS : Blinking Light System
'******************************************************

'  individual light sequencer commands (originally by oqqsan, and heavily modified by apophis)

' examples
'			    cLight ,state  ,color , number of blinks, timeon, timeoff, starting delay
'		ChangeLamp cLight001	,1		,"green"	,7,8,8,1		 '( short delay, color="green", 7 blinks slow, then state = On )
'		ChangeLamp cLight001	,0		,"red"		,7,2,2,10		 '( long delay, color="red", 7 blinks fast, then state = Off )
'		ChangeLamp cLight001	,2		,"blue"		,7,2,2,10		 '( long delay, color="blue", 7 blinks fast, then state = Blink )
'
'	If LampState(cLight001) = 1 Then .... same as if Blink(LampNumber(cLight001),1)=1 or the old vpx   if cLight001.state=1
'
'	Sub swTopLane1_Hit
'		SwitchWasHit "swTopLane1"
'		Blink(1,1) = 1  ' normal set state use this format   Lampz nr 2 saved state = 1
'						' optional: cLight001.blinkinterval=timeon ( need the right name of the clight )
'						' optional: cLight001.blinkpattern = pattern  ( need the right name of the clight )
'		BlinkTrail baShieldCharge,color,8,5,2,1,1 ' baShieldCharge array , 8 blinks , 5 timeon, 2 timeoff, 1 delay for each light before blinking start, increasing direction ) 
'	End Sub 																			'all time values is in updates ( currently 16ms timer )
'
'        old                      new
'   light001.state=1 		->> Blink(1,1)=1
'   If light001.state=2 	->> If Blink(1,1)=2 
'		the BLS command overrides the state and blinks away until finished and restore the saved value.. 
'  		all this can be overridden by a normal VPX lightsequencer at anytime
' 		no worries at all set and forget, lampz control everything
'		VPX lightsequencer > lightsequencer2 > normal state

'    SetBlinkState cLight,2,100,"01010110010110"   ' Blink(40,1)=2  sets the same state but not interval and pattern
'    **** Insert nr ,State(0;1;2), interval = how long each part of patterns is displayd in ms, pattern to blink "01" off/on any length of 0's and 1's

'   individual RGB inserts
'   SetLampColor  cLight,"green"   
'    **** insert nr , color ( green yellow red purple blue orange white darklblue ) can add any color to this below


Dim Blink(150,9)


' Blink arrays for the BlinkTrail subroutine
Dim baClusterCharge : baClusterCharge = Array(LCC3,LCC2,LCC1)
Dim baClusterRounds : baClusterRounds = Array(LCR2,LCR1)
Dim baTimeWarp : baTimeWarp = Array(LTW1,LTW2,LTW3,LTW4)
Dim baProtonCharge : baProtonCharge = Array(LPC3,LPC2,LPC1)
Dim baProtonChargeCW : baProtonChargeCW = Array(LPC4,LPC5,LPF)
Dim baProtonChargeCCW : baProtonChargeCCW = Array(LPC5,LPC4,LPF)
Dim baProtonRounds1 : baProtonRounds1 = Array(LPR6,LPR5,LPR4,LPR2,LPR3,LPR1)
Dim baProtonRounds2 : baProtonRounds2 = Array(LPR4,LPR5,LPR6,LPR3,LPR2,LPR1)
Dim baMoonRounds : baMoonRounds = Array(LMR2,LMR1)
Dim baFortify : baFortify = Array(LF3,LF2,LF1)
Dim baShieldCharge : baShieldCharge = Array(LSC4,LSC3,LSC2,LSC1)
Dim baWave : baWave = Array(LW1,LW2,LW3,LW4,LW5,LW6,LW7,LW8,LW9,LWiz)
Dim baMystery : baMystery = Array(LM1,LM2,LM3,LM4,LM5)
Dim baHealth : baHealth = Array(LH1,LH2,LH3,LH4,LH5,LH6,LH7,LH8,LH9)
Dim baMeteor : baMeteor = Array(LMet1,LMet2,LMet3,LMet4)


Sub ChangeLamp(cLightObj, state, col, blsBlinks, blsOnT, blsOffT, blsDelay)
	SetLampState cLightObj,state
	SetLampColor cLightObj,col
	BlinkLamp cLightObj,col,blsBlinks,blsOnT,blsOffT,blsDelay
End Sub


Sub SetLampState(cLightObj,state)
	dim nr : nr = LampNumber(cLightObj)
	Blink(nr,1) = state
End Sub

Sub SetLampNrState(nr,state)
	Blink(nr,1) = state
End Sub

Function LampState(cLightObj)
	dim nr : nr = LampNumber(cLightObj)
	LampState = Blink(nr,1)
End Function


Function LampNrState(nr)
	LampNrState = Blink(nr,1)
End Function


Sub SetLampFade(cLightObj,SpeedUp,SpeedDown)
	cLightObj.FadeSpeedUp = SpeedUp
	cLightObj.FadeSpeedDown = SpeedDown
End Sub


Sub BlinkLamp(cLightObj, col, blsBlinks , blsOnT, blsOffT, blsDelay )
	Dim nr : nr = LampNumber(cLightObj)
	If blsBlinks > 0 Then
		Blink(nr,2)=blsBlinks 
		Blink(nr,3)=0 
		Blink(nr,4)=blsOnT	
		Blink(nr,6)=blsOffT	
		Blink(nr,8)=blsDelay
		Blink(nr,9)=ColorRGB(col)
	End If
End Sub


Sub BlinkTrail(bArray,col,blinks,timeon,timeoff,delay,bdir)
	Dim i,nr,AddedDelay,istart,iend
	If bdir > 0 Then 
		istart = 0 : iend = UBound(bArray)
	Else
		istart = UBound(bArray) : iend = 0
	End If
	AddedDelay = delay
	For i = istart to iend step bdir
		nr = LampNumber(bArray(i))
		ApplyLampColor AllControlLights(nr),col
		Blink(nr,2)=blinks
		Blink(nr,3)=0 ' flag
		Blink(nr,4)=timeon
		Blink(nr,6)=timeoff
		Blink(nr,8)=AddedDelay
		Blink(nr,9)=ColorRGB(col)
		AddedDelay = AddedDelay + delay
	Next
End Sub

Sub SetBlinkState(cLightObj,state,interval,pattern) 
	Dim nr : nr = LampNumber(cLightObj)
	If Not State = -1 Then Blink(nr,1)=State
	cLightObj.blinkinterval= interval
	cLightObj.blinkpattern =  pattern
End Sub


Sub InitLampStates
	dim x : for each x in AllControlLights
		SetLampState x,0          'off
		SetLampColor x,"white"    'white
	next
End Sub



BlinkTimer.Interval = 16
BlinkTimer.Enabled = True

' Blink Matrix Description:
'
'		Blink(nr,0) 	'Saved light color (RGB)
'		Blink(nr,1)   	'Saved light state
'		Blink(nr,2)   	'Number of blinks
'		Blink(nr,3) 	'Flag
'		Blink(nr,4)		'On time (timer cycles)
'		Blink(nr,5)   	'On timer count down
'		Blink(nr,6)		'Off time (timer cycles)
'		Blink(nr,7)   	'Off timer count down
'		Blink(nr,8)		'Delay at beginning of blink pattern
'		Blink(nr,9)		'Color used during blink (RGB)

Sub BlinkTimer_Timer
	dim L, idx
	for each L in AllControlLights
		idx = LampNumber(L)
		If Blink(idx,2)>0 Then	' Lightsequencer ? + multipleblinks
			ApplyLampRGB idx,Blink(idx,9)
			If Blink(idx,8)>0 Then ' is there a delay ! ?=
				L.state = 0
				Blink(idx,8) = Blink(idx,8) - 1
			Else
				Select Case Blink(idx,3)
					Case 0 : L.state = 1 :  Blink(idx,5)=Blink(idx,4) : Blink(idx,3) = 1 
					Case 1 : Blink(idx,5)=Blink(idx,5)-1 : If Blink(idx,5) < 1 Then Blink(idx,3) = 2
					Case 2 : L.state = 0   :  Blink(idx,7)=Blink(idx,6) : Blink(idx,3) = 3
					Case 3 : Blink(idx,7)=Blink(idx,7)-1 
							 If Blink(idx,7) < 1 Then
								Blink(idx,2)=Blink(idx,2)-1
								If Blink(idx,2)<1 Then Blink(idx,2)=0
								Blink(idx,3) = 0
							 End If
				End Select
			End If
			If Blink(idx,2)=0 Then 'Last Blink
				Blink(idx,9) = Blink(idx,0)
				ApplyLampRGB idx,Blink(idx,0)
				L.state = Blink(idx,1)
			End If
		Else
			If L.state <> Blink(idx,1) Then 
				L.state = Blink(idx,1)
			End If
		End If
	Next
End Sub




'*  Lamp Colors
'******************************************************

Function ColorRGB(col)
	Select Case col
		Case "red" 		: ColorRGB = RGB(185,0,20)
		Case "orange" 	: ColorRGB = RGB(255,65,20)
		Case "amber" 	: ColorRGB = RGB(255,153,0)
		Case "yellow" 	: ColorRGB = RGB(255,200,0)
		Case "darkgreen": ColorRGB = RGB(0,64,0)
		Case "green" 	: ColorRGB = RGB(25,205,70)
		Case "blue" 	: ColorRGB = RGB(15,128,255)
		Case "darkblue" : ColorRGB = RGB(8,60,255)
		Case "purple"	: ColorRGB = RGB(85,44,255)
		Case "magenta"	: ColorRGB = RGB(255,44,255)
		Case "white" 	: ColorRGB = RGB(255,245,235)
		Case Else		: ColorRGB = RGB(0,0,0)
	End Select
End Function

Sub SetLampColor ( cLightObj, NewColor ) ' important to use this there has to be 3 items in massassign    clight,light,additive primitive as the 3rd
	Dim nr : nr = LampNumber(cLightObj)
	Blink(nr,0) = ColorRGB(NewColor)
	Blink(nr,9) = ColorRGB(NewColor)
	ApplyLampColor cLightObj,NewColor
End Sub

Sub SetLampNrColor ( nr, NewColor ) ' important to use this there has to be 3 items in massassign    clight,light,additive primitive as the 3rd
	Blink(nr,0) = ColorRGB(NewColor)
	Blink(nr,9) = ColorRGB(NewColor)
	ApplyLampColor AllControlLights(nr),NewColor
End Sub

Function LampNrColor(nr)
	LampNrColor = Blink(nr,0)
End Function


Sub ApplyLampColor ( cLightObj, NewColor ) ' important to use this there has to be 3 items in massassign    clight,light,additive primitive as the 3rd
	cLightObj.ColorFull = ColorRGB(NewColor)
	Dim nr : nr = LampNumber(cLightObj)
	Dim BL: For each BL in BL_Array(nr): BL.color = ColorRGB(NewColor): Next
End Sub

Sub SetLampRGB ( cLightObj, RGBval ) ' important to use this there has to be 3 items in massassign    clight,light,additive primitive as the 3rd
	Dim nr : nr = LampNumber(cLightObj)
	Blink(nr,0) = RGBval
	Blink(nr,9) = RGBval
	ApplyLampRGB nr,RGBval
End Sub


Sub SetLampNrColorRGB ( nr, RGBval ) ' important to use this there has to be 3 items in massassign    clight,light,additive primitive as the 3rd
	Blink(nr,0) = RGBval
	Blink(nr,9) = RGBval
	ApplyLampRGB nr,RGBval
End Sub


Sub ApplyLampRGB( nr, RGBval )
	AllControlLights(nr).ColorFull = RGBval
	Dim BL: For each BL in BL_Array(nr): BL.color = RGBval: Next
End Sub



'*  Lamp Number Lookup 
'******************************************************


Function LampNumber(obj)
	Select Case obj.name
		Case "LB1" 		: LampNumber = 	0
		Case "LB2" 		: LampNumber = 	1
		Case "LB3" 		: LampNumber = 	2
		Case "LB4" 		: LampNumber = 	3
		Case "LC1" 		: LampNumber = 	4
		Case "LC2" 		: LampNumber = 	5
		Case "LC3" 		: LampNumber = 	6
		Case "LC4" 		: LampNumber = 	7
		Case "LC5" 		: LampNumber = 	8
		Case "LC6" 		: LampNumber = 	9
		Case "LC7" 		: LampNumber = 	10
		Case "LC8" 		: LampNumber = 	11
		Case "LCC1" 	: LampNumber = 	12
		Case "LCC2" 	: LampNumber = 	13
		Case "LCC3" 	: LampNumber = 	14
		Case "LCR1" 	: LampNumber = 	15
		Case "LCR2" 	: LampNumber = 	16
		Case "LCWiz" 	: LampNumber = 	17
		Case "LEBR" 	: LampNumber = 	18
		Case "LF1" 		: LampNumber = 	19
		Case "LF2" 		: LampNumber = 	20
		Case "LF3" 		: LampNumber = 	21
		Case "LH1" 		: LampNumber = 	22
		Case "LH2" 		: LampNumber = 	23
		Case "LH3" 		: LampNumber = 	24
		Case "LH4" 		: LampNumber = 	25
		Case "LH5" 		: LampNumber = 	26
		Case "LH6" 		: LampNumber = 	27
		Case "LH7" 		: LampNumber = 	28
		Case "LH8" 		: LampNumber = 	29
		Case "LH9" 		: LampNumber = 	30
		Case "LLI" 		: LampNumber = 	31
		Case "LLO" 		: LampNumber = 	32
		Case "LLWiz" 	: LampNumber = 	33
		Case "LM1" 		: LampNumber = 	34
		Case "LM2" 		: LampNumber = 	35
		Case "LM3" 		: LampNumber = 	36
		Case "LM4" 		: LampNumber = 	37
		Case "LM5" 		: LampNumber = 	38
		Case "LMet1" 	: LampNumber = 	39
		Case "LMet2" 	: LampNumber = 	40
		Case "LMet3" 	: LampNumber = 	41
		Case "LMet4" 	: LampNumber = 	42
		Case "LMLR" 	: LampNumber = 	43
		Case "LMR" 		: LampNumber = 	44
		Case "LMR1" 	: LampNumber = 	45
		Case "LMR2" 	: LampNumber = 	46
		Case "LPC1" 	: LampNumber = 	47
		Case "LPC2" 	: LampNumber = 	48
		Case "LPC3" 	: LampNumber = 	49
		Case "LPC4" 	: LampNumber = 	50
		Case "LPC5" 	: LampNumber = 	51
		Case "LPF" 		: LampNumber = 	52
		Case "LPR1" 	: LampNumber = 	53
		Case "LPR2" 	: LampNumber = 	54
		Case "LPR3" 	: LampNumber = 	55
		Case "LPR4" 	: LampNumber = 	56
		Case "LPR5" 	: LampNumber = 	57
		Case "LPR6" 	: LampNumber = 	58
		Case "LRI" 		: LampNumber = 	59
		Case "LRO" 		: LampNumber = 	60
		Case "LS1" 		: LampNumber = 	61
		Case "LS2" 		: LampNumber = 	62
		Case "LS3" 		: LampNumber = 	63
		Case "LS4" 		: LampNumber = 	64
		Case "LS5" 		: LampNumber = 	65
		Case "LS6" 		: LampNumber = 	66
		Case "LSA" 		: LampNumber = 	67
		Case "LSC1" 	: LampNumber = 	68
		Case "LSC2" 	: LampNumber = 	69
		Case "LSC3" 	: LampNumber = 	70
		Case "LSC4" 	: LampNumber = 	71
		Case "LSL" 		: LampNumber = 	72
		Case "LSpot1" 	: LampNumber = 	73
		Case "LSpot2" 	: LampNumber = 	74
		Case "LSR" 		: LampNumber = 	75
		Case "LSwC1" 	: LampNumber = 	76
		Case "LSwC2" 	: LampNumber = 	77
		Case "LSwC3" 	: LampNumber = 	78
		Case "LSwL1" 	: LampNumber = 	79
		Case "LSwL2" 	: LampNumber = 	80
		Case "LTW1" 	: LampNumber = 	81
		Case "LTW2" 	: LampNumber = 	82
		Case "LTW3" 	: LampNumber = 	83
		Case "LTW4" 	: LampNumber = 	84
		Case "LW1" 		: LampNumber = 	85
		Case "LW2" 		: LampNumber = 	86
		Case "LW3" 		: LampNumber = 	87
		Case "LW4" 		: LampNumber = 	88
		Case "LW5" 		: LampNumber = 	89
		Case "LW6" 		: LampNumber = 	90
		Case "LW7" 		: LampNumber = 	91
		Case "LW8" 		: LampNumber = 	92
		Case "LW9" 		: LampNumber = 	93
		Case "LWiz" 	: LampNumber = 	94
		Case "LX" 		: LampNumber = 	95
		Case Else 		: LampNumber = -1
	End Select
End Function



CheckLightNums
Sub CheckLightNums
	Dim L, idx
	idx = 0
	For each L in AllControlLights
		If LampNumber(L) <> idx Then
			msgbox "Lamp Number Wrong for " & L.name
			Exit Sub
		End If
		idx = idx + 1
	Next
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




'*******************************************
' ZCAL : Callouts Code
'*******************************************


Sub AudioCallout(scenario)
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



'
''*******************************************
'' ZSNG : Song Code
''*******************************************
'
'const SongVolume = 1
'dim LoopLength, NumLoops
'
'dim LoopQueue
'LoopQueue = Array(False,False,False,False,False,False,False,False,False,False,False,False,False,False,False,False)
'
'dim SongLoops
'SongLoops = Array( _
'	"Song1 Arpeggio Loop", _
'	"Song1 Bass Loop", _
'	"Song1 Bright Saw", _
'	"Song1 Guitar Loop", _
'	"Song1 HiHat Loop", _
'	"Song1 Kick Loop", _
'	"Song1 Miami Flute", _
'	"Song1 Snare Loop" )
'
'sub SetupSong(nr)	
'	StopAllLoops
'	LoopTimer.Enabled = False
'	select case nr
'		case 1: 
'			'SongLoops = Song1Loops
'			LoopLength = 9600
'			LoopTimer.interval = LoopLength
'			LoopTimer.Enabled = True
'	end select
'end sub
'
'
'sub LoopTimer_Timer
'	StopAllLoops
'	dim i : for i = 0 to ubound(SongLoops)
'		if LoopQueue(i+1) = True then
'			PlaySound SongLoops(i), -1, SongVolume, 0, 0, 0, 0, 0, 0
'			LoopLight(i).state = 1
'		end if
'	next
'end Sub
'
'
'sub StopAllLoops
'	dim i : for i = 0 to ubound(SongLoops)
'		Stopsound SongLoops(i)
'		LoopLight(i).state = 0
'	next
'end sub
'
'
'' Initialize song
'SetupSong 1
'
'
'
''---- Song Triggers -----
'
'sub Trigger001_hit
'	LoopLight(1-1).state = 2
'	if LoopQueue(1) then
'		LoopQueue(1)=False
'	else 
'		LoopQueue(1)=True
'	end if
'end sub
'
'sub Trigger002_hit
'	LoopLight(2-1).state = 2
'	if LoopQueue(2) then
'		LoopQueue(2)=False
'	else 
'		LoopQueue(2)=True
'	end if
'end sub
'
'sub Trigger003_hit
'	LoopLight(3-1).state = 2
'	if LoopQueue(3) then
'		LoopQueue(3)=False
'	else 
'		LoopQueue(3)=True
'	end if
'end sub
'
'sub Trigger004_hit
'	LoopLight(4-1).state = 2
'	if LoopQueue(4) then
'		LoopQueue(4)=False
'	else 
'		LoopQueue(4)=True
'	end if
'end sub
'
'sub Trigger005_hit
'	LoopLight(5-1).state = 2
'	if LoopQueue(5) then
'		LoopQueue(5)=False
'	else 
'		LoopQueue(5)=True
'	end if
'end sub
'
'sub Trigger006_hit
'	LoopLight(6-1).state = 2
'	if LoopQueue(6) then
'		LoopQueue(6)=False
'	else 
'		LoopQueue(6)=True
'	end if
'end sub
'
'sub Trigger007_hit
'	LoopLight(7-1).state = 2
'	if LoopQueue(7) then
'		LoopQueue(7)=False
'	else 
'		LoopQueue(7)=True
'	end if
'end sub
'
'sub Trigger008_hit
'	LoopLight(8-1).state = 2
'	if LoopQueue(8) then
'		LoopQueue(8)=False
'	else 
'		LoopQueue(8)=True
'	end if
'end sub




'*********************************************************************************************************
' ZLIF : Game Lifecycle
'*********************************************************************************************************



' BALL FUNCTIONS & DRAINS
'**********************************************


Sub ResetForNewGame
	WriteTOLog "-------------","NEW GAME"

	GameInit

	bIntroSegmentRan = False
	bGameInPlay = True
	StopAttractMode

	TotalGamesPlayed = TotalGamesPlayed + 1
	Savegp

	dim p : for each p in Player : p.reset : Next
	
	ResetForNewPlayerBall
	ReleaseNewBall

End Sub



Sub EndOfGame
	WriteTOLog "-------------","GAME OVER"
	'DMDBigText "GAME OVER",77,1
	DisableWaveTimer
	TurnOffPlayfieldLights
	StartAttractMode
	bGameInPlay = False
	bJustStarted = False
	SolLockPin False
	SolDiverterPin False
	BallsOnPlayfield = BallsOnPlayfield + BallsLocked
	BallsLocked = 0
End Sub




Sub ResetForNewPlayerBall
	WriteToLog "ResetForNewPlayerBall", ""
	If PlayersPlayingGame > 1 Then
		If CurrentPlayer = 1 Then

		Elseif currentplayer = 2 Then

		Elseif currentplayer = 3 Then

		Elseif currentplayer = 4 Then

		End If
	Else

	End If
	AddScore 0

	Player(CurrentPlayer).BonusPoints = 0

	ResetNewBallVariables
	ResetNewBallLights
	EnableWaveTimer TimeBtwWaves

End Sub



AutoPlungerDelay.interval = 350

sub AutoPlungerDelay_timer
	WriteToLog "autoplunger", "Autofire the ball"
	PlungerIM.AutoFire
	SoundSaucerKick 1,swPlungerIM
	bAutoPlunger = False
	Me.enabled = False
end sub


Sub ReleaseNewBall
	AudioCallout "ball release"
	if Not bIntroSegmentRan Then 
		AudioCallout "intro segment 1" : AudioCallout "intro segment 2" : AudioCallout "intro segment 3"
		bIntroSegmentRan = True
	end if
	Balls2Eject = Balls2Eject + 1
	WriteToLog "ReleaseNewBall", "Balls2Eject = "  & Balls2Eject
	ReleaseBallTimer.Enabled = True
End Sub


Sub AddMultiball(nballs)
	bAutoPlunger = True
	Balls2Eject = Balls2Eject + nballs
	WriteToLog "AddMultiball", "Balls2Eject = "  & Balls2Eject
	ReleaseBallTimer.Enabled = True
End Sub


Sub KickoutNewBall
	SolRelease True
	Balls2Eject = Balls2Eject - 1
	BallsOnPlayfield = BallsOnPlayfield + 1
	WriteToLog "Balls2Eject", "Balls2Eject = "  & Balls2Eject
	WriteToLog "KickoutNewBall", "BallsOnPlayfield = "  & BallsOnPlayfield
	If BallsOnPlayfield > 1 Then
		bMultiBallMode = True
		bAutoPlunger = True
	End If
End Sub


ReleaseBallTimer.interval = 600  'this must be larger than AutoPlungerDelay timer interval
Dim ReleaseTimeout : ReleaseTimeout = 0
Sub ReleaseBallTimer_Timer()
	If bBallInPlungerLane or swTrough1.BallCntOver=0 Then
		ReleaseTimeout = ReleaseTimeout + 1
		WriteToLog "ReleaseBallTimer", "Not ready to release: BIP=" & bBallInPlungerLane & " BIT=" & swTrough1.BallCntOver & " ReleaseTimeout=" & ReleaseTimeout
		If ReleaseTimeout > 10 Then  'Timeout ball release if all are in play
			ReleaseTimeout = 0
			Balls2Eject = 0
			Me.Enabled = False
		End If
	Else
		KickoutNewBall
		ReleaseTimeout = 0
		If Balls2Eject = 0 Then 
			Me.Enabled = False
		End If
	End If
End Sub




Sub EndOfBall
	WriteToLog "EndOfBall", ""
	bMultiBallMode = False
	Player(CurrentPlayer).bInWave = False
	bOnTheFirstBall = False
	If NOT bTilted Then
		vpmtimer.addtimer 500, "EndOfBall2 '"
	Else 
		vpmtimer.addtimer 500, "EndOfBall2 '"
	End If
End Sub



Sub EndOfBall2
	WriteToLog "EndOfBall2", ""
	bTilted = False
	Tilt = 0
	MechTilt = 0
	DisableTable False
	If(Player(CurrentPlayer).ExtraBallsAwards <> 0) Then
		Player(CurrentPlayer).ExtraBallsAwards = Player(CurrentPlayer).ExtraBallsAwards - 1
		If(Player(CurrentPlayer).ExtraBallsAwards = 0) Then
			SetLampState LSA, 0
		End If
		SetHealth 9
		Player(CurrentPlayer).SaveLamps
		ResetForNewPlayerBall
		ReleaseNewBall
		'DMDBigText "SHOOT AGAIN",77,1
	Else
		Player(CurrentPlayer).BallsRemaining = Player(CurrentPlayer).BallsRemaining - 1
		DebugPrint "Player(CurrentPlayer).BallsRemaining = "&Player(CurrentPlayer).BallsRemaining 
		If(Player(CurrentPlayer).BallsRemaining <= 0) Then
			CheckHighScore
		Else
			EndOfBallComplete
		End If
	End If
End Sub


Sub EndOfBallComplete
	WriteToLog "EndOfBallComplete", ""
	ResetNewBallVariables
	Dim NextPlayer
	If(PlayersPlayingGame> 1) Then
		NextPlayer = CurrentPlayer + 1
		If(NextPlayer> PlayersPlayingGame) Then
			NextPlayer = 1
		End If
	Else
		NextPlayer = CurrentPlayer
	End If
	If (Player(CurrentPlayer).BallsRemaining <= 0) And (Player(NextPlayer).BallsRemaining <= 0) Then
		EndOfGame
	Else
		SetHealth 9
		Player(CurrentPlayer).SaveLamps
		CurrentPlayer = NextPlayer
		ResetForNewPlayerBall
		ReleaseNewBall
		If PlayersPlayingGame > 1 Then
			'PlaySound "vo_player" &CurrentPlayer
		End If
	End If
End Sub


Sub HandleDrain
	BallsOnPlayfield = BallsOnPlayfield - 1
	WriteToLog "Drain_Hit", "BallsOnPlayfield = "  & BallsOnPlayfield
	If bTilted Then
		StopEndOfBallMode
	End If
	If(bGameInPLay = True) And (bTilted = False) Then
		If (bBallSaverActive = True) Then
			AddMultiball 1
			If bMultiBallMode = False Then
				'Ballsaved
				AudioCallout "ballsave"
				'DMDBigText "Ball Saved",77,1
				BallSaverCancel
			End If
		Else
			If(BallsOnPlayfield = 1) Then
				bMultiBallMode = False		
			End If
			If(BallsOnPlayfield = 0) Then
				AudioCallout "drain"
				'DMDBigText "Ball Drained",77,1
				vpmtimer.addtimer 1000, "BallDrained '"
				vpmtimer.addtimer 2000, "EndOfBall '"
				StopEndOfBallMode
			End If
		End If
	End If
End Sub


Sub BallDrained

End Sub



' BALL SAVE & LAUNCH
'**********************************************



Sub EnableBallSaver(seconds)
	bBallSaverActive = True
	bBallSaverReady = False
	BallSaverTimerExpired.Interval = 1000 * seconds
	BallSaverTimerExpired.Enabled = True
	BallSaverSpeedUpTimer.Interval = 1000 * seconds -(1000 * seconds) / 3
	BallSaverSpeedUpTimer.Enabled = True
	' if you have a ball saver light you might want to turn it on at this point (or make it flash)
	SetBlinkState LSA,2,160,"10"
End Sub

' The ball saver timer has expired.  Turn it off AND reset the game flag
'
Sub BallSaverTimerExpired_Timer
	'DebugPrint "Ballsaver ended"
	BallSaverTimerExpired.Enabled = False
	vpmtimer.addtimer 2000, "BallSaveGrace'"
	' if you have a ball saver light then turn it off at this point
	If Player(CurrentPlayer).ExtraBallsAwards > 0 Then
		SetLampState LSA,1
	Else
		SetLampState LSA,0
	End If
End Sub

Sub BallSaveGrace
	bBallSaverActive = False
End Sub

Sub BallSaverSpeedUpTimer_Timer()
	'DebugPrint "Ballsaver Speed Up Light"
	BallSaverSpeedUpTimer.Enabled = False
	' Speed up the blinking
	SetBlinkState LSA,2,80,"10"
End Sub

Sub BallSaverCancel
	bBallSaverActive = False
	BallSaverTimerExpired.Enabled = False
	BallSaverSpeedUpTimer.Enabled = False
	If Player(CurrentPlayer).ExtraBallsAwards > 0 Then
		SetLampState LSA,1
	Else
		SetLampState LSA,0
	End If
End Sub




' GAME STARTING & RESETS
'**********************************************


Sub GameInit	'called at the start of a new game
	'Reset game variables
	Tilt = 0
	MechTilt = 0
	TiltSensitivity = 5
	bTilted = False
	bMechTiltJustHit = False

	Balls2Eject = 0
	BallsOnPlayfield = 0
	BallsLocked = 0

	bAutoPlunger = False
	bAttractMode = False
	bGameInPlay = False

	bMysteryActive = False
	bWaveTimerPaused = False
	bMultiBallMode = False
	bBallInPlungerLane = False
	bBallSaverActive = False
	bBallSaverReady = False
	bMusicOn = True
	bJustStarted = True
	bStartOfNewBall = False
	bFlippersEnabled = True

	CurrentPlayer = 1
	PointMultiplier = 1
	PointMultiplierLimit = True
	bOnTheFirstBall = True
	bSkillshotAvailable = True

	bEarthJustHit = False

	SolLockPin False
	SolDiverterPin False

	DisableWaveTimer
End Sub


Sub StopEndOfBallMode	'this sub is called after the last ball is drained
	ResetSkillShotTimer_Timer
	FailWave
	CancelTimeWarp
	CancelMystery
	bMultiBallMode = False
	Player(CurrentPlayer).bInWave = False
	bWaveTimerPaused = True
	If Not bFlippersEnabled Then SetHealth 9  'set health back to full if death due to damage
End Sub


Sub ResetNewBallVariables
	bStartOfNewBall = True
	bWaveTimerPaused = True
	bWaveFailed = False
	bMysteryActive = False
	bBallSaverReady = True
	bSkillShotReady = True
	bFlippersEnabled = True
End Sub


Sub TurnOffPlayfieldLights
	Dim a
	For each a in AllControlLights
		SetLampState a,0
	Next
End Sub

Sub ResetNewBallLights		'turn on or off the needed lights before a new ball is released
	TurnOffPlayfieldLights
	Player(CurrentPlayer).RestoreLamps
	CheckMoonLockReady
End Sub




'*********************************************************************************************************
' ZGAM : Game code
'*********************************************************************************************************


' SKILLSHOT
'**********************************************

Sub UpdateSkillShot 'Updates the skillshot light
	SetLampState LM2,2
	SetLampColor LM2,"green"
End Sub

Sub ResetSkillShotTimer_Timer 'timer to reset the skillshot lights & variables
	ResetSkillShotTimer.Interval = 3000
	ResetSkillShotTimer.Enabled = False
	bSkillShotReady = False
	If LampState(LM2) = 2 then 
		SetLampState LM2,0
		SetLampColor LM2,MysteryColor
	End If
End Sub

Sub AwardSkillShot
	If bSkillShotReady and Not bInnerOrbRecentlyHit Then
		AudioCallout "skillshot" 
		'DMDBigText "Skill Shot",77,1
		ResetSkillShotTimer_Timer
		'Award SS
		If Player(CurrentPlayer).NumProtonRounds < 6 Then
			AddProtonRound
			ReloadProtonRound
		ElseIf Player(CurrentPlayer).NumClusterRounds < 2 Then
			AddClusterRound
			ReloadClusterRound
		Elseif Player(CurrentPlayer).TotalExtraBallsAwarded < MaxExtraBallsPerGame Then
			AwardExtraBall
		Else
			AwardSpecial
		End If
	End If
End Sub

Sub AwardSecretSkillShot
	If bSkillShotReady Then
		AudioCallout "secretskillshot"
		'DMDBigText "Secret Skill",77,1
		ResetSkillShotTimer_Timer
		'Award SSS
		If Player(CurrentPlayer).NumClusterRounds < 2 Then
			AddClusterRound
			ReloadClusterRound
		Elseif Player(CurrentPlayer).TotalExtraBallsAwarded < MaxExtraBallsPerGame Then
			AwardExtraBall
		Else
			AwardSpecial
		End If
	End If
End Sub




' EXTRA BALLS
'**********************************************


Sub CheckExtraBallAward
	If LampState(LEBR)=2 Then
		AwardExtraBall
	End If
End Sub

Sub SetExtraBallReady
	If LampState(LEBR)=0 Then
		AudioCallout "extra ball lit" 
		ChangeLamp LEBR,2,"green",7,3,3,1
		'DMDBigText "EB READY",77,1
	End If
End Sub





' MYSTERY AWARDS
'**********************************************

const MysteryColor = "amber"


Sub CheckMysteryCharge
	If Not Player(CurrentPlayer).bInWave Then
		If LampState(LM1)>0 and _
		   LampState(LM2)>0 and _
		   LampState(LM3)>0 and _
	       LampState(LM4)>0 and _
	       LampState(LM5)>0 and _
		   LampState(LMR)=0 Then
			ChangeLamp LM1,1,MysteryColor,7,3,3,1
			ChangeLamp LM2,1,MysteryColor,7,3,3,1
			ChangeLamp LM3,1,MysteryColor,7,3,3,1
			ChangeLamp LM4,1,MysteryColor,7,3,3,1
			ChangeLamp LM5,1,MysteryColor,7,3,3,1
			ChangeLamp LMR,2,"orange",7,3,3,1
			AudioCallout "mystery lit"
		End If
	End If
End Sub


Sub CancelMystery
	'Turn off the lamps
	bMysteryActive = False
	SetLampState LM1,0
	SetLampState LM2,0
	SetLampState LM3,0
	SetLampState LM4,0
	SetLampState LM5,0
	SetLampState LMR,0
	SetLampColor LMR,"orange"
End Sub


Sub CheckMysteryAward
	Dim Num, NumTries
	If Not Player(CurrentPlayer).bInWave Then
		If LampState(LMR)>0 Then
			bWaveTimerPaused = True
			bMysteryActive = True
			'Turn off the lamps
			ChangeLamp LM1,0,MysteryColor,7,3,3,1
			ChangeLamp LM2,0,MysteryColor,7,3,3,1
			ChangeLamp LM3,0,MysteryColor,7,3,3,1
			ChangeLamp LM4,0,MysteryColor,7,3,3,1
			ChangeLamp LM5,0,MysteryColor,7,3,3,1
			ChangeLamp LMR,0,"orange",7,3,3,1
			'Award the mystery
			For NumTries = 0 to 7
				Num = RndInt(1,8)
				Select Case Num
					Case 1
						If Player(CurrentPlayer).NumProtonRounds < 6 Then 
							WriteToLog "CheckMysteryAward","Added Proton Round"
							AddProtonRound
							Exit Sub
						End If
					Case 2
						If Player(CurrentPlayer).NumProtonRounds > Player(CurrentPlayer).NumProtonLoaded Then 
							WriteToLog "CheckMysteryAward","Loaded Proton Round"
							ReloadProtonRound
							Exit Sub
						End If
					Case 3
						If Player(CurrentPlayer).NumClusterRounds < 2 Then 
							WriteToLog "CheckMysteryAward","Added Cluster Round"
							AddClusterRound
							Exit Sub
						End If
					Case 4 
						If Player(CurrentPlayer).NumClusterRounds > Player(CurrentPlayer).NumClusterLoaded Then
							WriteToLog "CheckMysteryAward","Loaded Cluster Round" 
							ReloadClusterRound
							Exit Sub
						End If
					Case 5
						If Not Player(CurrentPlayer).bInWave Then
							WriteToLog "CheckMysteryAward","Full Fortification"
							SetLampState LF1,1
							SetLampColor LF1,FortifyColor
							SetLampState LF2,1
							SetLampColor LF2,FortifyColor
							CheckFortify
							Exit Sub
						End If
					Case 6
						If Not Player(CurrentPlayer).bInWave Then 
							WriteToLog "CheckMysteryAward","Full Time Warp"
							SetBlinkState LTW1,2,50,"110" 
							SetLampColor LTW1,TimeWarpColor
							SetBlinkState LTW2,2,50,"110" 
							SetLampColor LTW2,TimeWarpColor
							SetBlinkState LTW3,2,50,"110" 
							SetLampColor LTW3,TimeWarpColor
							bWaveTimerPaused = True
							bMysteryActive = False
							CheckTimeWarp
							Exit Sub
						End If
					Case 7
						If Not Player(CurrentPlayer).bInWave Then
							WriteToLog "CheckMysteryAward","Full Shields"
							SetLampState LSC1,1
							SetLampColor LSC1,ShieldsColor 
							SetLampState LSC2,1
							SetLampColor LSC2,ShieldsColor 
							SetLampState LSC3,1
							SetLampColor LSC3,ShieldsColor 
							CheckShieldCharge
							Exit Sub
						End If
					Case 8
							WriteToLog "CheckMysteryAward","Full Health"
							AudioCallout "mystery full repairs" 
							SetHealth 9
							Exit Sub
				End Select
			Next
			'Default behavior if all random choices fail too many times
			WriteToLog "CheckMysteryAward","Full Health (default)"
			AudioCallout "mystery full repairs" 
			SetHealth 9
		End If
	End If
End Sub




' POWER UP: PROTON CANNON
'**********************************************

const ProtonColor = "blue"

dim ibaProton : ibaProton = 1
dim ProtonRoundsArray 
ProtonRoundsArray = Array(LPR1,LPR2,LPR3,LPR4,LPR5,LPR6)


Sub CheckProtonCharge
	BlinkTrail baProtonCharge,ProtonColor,1,10,1,5,1

	'This can NOT happen during Meteor MBs
	if Not Player(CurrentPlayer).bInWave Then
		'Check if we can reload a round. 
		If Player(CurrentPlayer).NumProtonRounds > Player(CurrentPlayer).NumProtonLoaded Then
			If LampState(LPC1) = 0 Then
				SetLampState LPC1,1
				SetLampColor LPC1,ProtonColor
			Elseif LampState(LPC2) = 0 Then
				SetLampState LPC2,1
				SetLampColor LPC2,ProtonColor
			Elseif LampState(LPC3) = 0 Then
				SetLampState LPC3,1
				SetLampColor LPC3,ProtonColor
				ReloadProtonRound
			End If
		Else
			SetLampState LPC1,0
			SetLampState LPC2,0
			SetLampState LPC3,0
		End If
		
	End If
End Sub

'This is called from CheckCombo
Sub AddProtonRound
	If Player(CurrentPlayer).NumProtonRounds < 6 Then
		AudioCallout "add proton capacity" 
		Player(CurrentPlayer).NumProtonRounds = Player(CurrentPlayer).NumProtonRounds + 1
		SetLampColor ProtonRoundsArray(Player(CurrentPlayer).NumProtonRounds-1),"white"
		SetLampState ProtonRoundsArray(Player(CurrentPlayer).NumProtonRounds-1),1
		Select Case ibaProton
			Case 1: BlinkTrail baProtonRounds1,"white",1,10,1,5,1  : ibaProton=2
			Case 2: BlinkTrail baProtonRounds2,"white",1,10,1,5,1  : ibaProton=1
		End Select
	Else
		'Rounds maxed out
	End If
End Sub


Sub ReloadProtonRound
	If Player(CurrentPlayer).NumProtonRounds > Player(CurrentPlayer).NumProtonLoaded Then
		'Load round
		AudioCallout "load proton"
		Player(CurrentPlayer).NumProtonLoaded = Player(CurrentPlayer).NumProtonLoaded + 1
		SetLampColor ProtonRoundsArray(Player(CurrentPlayer).NumProtonLoaded-1),ProtonColor
		SetLampState LPC1,0
		SetLampState LPC2,0
		SetLampState LPC3,0
		'Light show
		Select Case ibaProton
			Case 1: BlinkTrail baProtonRounds1,ProtonColor,1,10,1,5,1  : ibaProton=2
			Case 2: BlinkTrail baProtonRounds2,ProtonColor,1,10,1,5,1  : ibaProton=1
		End Select
	Else
		'All available rounds are loaded already
	End If
End Sub


Sub FireProtonRound
	dim ID
	If Player(CurrentPlayer).NumProtonLoaded > 0 and NumMeteorsActive > 0 Then
		'Unload round
		SetLampColor ProtonRoundsArray(Player(CurrentPlayer).NumProtonLoaded-1),"white"
		Player(CurrentPlayer).NumProtonLoaded = Player(CurrentPlayer).NumProtonLoaded - 1
		'Light show
		BlinkLamp LMR1,ProtonColor,7,3,3,1
		BlinkLamp LMR2,ProtonColor,7,3,3,1	
		BlinkLamp LCR1,ProtonColor,7,3,3,1
		BlinkLamp LCR2,ProtonColor,7,3,3,1	
		dim i : for i = 0 to 5
			BlinkLamp ProtonRoundsArray(i),ProtonColor,13,3,3,1
		next
		If Player(CurrentPlayer).NumProtonLoaded <= 0 Then
			SetLampState LPF,0
			SetLampState LPC4,0
			SetLampState LPC5,0
		End If
		ID = ClosestMeteorID
		WriteToLog "FireProtonRound", "ClosestMeteorID = " & ID
		BlinkLamp MeteorLights(ID-1),ProtonColor,13,3,3,1
		'Destroy Meteor
		DestroyMeteor ID
	Else
		'There are no loaded rounds
		'AudioCallout "proton empty"
	End If
End Sub



' POWER UP: CLUSTER BOMBS
'**********************************************

const ClusterColor = "magenta"

dim ClusterRoundsArray 
ClusterRoundsArray = Array(LCR1,LCR2)


Sub CheckClusterCharge
	BlinkTrail baClusterCharge,ClusterColor,1,10,1,5,1

	'This can happen during Meteor MBs
	'Check if we can reload a round. 
	If Player(CurrentPlayer).NumClusterRounds > Player(CurrentPlayer).NumClusterLoaded Then
		If LampState(LCC1) = 0 Then
			SetLampState LCC1,1
			SetLampColor LCC1,ClusterColor
		Elseif LampState(LCC2) = 0 Then
			SetLampState LCC2,1
			SetLampColor LCC2,ClusterColor
		Elseif LampState(LCC3) = 0 Then
			SetLampState LCC3,1
			SetLampColor LCC3,ClusterColor
			ReloadClusterRound
		End If
	Else
		SetLampState LCC1,0
		SetLampState LCC2,0
		SetLampState LCC3,0
	End If
End Sub


'This is called from CheckCombo
Sub AddClusterRound
	If Player(CurrentPlayer).NumClusterRounds < 2 Then
		AudioCallout "add cluster capacity"
		Player(CurrentPlayer).NumClusterRounds = Player(CurrentPlayer).NumClusterRounds + 1
		SetLampColor ClusterRoundsArray(Player(CurrentPlayer).NumClusterRounds-1),"white"
		SetLampState ClusterRoundsArray(Player(CurrentPlayer).NumClusterRounds-1),1
		'BlinkTrail baProtonRounds,"white",1,10,1,5,1
		BlinkLamp LCR1,"white",7,3,3,1
		BlinkLamp LCR2,"white",7,3,3,1
	Else
		'Rounds maxed out so load a round instead 
		'ReloadClusterRound  ' -- disabled for now
	End If
End Sub


Sub ReloadClusterRound
	If Player(CurrentPlayer).NumClusterRounds > Player(CurrentPlayer).NumClusterLoaded Then
		AudioCallout "load cluster bomb"
		Player(CurrentPlayer).NumClusterLoaded = Player(CurrentPlayer).NumClusterLoaded + 1
		SetLampColor ClusterRoundsArray(Player(CurrentPlayer).NumClusterLoaded-1),ClusterColor
		SetLampState LCC1,0
		SetLampState LCC2,0
		SetLampState LCC3,0
		BlinkTrail baClusterRounds,ClusterColor,1,10,1,5,1
	Else
		'All available rounds are loaded already
	End If
End Sub


Sub FireClusterRound
	dim i 
	'This can ONLY happen during Meteor MBs
	if Player(CurrentPlayer).bInWave Then
		If Player(CurrentPlayer).NumClusterLoaded > 0 Then
			'Remove cluster round
			SetLampColor ClusterRoundsArray(Player(CurrentPlayer).NumClusterLoaded-1),"white"
			SetLampState ClusterRoundsArray(Player(CurrentPlayer).NumClusterLoaded-1),1
			Player(CurrentPlayer).NumClusterLoaded = Player(CurrentPlayer).NumClusterLoaded - 1
			'Light show
			BlinkLamp LMR1,ClusterColor,7,3,3,1
			BlinkLamp LMR2,ClusterColor,7,3,3,1	
			BlinkLamp LCR1,ClusterColor,7,3,3,1
			BlinkLamp LCR2,ClusterColor,7,3,3,1	
			for i = 0 to 5
				BlinkLamp ProtonRoundsArray(i),ClusterColor,13,3,3,1
			next
			for i = 0 to 3
				BlinkLamp MeteorLights(i),ClusterColor,13,3,3,1
			next
			'Blow up all meteors that are currently standing
			DestroyMeteor 1
			DestroyMeteor 2
			DestroyMeteor 3
			DestroyMeteor 4
		Else
			'AudioCallout "cluster bombs empty"
		End If
	End If
End Sub



' POWER UP: MOON MISSILES
'**********************************************

const MoonMissleColor = "yellow"
dim MoonRoundsArray 
MoonRoundsArray = Array(LMR1,LMR2)
dim swLock1State : swLock1State = 0
dim swLock2State : swLock2State = 0
dim swLock3State : swLock3State = 0
LockPin.Timerinterval = 280
swLock1.Timerinterval = 1000
swLock2.Timerinterval = 1000
swLock3.Timerinterval = 1000
dim bAllowMoonLaunch
bAllowMoonLaunch = true 'TODO: make moon lanuch not possible if last ball hits outlane switch

Sub CheckMoonLock
	'Lock if possible
	If LampState(LMLR) > 0 Then
		ChangeLamp LLO,0,MoonMissleColor,7,3,3,1
		ChangeLamp LLI,0,MoonMissleColor,7,3,3,1
		ChangeLamp LRI,0,MoonMissleColor,7,3,3,1
		ChangeLamp LRO,0,MoonMissleColor,7,3,3,1
		ChangeLamp LMLR,0,MoonMissleColor,7,3,3,1
		If swLock2State = 1 Then 'this should never happen
			SolLockPin False
			LockPin.Timerenabled = True
		Else
			AudioCallout "moon missile locked"
			SolLockPin True
			AddMultiball 1
			BallsOnPlayfield = BallsOnPlayfield - 1
			BallsLocked = BallsLocked + 1
			Player(CurrentPlayer).NumMoonLocked = Player(CurrentPlayer).NumMoonLocked + 1
			'load moon round
			SetLampColor MoonRoundsArray(Player(CurrentPlayer).NumMoonLocked-1),MoonMissleColor
			SetLampState MoonRoundsArray(Player(CurrentPlayer).NumMoonLocked-1),1
			BlinkLamp LMR1,MoonMissleColor,7,3,3,1
			BlinkLamp LMR2,MoonMissleColor,7,3,3,1
		End If
	Else 
		If swLock1State = 1 Then
			SolLockPin False
			LockPin.Timerenabled = True
		End If
	End If
End Sub

Sub LockPin_Timer
	SolLockPin True
	LockPin.Timerenabled = False
End Sub

Sub swLock1_Timer
	swLock1.Timerenabled = False
	'handle case where fly ball lands on lock ramp and should not be there
	If swLock1State = 1 and Player(CurrentPlayer).NumMoonLocked < 1 Then
		SolLockPin False
		LockPin.Timerenabled = True
	End If
End Sub

Sub swLock2_Timer
	swLock2.Timerenabled = False
	'handle case where fly ball lands on lock ramp and should not be there
	If swLock2State = 1 and Player(CurrentPlayer).NumMoonLocked < 2 Then
		SolLockPin False
		LockPin.Timerenabled = True
	End If
End Sub

Sub swLock3_Timer
	swLock3.Timerenabled = False
	'handle case where fly ball lands on lock ramp and should not be there
	If swLock3State = 1 Then
		SolLockPin False
		LockPin.Timerenabled = True
	End If
End Sub


Sub CheckMoonLockReady
	'This can NOT happen during Meteor MBs
	if Not Player(CurrentPlayer).bInWave Then
		'Ready lock if possible
		If LampState(LLO)>0 and _
		   LampState(LLI)>0 and _
		   LampState(LRI)>0 and _
	       LampState(LRO)>0 and _
		   LampState(LMLR)=0 Then
			ChangeLamp LMLR,2,MoonMissleColor,7,3,3,1
			AudioCallout "moon lock ready"
			'Add moon round
			DebugPrint "Player(CurrentPlayer).NumMoonRounds = "&Player(CurrentPlayer).NumMoonRounds
			Player(CurrentPlayer).NumMoonRounds = Player(CurrentPlayer).NumMoonRounds + 1
			SetLampColor MoonRoundsArray(Player(CurrentPlayer).NumMoonRounds-1),"white"
			SetLampState MoonRoundsArray(Player(CurrentPlayer).NumMoonRounds-1),1
			BlinkLamp LMR1,"white",7,3,3,1
			BlinkLamp LMR2,"white",7,3,3,1			
		End If
	End If
End Sub

Sub LauchMoonMissiles    'Launches all available moon missiles
	If bAllowMoonLaunch = True and Player(CurrentPlayer).NumMoonLocked > 0 and LockPin.Timerenabled=False Then
		WriteToLog "LauchMoonMissiles", "Start: NumMoonLocked=" & Player(CurrentPlayer).NumMoonLocked & " BallsLocked=" & BallsLocked & " BallsOnPlayfield=" & BallsOnPlayfield
		AudioCallout "moon missile launched"
		'Remove moon rounds
		SetLampColor MoonRoundsArray(0),"white"
		SetLampColor MoonRoundsArray(1),"white"
		SetLampState MoonRoundsArray(0),0
		SetLampState MoonRoundsArray(1),0
		Player(CurrentPlayer).NumMoonRounds = 0
		BlinkLamp LMR1,MoonMissleColor,7,3,3,1
		BlinkLamp LMR2,MoonMissleColor,7,3,3,1	
		BlinkLamp LCR1,MoonMissleColor,7,3,3,1
		BlinkLamp LCR2,MoonMissleColor,7,3,3,1	
		dim i : for i = 0 to 5
			BlinkLamp ProtonRoundsArray(i),MoonMissleColor,13,3,3,1
		next
		'Launch ball from moon
		Player(CurrentPlayer).NumMoonLocked = Player(CurrentPlayer).NumMoonLocked - BallsLocked
		If BallsLocked > 0 Then
			BallsOnPlayfield = BallsOnPlayfield + BallsLocked
			BallsLocked = 0
			If BallsOnPlayfield > 1 Then bMultiBallMode = True
			SolLockPin False    'launch
		End If
		'Launch ball from plunger if not on the moon
		If Player(CurrentPlayer).NumMoonLocked > 0 Then
			AddMultiball Player(CurrentPlayer).NumMoonLocked
		End If
		Player(CurrentPlayer).NumMoonLocked = 0
		WriteToLog "LauchMoonMissiles", "End: NumMoonLocked=" & Player(CurrentPlayer).NumMoonLocked & " BallsLocked=" & BallsLocked & " BallsOnPlayfield=" & BallsOnPlayfield
	End If
End Sub

Sub RotateLaneLightsLeft
	Dim SavedState
	SavedState = LampState(LRO)
	SetLampState LRO,LampState(LLO)
	SetLampState LLO,LampState(LLI)
	SetLampState LLI,LampState(LRI)
	SetLampState LRI,SavedState
End Sub

Sub RotateLaneLightsRight
	Dim SavedState
	SavedState = LampState(LLO)
	SetLampState LLO,LampState(LRO)
	SetLampState LRO,LampState(LRI)
	SetLampState LRI,LampState(LLI)
	SetLampState LLI,SavedState
End Sub




' POWER UP: DEFENSE FORTIFICATION
'**********************************************

const FortifyColor = "purple"
const FortifyTimePerLight = 7

Sub CheckFortify
	BlinkTrail baFortify,FortifyColor,1,10,1,5,1

	'This can NOT happen during Meteor MBs
	if Not Player(CurrentPlayer).bInWave Then
		'Charge fortification if possible
		If LampState(LF1) = 0 Then
			SetLampState LF1,1
			SetLampColor LF1,FortifyColor
		Elseif LampState(LF2) = 0 Then
			SetLampState LF2,1
			SetLampColor LF2,FortifyColor
		Elseif LampState(LF3) = 0 Then
			SetLampState LF3,1
			SetLampColor LF3,FortifyColor
			AudioCallout "full fortification"
		End If
	End If
End Sub



Sub FortifyDefenses
	dim i, FortifyTime
	FortifyTime = 0
	If LampState(LF3) > 0 Then     
		FortifyTime = FortifyTimePerLight*3
	Elseif LampState(LF2) > 0 Then 
		FortifyTime = FortifyTimePerLight*2
	Elseif LampState(LF1) > 0 Then 
		FortifyTime = FortifyTimePerLight
	End If
	For i = 0 to 2 : SetLampState baFortify(i),0 : next
	If FortifyTime > 0 Then 
		BlinkTrail baFortify,FortifyColor,1,10,1,5,1
		EnableBallSaver FortifyTime
	End If
End Sub




' POWER UP: SHILEDS
'**********************************************

const ShieldsColor = "darkblue"

Sub CheckShieldCharge
	if Not Player(CurrentPlayer).bInWave Then
		BlinkTrail baShieldCharge,ShieldsColor,1,10,1,5,1  
		If LampState(LSC1) = 0 Then
			SetLampState LSC1,1
			SetLampColor LSC1,ShieldsColor
		Elseif LampState(LSC2) = 0 Then
			SetLampState LSC2,1
			SetLampColor LSC2,ShieldsColor
		Elseif LampState(LSC3) = 0 Then
			SetLampState LSC3,1
			SetLampColor LSC3,ShieldsColor
		Elseif LampState(LSC4) = 0 Then
			SetLampState LSC4,1
			SetLampColor LSC4,ShieldsColor
			ChangeLamp LSL,1,ShieldsColor,7,2,2,1
			ChangeLamp LSR,1,ShieldsColor,7,2,2,1
			Player(CurrentPlayer).bShieldsOn = True
			AudioCallout "shieldsup"
		End If
	End If
End Sub

Sub ShieldsDown
	ChangeLamp LSC1,0,ShieldsColor,7,3,3,1
	ChangeLamp LSC2,0,ShieldsColor,7,3,3,1
	ChangeLamp LSC3,0,ShieldsColor,7,3,3,1
	ChangeLamp LSC4,0,ShieldsColor,7,3,3,1
	ChangeLamp LSL,0,ShieldsColor,7,3,3,1
	ChangeLamp LSR,0,ShieldsColor,7,3,3,1
	Player(CurrentPlayer).bShieldsOn = False
End Sub



' POWER UP: TIME WARP
'**********************************************

const TimeWarpColor = "white"
TimeWarpTimer.Interval = 7000

Sub CheckTimeWarp
	BlinkTrail baTimeWarp,TimeWarpColor,1,10,1,5,1

	'This can NOT happen during Meteor MBs
	if Not Player(CurrentPlayer).bInWave Then
		'Charge fortification if possible
		If LampState(LTW1) = 0 Then
			SetBlinkState LTW1,2,50,"110" 
			SetLampColor LTW1,TimeWarpColor
			TimeWarpTimer.Enabled = False : TimeWarpTimer.Enabled = True'
			'Turn on the time warp here
			AudioCallout "time warp intiated" 
			bWaveTimerPaused = True
		Elseif LampState(LTW2) = 0 Then
			SetBlinkState LTW2,2,50,"110" 
			SetLampColor LTW2,TimeWarpColor
			TimeWarpTimer.Enabled = False : TimeWarpTimer.Enabled = True
		Elseif LampState(LTW3) = 0 Then
			SetBlinkState LTW3,2,50,"110" 
			SetLampColor LTW3,TimeWarpColor
			TimeWarpTimer.Enabled = False : TimeWarpTimer.Enabled = True
		Elseif LampState(LTW4) = 0 Then
			SetBlinkState LTW4,2,50,"110" 
			SetLampColor LTW4,TimeWarpColor
			TimeWarpTimer.Enabled = False : TimeWarpTimer.Enabled = True
			AudioCallout "full time warp"
		End If
	End If
End Sub



Sub CancelTimeWarp
	bWaveTimerPaused = False
	SetLampState LTW1,0
	SetLampState LTW2,0
	SetLampState LTW3,0
	SetLampState LTW4,0
End Sub


Sub TimeWarpTimer_Timer
	If LampState(LTW4) > 0 Then
		SetLampState LTW4,0
	Elseif LampState(LTW3) > 0 Then
		SetLampState LTW3,0
	Elseif LampState(LTW2) > 0 Then
		SetLampState LTW2,0
	Elseif LampState(LTW1) > 0 Then
		SetLampState LTW1,0
		TimeWarpTimer.Enabled = False
		'Turn off the time warp here
		bWaveTimerPaused = False
	End If
End Sub




' POWER UP: REPAIR
'**********************************************

const HealthColor789 = "green"  	'7-9
const HealthColor56 = "yellow"		'5-6
const HealthColor34 = "orange"		'3-4
const HealthColor12 = "red"			'1-2
dim HitsPerRepair : HitsPerRepair = 10


Sub CheckRepair
	dim HealthColor, i
	If Player(CurrentPlayer).Health < 9 Then
		Player(CurrentPlayer).NumRepairHits = Player(CurrentPlayer).NumRepairHits + 1
		If Player(CurrentPlayer).NumRepairHits > HitsPerRepair Then
			Player(CurrentPlayer).NumRepairHits  = 0
			Player(CurrentPlayer).Health = Player(CurrentPlayer).Health + 1
			Select Case Player(CurrentPlayer).Health
				Case 1,2: HealthColor = HealthColor12
				Case 3,4: HealthColor = HealthColor34
				Case 5,6: HealthColor = HealthColor56
				Case 7,8,9: HealthColor = HealthColor789
			End Select
			BlinkTrail baHealth,HealthColor,1,10,1,5,1
			For i = 0 to Player(CurrentPlayer).Health-1
				SetLampState baHealth(i),1
				SetLampColor baHealth(i),HealthColor
			Next
		End If
	End If
End Sub



Sub AddDamage
	dim HealthColor, i
	'Remove health
	Player(CurrentPlayer).Health = Player(CurrentPlayer).Health - 1
	If Player(CurrentPlayer).Health < 0 Then Player(CurrentPlayer).Health = 0
	Select Case Player(CurrentPlayer).Health
		Case 0.1,2: HealthColor = HealthColor12
		Case 3,4: HealthColor = HealthColor34
		Case 5,6: HealthColor = HealthColor56
		Case 7,8,9: HealthColor = HealthColor789
	End Select
	BlinkTrail baHealth,HealthColor,1,10,1,5,-1
	SetLampState baHealth(Player(CurrentPlayer).Health),0
	If Player(CurrentPlayer).Health = 2 Then AudioCallout "low health"
	'Check if flippers should die
	If Player(CurrentPlayer).Health <= 0 Then 
		DisableTable True
		'TODO: Sad light show, etc
	Else
		For i = 0 to Player(CurrentPlayer).Health-1
			SetLampState baHealth(i),1
			SetLampColor baHealth(i),HealthColor
		Next
	End If
End Sub



Sub SetHealth(health)
	WriteToLog "SetHealth","health = " & health
	dim HealthColor, i
	Player(CurrentPlayer).Health = health
	Select Case Player(CurrentPlayer).Health
		Case 1,2: HealthColor = HealthColor12
		Case 3,4: HealthColor = HealthColor34
		Case 5,6: HealthColor = HealthColor56
		Case 7,8,9: HealthColor = HealthColor789
	End Select
	BlinkTrail baHealth,HealthColor,1,10,1,5,1
	For i = 0 to 8 : SetLampState baHealth(i),0 : next
	For i = 0 to Player(CurrentPlayer).Health-1
		SetLampState baHealth(i),1
		SetLampColor baHealth(i),HealthColor
	Next
End Sub




' WAVES
'**********************************************
Const WaveColor = "red"
Const MaxTimeBtwMeteors = 5
Const TimeBtwWaves = 50

WaveTimer.Enabled = False
WaveTimer.Interval = 1000

Dim TimePerMeteor : TimePerMeteor = 13
Dim MeteorLights : MeteorLights = Array(LMet1,LMet2,LMet3,LMet4)
Dim WaveLights : WaveLights = Array(LW1,LW2,LW3,LW4,LW5,LW6,LW7,LW8,LW9)
Dim WaveLights10 : WaveLights10 = Array(LW1,LW2,LW3,LW4,LW5,LW6,LW7,LW8,LW9,LWiz)
Dim WaveNumMeteors : WaveNumMeteors = Array(0,4,7,10,13,16,19,22,25,28)
Dim Meteor1, Meteor2, Meteor3, Meteor4, Meteors
Dim NextMeteorIndex, NumMeteorsThisWave, NumMeteorsLeft, NumMeteorsActive, bOnLastMeteor, LastMeteorStatus
Dim bWaveTimerPaused, bWaveFailed

Class MeteorTarget
    Public ID
    Public MeteorIndex
    Public TimeLeft
    Public TimeToNext

	Public Sub Class_Initialize 
		Reset
	End Sub

	Public Sub Reset
		MeteorIndex = ID
		TimeLeft = 0
		TimeToNext = RndInt(1,MaxTimeBtwMeteors)
    End Sub

    Public Sub Hit  'Note: This sub is called whenever a drop target is dropped
		If MeteorIndex > 0 Then  'If meteor active, then destroy it and set default values
			SetLampState MeteorLights(ID-1),0
			TimeLeft = 0
			MeteorIndex = 0
			NumMeteorsLeft = NumMeteorsLeft - 1
			NumMeteorsActive = NumMeteorsActive - 1
			WriteToLog "MetoerTarget.Hit", "NumMeteorsActive = " & NumMeteorsActive
			TimeToNext = RndInt(1,MaxTimeBtwMeteors)
			'Update segmented Display
			ShowMeteorStatus
			'Create a pending meteor if there are more left in the wave
			If Not bOnLastMeteor Then 
				MeteorIndex = NextMeteorIndex
				NextMeteorIndex = NextMeteorIndex + 1
				WriteToLog "MetoerTarget.Hit", "Meteors Left = " & NumMeteorsLeft
				If NumMeteorsLeft = 1 Then bOnLastMeteor = True
			Else
				'If this is the last meteor, then successfully stop wave
				If not bWaveFailed Then CompleteWave
			End If
		End If
    End Sub

    Public Sub Update
        If MeteorIndex > 0 Then    'If assigned to a meteor
            'If this is an active meter and it has not hit Earth yet
            If TimeLeft > 0 Then 
                TimeLeft = TimeLeft - 1
                If TimeLeft = 0 Then  'HIT EARTH !!!!
					WriteToLog "Meteors(" & ID & ").Update", "HIT EARTH !!!!"
                    'Explosion Light Show
					EarthHitLights
					'Destroy meteor on impact and add earth damage
					SetLampState MeteorLights(ID-1),0
					DestroyMeteor ID
                    AddDamage
					ShowMeteorStatus
                ElseIf TimeLeft < TimePerMeteor*0.3 Then
					SetLampColor MeteorLights(ID-1),"red"
					SetBlinkState MeteorLights(ID-1),2,60,"10" 
                ElseIf TimeLeft < TimePerMeteor*0.6 Then
					SetLampColor MeteorLights(ID-1),"yellow"
					SetBlinkState MeteorLights(ID-1),2,120,"10" 
                ElseIf TimeLeft <= TimePerMeteor    Then 
					SetLampColor MeteorLights(ID-1),"white"
					SetBlinkState MeteorLights(ID-1),2,250,"10" 
                End If
				WriteToLog "Meteors(" & ID & ").Update", "TimeLeft = " & TimeLeft
            'If this is a meteor that is about to become active
            ElseIf TimeToNext > 0  and MeteorIndex <= NumMeteorsThisWave Then
                TimeToNext = TimeToNext - 1
				WriteToLog "Meteors(" & ID & ").Update", "TimeToNext = " & TimeToNext
                'Make meteor active
                If TimeToNext <= 0 Then
                    'Pop up the drop target
					NumMeteorsActive = NumMeteorsActive + 1
                    Select Case ID
                        Case 1: SolDT1 True
                        Case 2: SolDT2 True
                        Case 3: SolDT3 True
                        Case 4: SolDT4 True
                    End Select
                    'Start the timer for Earth hit
                    TimeLeft = TimePerMeteor
                End If
            End If
        End If
    End Sub

End Class


Sub EarthHitLights
	If Not bEarthJustHit Then
		bEarthJustHit = True
		SetLampColor LWiz,"white"
		SetLampColor LSL,"white"  
		SetLampColor LSR,"white"
		SetLampColor LLO,"white"
		SetLampColor LLI,"white"
		SetLampColor LRI,"white"
		SetLampColor LRO,"white"
		LightSeqEarthHit.TimerInterval = 400
		LightSeqEarthHit.TimerEnabled = True
		LightSeqEarthHit.UpdateInterval = 8
		LightSeqEarthHit.Play SeqCircleOutOn, 13
	End If
End Sub
Sub LightSeqEarthHit_Timer
	bEarthJustHit = False
	LightSeqEarthHit.StopPlay
	SetLampColor LWiz,"red"
	SetLampColor LSL,ShieldsColor
	SetLampColor LSR,ShieldsColor
	SetLampColor LLO,MysteryColor
	SetLampColor LLI,MysteryColor
	SetLampColor LRI,MysteryColor
	SetLampColor LRO,MysteryColor
End Sub


Sub InitMeteors
    Set Meteor1 = New MeteorTarget : Meteor1.ID = 1
    Set Meteor2 = New MeteorTarget : Meteor2.ID = 2
    Set Meteor3 = New MeteorTarget : Meteor3.ID = 3
    Set Meteor4 = New MeteorTarget : Meteor4.ID = 4
    Meteors = Array(Meteor1, Meteor2, Meteor3, Meteor4)
End Sub


Sub StartWave
	WriteToLog "StartWave", "----- STARTED -----"
	'Fortify ball saver if possible
	EnableBallSaver 3
	FortifyDefenses
	'Save lamps and turn off some
	Player(CurrentPlayer).SaveLamps
	WaveStartTurnOffLamps
    'Initialize some player variables
    Player(CurrentPlayer).bInWave = True
    Player(CurrentPlayer).WaveTime = TimeBtwWaves
    Player(CurrentPlayer).CurrentWave = Player(CurrentPlayer).LastWaveCompleted + 1
    'Initialize meteors
    dim i : for i = 0 to 3
        Meteors(i).Reset 
    next
	bWaveTimerPaused = False
	bWaveFailed = False
    NextMeteorIndex = 5
	NumMeteorsActive = 0
	NumMeteorsThisWave = WaveNumMeteors(Player(CurrentPlayer).CurrentWave)
	NumMeteorsLeft = NumMeteorsThisWave
    bOnLastMeteor = False
	LastMeteorStatus = 12
	'Prepare for meteor falling effect by clearing wave lights
	For i = 0 to 8 : SetLampState WaveLights(i),0 : next
	For i = 0 to 9 : SetLampColor WaveLights10(i),"red" : next
	FallingMeteorAnim_Timer
	'Light the proton cannon fire target
	If Player(CurrentPlayer).NumProtonLoaded > 0 Then
		SetLampColor LPF,ProtonColor
		SetLampColor LPC4,ProtonColor
		SetLampColor LPC5,ProtonColor
		SetBlinkState LPF,2,120,"10"
		SetBlinkState LPC4,2,120,"10"
		SetBlinkState LPC5,2,120,"10"
	End If
	'Turn off GI
	EnableGI 0
	'Clear led display
	SegDisplay01.Clear
	SegDisplay10.Clear
	SegDisplay01.DisplayChar(0)
	SegDisplay10.DisplayChar(0)
	'Add multiballs
	AddMultiball 2
	'Diverter Pin
	SolDiverterPin True
End Sub


Sub CompleteWave
	WriteToLog "CompleteWave", "----- COMPLETED -----"
	AudioCallout "wave done"
    If Player(CurrentPlayer).bInWave Then
        Player(CurrentPlayer).bInWave = False
        Player(CurrentPlayer).LastWaveCompleted = Player(CurrentPlayer).CurrentWave
		'Stop falling meteor animation
		FallingMeteorAnim.Enabled = False
		for i = 0 to Ubound(WaveLights10)
			SetLampFade WaveLights10(i),40,100
		next
		'Restore inserts as they were
		WaveDoneRestoreLamps
		'Relight wave lights
		dim i : For i = 0 to Player(CurrentPlayer).CurrentWave-1 : SetLampState WaveLights(i),1 : next
        ChangeLamp WaveLights(Player(CurrentPlayer).CurrentWave-1),1,WaveColor,7,3,3,1
        'Light EB 
		'If Player(CurrentPlayer).LastWaveCompleted=4 Then SetExtraBallReady
		If Player(CurrentPlayer).LastWaveCompleted=6 Then SetExtraBallReady
		'TODO: Achievement light show
    End If
	EnableGI 1
	SolDiverterPin False
	NumMeteorsActive = 0
	SetLampState LPF,0
	SetLampState LPC4,0
	SetLampState LPC5,0
	CheckMoonLockReady
End Sub


Sub FailWave
    if Player(CurrentPlayer).bInWave Then 
		WriteToLog "FailWave", "----- FAILED -----"
        Player(CurrentPlayer).bInWave = False
		'Stop falling meteor animation
		FallingMeteorAnim.Enabled = False
		for i = 0 to Ubound(WaveLights10)
			SetLampFade WaveLights10(i),40,100
		next
		'Restore inserts as they were
		WaveDoneRestoreLamps
		'Relight wave lights
		dim i : For i = 0 to Player(CurrentPlayer).LastWaveCompleted-1 : SetLampState WaveLights(i),1 : next
        ChangeLamp WaveLights(Player(CurrentPlayer).CurrentWave-1),0,WaveColor,7,3,3,1
		bWaveFailed = True
        SolDT1 False
        SolDT2 False
        SolDT3 False
        SolDT4 False
    End If
	SolDiverterPin False
	NumMeteorsActive = 0
	SetLampState LPF,0
	SetLampState LPC4,0
	SetLampState LPC5,0
End Sub


Sub WaveStartTurnOffLamps
	SetLampState LCC1,0
	SetLampState LCC2,0
	SetLampState LCC3,0
	SetLampState LPC1,0
	SetLampState LPC2,0
	SetLampState LPC3,0
	SetLampState LM1,0
	SetLampState LM2,0
	SetLampState LM3,0
	SetLampState LM4,0
	SetLampState LM5,0
	SetLampState LMR,0
	SetLampState LF1,0
	SetLampState LF2,0
	SetLampState LF3,0
	SetLampState LSC1,0
	SetLampState LSC2,0
	SetLampState LSC3,0
	SetLampState LSC4,0
	SetLampState LLO,0
	SetLampState LLI,0
	SetLampState LRI,0
	SetLampState LRO,0
	SetLampState LMLR,0
End Sub


Sub WaveDoneRestoreLamps
	Player(CurrentPlayer).RestorLamps_ClusterCharge
	Player(CurrentPlayer).RestorLamps_ProtonCharge
	Player(CurrentPlayer).RestorLamps_Mystery
	Player(CurrentPlayer).RestorLamps_Fortify
	Player(CurrentPlayer).RestorLamps_MoonLockLanes
	If Player(CurrentPlayer).bShieldsOn Then Player(CurrentPlayer).RestorLamps_SheildCharge
End Sub



Sub DestroyMeteor(ID)
	Select Case ID
		Case 1: SolDT1 False
		Case 2: SolDT2 False
		Case 3: SolDT3 False
		Case 4: SolDT4 False
	End Select
End Sub


Function ClosestMeteorID
	Dim i, LowestTime
	ClosestMeteorID = 0
	LowestTime = 1000
	For i = 0 to 3
		If Meteors(i).MeteorIndex > 0 and Meteors(i).TimeLeft > 0 Then
			If Meteors(i).TimeLeft < LowestTime Then
				LowestTime = Meteors(i).TimeLeft
				ClosestMeteorID = Meteors(i).ID
			End If
		End If
	Next
End Function




Sub EnableWaveTimer(seconds)
	'Set display to x seconds
	SetDisplayNumber seconds
	Player(CurrentPlayer).WaveTime = seconds
	WaveTimer.Enabled = True
End Sub


Sub DisableWaveTimer
	SegDisplay01.Clear
	SegDisplay10.Clear
	WaveTimer.Enabled = False
End Sub


Sub WaveTimer_Timer
	dim i
    If Player(CurrentPlayer).bInWave Then
        for i = 0 to 3
            Meteors(i).Update
        next
		ShowMeteorStatus
    Else
        If Not bWaveTimerPaused Then 
			Player(CurrentPlayer).WaveTime = Player(CurrentPlayer).WaveTime - 1
			WriteToLog "WaveTimer_Timer", "Count down time = " & Player(CurrentPlayer).WaveTime
			SetDisplayNumber Player(CurrentPlayer).WaveTime
			If Player(CurrentPlayer).WaveTime = 5 Then AudioCallout "sensors scanning"
			If Player(CurrentPlayer).WaveTime = 2 Then AudioCallout "wave started"
			If Player(CurrentPlayer).WaveTime <= 0 Then StartWave
		End If
    End If
End Sub


Sub ShowMeteorStatus
	Dim Status, Num, i
	Status = NumMeteorsLeft / NumMeteorsThisWave
	Status = Int(Status*12)
	WriteToLog "ShowMeteorStatus","LastMeteorStatus = " & LastMeteorStatus & " Status = " & Status
	Num = LastMeteorStatus - Status
	If Num > 0 Then
		For i = 1 to Num
			If SegDisplay01.bSegsOff Then
				SegDisplay10.RandomSegOff
			ElseIf SegDisplay10.bSegsOff Then
				SegDisplay01.RandomSegOff
			Else
				Select Case (Int(rnd*2)+1)
					Case 1: SegDisplay01.RandomSegOff
					Case 2: SegDisplay10.RandomSegOff
				End Select
			End If
		Next
		LastMeteorStatus = Status
	End If
End Sub


Sub SetDisplayNumber(val)
	Dim tens, ones
	tens = Int(val/10)
	ones = Int(val-tens*10)
	if val >= 10 then 
		SegDisplay10.DisplayChar(tens)
		SegDisplay01.DisplayChar(ones)
	else
		SegDisplay10.DisplayChar(0)
		SegDisplay01.DisplayChar(ones)
	end if
End Sub


FallingMeteorAnim.Enabled = False
FallingMeteorAnim.Interval = 1800
	
Sub FallingMeteorAnim_Timer
	dim i
	If FallingMeteorAnim.Enabled = False Then
		FallingMeteorAnim.Enabled = True
		for i = 0 to Ubound(WaveLights10)
			SetLampFade WaveLights10(i),40,400
		next
	End If
	BlinkTrail WaveLights10,"orange",1,10,1,5,1
End Sub






' WIZARD: COMBO COMMAND
'**********************************************

Const ComboColor = "white"

ComboTimer.Interval = 5000
Dim ComboCount : ComboCount = 0
Dim ComboLights : ComboLights = Array(LC1,LC2,LC3,LC4,LC5,LC6,LC7,LC8)

Sub CheckCombo
	'This can NOT happen during Meteor MBs
	If Not Player(CurrentPlayer).bInWave Then
		ComboTimer.Enabled = False : ComboTimer.Enabled = True  'Reset timer
		ComboCount = ComboCount + 1
		SetComboLights ComboCount
		If ComboCount = 3 Then 
			AudioCallout "proton combo" 
			If Player(CurrentPlayer).NumProtonRounds < 6 Then 
				AddProtonRound 
			Else
				ReloadProtonRound
			End If
		ElseIf ComboCount = 5 Then
			AudioCallout "cluster bomb combo" 
			If Player(CurrentPlayer).NumClusterRounds < 2 Then
				AddClusterRound 
			Else
				ReloadClusterRound
			End If 
		ElseIf ComboCount = 8 Then 
			AudioCallout "start combo command mode" 
			StartComboWizard
			ComboCount=0
		End If
		WriteToLog "CheckCombo", "ComboCount = " & ComboCount
	End If
End Sub


Sub SetComboLights(val)
	dim i
	Select Case val
		Case 0: For i = 0 to 7 : BlinkLamp ComboLights(i),ComboColor,3,3,3,1 : next
		Case 3: BlinkTrail ComboLights,ProtonColor,1,10,1,5,1
		Case 6: BlinkTrail ComboLights,ClusterColor,1,10,1,5,1
		Case 8: BlinkTrail ComboLights,ComboColor,1,10,1,5,1
	End Select
	For i = 0 to 7 : SetLampState ComboLights(i),0 : next
	If val > 0 Then
		For i = 0 to val-1
			SetLampState ComboLights(i),1
			SetLampColor ComboLights(i),ComboColor
		Next
	End If
End Sub


Sub ComboTimer_Timer
	ComboCount = 0
	SetComboLights ComboCount
	ComboTimer.Enabled = False
End Sub



Sub StartComboWizard
	'TODO: Wizard mode stuff
End Sub






' WIZARD: FULLY LOADED
'**********************************************





' WIZARD: EARTH KILLER
'**********************************************


Sub StartEarthKillerWizard
	WriteToLog "StartEarthKillerWizard","START"
	'DisableTable True
End Sub





'*********************************************************************************************************
' ZTAB : Table Object Code
'*********************************************************************************************************


'Seven Segment Display
'
'     0
'     _
' 5  |_|  1
' 4  |_|  2
'    
'     3     6 is middle segment
'
' Need lights to drive each segement's lightmaps



Dim SegDisplay01, SegDisplay10

Sub InitSegDisplays
    set SegDisplay01 = new SevenSegDisplay
    set SegDisplay10 = new SevenSegDisplay
    SegDisplay01.SetLights = Array(a00,a01,a02,a03,a04,a05,a06)
    SegDisplay10.SetLights = Array(a10,a11,a12,a13,a14,a15,a16)
	SegDisplay01.Clear
	SegDisplay10.Clear
End Sub

Class SevenSegDisplay
    Private Segs0,Segs1,Segs2,Segs3,Segs4,Segs5,Segs6,Segs7,Segs8,Segs9
    Private Char,SegLights
    Public SegsState, bSegsOff

	Public Sub Class_Initialize 
        ' segment visibility  0,1,2,3,4,5,6
        Segs0 = Array(1,1,1,1,1,1,0)   'number 0
        Segs1 = Array(0,1,1,0,0,0,0)   'number 1
        Segs2 = Array(1,1,0,1,1,0,1)   'number 2
        Segs3 = Array(1,1,1,1,0,0,1)   'number 3
        Segs4 = Array(0,1,1,0,0,1,1)   'number 4
        Segs5 = Array(1,0,1,1,0,1,1)   'number 5
        Segs6 = Array(1,0,1,1,1,1,1)   'number 6
        Segs7 = Array(1,1,1,0,0,0,0)   'number 7
        Segs8 = Array(1,1,1,1,1,1,1)   'number 8
        Segs9 = Array(1,1,1,1,0,1,1)   'number 9
		SegsState = Array(0,0,0,0,0,0,0)
		bSegsOff = True
        Char = Array(Segs0,Segs1,Segs2,Segs3,Segs4,Segs5,Segs6,Segs7,Segs8,Segs9)
    End Sub

    Public Property Let SetLights(aInput) : SegLights = aInput : End Property

    Public Sub DisplayChar(num)
        dim i : For i = 0 to 6
            SegsState(i) = Char(num)(i)
            SegLights(i).state = SegsState(i)
        Next
		bSegsOff = False
		'DebugPrint "SegsState = " & SegsState(0) & " " & SegsState(1) & " " & SegsState(2) & " " & SegsState(3) & " " & SegsState(4) & " " & SegsState(5) & " " & SegsState(6)
    End Sub

    Public Sub Clear
        dim i : For i = 0 to 6
            SegsState(i) = 0
            SegLights(i).state = 0
        Next
		bSegsOff = True
    End Sub

    Public Sub RandomSegOff
		dim SegSum : SegSum = 0
		dim i : For i = 0 to 6 : SegSum = SegSum + SegsState(i) : Next
		If SegSum > 0 Then
            dim r : r = Int(rnd*SegSum) + 1
            SegSum = 0
            For i = 0 to 6
                SegSum = SegSum + SegsState(i)
                If SegSum = r Then 
                    SegsState(i) = 0
                    SegLights(i).state = 0
                    Exit Sub
                End If
            Next
		Else	
			bSegsOff = True
        End If
    End Sub

End Class




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






'******************************************************
'	ZAST: Asteroid Animation
'******************************************************

' FIXME

Const AstVel = 0.01
Dim AstAngle, SpinAst, AstDelta
Dim LMs_Asteroid1, LMs_Asteroid2, LMs_Asteroid3, LMs_Asteroid4

InitAsteroid
Sub InitAsteroid
	Dim i, LM
	' Init angle and visibility
	AstAngle = 0
	AstDelta = 0
	SpinAst = False
	BM_Asteroid1.Visible = 1
	BM_Asteroid2.Visible = 0
	BM_Asteroid3.Visible = 0
	BM_Asteroid4.Visible = 0
	' Create LM arrays
	ReDim LMs_Asteroid1(UBound(BP_Asteroid1)-1)
	ReDim LMs_Asteroid2(UBound(BP_Asteroid2)-1)
	ReDim LMs_Asteroid3(UBound(BP_Asteroid3)-1)
	ReDim LMs_Asteroid4(UBound(BP_Asteroid4)-1)
	For i = 0 to (UBound(BP_Asteroid1)-1): Set LMs_Asteroid1(i) = BP_Asteroid1(i+1): Next
	For i = 0 to (UBound(BP_Asteroid2)-1): Set LMs_Asteroid2(i) = BP_Asteroid2(i+1): Next
	For i = 0 to (UBound(BP_Asteroid3)-1): Set LMs_Asteroid3(i) = BP_Asteroid3(i+1): Next
	For i = 0 to (UBound(BP_Asteroid4)-1): Set LMs_Asteroid4(i) = BP_Asteroid4(i+1): Next
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

	BM_Asteroid1.RotZ = a
'	BM_Asteroid3.RotZ = a
'	BM_Asteroid3.Visible = v3
'	BM_Asteroid3.Opacity = op13

	For each LM in LMs_Asteroid1
		LM.Visible = v1
		LM.Opacity = op13
		LM.RotZ = a
	Next
	For each LM in LMs_Asteroid2
		LM.Visible = v2
		LM.Opacity = op24
		LM.RotZ = a
	Next
	For each LM in LMs_Asteroid3
		LM.Visible = v3
		LM.Opacity = op13
		LM.RotZ = a
	Next
	For each LM in LMs_Asteroid4
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



