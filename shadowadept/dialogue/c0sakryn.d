BEGIN C0SAKRYN

CHAIN IF ~Global("C0KrynTalk","GLOBAL",0)~ THEN C0SAKRYN a
~Hail, stranger. Is there aught of importance that you require?~
END
+ ~Specifics(Lasttalkedtoby(Myself),12)~ + ~You... there's something strangely familiar about you.~ DO ~SetGlobal("C0KrynTalk","GLOBAL",1)~ + a1.2
++ ~You don't look like an ordinary traveller. What is your purpose for being here?~ DO ~SetGlobal("C0KrynTalk","GLOBAL",1)~ + a1.0
++ ~I apologize for bothering you. Goodbye.~ + b0

CHAIN C0SAKRYN a1.0
~Aye, you are right to assume that I am no resident of the Sword Coast. If you are truly interested, then I will enlighten you.~
EXTERN C0SAKRYN a1.1

CHAIN C0SAKRYN a1.1
~Perhaps an introduction is in order. I am Kryn Darkflame, an archmage of Thultanthar, City of Shadows.~
END
+ ~CheckStatGT(Lasttalkedtoby(Myself),15,INT)~ + ~The Shade Enclave? I thought the city no longer exists.~ + a1.3
+ ~CheckStatGT(Lasttalkedtoby(Myself),15,INT)~ + ~Thultanthar? You must be one of the Shadovar, then.~ + a1.4
+ ~!CheckStatGT(Lasttalkedtoby(Myself),15,INT)~ + ~I have never heard of such a city. Where is it?~ + a1.5
++ ~I'm afraid I have no time to talk right now.~ + b0

CHAIN C0SAKRYN a1.2
~I do not know you. However... there is a magical aura surrounding you that I know well. Are you, perhaps, a practitioner of the Shadow Art?~
END
++ ~I am. How did you know?~ + a1.1
++ ~That's none of your business. Goodbye.~ + b0

CHAIN C0SAKRYN a1.3
~Thultanthar is no longer present in the Prime Material Plane, this is true. Years ago, it was but one of the cities of the ancient Netherese empire, but the city now resides within the Plane of Shadow.~
EXTERN C0SAKRYN a1.4

CHAIN C0SAKRYN a1.4
~As a high mage of the City of Shadows, it is true that I am of the shades... a Shadovar, as we are known.~
END
++ ~The Shadovar are reputed to be evil. Why would you tell me what you are?~ + a1.6
++ ~What brings a Shadovar from his home to this place?~ + a1.7
++ ~Fascinating, but I must be going.~ + b0
++ ~Die, shade-dweller!~ + attacked

CHAIN C0SAKRYN a1.5
~You may know it by its more common name, the Shade Enclave. It is an ancient city that no longer exists within the Prime Material Plane, but rather resides in the Plane of Shadow since Netheril's fall.~
EXTERN C0SAKRYN a1.4

CHAIN C0SAKRYN a1.6
~I have no intention of deceiving or becoming a threat to the residents of this Plane. You may believe me, or you may not. It makes no difference. All that matters for me is the task of which I am here to accomplish.~
END
++ ~And what task is this?~ DO ~SetGlobal("C0KrynTask","GLOBAL",1)~ + a1.7

CHAIN C0SAKRYN a1.7
~As I have said, I am one of Thultanthar's archmages. My role is to train those with talent in the Art to become capable arcanists. However, the training can often be... taxing on those with weaker wills.~
= ~Not long prior to my arrival here, several of my more talented students lost their control over their magic and became unstable as a result. They slaughtered many of their fellows, stole magical artifacts from the mage tower and fled into this plane in order to escape retribution.~
= ~Despite their actions, I do not wish them harmed, but I fear that their power, together with their lost sanity, will draw unnecessary harm and attention in this realm. I seek those of capable skill in this place, where travellers come and go, to seek out my lost apprentices.~
END
++ ~If you're their master, surely you could find and deal with them yourself?~ + a1.8
++ ~Perhaps I could find these apprentices for you.~ + a1.9
++ ~Good luck with that. I'll be going now.~ + b0

