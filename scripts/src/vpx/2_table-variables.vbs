
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

Dim DesktopMode
DesktopMode = Table1.ShowDT
