BEGIN C0SAFAM

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",1) Alignment(Myself,MASK_LAWFUL)~ THEN C0SAFAM a1
~The shade wolf looks at you with fierce, glowing yellow eyes. "I am Yin'rou." The creature's gaze is analytical, as though judging you. "So you are the one to whom I have been bound? Very well, summoner. I shall test your worth by fighting at your side."~
DO ~SetGlobal("C0SAFamiliarSummoned","GLOBAL",2)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",1) Alignment(Myself,MASK_LCNEUTRAL)~ THEN C0SAFAM b1
~The shadow materializes into a humanoid shape before you. "Ahh... sssooo I have been sssummoned into thisss plane of colour, I sssee..." It inclines its 'head' towards you in acknowledgement. "You may call me Ka'Sssshai... I am at your command, massster..."~
DO ~SetGlobal("C0SAFamiliarSummoned","GLOBAL",2)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",1) Alignment(Myself,MASK_CHAOTIC)~ THEN C0SAFAM c1
~The mephit blinks in curiosity upon looking at you for the first time. "Oh, so is it that time now?" It grins in your direction. "Name's Nyx. Guess you're the boss, huh? Alright... this should be interesting."~
DO ~SetGlobal("C0SAFamiliarSummoned","GLOBAL",2)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()~ EXIT

