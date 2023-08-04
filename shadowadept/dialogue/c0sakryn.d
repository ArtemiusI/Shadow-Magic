BEGIN C0SAKRYN

CHAIN IF ~Global("C0KrynTalk","GLOBAL",0)~ THEN C0SAKRYN a
~Hail, stranger. Is there aught of importance that you require?~
END
+ ~Specifics(Lasttalkedtoby(Myself),SHADOW_ADEPT)~ + ~You... there's something strangely familiar about you.~ DO ~SetGlobal("C0KrynTalk","GLOBAL",1)~ + a1.2
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
++ ~Perhaps I could find these apprentices for you.~ DO ~SetGlobal("C0SAQuest1","GLOBAL",1)~ + a1.9
++ ~Good luck with that. I'll be going now.~ + b0

CHAIN C0SAKRYN a1.8
~I cannot. My apprentices know that I seek them, and hide their presences from me for fear of my punishment. I fear that what remaining sanity they may have will be driven away by their terror or paranoia should I confront them personally, and lead them to fight to the death. I do not desire this.~
= ~Although, I confess... it is unlikely that any of them may be saved regardless. Though if there is any chance, I would rather take it.~
END
++ ~Fair enough. I will do what I can to find them.~ DO ~SetGlobal("C0SAQuest1","GLOBAL",1)~ + a1.9
++ ~That's too bad. I'll be going now.~ + b0

CHAIN C0SAKRYN a1.9
~My thanks. There are five apprentices to search for: Xarius, Chang, Mak'kai, Nym and Ivette. Though I doubt their names will be of much use to you, given they will be too mad to acknowledge them. I fear I could not tell you where they might be.~
= ~They are not native to this world, however, and thus will likely find comfort in places of darkness. And they are capable of hiding in-between the Material and Shadow Plane, which would render them impossible to detect. I will gift you with a brand containing my magic. It will render their shadows visible to you, and give you the power to draw them out.~
= ~I feel 'twould be appropriate to warn you in advance—my apprentices are talented shadowweavers, each and every one. Even in their fragile states, or perhaps owing to them, they will likely use their magic to resist.~
= ~Should you find any of them, however, alive or dead... I will reward you for the deed. If it must come to their deaths, then their wizard staves, branded with their sigils, will suffice as evidence.~
= ~Farewell. I hope you will return with favorable news.~
EXIT

CHAIN IF ~!Global("C0KrynTalk","GLOBAL",0)~ THEN C0SAKRYN b
~I see you have returned. What might I do for you this time?~
END
+ ~Global("C0SAFoundHeart","GLOBAL",1)~ + ~I found a strange essence that responded to the brand you gave me.~ DO ~SetGlobal("C0SAFoundHeart","GLOBAL",2)~ + HEART
+ ~Global("TalkMakkai","LOCALS",1) Global("TalkSlaves","LOCALS",0)~ + ~Mak'kai mentioned that your apprentices are slaves. Is that true?~ DO ~SetGlobal("TalkSlaves","LOCALS",1)~ + slaves
+ ~Global("TalkMakkai","LOCALS",1) Global("TalkEbonshade","LOCALS",0)~ + ~What is the ebonshade madness?~ DO ~SetGlobal("TalkEbonshade","LOCALS",1)~ + ebonshade
+ ~!Global("C0SAQuest1","GLOBAL",1)~ + ~Tell me of your purpose for being here.~ + a1.7
+ ~Dead("c0samag3") Global("TalkMakkai","LOCALS",0)~ + ~Mak'kai managed to regain his sanity before he forced me to kill him.~ DO ~SetGlobal("TalkMakkai","LOCALS",1)~ + makkai
+ ~Dead("c0samag5") Global("TalkOphelia","LOCALS",0)~ + ~Ivette kept mentioning someone called Ophelia. Do you know who she was talking about?~ DO ~SetGlobal("TalkOphelia","LOCALS",1)~ + ophelia
+ ~PartyHasItem("c0samag1")~ + ~I have the staff of Xarius the Black.~ DO ~TakePartyItem("c0samag1") DestroyItem("c0samag1") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag2")~ + ~I have the staff of Chang Yu'ke.~ DO ~TakePartyItem("c0samag2") DestroyItem("c0samag2") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag3")~ + ~I have the staff of Mak'kai.~ DO ~TakePartyItem("c0samag3") DestroyItem("c0samag3") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag4")~ + ~I have the staff of Nym Phaundal.~ DO ~TakePartyItem("c0samag4") DestroyItem("c0samag4") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag5")~ + ~I have the staff of Ivette Cold-Whisper.~ DO ~TakePartyItem("c0samag5") DestroyItem("c0samag5") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~GlobalGT("C0KrynTalk","GLOBAL",1) !Specifics(Lasttalkedtoby(Myself),SHADOW_ADEPT)
Class(Lasttalkedtoby(Myself),MAGE_ALL)
!Alignment(Lasttalkedtoby(Myself),MASK_GOOD)~ + ~I want to learn Shadow Magic.~ + b1.6
+ ~Global("C0KrynKnowsStore","GLOBAL",0)~ + ~I was wondering, do you have any magical wares for sale?~ DO ~SetGlobal("C0KrynKnowsStore","GLOBAL",1)~ + b1.7
+ ~Global("C0KrynKnowsStore","GLOBAL",1)~ + ~May I see what wares you have available?~ + b2
+ ~Global("C0KrynKnowsStore","GLOBAL",1)
OR(6)
Specifics(Player1,SHADOW_ADEPT)
Specifics(Player2,SHADOW_ADEPT)
Specifics(Player3,SHADOW_ADEPT)
Specifics(Player4,SHADOW_ADEPT)
Specifics(Player5,SHADOW_ADEPT)
Specifics(Player6,SHADOW_ADEPT)~ + ~I would like to see your special stock.~ + b3
++ ~Nothing for now.~ + b0

