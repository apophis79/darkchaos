


'*******************************************
' Sounds Configuration
'*******************************************

Sub CreateSounds()

    With CreateGlfSound("aquired_shields")
        .File = "vof_Acquired_Shields" 'Name in VPX Sound Manager
        .Bus = "SFX" ' Sound bus to play on
        .Volume = 0.8 'Override bus volume
        .Duration = 1370
        .EventsWhenStopped = Array("shields_sound_stopped")
    End With
End Sub