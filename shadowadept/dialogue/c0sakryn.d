BEGIN C0SAKRYN

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)~ THEN BEGIN C0SAKRYN b0
~I see you have returned. What might I do for you this time?~
END
+ ~PartyHasItem("c0samag1")~ + ~I have the staff of Xarius the Black.~ DO ~IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag2")~ + ~I have the staff of Chang Yu'ke.~ DO ~IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag3")~ + ~I have the staff of Mak'kai.~ DO ~IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag4")~ + ~I have the staff of Evil-Eyed Andare.~ DO ~IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag5")~ + ~I have the staff of Ivette Cold-Whisper.~ DO ~IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~GlobalGT("C0SAMageStaves","GLOBAL",0)~ + ~May I see what wares you have available?~ + b2
+ ~GlobalGT("C0SAMageStaves","GLOBAL",2)
OR(6)
Kit(Player1,C0SADEPT)
Kit(Player2,C0SADEPT)
Kit(Player3,C0SADEPT)
Kit(Player4,C0SADEPT)
Kit(Player5,C0SADEPT)
Kit(Player6,C0SADEPT)~ + ~I would like to see your special stock.~ + b3
++ ~Nothing for now.~ + b0
END

CHAIN C0SAKRYN b0
~Shadows be your guide.~
EXIT

CHAIN C0SAKRYN b1
~I see. Then my apprentice...? Aye, they are dead, I am sure. A pity, but 'tis the most merciful thing that could have been done.~
== C0SAKRYN ~Your reward, as promised...~
END
IF ~GlobalLT("C0SAMageStaves","GLOBAL",2)~ EXTERN C0SAKRYN b1.1
IF ~Global("C0SAMageStaves","GLOBAL",2)~ EXTERN C0SAKRYN b1.2
IF ~Global("C0SAMageStaves","GLOBAL",3)~ EXTERN C0SAKRYN b1.2
IF ~Global("C0SAMageStaves","GLOBAL",4)~ EXTERN C0SAKRYN b1.2
IF ~GlobalGT("C0SAMageStaves","GLOBAL",5)~ EXTERN C0SAKRYN b1.3

CHAIN C0SAKRYN b1.1
~You have my thanks. I regret that there was no peaceful solution possible, but it seems that the madness has overtaken my former students. I hope you may find the rest of them soon.~
+ ~OR(6)
Kit(Player1,C0SADEPT)
Kit(Player2,C0SADEPT)
Kit(Player3,C0SADEPT)
Kit(Player4,C0SADEPT)
Kit(Player5,C0SADEPT)
Kit(Player6,C0SADEPT)~ + ~Your apprentice was using Shadow Weave magic. What have you not told me?~ + b1.4
+ ~!Kit(Player1,C0SADEPT)
!Kit(Player2,C0SADEPT)
!Kit(Player3,C0SADEPT)
!Kit(Player4,C0SADEPT)
!Kit(Player5,C0SADEPT)
!Kit(Playe6,C0SADEPT)~ + ~What was that strange magic that your apprentice used? I have never seen anything like it before.~ + b1.5

CHAIN C0SAKRYN b2
~Magical trinkets and alchemical concoctions aplenty for your perusal.~
EXIT

CHAIN C0SAKRYN b3
~Of course. Any practitioner of the Shadow Art is welcome to see what I have to offer.~
EXIT