CHAIN C0SAKRYN b.1
~Is there anything else you require?~
END
+ ~Global("C0SAFoundHeart","GLOBAL",1)~ + ~I found a strange essence that responded to the brand you gave me.~ DO ~SetGlobal("C0SAFoundHeart","GLOBAL",2)~ + HEART
+ ~Global("TalkMakkai","LOCALS",1) Global("TalkSlaves","LOCALS",0)~ + ~Mak'kai mentioned that your apprentices are slaves. Is that true?~ DO ~SetGlobal("TalkSlaves","LOCALS",1)~ + slaves
+ ~Global("TalkMakkai","LOCALS",1) Global("TalkEbonshade","LOCALS",0)~ + ~What is the ebonshade madness?~ DO ~SetGlobal("TalkEbonshade","LOCALS",1)~ + ebonshade
+ ~!Global("C0SAQuest1","GLOBAL",1)~ + ~Tell me of your purpose for being here.~ + a1.7
+ ~Dead("c0samag3") Global("TalkMakkai","LOCALS",0)~ + ~Mak'kai managed to regain his sanity before he forced me to kill him.~ DO ~SetGlobal("TalkMakkai","LOCALS",1)~ + makkai
+ ~Dead("c0samag5") Global("TalkOphelia","LOCALS",0)~ + ~Ivette kept mentioning someone called Ophelia. Do you know who she was talking about?~ DO ~SetGlobal("TalkOphelia","LOCALS",1)~ + ophelia
+ ~PartyHasItem("c0samag1")~ + ~I have the staff of Xarius the Black.~ DO ~TakePartyItem("c0samag1") DestroyItem("c0samag1") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag2")~ + ~I have the staff of Chang Yu'ke.~ DO ~TakePartyItem("c0samag2") DestroyItem("c0samag2") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag3")~ + ~I have the staff of Mak'kai.~ DO ~TakePartyItem("c0samag3") DestroyItem("c0samag3") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag4")~ + ~I have the staff of Nym Phaundal.~ DO ~TakePartyItem("c0samag4") DestroyItem("c0samag4") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~PartyHasItem("c0samag5")~ + ~I have the staff of Ivette Cold-Whisper.~ DO ~TakePartyItem("c0samag5") DestroyItem("c0samag5") IncrementGlobal("C0SAMageStaves","GLOBAL",1)~ + b1
+ ~GlobalGT("C0KrynTalk","GLOBAL",1) !Specifics(Lasttalkedtoby(Myself),SHADOW_ADEPT)
Class(Lasttalkedtoby(Myself),MAGE_ALL)
!Alignment(Lasttalkedtoby(Myself),MASK_GOOD)~ + ~I want to learn Shadow Magic.~ + b1.6
+ ~Global("C0KrynKnowsStore","GLOBAL",0)~ + ~I was wondering, do you have any magical wares for sale?~ DO ~SetGlobal("C0KrynKnowsStore","GLOBAL",1)~ + b1.7
+ ~Global("C0KrynKnowsStore","GLOBAL",1)~ + ~May I see what wares you have available?~ + b2
+ ~Global("C0KrynKnowsStore","GLOBAL",1)
OR(6)
Specifics(Player1,SHADOW_ADEPT)
Specifics(Player2,SHADOW_ADEPT)
Specifics(Player3,SHADOW_ADEPT)
Specifics(Player4,SHADOW_ADEPT)
Specifics(Player5,SHADOW_ADEPT)
Specifics(Player6,SHADOW_ADEPT)~ + ~I would like to see your special stock.~ + b3
++ ~Nothing for now.~ + b0

