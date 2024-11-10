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