CHAIN IF WEIGHT #-1 ~Alignment(Myself,MASK_LAWFUL) !InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM a2
~Yin'rou growls menacingly at your approach. "You are not my summoner, <PRO_RACE>. Begone." The shade wolf steps towards <CHARNAME> while never taking its eyes away from you.~
DO ~MoveToObject(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Alignment(Myself,MASK_LCNEUTRAL) !InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM b2
~The shadow hisses as you approach it, floating towards <CHARNAME> defensively. "We have nothing to dissscusss, living one... my wordsss are for my massster only..."~
DO ~MoveToObject(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Alignment(Myself,MASK_CHAOTIC) !InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM c2
~Nyx looks at you suspiciously for a moment. "Sorry, but unless you're the boss, I got nothin' to say." The mephit sticks it tongue out at you mischievously before flying towards <CHARNAME>.~
DO ~MoveToObject(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",2) Alignment(Myself,MASK_LAWFUL) InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM a3
~Yin'rou's fierce golden eyes look at you for a moment before he nods his head slightly in acknowledgement. "Your command, summoner?"~
END
+ ~Global("Background","LOCALS",0)~ + ~Tell me about yourself, Yin'rou.~ DO ~SetGlobal("Background","LOCALS",1)~ + a3.4
++ ~Return to your home plane for now. I will call for you when you're needed.~ + a3.1
++ ~You wouldn't happen to have any advice, would you?~ + a3.2
++ ~How are you? Is everything alright?~ + a3.3
++ ~Nothing right now. Let's get moving.~ + a3.0

CHAIN C0SAFAM a3.0
~The shade wolf is turning to leave before you even finish your sentence. "As it should be, summoner."~
EXIT

CHAIN C0SAFAM a3.1
~The shade wolf's eyes close as it begins to dematerialize into black mist. "Very well, summoner. I shall await your call."~
DO ~GivePartyAllEquipment()
ActionOverride(LastTalkedToBy,AddSpecialAbility("c0safam2"))
CreateVisualEffectObject("c0cloud1",Myself)
Wait(1)
DestroySelf()~ EXIT

CHAIN C0SAFAM a3.2
~The wolf is silent for a moment. "You must be desperate, summoner, to come to me for advice. Though I will give it nonetheless."~
END
IF ~Global("chapter","GLOBAL",1)
AreaType(DUNGEON)~ EXTERN C0SAFAM a3.2a
IF ~Global("chapter","GLOBAL",1)
!AreaType(DUNGEON)~ EXTERN C0SAFAM a3.2b
IF ~Global("chapter","GLOBAL",2)
AreaType(CITY)~ EXTERN C0SAFAM a3.2c
IF ~Global("chapter","GLOBAL",2)
!AreaType(CITY)~ EXTERN C0SAFAM a3.2d
IF ~Global("chapter","GLOBAL",3)~ EXTERN C0SAFAM a3.2e
IF ~Global("chapter","GLOBAL",4)~ EXTERN C0SAFAM a3.2f
IF ~Global("chapter","GLOBAL",5)~ EXTERN C0SAFAM a3.2g
IF ~Global("chapter","GLOBAL",6)~ EXTERN C0SAFAM a3.2h
IF ~Global("chapter","GLOBAL",7)~ EXTERN C0SAFAM a3.2i

CHAIN C0SAFAM a3.2a
~He observes the surroundings briefly before letting out a low growl. "We must be free of this dark prison. Strike down all who choose to bar our path."~
EXIT

CHAIN C0SAFAM a3.2b
~He raises his nose disdainfully. "The scent of this strange place offends my senses. Let us find those who might answer any questions we have no answers to."~
EXIT

CHAIN C0SAFAM a3.2c
~He sniffs around for a while before continuing. "The very air of this city reeks of gold. No doubt many opportunities for wealth await us."~
EXIT

CHAIN C0SAFAM a3.2d
~His ears suddenly twitch as his head jerks towards a certain direction. "I have changed my mind. I sense prey, summoner. Ask me again once I am tired, and perhaps I shall give you an answer then."~
EXIT

CHAIN C0SAFAM a3.2e
~He lets out a grunt. "Whatever path you have chosen is being decided for you by those in the shadows. Perhaps that will change in due time, but for now, you must serve... as will I, as I must."~
EXIT

CHAIN C0SAFAM a3.2f
~His eyes close in contemplation. "This is a place made by fear, the likes of which I have never seen beyond my home plane. Remain vigilant, summoner. Your struggle has only begun.~
EXIT

CHAIN C0SAFAM a3.2g
~His shadowy fur bristles as he cautiously watches the shadows around you. "This is a place in which there is no safety, summoner... though fear not. I have faced worse in my home plane. You will survive."~
EXIT

CHAIN C0SAFAM a3.2h
~He snorts. "Hmph. Once again we play lackey to those who would withhold the answers we desire. I like it not, but I see no other choice. Let us find and save this lost elven city."~
EXIT

CHAIN C0SAFAM a3.2i
~He lets out a gutteral snarl. "We will fight our way through this nightmare realm, summoner, you and I... and I shall tear that mage's throat out so that your essence might be restored!"~
EXIT

CHAIN C0SAFAM a3.3
~The wolf blinks and looks at you, mildly offended. "I show no weakness to my enemies or my allies, summoners. But if you must know..."~
END
IF ~!HPPercentLT(Myself,50) RandomNum(4,1)~ EXTERN C0SAFAM a3.3a
IF ~!HPPercentLT(Myself,50) RandomNum(4,2)~ EXTERN C0SAFAM a3.3b
IF ~!HPPercentLT(Myself,50) RandomNum(4,3)~ EXTERN C0SAFAM a3.3c
IF ~!HPPercentLT(Myself,50) RandomNum(4,4)~ EXTERN C0SAFAM a3.3d
IF ~HPPercentLT(Myself,50) !HPPercentLT("Myself",25)~ EXTERN C0SAFAM a3.3e
IF ~HPPercentLT(Myself,25)~ EXTERN C0SAFAM a3.3f

CHAIN C0SAFAM a3.3a
~Yin'rou derisively snorts and turns away. "There is no time for small talk, summoner. We have much to do."~
EXIT

CHAIN C0SAFAM a3.3b
~Yin'rou circles around you. "Perhaps it is you that requires attention, summoner. After all, you lack my strength and endurance. It is fortunate for you that I am here."~
EXIT

CHAIN C0SAFAM a3.3c
~Yin'rou growls. "I grow restless. Let there be battle soon, summoner. My fangs shall dull if they are not tested in due time."~
EXIT

CHAIN C0SAFAM a3.3d
~Yin'rou's eyes close and seem to relax for a moment. "I fear that my skills shall diminish should they not be tested soon. This cannot be allowed, summoner. Let us find enemies to face."~
EXIT

CHAIN C0SAFAM a3.3e
~Yin'rou seems to take no notice of the wounds on his body, which are already beginning to heal. "Such meager injuries are nothing to me, summoner. There is nothing to be concerned about."~
EXIT

CHAIN C0SAFAM a3.3f
~Even with his tough and stubborn personality, Yin'rou's injuries appear to have taken a toll on him. He snarls. "This... is nothing, summoner! I am still capable of battle!"~
EXIT

CHAIN C0SAFAM a3.4
~The wolf grunts in mild annoyance. "Must I speak of something so trivial, summoner? Very well, but I shall make this brief."~
= ~"I am Yin'rou, as you know. I was born through the will of the Plane of Shadow, and have survived its treacherous environment since my birth. I have defeated countless foes in my own plane and this one both, and among my kind, I have no equal in battle."~
= ~He ponders for a moment before continuing. "You were not the first to call upon my strength. My previous summoner was a weak man, a man who depended too greatly upon my strength." He pauses. "It was not enough to save him in the end."~
= ~His eyes narrow. "Do not look at me that way. Rest assured, I am bound to serve the best I can. But even with my might, you will not survive your toil without strength of your own."~
= ~Suddenly, he exposes his fangs in what appears to be a grin. "So far, however... I am satisfied with what I have seen. I have no reason to believe you are not worth serving, as of the moment... but only time will tell if that lasts."~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",2) Alignment(Myself,MASK_LCNEUTRAL) InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM b3
~Ka'Shai's incorporeal form takes shape and becomes more solid as you beckon it. "I am lissstening, massster. What is your desssire?"~
END
+ ~Global("Background","LOCALS",0)~ + ~Tell me about yourself, Ka'Shai.~ DO ~SetGlobal("Background","LOCALS",1)~ + b3.4
++ ~Return to your home plane for now. I will call for you when you're needed.~ + b3.1
++ ~You wouldn't happen to have any advice, would you?~ + b3.2
++ ~How are you? Is everything alright?~ + b3.3
++ ~Nothing right now. Let's get moving.~ + b3.0

CHAIN C0SAFAM b3.0
~"Yesss..." Ka'Shai's body passes through you as it continues along the path you are travelling.~
EXIT

CHAIN C0SAFAM b3.1
~The shadow wordlessly begins to dissipate, becoming less and less visible until it is gone entirely.~
DO ~GivePartyAllEquipment()
ActionOverride(LastTalkedToBy,AddSpecialAbility("c0safam2"))
CreateVisualEffectObject("c0cloud1",Myself)
Wait(1)
DestroySelf()~ EXIT

CHAIN C0SAFAM b3.2
~The shadow flutters slightly, either from shock or excitement at being asked such a question. "You desssire my thoughtsss, massster? Asss you wissshhh..."~
END
IF ~Global("chapter","GLOBAL",1)
AreaType(DUNGEON)~ EXTERN C0SAFAM b3.2a
IF ~Global("chapter","GLOBAL",1)
!AreaType(DUNGEON)~ EXTERN C0SAFAM b3.2b
IF ~Global("chapter","GLOBAL",2)~ EXTERN C0SAFAM b3.2c
IF ~Global("chapter","GLOBAL",3)~ EXTERN C0SAFAM b3.2d
IF ~Global("chapter","GLOBAL",4)~ EXTERN C0SAFAM b3.2e
IF ~Global("chapter","GLOBAL",5)~ EXTERN C0SAFAM b3.2f
IF ~Global("chapter","GLOBAL",6)~ EXTERN C0SAFAM b3.2g
IF ~Global("chapter","GLOBAL",7)~ EXTERN C0SAFAM b3.2h

CHAIN C0SAFAM b3.2a
~It quivers slightly. "The metalsss here ssscream, massster... you mussst not ssstay here, or you ssshall ssscream with them once the mage returnsss..."~
EXIT

CHAIN C0SAFAM b3.2b
~It seems noticeably uncomfortable. "Here, we ssshall be exposssed to light... let usss find the ssshadowsss, massster."~
EXIT

CHAIN C0SAFAM b3.2c
~It lets out a sound which bears resemblance to a long sigh. "Gold, massster... you mussst gather the coveted gold, or what you ssseek will be lossst to you forever."~
EXIT

CHAIN C0SAFAM b3.2d
~"Your path isss clear, massster... you mussst continue to ssserve thossse who currently hold your fate..."~
EXIT

CHAIN C0SAFAM b3.2e
~It hisses in a strange combination of excitement and fear. "The wizard isss deviousss, massster... tread carefully, or elssse... we will both be doomed..."~
EXIT

CHAIN C0SAFAM b3.2f
~Strangely, Ka'Shai seems content despite the danger of the place you are in. "Thisss place isss much alike with Plane of Ssshadow, massster... danger isss presssent, even when all ssseemsss safe... beware..."~
EXIT

CHAIN C0SAFAM b3.2g
~Ka'Shai seems strangely agitated. "The elvesss hold their sssecretsss closssely, massster. They will not be willing to anssswer, even if you aid them... but ssshould we find thisss elven city, perhapsss then we ssshall dissscover the truth for ourssselvesss..."~
EXIT

CHAIN C0SAFAM b3.2h
~Its form flares in apparent rage and you see a pair of red, glowing eyes in the midst of the mass of shadow. "The mad mage mussst be dessstroyed utterly, massster... here where death isss the true end... only then can you be whole once more..."~
EXIT

CHAIN C0SAFAM b3.3
~"..." The shadow ponders for a moment, as though it were unaware of its current state of wellbeing.~
END
IF ~!HPPercentLT(Myself,50) RandomNum(4,1)~ EXTERN C0SAFAM b3.3a
IF ~!HPPercentLT(Myself,50) RandomNum(4,2)~ EXTERN C0SAFAM b3.3b
IF ~!HPPercentLT(Myself,50) RandomNum(4,3)~ EXTERN C0SAFAM b3.3c
IF ~!HPPercentLT(Myself,50) RandomNum(4,4)~ EXTERN C0SAFAM b3.3d
IF ~HPPercentLT(Myself,50) !HPPercentLT("Myself",25)~ EXTERN C0SAFAM b3.3e
IF ~HPPercentLT(Myself,25)~ EXTERN C0SAFAM b3.3f

CHAIN C0SAFAM b3.3a
~Ka'Shai's head inclines towards you. "My form isss ssstable, massster. There isss nothing to fear..."~
EXIT

CHAIN C0SAFAM b3.3b
~Ka'Shai begins to drift away, lost in thought, seemingly forgotten that you had asked it a question.~
EXIT

CHAIN C0SAFAM b3.3c
~It finally appears to have found an answer. "All isss well..."~
EXIT

CHAIN C0SAFAM b3.3d
~Its humanoid form begins to take on a more coherent shape, as though reassuring you. "I am prepared for anything, massster..."~
EXIT

CHAIN C0SAFAM b3.3e
~Ka'Shai's form seems diminished, though it is seemingly not in pain. "I have... ssssuffered damage to my body, massster... but my presssence in this plane remainsss ssstrong."~
EXIT

CHAIN C0SAFAM b3.3f
~Ka'Shai appears barely able to hold its form together. "Weak... growing weak... I mussst have time to rebuild my form, massster... I beg your forgivenessss..."~
EXIT

CHAIN C0SAFAM b3.4
~"Me...?" The shadow hesitates. "Very well, massster... I will tell you how I came to be..."~
= ~"Underssstand that I wasss not an individual before you became my massster... I wasss but a piece of the Plane of Ssshadow, no more alive than the air you breathe... I wasss nothing more than a part of a whole, a portion of the greater entity that isss the Ssshadow Plane..."~
= ~"When you sssummoned me into thisss plane, however... I wasss ssseparated from my bondsss to the greater ssshadow... and for the firssst time, I felt what you could dessscribe to be life... it isss a curiousss feeling... one which I am eager to know more of..."~
= ~"You are my massster, and I am here to ssserve you... but I alssso wisssh to explore my newfound ssstate of exissstence... and thusss isss why I chossse to anssswer your call... I am grateful to you for thisss new experience..."~
= ~"Lead and command me however you choose, massster... and I will obssserve... and continue to learn..."~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",2) Alignment(Myself,MASK_CHAOTIC) InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM c3
~Nyx looks back at you and crosses her arms impatiently. "Yeah, boss? Whatcha got for me this time?"~
END
+ ~Global("Background","LOCALS",0)~ + ~Tell me about yourself, Nyx.~ DO ~SetGlobal("Background","LOCALS",1)~ + c3.5
++ ~Return to your home plane for now. I will call for you when you're needed.~ + c3.1
++ ~You wouldn't happen to have any advice, would you?~ + c3.2
++ ~How are you? Is everything alright?~ + c3.3
++ ~Give me anything you have pickpocketed, will you?~ + c3.4
++ ~Nothing right now. Let's get moving.~ + c3.0

CHAIN C0SAFAM c3.0
~The mephit shrugs. "If you say so."~
EXIT

CHAIN C0SAFAM c3.1
~The mephit nods as it opens a planar gate. "You got it, boss. I could use a break anyways. See ya around."~
DO ~GivePartyAllEquipment()
ActionOverride(LastTalkedToBy,AddSpecialAbility("c0safam2"))
CreateVisualEffectObject("c0cloud1",Myself)
Wait(1)
DestroySelf()~ EXIT

CHAIN C0SAFAM c3.2
~"Come again, boss?" The mephit blinks in bewilderment. "What kind of advice could I give for you? Well, if you must ask, hmm... let me think..."~
END
IF ~Global("chapter","GLOBAL",1)
AreaType(DUNGEON)~ EXTERN C0SAFAM c3.2a
IF ~Global("chapter","GLOBAL",1)
!AreaType(DUNGEON)~ EXTERN C0SAFAM c3.2b
IF ~Global("chapter","GLOBAL",2)~ EXTERN C0SAFAM c3.2c
IF ~Global("chapter","GLOBAL",3)~ EXTERN C0SAFAM c3.2d
IF ~Global("chapter","GLOBAL",4)~ EXTERN C0SAFAM c3.2e
IF ~Global("chapter","GLOBAL",5)~ EXTERN C0SAFAM c3.2f
IF ~Global("chapter","GLOBAL",6)~ EXTERN C0SAFAM c3.2g
IF ~Global("chapter","GLOBAL",7)~ EXTERN C0SAFAM c3.2h

CHAIN C0SAFAM c3.2a
~She shivers with visible discomfort. "I dun' like this place, boss. It's dead, quiet, and there's barely any shiny stuff to keep me excited. Can we get outta here?"~
EXIT

CHAIN C0SAFAM c3.2b
~She bats her wings excitedly with a mischievous gleam in her eyes. "Ahh, finally, freedom! More importantly, gold! Just resting, waiting for my fingers to free 'em!"~
EXIT

CHAIN C0SAFAM c3.2c
~She shrugs. "I s'pose we've gotta build up a nest egg for 'em people who can help us, boss. But, seriously, we finally get our hands on some shiny treasure and we have to spend it away? Your life blows, boss."~
EXIT

CHAIN C0SAFAM c3.2d
~"*sigh* Don'tcha ever get a break, boss? Because when you're trawlin' through all this menial work, I have to suffer with you like a good familiar. Ah, don't listen to me. I'm just ventin', that's all. I know you know best, boss."~
EXIT

CHAIN C0SAFAM c3.2e
~You notice that Nyx is rubbing her hands nervously. "Don't like this place, boss. That's all I'll say. Let's find your girl and your arch-enemy, bag 'em and be outta here."~
EXIT

CHAIN C0SAFAM c3.2f
~"You're not gonna die on me in this place, are ya, boss? 'Cause I dunno if I'd be able to keep on livin', figuratively or literally. Bound for life an' all. Well, for both our sakes, I'll watch your back, for all it's worth."~
EXIT

CHAIN C0SAFAM c3.2g
~She pouts. "Why's you gotta run around bein' everyone's errand <PRO_BOYGIRL> all day without seein' a copper in return, eh, boss? We'd better get some answers from them stuck-up pointy-ears once we're done savin' their arses, yeah?"~
EXIT

CHAIN C0SAFAM c3.2h
~She grins sheepishly. "Heh, I'm all outta advice here, boss. But I'll do my part, even here. Not like I have any other choice anyhow. Let's skewer that crazy mage and find our way outta this hell-hole in time for dinner."~
EXIT

CHAIN C0SAFAM c3.3
~The mephit looks itself over for a moment, as though the thought of being unwell just came over her. "Well, boss, since you're nice enough to ask..."~
END
IF ~!HPPercentLT(Myself,50) RandomNum(4,1)~ EXTERN C0SAFAM c3.3a
IF ~!HPPercentLT(Myself,50) RandomNum(4,2)~ EXTERN C0SAFAM c3.3b
IF ~!HPPercentLT(Myself,50) RandomNum(4,3)~ EXTERN C0SAFAM c3.3c
IF ~!HPPercentLT(Myself,50) RandomNum(4,4)~ EXTERN C0SAFAM c3.3d
IF ~HPPercentLT(Myself,50) !HPPercentLT("Myself",25)~ EXTERN C0SAFAM c3.3e
IF ~HPPercentLT(Myself,25)~ EXTERN C0SAFAM c3.3f

CHAIN C0SAFAM c3.3a
~Nyx shrugs. "Everything feels fine, boss. Fingers are itchin', though. Any chance we'll find a few pockets for me to pick?"~
EXIT

CHAIN C0SAFAM c3.3b
~Nyx's stomach growls. "Oops... heh heh, you heard that, right, boss? Mind stoppin' for a snack break?~
EXIT

CHAIN C0SAFAM c3.3c
~Nyx scratches her head. "What'ya want me to say, boss? I've got nothin', really. Ready for action, as usual."~
EXIT

CHAIN C0SAFAM c3.3d
~Nyx flies in figure-eights before you. "I'm just so boooored. Never thought this plane would be so boring, y'know? Let's find something to do already!"~
EXIT

CHAIN C0SAFAM c3.3e
~She grimaces. "Well, actually... can't say I'm feelin' so good, boss, but I'll live, no worries. I'll get better."~
EXIT

CHAIN C0SAFAM c3.3f
~Nyx appears to have trouble keeping herself in the air due to her injuries. "I'm not dead yet, but... well, I'm not that far off, if you get what I'm sayin'. I'll make a quick jaunt outta here if things get dicey, but I'd rather it not come to that. I like it better in this plane."~
EXIT

CHAIN C0SAFAM c3.4
~The mephit pouts before reluctantly handing over her stolen goods. "Ah, whatever. Can't carry it all around forever anyways. Just remember you owe me for this, got it, boss?"~
DO ~GivePartyAllEquipment()~ EXIT

CHAIN C0SAFAM c3.5
~"What?" Nyx make s sudden drop from surprise at being asked. "You wanna know about me, boss? Really?"~
= ~"Alright, well, lemme just . I'm actually not native to the Plane of Shadow. I am - was, I dunno - anymore, an air mephit from the Elemental Plane of, well, Air. Bit of a wild thing, I was, and I found myself ending up in different planes all the time, and getting out just as suddenly as I got in... well, until I ended up getting sucked into the Plane of Shadow, that is."~
= ~"Actually, I don't really remember much of what happened. But as far as I remember, I ended up in the Shadow Plane, and I eventually got changed. Maybe I died and was reborn like this, or maybe that's just what happens when you live in the plane for too long. Either way, I was changed completely. And by that, I mean, I grew legs. Yeah... the planes do weird things to you, let's just put it that way. Wouldn't suggest it if you value your limbs."~
= ~"Anyways, I ain't sure what I am now, but I ain't what I used to be. An' now I'm bound to you, boss. Not sure I like bein' tied down, but I don't blame you at all. You've done well by me so far."~
EXIT