CHAIN C0SAKRYN HEART
~An essence? Hmm... was it, perhaps, a crystalline object, beating like a heart?~
END
++ ~Yes, it did.~ + HEART-1

CHAIN C0SAKRYN HEART-1
~I see. Then I suspect it is a 'cache' of sorts, left behind by shadowcasters in this plane to hide magical objects, usually rare scrolls and the like. I have seen a few of its like in this plane.~
= ~Only one attuned to their particular magic should normally be able to detect these caches, but it appears my brand has given you the ability to reveal them and potentially draw them back into this plane.~
= ~I would be wary of doing so, however. Most arcanists are cautious enough to leave protections behind. Perhaps a magical trap, or summons that attack anyone but their master. But if you are able to overcome their protections, you may find items of value.~
EXTERN C0SAKRYN b.1

CHAIN C0SAKRYN makkai
~Indeed? That is... impressive. Once the ebonshade madness has consumed the imbiber, it is difficult, if not impossible, to ever regain one's coherency. The fact that Mak'kai was able to remain sane enough for his final moments is a testament to his ability.~
END
+ ~Global("TalkSlaves","LOCALS",0)~ + ~He mentioned that your apprentices are slaves. Is that true?~ DO ~SetGlobal("TalkSlaves","LOCALS",1)~ + slaves
+ ~Global("TalkEbonshade","LOCALS",0)~ + ~What is the ebonshade madness?~ DO ~SetGlobal("TalkEbonshade","LOCALS",1)~ + ebonshade
++ ~I see. Let's talk about something else.~ + b.1

CHAIN C0SAKRYN slaves
~The Shade Enclave deals in slavery, this I will not deny. Neither will I deny that I 'owned' my apprentices, in a manner of speaking.~
= ~But the truth is not so simple. The Shadovar come to this plane to claim those with skills of any kind. Those with arcane talent are treated... especially cruelly. They are administered a nearly lethal amount of ebonshade to enable their control over the Shadow Weave.~
= ~If the process does not kill them, it inevitably drives them mad if left alone. It cannot be treated - only overcome. I do what I can for these unfortunate souls by giving them the training they require. But, as you have seen... sometimes even that is not enough.~
= ~Perhaps you, with whatever morals you hold, think this does not justify the act of indulging in slavery, but I consider my actions a necessary evil.~
END
++ ~Maybe you're right. I'll not press the issue then.~ + b.1
++ ~I don't like it, but it's not my place to judge. Let's talk about something else.~ + b.1
+ ~Global("TalkMakkai","LOCALS",1) Global("TalkEbonshade","LOCALS",0)~ + ~What is the ebonshade madness?~ DO ~SetGlobal("TalkEbonshade","LOCALS",1)~ + ebonshade
++ ~I will not deal with slave handlers!~ + attacked

CHAIN C0SAKRYN ebonshade
~The ebonshade - known to some as Shar's Infusion - is the essence of the Shadow Weave given physical form. For shadow magi, it can be taken safely in regulated doses, allowing us to channel our power at less risk to ourselves. However, when overdosed, it has dangerous and often irreversible effects.~
= ~My apprentices were not driven mad solely by their magic. They were taken by Shadovar hunters and overdosed with ebonshade, forcibly instilling the Shadow Weave into them. They became powerful users of shadow magic, but their minds were damaged, and they became dependent on the ebonshade, suffering unbearable pain if deprived of it for too long.~
END
+ ~PartyHasItem("c0sapot1")~ + ~If I drink the ebonshade, will it have any negative effects on me?~ + ebonshade.1
++ ~There's no way to cure the effects?~ + ebonshade.2
++ ~I see. Let's talk about something else.~ + b.1

CHAIN C0SAKRYN ebonshade.1
~Worry not. That is a highly diluted concoction I made in an effort to help my apprentices dull the pain while reducing any adverse effects. The symptoms of ebonshade withdrawal only occur in extreme circumstances.~
EXTERN C0SAKRYN ebonshade.2

CHAIN C0SAKRYN ebonshade.2
~I have researched methods of treating the ebonshade curse for many years now, and I have failed to find any lasting solution. So long as the condition is untreatable, all I can do is take care of my apprentices and make them strong enough to overcome the condition.~
= ~Perhaps one day, I will find a cure, but I fear many lives will be destroyed by the ebonshade until then.~
EXTERN C0SAKRYN b.1