CHAIN C0SAKRYN a1.8
~I cannot. My apprentices know that I seek them, and hide their presences from me for fear of my punishment. I fear that what remaining sanity they may have will be driven away by their terror or paranoia should I confront them personally, and lead them to fight to the death. I do not desire this.~
= ~Although, I confess... it is unlikely that any of them may be saved regardless. Though if there is any chance, I would rather take it.~
END
++ ~Fair enough. I will do what I can to find them.~ + a1.9
++ ~That's too bad. I'll be going now.~ + b0

CHAIN C0SAKRYN a1.9
~My thanks. There are five apprentices to search for: Xarius, Chang, Mak'kai, Nym and Ivette. Though I doubt their names will be of much use to you, given they will be too mad to acknowledge them. I fear I could not tell you where they might be.~
= ~Should you find any of them, however, alive or dead... I will reward you for the deed. If it must come to their deaths, then their wizard staves, branded with their sigils, will suffice as evidence.~
= ~Farewell. I hope you will return with favorable news.~
EXIT

CHAIN IF ~!Global("C0KrynTalk","GLOBAL",0)~ THEN C0SAKRYN b
~I see you have returned. What might I do for you this time?~
END
+ ~!Global("C0KrynTask","GLOBAL",1)~ + ~Tell me of your purpose for being here.~ + a1.7
+ ~PartyHasItem("c0samag1")~ + ~I have the staff of Xarius the Black.~ DO ~TakePartyItem("c0samag1") DestroyItem("c0samag1") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag2")~ + ~I have the staff of Chang Yu'ke.~ DO ~TakePartyItem("c0samag2") DestroyItem("c0samag2") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag3")~ + ~I have the staff of Mak'kai.~ DO ~TakePartyItem("c0samag3") DestroyItem("c0samag3") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag4")~ + ~I have the staff of Nym Phaundal.~ DO ~TakePartyItem("c0samag4") DestroyItem("c0samag4") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag5")~ + ~I have the staff of Ivette Cold-Whisper.~ DO ~TakePartyItem("c0samag5") DestroyItem("c0samag5") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~GlobalGT("C0KrynTalk","GLOBAL",1) !Specifics(Lasttalkedtoby(Myself),12)
Class(Lasttalkedtoby(Myself),MAGE_ALL)
!Alignment(Lasttalkedtoby(Myself),MASK_GOOD)~ + ~I want to learn Shadow Magic.~ + b1.6
+ ~Global("C0KrynKnowsStore","GLOBAL",0)~ + ~I was wondering, do you have any magical wares for sale?~ DO ~SetGlobal("C0KrynKnowsStore","GLOBAL",1)~ + b1.7
+ ~Global("C0KrynKnowsStore","GLOBAL",1)~ + ~May I see what wares you have available?~ + b2
+ ~Global("C0KrynKnowsStore","GLOBAL",1)
OR(6)
Specifics(Player1,12)
Specifics(Player2,12)
Specifics(Player3,12)
Specifics(Player4,12)
Specifics(Player5,12)
Specifics(Player6,12)~ + ~I would like to see your special stock.~ + b3
++ ~Nothing for now.~ + b0

CHAIN C0SAKRYN b0
~Shadow guide you.~
EXIT

