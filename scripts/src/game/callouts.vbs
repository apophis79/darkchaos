

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