CHAIN C0SAKRYN ophelia
~Ivette still remembers Ophelia, I see... no doubt she was trying to cling on to her last, most important memories.~
= ~Ophelia is one of my older apprentices. She acted as a caretaker for the more recent members of the mage tower, and Ivette in particular was fond of her. She will be despondent to hear of Ivette's passing.~
EXTERN C0SAKRYN b.1

CHAIN C0SAKRYN b0
~Shadow guide you.~
EXIT

CHAIN C0SAKRYN b1
~I see. Then my apprentice...? Aye, dead, I am sure. A pity, but 'tis the most merciful thing that could have been done.~
DO ~GiveGoldForce(1000)~
== C0SAKRYN ~Your reward, as promised...~
END
IF ~GlobalLT("C0SAMageStaves","GLOBAL",2)~ EXTERN C0SAKRYN b1.1
IF ~GlobalGT("C0SAMageStaves","GLOBAL",1) GlobalLT("C0SAMageStaves","GLOBAL",5)~ EXTERN C0SAKRYN b1.2
IF ~GlobalGT("C0SAMageStaves","GLOBAL",4)~ EXTERN C0SAKRYN b1.3

CHAIN C0SAKRYN b1.1
~You have my thanks. I regret that there was no peaceful solution possible, but it seems that the madness has overtaken my former students. I hope you may find the rest of them soon.~
END
+ ~OR(6)
Specifics(Player1,SHADOW_ADEPT)
Specifics(Player2,SHADOW_ADEPT)
Specifics(Player3,SHADOW_ADEPT)
Specifics(Player4,SHADOW_ADEPT)
Specifics(Player5,SHADOW_ADEPT)
Specifics(Player6,SHADOW_ADEPT)~ + ~Your apprentice was using Shadow Weave magic. What have you not told me?~ DO ~SetGlobal("C0KrynTalk","GLOBAL",2)~ + b1.4
+ ~!Specifics(Player1,SHADOW_ADEPT)
!Specifics(Player2,SHADOW_ADEPT)
!Specifics(Player3,SHADOW_ADEPT)
!Specifics(Player4,SHADOW_ADEPT)
!Specifics(Player5,SHADOW_ADEPT)
!Specifics(Player6,SHADOW_ADEPT)~ + ~What was that strange magic that your apprentice used? I have never seen anything like it before.~ DO ~SetGlobal("C0KrynTalk","GLOBAL",2)~ + b1.5

CHAIN C0SAKRYN b1.2
~You have my gratitude for your efforts. I pray you may find the rest of my apprentices.~
END
IF ~RandomNum(2,1)
OR(6)
Specifics(Player1,SHADOW_ADEPT)
Specifics(Player2,SHADOW_ADEPT)
Specifics(Player3,SHADOW_ADEPT)
Specifics(Player4,SHADOW_ADEPT)
Specifics(Player5,SHADOW_ADEPT)
Specifics(Player6,SHADOW_ADEPT)~ DO ~GiveItemCreate("c0sarn09",Lasttalkedtoby(Myself),1,0,0)
GiveItemCreate("c0sarn03",Lasttalkedtoby(Myself),1,0,0)
GiveItemCreate("c0sarn05",Lasttalkedtoby(Myself),1,0,0)
GiveItemCreate("c0sarn07",Lasttalkedtoby(Myself),1,0,0)
Addexperienceparty(1000)~ EXIT
IF ~RandomNum(2,2)
OR(6)
Specifics(Player1,SHADOW_ADEPT)
Specifics(Player2,SHADOW_ADEPT)
Specifics(Player3,SHADOW_ADEPT)
Specifics(Player4,SHADOW_ADEPT)
Specifics(Player5,SHADOW_ADEPT)
Specifics(Player6,SHADOW_ADEPT)~ DO ~GiveItemCreate("c0sarn09",Lasttalkedtoby(Myself),1,0,0)
GiveItemCreate("c0sarn04",Lasttalkedtoby(Myself),1,0,0)
GiveItemCreate("c0sarn06",Lasttalkedtoby(Myself),1,0,0)
GiveItemCreate("c0sarn08",Lasttalkedtoby(Myself),1,0,0)
Addexperienceparty(1000)~ EXIT
IF ~!Specifics(Player1,SHADOW_ADEPT)
!Specifics(Player2,SHADOW_ADEPT)
!Specifics(Player3,SHADOW_ADEPT)
!Specifics(Player4,SHADOW_ADEPT)
!Specifics(Player5,SHADOW_ADEPT)
!Specifics(Player6,SHADOW_ADEPT)~ DO ~Addexperienceparty(1000)~ EXIT

