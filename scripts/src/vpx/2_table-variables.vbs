
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
