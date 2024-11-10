
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