CHAIN C0SAKRYN b1.3
~You have found all five of my apprentices. *sigh* 'Tis unfortunate that the madness had taken them beyond any chance of recovery, and now their souls will become one with the Shadow Weave. Perhaps I should have sought them out myself after all...~
DO ~AddStoreItem("c0sasto2","c0salea2",1,1)
AddStoreItem("c0sasto2","c0sacha2",1,1)
AddStoreItem("c0sasto2","c0sabel1",1,1)
AddStoreItem("c0sasto2","c0sa501a",1,1)
AddStoreItem("c0sasto2","c0sa502a",1,1)
AddStoreItem("c0sasto2","c0sa503a",1,1)
AddStoreItem("c0sasto2","c0sa504a",1,1)
AddStoreItem("c0sasto2","c0sa505a",1,1)
AddStoreItem("c0sasto2","c0sa506a",1,1)
AddStoreItem("c0sasto2","c0sa507a",1,1)
AddStoreItem("c0sasto2","c0sa508a",1,1)
AddStoreItem("c0sasto2","c0sa509a",1,1)
AddStoreItem("c0sasto2","c0sa510a",1,1)
AddStoreItem("c0sasto2","c0sa511a",1,1)
AddStoreItem("c0sasto2","c0sa512a",1,1)
AddStoreItem("c0sasto2","c0sa513a",1,1)~
= ~Regardless, I appreciate your assistance in this matter. Take this as a token of my gratitude.~
END
IF ~OR(6)
Specifics(Player1,SHADOW_ADEPT)
Specifics(Player2,SHADOW_ADEPT)
Specifics(Player3,SHADOW_ADEPT)
Specifics(Player4,SHADOW_ADEPT)
Specifics(Player5,SHADOW_ADEPT)
Specifics(Player6,SHADOW_ADEPT)~ DO ~SetGlobal("C0KrynTalk","GLOBAL",3)
GiveItemCreate("c0saamu2",Lasttalkedtoby(Myself),1,0,0)
GiveItemCreate("c0sarn09",Lasttalkedtoby(Myself),1,0,0)
GiveItemCreate("c0sarn10",Lasttalkedtoby(Myself),1,0,0)
Addexperienceparty(10000)~ EXIT
IF ~!Specifics(Player1,SHADOW_ADEPT)
!Specifics(Player2,SHADOW_ADEPT)
!Specifics(Player3,SHADOW_ADEPT)
!Specifics(Player4,SHADOW_ADEPT)
!Specifics(Player5,SHADOW_ADEPT)
!Specifics(Player6,SHADOW_ADEPT)~ DO ~SetGlobal("C0KrynTalk","GLOBAL",3)
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
+ ~!Specifics(Lasttalkedtoby(Myself),SHADOW_ADEPT)
Class(Lasttalkedtoby(Myself),MAGE_ALL)
!Alignment(Lasttalkedtoby(Myself),MASK_GOOD)~ + ~I want to learn Shadow Magic.~ DO ~Addexperienceparty(1000)~ + b1.6
+ ~Global("C0KrynKnowsStore","GLOBAL",0)~ + ~I was wondering, do you have any magical wares for sale?~ DO ~Addexperienceparty(1000) SetGlobal("C0KrynKnowsStore","GLOBAL",1)~ + b1.7
+ ~Global("C0KrynKnowsStore","GLOBAL",0)
Specifics(Lasttalkedtoby(Myself),SHADOW_ADEPT)~ + ~Do you have any special wares for those versed in shadow magic?~ DO ~Addexperienceparty(1000) SetGlobal("C0KrynKnowsStore","GLOBAL",1)~ + b1.7
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
Specifics(Player1,SHADOW_ADEPT)
Specifics(Player2,SHADOW_ADEPT)
Specifics(Player3,SHADOW_ADEPT)
Specifics(Player4,SHADOW_ADEPT)
Specifics(Player5,SHADOW_ADEPT)
Specifics(Player6,SHADOW_ADEPT)~ THEN ~And for those capable of wielding the magic of the Shadow Weave... I have a few magical items separate from the rest of my stock that may interest you.~
END
++ ~May I see what wares you have available?~ + b2
+ ~OR(6)
Specifics(Player1,SHADOW_ADEPT)
Specifics(Player2,SHADOW_ADEPT)
Specifics(Player3,SHADOW_ADEPT)
Specifics(Player4,SHADOW_ADEPT)
Specifics(Player5,SHADOW_ADEPT)
Specifics(Player6,SHADOW_ADEPT)~ + ~I would like to see your special stock.~ + b3
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