CHAIN C0SAKRYN b1
~I see. Then my apprentice...? Aye, dead, I am sure. A pity, but 'tis the most merciful thing that could have been done.~
DO ~GiveGoldForce(2000)~
== C0SAKRYN ~Your reward, as promised...~
END
IF ~GlobalLT("C0SAMageStaves","GLOBAL",2)~ EXTERN C0SAKRYN b1.1
IF ~Global("C0SAMageStaves","GLOBAL",2)~ EXTERN C0SAKRYN b1.2
IF ~Global("C0SAMageStaves","GLOBAL",3)~ EXTERN C0SAKRYN b1.2
IF ~Global("C0SAMageStaves","GLOBAL",4)~ EXTERN C0SAKRYN b1.2
IF ~GlobalGT("C0SAMageStaves","GLOBAL",4)~ EXTERN C0SAKRYN b1.3

CHAIN C0SAKRYN b1.1
~You have my thanks. I regret that there was no peaceful solution possible, but it seems that the madness has overtaken my former students. I hope you may find the rest of them soon.~
END
+ ~OR(6)
Specifics(Player1,12)
Specifics(Player2,12)
Specifics(Player3,12)
Specifics(Player4,12)
Specifics(Player5,12)
Specifics(Player6,12)~ + ~Your apprentice was using Shadow Weave magic. What have you not told me?~ DO ~SetGlobal("C0KrynTalk","GLOBAL",2)~ + b1.4
+ ~!Specifics(Player1,12)
!Specifics(Player2,12)
!Specifics(Player3,12)
!Specifics(Player4,12)
!Specifics(Player5,12)
!Specifics(Player6,12)~ + ~What was that strange magic that your apprentice used? I have never seen anything like it before.~ DO ~SetGlobal("C0KrynTalk","GLOBAL",2)~ + b1.5

CHAIN C0SAKRYN b1.2
~You have my gratitude for your efforts. I pray you may find the rest of my apprentices.~
DO ~Addexperienceparty(1000)~
EXIT

CHAIN C0SAKRYN b1.3
~You have found all five of my apprentices. *sigh* 'Tis unfortunate that the madness had taken them beyond any chance of recovery, and now ther souls will become one with the Shadow Weave. Perhaps I should have sought them out myself after all...~
= ~Regardless, I appreciate your assistance in this matter. Take this as a token of my gratitude.~
END
IF ~OR(6)
Specifics(Player1,12)
Specifics(Player2,12)
Specifics(Player3,12)
Specifics(Player4,12)
Specifics(Player5,12)
Specifics(Player6,12)~ DO ~SetGlobal("C0KrynTalk","GLOBAL",3)
GiveItemCreate("c0saamu2",Lasttalkedtoby(Myself),1,0,0)
GiveItemCreate("c0sascr3",Lasttalkedtoby(Myself),1,0,0)
GiveItemCreate("c0sascr4",Lasttalkedtoby(Myself),1,0,0)
Addexperienceparty(10000)~ EXIT
IF ~!Specifics(Player1,12)
!Specifics(Player2,12)
!Specifics(Player3,12)
!Specifics(Player4,12)
!Specifics(Player5,12)
!Specifics(Player6,12)~ DO ~SetGlobal("C0KrynTalk","GLOBAL",3)
GiveItemCreate("c0saamu2",Lasttalkedtoby(Myself),1,0,0)
Addexperienceparty(10000)~ EXIT

CHAIN C0SAKRYN b1.4
~I should have expected you to recognize their brand of magic, given you appear to carry the same talent.~
= ~It is true. My apprentices are gifted with the Shadow Art, as am I. We are shadowcasters, a branch of arcanists who study the Shadow Weave and the magic it provides.~
EXTERN C0SAKRYN b1.5

