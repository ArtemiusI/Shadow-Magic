BEGIN C02SAMAG

CHAIN IF WEIGHT #-1 ~Global("C02SASpectacle","GLOBAL",0)
!CheckSpellState(Myself,SPECTACLES_QUEST)~ THEN C02SAMAG ZAAL-BEGIN
~Kal'shaas a'thar! My friend, your planar intervention could not have been more timely. Another second and that beast would've...~
= ~Aah... never mind. Too good to be true after all. Erm... I don't suppose you'd be willing to offer a hand?~
DO ~CreateCreatureObjectEffect("c02sachi","c0darkbo","c02samag")
ChangeSpecifics(Myself,SHADOW_ADEPT)
ChangeAIScript("C02SAMAG",OVERRIDE)
ChangeAIScript("C0SADEPT",DEFAULT)
ChangeEnemyAlly(Myself,GOODBUTBLUE)
SetGlobal("C02SASpectacle","GLOBAL",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C02SASpectacle","GLOBAL",1)
Dead("c02sachi")~ THEN C02SAMAG ZAAL-AFTER
~Ach! Tyche's mercy, what a nightmare... first I take the wrong turn to Pandemonium instead of Limbo, then when I try to transport myself back to the Plane of Shadow, a wrong calculation lands me right in front of that monster instead of my front door, and now I have its blood all over my robes! This has not been a good day.~
= ~Well, in any case, thank you for your assistance, friendly Prime. Er... this is the Prime, right?~
END
++ ~Yes, it is.~ + ZAAL-AFTER-1
++ ~Who are you?~ + ZAAL-AFTER-2
++ ~What was that creature?~ + ZAAL-AFTER-3
++ ~Die, mage!~ + ZAAL-AFTER-X

CHAIN C02SAMAG ZAAL-AFTER-X
~Oh, for the love of... this *really* is just not my day, is it?~
DO ~SetGlobal("C02SASpectacle","GLOBAL",-1)
Enemy()
ChangeAIScript("c0sadept",CLASS)~ EXIT

CHAIN C02SAMAG ZAAL-AFTER-1
~Good, good. Simple enough to get back home from here. I could do it in my sleep... actually, never mind that. The last time didn't go so well.~
EXTERN C02SAMAG ZAAL-AFTER-2

CHAIN C02SAMAG ZAAL-AFTER-2
~Allow me to introduce myself. I am Kaladan Za'al of the Phantasmal Tower, a researcher and tutor of dimensionalism and planar travel. A most fascinating subject matter, albeit very difficult for most minds to comprehend.~
= ~My reseach often requires me to leave the comfort of my home to explore other seldom explored planes, and with it comes its uncertainties and dangers. My most recent venture into the planes went awry and led to the situation you just witnessed. Before you used whatever magic you did to draw me into this plane, I was about to become a chimera's next meal. Most distressing.~
= ~Now that I am here and still alive, however, I should reward you for your rescue. Unfortunately, I tend to avoid taking more than I need during my planar travels, so that may be a problem... hmm... whatever shall I...~
DO ~GiveItem("c0sawan6",LastTalkedToBy)~
= ~Ah, yes, I still have this wand. It still has a good amount of uses left in it. Quite useful, but I don't need to use it often. They are common where I'm from, but I doubt you'll find any of its like here.~
= IF ~Specifics(LastTalkedToBy,SHADOW_ADEPT)~ THEN ~Hmm... and I just noticed that you have some skill in the Shadow Art. In that case, you can take my cloak as well. You should be able to make use of it. I have a spare one back home... I think.~
DO ~GiveItem("c0saclc2",LastTalkedToBy)~
= IF ~!Specifics(LastTalkedToBy,SHADOW_ADEPT)
OR(6)
Specifics(Player1,SHADOW_ADEPT)
Specifics(Player2,SHADOW_ADEPT)
Specifics(Player3,SHADOW_ADEPT)
Specifics(Player4,SHADOW_ADEPT)
Specifics(Player5,SHADOW_ADEPT)
Specifics(Player6,SHADOW_ADEPT)~ THEN ~Hmm... and I just noticed that you have someone versed in the Shadow Art. In that case, you can take my cloak as well. You should be able to make use of it. I have a spare one back home... I think.~
DO ~GiveItem("c0saclc2",LastTalkedToBy)~
= ~I hope that is enough for you. Now, I think I shall take this opportunity to explore this little part of the Prime. It has been quite a while since the last time I was here.~
END
+ ~CheckStatGT(LastTalkedToBy,15,CHR)~ + ~I'm fighting against a crusade. Would you be willing to help me?~ + ZAAL-AFTER-4
+ ~!CheckStatGT(LastTalkedToBy,15,CHR)~ + ~I'm fighting against a crusade. Would you be willing to help me?~ + ZAAL-AFTER-5
++ ~Farewell, then.~ + ZAAL-AFTER-6
++ ~I've decided that I'm just going to kill you!~ + ZAAL-AFTER-X

CHAIN C02SAMAG ZAAL-AFTER-3
~A shadow chimera. I believe they were bred from similar creatures of your plane. Sadly, ever since those things got loose and started mating, they've infested the wasteland outside of Thultanthar. Very annoying when you make regular trips out of the city.~
EXTERN C02SAMAG ZAAL-AFTER-2

CHAIN C02SAMAG ZAAL-AFTER-4
~A crusade, hmm? I'm never been one for excessive zealotry, myself. While I find violence rather unpleasant, I do owe you a rather large favor... hmm... and it should be a good opportunity for me to observe the magic of this plane.~
= ~Very well, I will assist you. You can expect me to be at the battle when the time comes. For now, however, there are preparations I will have to make. Farewell.~
DO ~SetGlobal("C02SASpectacle","GLOBAL",3)
ChangeEnemyAlly(Myself,NEUTRAL)
EscapeArea()~ EXIT

CHAIN C02SAMAG ZAAL-AFTER-5
~I think I must decline. As ungrateful as it sounds, I am a scholar, and combat is not my main forte. I wish the best for your side, however.~
END
++ ~Farewell, then.~ + ZAAL-AFTER-6
++ ~Then you're no use to me. Prepare to die!~ + ZAAL-AFTER-X

CHAIN C02SAMAG ZAAL-AFTER-6
~Ah, it's refreshing to have a cordial conversation with someone from another plane for a change. I hope we will meet again someday.~
DO ~SetGlobal("C02SASpectacle","GLOBAL",-1)
ChangeEnemyAlly(Myself,NEUTRAL)
EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("bd3000")
NumTimesTalkedTo(0)~ THEN C02SAMAG ZAAL-COALITION
~Well, look who it is! As I promised, I am here in preparation for the battle against the crusade you mentioned. Until then, I will remain here and wait.~
= ~Also, I have taken the time to acquire some special wares from my home plane that may interest you. There may be something that you will find useful.~
END
+ ~PartyHasItem("ohrgem01")~ + ~I would like you to take a look at this gem. There's something strange about it.~ + ZAAL-COALITION-GEM
++ ~May I take a look at what you have?~ DO ~StartStore("c0sasto3",LastTalkedToBy(Myself))~ EXIT
++ ~Farewell.~ EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("bd3000")
!NumTimesTalkedTo(0)~ THEN C02SAMAG ZAAL-COALITION-1
~Is there anything else you need?~
END
+ ~PartyHasItem("ohrgem01")~ + ~I would like you to take a look at this gem. There's something strange about it.~ + ZAAL-COALITION-GEM
++ ~May I take a look at what you have?~ DO ~StartStore("c0sasto3",LastTalkedToBy(Myself))~ EXIT
++ ~Farewell.~ EXIT

CHAIN C02SAMAG ZAAL-COALITION-GEM
~What's this, then? Ahh... how curious. You have a rather peculiar treasure there, my friend. They are occasionally seen in the Plane of Shadow, but for one to have found its way here...~
= ~Well, I won't waste your time with speculation. That is a shadow gem, a magical locus that has absorbed enough of the Shadow Weave's energies to take upon a physical form. Very powerful, and invaluable for users of the Shadow Art.~
END
+ ~OR(6)
Specifics(Player1,SHADOW_ADEPT)
Specifics(Player2,SHADOW_ADEPT)
Specifics(Player3,SHADOW_ADEPT)
Specifics(Player4,SHADOW_ADEPT)
Specifics(Player5,SHADOW_ADEPT)
Specifics(Player6,SHADOW_ADEPT)~ + ~And what can be done with it?~ + ZAAL-COALITION-GEM-1
+ ~!Specifics(Player1,SHADOW_ADEPT)
!Specifics(Player2,SHADOW_ADEPT)
!Specifics(Player3,SHADOW_ADEPT)
!Specifics(Player4,SHADOW_ADEPT)
!Specifics(Player5,SHADOW_ADEPT)
!Specifics(Player6,SHADOW_ADEPT)~ + ~And what can be done with it?~ + ZAAL-COALITION-GEM-2

CHAIN C02SAMAG ZAAL-COALITION-GEM-1
~Such gems need a certain... touch to shape into anything useful. I doubt there is anyone native to this plane that is capable of making anything out of this material. My skills in craftmsanship are far from spectacular, but there is still something I can do...~
DO ~FadeFromColor([20.0],0)
TakePartyItem("ohrgem01")
DestroyItem("ohrgem01")
GiveItemCreate("c0saamu1",LastTalkedToBy,1,0,0)~
= ~...there. That's a lot more pleasing to look at, wouldn't you agree? Someone with a connection to the Shadow Weave will be able to draw upon its powers now.~
EXTERN C02SAMAG ZAAL-COALITION-1

CHAIN C02SAMAG ZAAL-COALITION-GEM-2
~Such gems need a certain... touch to shape into anything useful. I doubt there is anyone native to this plane that is capable of making anything out of this material. And unless you have some skill in the Shadow Art, I fear anything made from it would be worthless to you.~
EXTERN C02SAMAG ZAAL-COALITION-1

