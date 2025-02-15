'Final wave wizard shows

Sub CreateFinalWaveWizardShows()


    With CreateGlfShow("asteroid_explodes_show")
        With .AddStep(Null, Null, 1)
          .Lights = Array("tAsteroid|100|ffffff|600")
        End With
        With .AddStep(Null, Null, 1)
          .Lights = Array("tAsteroid|100|000000|600")
        End With
    End With

End Sub