CHAIN C0SAKRYN b1.5
~Magic of the Shadow Weave is normally reserved for the servants of Shar, the Mistress of the Night. It is a unique form of magic, unrelated to the workings of the Weave. You are unlikely to see many mages in this plane who use it.~
= ~Shadow magic is powerful, but fatally dangerous for the untrained. It is the dangers of the art that led to the current state of my apprentices. They attempted to draw upon more power than they could manage, and lost their sanities as a result.~
= ~I hope, after witnessing the dreadful power of the Shadow Weave, you understand why my apprentices must not be allowed to roam free.~
END
+ ~!Specifics(Lasttalkedtoby(Myself),12)
Class(Lasttalkedtoby(Myself),MAGE_ALL)
!Alignment(Lasttalkedtoby(Myself),MASK_GOOD)~ + ~I want to learn Shadow Magic.~ DO ~Addexperienceparty(1000)~ + b1.6
+ ~Global("C0KrynKnowsStore","GLOBAL",0)~ + ~I was wondering, do you have any magical wares for sale?~ DO ~Addexperienceparty(1000) SetGlobal("C0KrynKnowsStore","GLOBAL",1)~ + b1.7
+ ~Global("C0KrynKnowsStore","GLOBAL",0)
Specifics(Lasttalkedtoby(Myself),12)~ + ~Do you have any special wares for those versed in shadow magic?~ DO ~Addexperienceparty(1000) SetGlobal("C0KrynKnowsStore","GLOBAL",1)~ + b1.7
++ ~I will do what I can to find them.~ + b1.2

CHAIN C0SAKRYN b1.6
~The Shadow Art is not to be taken lightly. However, if you are truly interested, it is not out of the question to for me to educate you, though I doubt you nor I have the time to spare for conventional training.~
= ~You appear to already have some knowledge of magic in the form of the Weave. I have an item in my selection that will grant you equal knowledge in the workings of the Shadow Weave within an instant. However... the two cannot exist in tandem. Should you truly choose to learn Shadow Magic, you must forsake your connection to the Weave forever.~
END
++ ~I'll make the exchange. How much do you want for the orb?~ + b1.8
++ ~Forever? Never mind, I don't think I'm interested after all.~ + b0

CHAIN C0SAKRYN b1.7
~Indeed. I have a selection of potions, spells and other items available for purchase, if you wish it.~
= IF ~OR(6)
Specifics(Player1,12)
Specifics(Player2,12)
Specifics(Player3,12)
Specifics(Player4,12)
Specifics(Player5,12)
Specifics(Player6,12)~ THEN ~And for those capable of wielding the magic of the Shadow Weave... I have a few magical items separate from the rest of my stock that may interest you.~
END
++ ~May I see what wares you have available?~ + b2
+ ~OR(6)
Specifics(Player1,12)
Specifics(Player2,12)
Specifics(Player3,12)
Specifics(Player4,12)
Specifics(Player5,12)
Specifics(Player6,12)~ + ~I would like to see your special stock.~ + b3
++ ~Not right now. Goodbye.~ + b0

CHAIN C0SAKRYN b1.8
~Three thousand gold. You need not use the orb immediately, should you change your mind.~
END
+ ~PartyGoldGT(2999)~ + ~Very well. I'll take it.~ DO ~TakePartyGold(3000) GiveItemCreate("c0saorb",Lasttalkedtoby(Myself),1,0,0)~ + b1.9
+ ~!PartyGoldGT(2999)~ + ~I don't have the gold right now.~ + b0
++ ~I've changed my mind.~ + b0

CHAIN C0SAKRYN b1.9
~Remember, the effects are permanent. You will have knowledge as though you have studied the Shadow Weave for your entire life thus far, but you will never touch the strands of the Weave again. Choose wisely.~
EXIT

CHAIN C0SAKRYN b2
~Magical trinkets and alchemical concoctions aplenty for your perusal.~
DO ~StartStore("c0sasto1",Lasttalkedtoby(Myself))~ EXIT

CHAIN C0SAKRYN b3
~Of course. Any practitioner of the Shadow Art is welcome to see what I have to offer.~
DO ~StartStore("c0sasto2",Lasttalkedtoby(Myself))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("Attacked","LOCALS",1)~ THEN C0SAKRYN attacked
~You are a fool to test yourself against me. Be thankful that I have no quarrel with you and will forgive this insolence. May we not meet again.~
DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0satele")~ EXIT
