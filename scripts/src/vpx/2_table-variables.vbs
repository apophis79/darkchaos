
'*****************************************************************************************************************************************
'  ZVAR : Table Variables
'*****************************************************************************************************************************************

' Constants and Global Variables

Const cGameName = "darkchaos"
Const TableName = "Dark Chaos"

'Game Volumes (value from 0 to 1)
Const Volume_GameSoundEffects = 0.5  
Const Volume_GameCallouts = 0.8
Const Volume_GameMusic = 0.8

'Game balls
Const BallSize = 50					'Ball size must be 50
Const BallMass = 1					'Ball mass must be 1
Const tnob = 5						'Total number of balls
Const lob = 0						'Locked balls
Dim gBot

'Table stuff
Dim tablewidth: tablewidth = Table1.width
Dim tableheight: tableheight = Table1.height

Dim GrabMag

Dim DesktopMode
DesktopMode = Table1.ShowDT
