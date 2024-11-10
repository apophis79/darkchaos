

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
