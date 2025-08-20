
'******************************************************
'  ZDRT : DROP TARGETS by Rothbauerw
'******************************************************


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

Set DT1 = (new DropTarget)(s_DTMeteor1, aDTMeteor1, BM_TMet1, 1, 0, False)
Set DT2 = (new DropTarget)(s_DTMeteor2, aDTMeteor2, BM_TMet2, 2, 0, False)
Set DT3 = (new DropTarget)(s_DTMeteor3, aDTMeteor3, BM_TMet3, 3, 0, False)
Set DT4 = (new DropTarget)(s_DTMeteor4, aDTMeteor4, BM_TMet4, 4, 0, False)


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
Const DTBackHitVel = 15 'velocity at which the target will drop if hit from behind
Const DTBackHitDrops = 1 'Set to 0 to disable dropping from back hits, 1 to enable dropping from back hits
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

    If DTBackHitDrops = 1 And perpvel < -DTBackHitVel And perpvelafter >= 0 Then
        DTCheckBrick = 1
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
    
    If (animate = 1 Or animate = 4) And animtime < DTDropDelay Then  'Drop
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
    
    If animate = 2 Then  'Dropping
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
    
    If animate = 3 And animtime < DTDropDelay Then  'Hit, but keep up
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
    
    If animate =  - 1 Then  'Raise
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
    
    If animate =  - 2 And animtime > DTRaiseDelay Then  'Raise recoil
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
  