BEGIN C0SAFAM

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",1) Alignment(Myself,MASK_LAWFUL)~ THEN C0SAFAM YINROU-BG1-1
~The shade wolf looks at you with fierce, glowing yellow eyes. "I am Yin'rou." The creature's gaze is analytical, as though judging you. "So you are the one to whom I have been bound? Very well, summoner. I shall test your worth by fighting at your side."~
DO ~SetGlobal("C0SAFamiliarSummoned","GLOBAL",2)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",1) Alignment(Myself,MASK_LCNEUTRAL)~ THEN C0SAFAM KASHAI-BG1-1
~The shadow materializes into a humanoid shape before you. "Ahh... sssooo I have been sssummoned into thisss plane of colour, I sssee..." It inclines its 'head' towards you in acknowledgement. "You may call me Ka'Sssshai... I am at your command, massster..."~
DO ~SetGlobal("C0SAFamiliarSummoned","GLOBAL",2)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",1) Alignment(Myself,MASK_CHAOTIC)~ THEN C0SAFAM NYX-BG1-1
~The mephit blinks in curiosity upon looking at you for the first time. "Oh, so is it that time now?" It grins in your direction. "Name's Nyx. Guess you're the boss, huh? Alright... this should be interesting."~
DO ~SetGlobal("C0SAFamiliarSummoned","GLOBAL",2)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()~ EXIT

CHAIN IF WEIGHT #-1 ~Alignment(Myself,MASK_LAWFUL) !InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM YINROU-BG1-2
~Yin'rou growls menacingly at your approach. "You are not my summoner, <PRO_RACE>. Begone." The shade wolf steps towards <CHARNAME> while never taking its eyes away from you.~
DO ~MoveToObject(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Alignment(Myself,MASK_LCNEUTRAL) !InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM KASHAI-BG1-2
~The shadow hisses as you approach it, floating towards <CHARNAME> defensively. "We have nothing to dissscusss, living one... my wordsss are for my massster only..."~
DO ~MoveToObject(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Alignment(Myself,MASK_CHAOTIC) !InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM NYX-BG1-2
~Nyx looks at you suspiciously for a moment. "Sorry, but unless you're the boss, I got nothin' to say." The mephit sticks it tongue out at you mischievously before flying towards <CHARNAME>.~
DO ~MoveToObject(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",2) Alignment(Myself,MASK_LAWFUL) InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM YINROU-BG1-3
~Yin'rou's fierce golden eyes look at you for a moment before he nods his head slightly in acknowledgement. "Your command, summoner?"~
END
+ ~Global("Background","LOCALS",0)~ + ~Tell me about yourself, Yin'rou.~ DO ~SetGlobal("Background","LOCALS",1)~ + YINROU-BG1-3-4
++ ~Return to your home plane for now. I will call for you when you're needed.~ + YINROU-BG1-3-1
++ ~You wouldn't happen to have any advice, would you?~ + YINROU-BG1-3-2
+ ~Global("DisableFamiliarAI","LOCALS",0)~ + ~I want you to stop hiding while out of combat.~ DO ~SetGlobal("DisableFamiliarAI","LOCALS",1)~ + YINROU-BG1-3-5
+ ~Global("DisableFamiliarAI","LOCALS",1)~ + ~I want you to hide in shadows while out of combat.~ DO ~SetGlobal("DisableFamiliarAI","LOCALS",0)~ + YINROU-BG1-3-6
++ ~How are you? Is everything alright?~ + YINROU-BG1-3-3
++ ~Nothing right now. Let's get moving.~ + YINROU-BG1-3-0

CHAIN C0SAFAM YINROU-BG1-3-0
~The shade wolf is turning to leave before you even finish your sentence. "As it should be, summoner."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-1
~The shade wolf's eyes close as it begins to dematerialize into black mist. "Very well, summoner. I shall await your call."~
DO ~GivePartyAllEquipment()
ActionOverride(LastTalkedToBy,AddSpecialAbility("c0safam2"))
CreateVisualEffectObject("c0cloud1",Myself)
Wait(1)
DestroySelf()~ EXIT

CHAIN C0SAFAM YINROU-BG1-3-2
~The wolf is silent for a moment. "You must be desperate, summoner, to come to me for advice. Though I will give it nonetheless."~
END
IF ~GlobalLT("chapter","GLOBAL",1)~ EXTERN C0SAFAM YINROU-BG1-3-2a
IF ~Global("chapter","GLOBAL",1)~ EXTERN C0SAFAM YINROU-BG1-3-2b
IF ~Global("chapter","GLOBAL",2)~ EXTERN C0SAFAM YINROU-BG1-3-2c
IF ~Global("chapter","GLOBAL",3)~ EXTERN C0SAFAM YINROU-BG1-3-2d
IF ~Global("chapter","GLOBAL",4)~ EXTERN C0SAFAM YINROU-BG1-3-2e
IF ~Global("chapter","GLOBAL",5)~ EXTERN C0SAFAM YINROU-BG1-3-2f
IF ~Global("chapter","GLOBAL",6)~ EXTERN C0SAFAM YINROU-BG1-3-2g
IF ~Global("chapter","GLOBAL",7)~ EXTERN C0SAFAM YINROU-BG1-3-2h
IF ~Global("chapter","GLOBAL",7)
GlobalGT("bd_plot","GLOBAL",0)
GlobalLT("bd_plot","GLOBAL",50)~ EXTERN C0SAFAM YINROU-BG1-3-2i
IF ~Global("chapter","GLOBAL",7)
GlobalGT("bd_plot","GLOBAL",51)~ EXTERN C0SAFAM YINROU-BG1-3-2j
IF ~Global("chapter","GLOBAL",8)~ EXTERN C0SAFAM YINROU-BG1-3-2k
IF ~Global("chapter","GLOBAL",9)~ EXTERN C0SAFAM YINROU-BG1-3-2l
IF ~Global("chapter","GLOBAL",10)~ EXTERN C0SAFAM YINROU-BG1-3-2m
IF ~Global("chapter","GLOBAL",11)~ EXTERN C0SAFAM YINROU-BG1-3-2n
IF ~Global("chapter","GLOBAL",12)~ EXTERN C0SAFAM YINROU-BG1-3-2o
IF ~Global("chapter","GLOBAL",13)~ EXTERN C0SAFAM YINROU-BG1-3-2p

CHAIN C0SAFAM YINROU-BG1-3-2a
~You hear a low rumble as the wolf growls in barely-contained excitement. "The walls of this castle has chained us long enough. Let us be away from here as soon as possible, so that we may find worthy hunts in the free lands of this plane."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2b
~"You cannot settle for weakness. If you are to prevail over the dangers of this world, then you must become the hunter instead of the prey." Surprisingly, the wolf's eyes appear to soften for a brief moment. "You are young. I shall see to it that you grow to achieve your full potential."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2c
~The wolf growls. "Prey seeks shelter in the darkness, waiting for their opportunity to fight or flee. We will find them, and we will slay them. No matter how many there are."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2d
~"Men bleed as quickly as any beast, and know fear even more closely. Do not cower. They will be no match for us."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2e
~You hear a strange growl that almost seems to be a laugh. "They believe their iron will protect them. My fangs break metal as easily as bone. Let us show our enemies true terror."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2f
~"Hmm..." the wolf ponders for a while. "Our quarry will be seated upon his throne of iron. Like a pack, those who obey shall scatter or tear each other apart if we remove the leader. Find this man and claim his head, and victory is yours."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2g
~The wolf's ears flatten and he growls fiercely. "This place is no home to you any longer. There is nothing but death and danger here now. We must accomplish what we came for and leave as quickly as possible."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2h
~The wolf snorts. "You hardly need my guidance any longer. The end of the hunt is upon us. Lead, and I shall follow."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2i
~The wolf's eyes observe the surroundings cautiously. "The dead are worthy foes. They do not bleed, they do not rest, and they do not fear. But they shall crumble nonetheless."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2j
~The wolf appears satisfied. "War shall be our greatest hunt yet. Make your preparations, summoner, and soon we shall tear through this crusade and dim the Shining Lady's light."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2k
~"Our enemy awaits us on the opposing side of the water. Let them fear our coming, for soon our fangs shall be upon their throats."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2l
~The wolf sniffs the ground beneath him. "Boareskyr Bridge... the site of a deity's death. This land has been enriched by divine blood. It shall be a worthy hunting ground."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2m
~The wolf bares his fangs in a wicked grin. "The Shining Lady believes that being right will lead her to victory. She is wrong on both accounts."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2n
~The wolf howls. "Let them come! Each and every one of them! This battle shall be their last!"~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2o
~The wolf's fur bristles from the harsh atmosphere of Avernus. "Even devils bleed. We shall make them bleed."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-2p
~The wolf growls. "We will be free of these fools. And then we shall find the one who has done this to us, and we shall make him suffer."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-3
~The wolf blinks and looks at you, mildly offended. "I show no weakness to my enemies or my allies, summoners. But if you must know..."~
END
IF ~!HPPercentLT(Myself,50) RandomNum(4,1)~ EXTERN C0SAFAM YINROU-BG1-3-3a
IF ~!HPPercentLT(Myself,50) RandomNum(4,2)~ EXTERN C0SAFAM YINROU-BG1-3-3b
IF ~!HPPercentLT(Myself,50) RandomNum(4,3)~ EXTERN C0SAFAM YINROU-BG1-3-3c
IF ~!HPPercentLT(Myself,50) RandomNum(4,4)~ EXTERN C0SAFAM YINROU-BG1-3-3d
IF ~HPPercentLT(Myself,50) !HPPercentLT("Myself",25)~ EXTERN C0SAFAM YINROU-BG1-3-3e
IF ~HPPercentLT(Myself,25)~ EXTERN C0SAFAM YINROU-BG1-3-3f

CHAIN C0SAFAM YINROU-BG1-3-3a
~Yin'rou derisively snorts and turns away. "There is no time for small talk, summoner. We have much to do."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-3b
~Yin'rou circles around you. "Perhaps it is you that requires attention, summoner. After all, you lack my strength and endurance. It is fortunate for you that I am here."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-3c
~Yin'rou growls. "I grow restless. Let there be battle soon, summoner. My fangs shall dull if they are not tested in due time."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-3d
~Yin'rou's eyes close and seem to relax for a moment. "I fear that my skills shall diminish should they not be tested soon. This cannot be allowed, summoner. Let us find enemies to face."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-3e
~Yin'rou seems to take no notice of the wounds on his body, which are already beginning to heal. "Such meager injuries are nothing to me, summoner. There is nothing to be concerned about."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-3f
~Even with his tough and stubborn personality, Yin'rou's injuries appear to have taken a toll on him. He snarls. "This... is nothing, summoner! I am still capable of battle!"~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-4
~The wolf grunts in mild annoyance. "Must I speak of something so trivial, summoner? Very well, but I shall make this brief."~
= ~"I am Yin'rou, as you know. I was born through the will of the Plane of Shadow, and have survived its treacherous environment since my birth. I have defeated countless foes in my own plane and this one both, and among my kind, I have no equal in battle."~
= ~He ponders for a moment before continuing. "You were not the first to bind me to service. My previous summoner was a weak man, a man who depended too greatly upon my strength." He pauses. "It was not enough to save him in the end."~
= ~His eyes narrow. "Do not look at me that way. Rest assured, I am bound to serve the best I can. But even with my might, you will not survive your toil without strength of your own."~
= ~Suddenly, he exposes his fangs in what appears to be a grin. "So far, however... I am satisfied with what I have seen. I have no reason to believe you are not worth serving, as of the moment... but only time will tell if that lasts."~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-5
~Very well, then. I will face our foes head on.~
EXIT

CHAIN C0SAFAM YINROU-BG1-3-6
~As you wish. Our enemies will not see me until it is too late.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",2) Alignment(Myself,MASK_LCNEUTRAL) InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM KASHAI-BG1-3
~Ka'Shai's incorporeal form takes shape and becomes more solid as you beckon it. "I am lissstening, massster. What is your desssire?"~
END
+ ~Global("Background","LOCALS",0)~ + ~Tell me about yourself, Ka'Shai.~ DO ~SetGlobal("Background","LOCALS",1)~ + KASHAI-BG1-3-4
++ ~Return to your home plane for now. I will call for you when you're needed.~ + KASHAI-BG1-3-1
++ ~You wouldn't happen to have any advice, would you?~ + KASHAI-BG1-3-2
++ ~How are you? Is everything alright?~ + KASHAI-BG1-3-3
+ ~Global("DisableFamiliarAI","LOCALS",0)~ + ~I want you to stop singing while in combat.~ DO ~SetGlobal("DisableFamiliarAI","LOCALS",1)~ + KASHAI-BG1-3-5
+ ~Global("DisableFamiliarAI","LOCALS",1)~ + ~I want you to sing while of combat.~ DO ~SetGlobal("DisableFamiliarAI","LOCALS",0)~ + KASHAI-BG1-3-5
++ ~Nothing right now. Let's get moving.~ + KASHAI-BG1-3-0

CHAIN C0SAFAM KASHAI-BG1-3-0
~"Yesss..." Ka'Shai's body passes through you as it continues along the path you are travelling.~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-1
~The shadow wordlessly begins to dissipate, becoming less and less visible until it is gone entirely.~
DO ~GivePartyAllEquipment()
ActionOverride(LastTalkedToBy,AddSpecialAbility("c0safam2"))
CreateVisualEffectObject("c0cloud1",Myself)
Wait(1)
DestroySelf()~ EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2
~The shadow flutters slightly, either from shock or excitement at being asked such a question. "You desssire my thoughtsss, massster? Asss you wissshhh..."~
END
IF ~GlobalLT("chapter","GLOBAL",1)~ EXTERN C0SAFAM KASHAI-BG1-3-2a
IF ~Global("chapter","GLOBAL",1)~ EXTERN C0SAFAM KASHAI-BG1-3-2b
IF ~Global("chapter","GLOBAL",2)~ EXTERN C0SAFAM KASHAI-BG1-3-2c
IF ~Global("chapter","GLOBAL",3)~ EXTERN C0SAFAM KASHAI-BG1-3-2d
IF ~Global("chapter","GLOBAL",4)~ EXTERN C0SAFAM KASHAI-BG1-3-2e
IF ~Global("chapter","GLOBAL",5)~ EXTERN C0SAFAM KASHAI-BG1-3-2f
IF ~Global("chapter","GLOBAL",6)~ EXTERN C0SAFAM KASHAI-BG1-3-2g
IF ~Global("chapter","GLOBAL",7)~ EXTERN C0SAFAM KASHAI-BG1-3-2h
IF ~Global("chapter","GLOBAL",7)
GlobalGT("bd_plot","GLOBAL",0)
GlobalLT("bd_plot","GLOBAL",50)~ EXTERN C0SAFAM KASHAI-BG1-3-2i
IF ~Global("chapter","GLOBAL",7)
GlobalGT("bd_plot","GLOBAL",51)~ EXTERN C0SAFAM KASHAI-BG1-3-2j
IF ~Global("chapter","GLOBAL",8)~ EXTERN C0SAFAM KASHAI-BG1-3-2k
IF ~Global("chapter","GLOBAL",9)~ EXTERN C0SAFAM KASHAI-BG1-3-2l
IF ~Global("chapter","GLOBAL",10)~ EXTERN C0SAFAM KASHAI-BG1-3-2m
IF ~Global("chapter","GLOBAL",11)~ EXTERN C0SAFAM KASHAI-BG1-3-2n
IF ~Global("chapter","GLOBAL",12)~ EXTERN C0SAFAM KASHAI-BG1-3-2o
IF ~Global("chapter","GLOBAL",13)~ EXTERN C0SAFAM KASHAI-BG1-3-2p

CHAIN C0SAFAM KASHAI-BG1-3-2a
~"We have gained much power and knowledge within these wallssss... but there isss much, much more to find in the world beyond... let us go, massster..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2b
~"Othersss ssseek thy death, massster... the only way to sssurvive isss to find them firssst... and dessstroy them."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2c
~"Our foesss await usss in the dark, but darknessss isss home to usss, massster... we have nothing to fear..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2d
~The shadow flickers wildly. "Our foesss are cowardly, massster... they will not fight usss directly... you must beware their trickssss..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2e
~"Metal isss their currency, massster... deprive them of their preciousss metal, and they will sssstarve...~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2f
~"We approach the den of our adversariesss... where they are the most dangerousss, but also where we can ssstrike them directly. It isss time for us to attack, but do ssso with caution..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2g
~The shadow appears apprehensive. "Thisss place... isss not asss I remember it... deceit is afoot everywhere we ssstep..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2h
~The shadow's glowing eyes look upon you. "Ssssoon, massster... sssoon we will end thisss..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2i
~"The dead are vengeful when their ressst isss disturbed... they will never relent... they mussst be utterly dessstroyed..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2j
~The shadow hesitates. "Death isss in our future... thissss war sssshall be bloody, and it will only end once we extinguish the light..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2k
~"The river ssseparatesss usss from our enemy, but once we reach them, there will be no turning back... be prepared, massster..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2l
~"A death unlike any other hath ssshaped thisss place, massster... the death of a god... the death of thy father... we mussst claim this bridge if we are to advance..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2m
~The shadow ponders. "The righteoussss are the mossst easssily blinded by their own conviction..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2n
~The shadow hisses. "Fight, massster... break their bodiesss and their sssoulssss..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2o
~The shadow's form appears diminished by Avernus's overwhelming aura. "Massster... we mussst be gone from here... Hell ssshall consume usss both if we ssstay..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-2p
~The shadow's eyes darken with rage. "Treachery, massster, cannot go unpunissshed..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-3
~"..." The shadow ponders for a moment, as though it were unaware of its current state of wellbeing.~
END
IF ~!HPPercentLT(Myself,50) RandomNum(4,1)~ EXTERN C0SAFAM KASHAI-BG1-3-3a
IF ~!HPPercentLT(Myself,50) RandomNum(4,2)~ EXTERN C0SAFAM KASHAI-BG1-3-3b
IF ~!HPPercentLT(Myself,50) RandomNum(4,3)~ EXTERN C0SAFAM KASHAI-BG1-3-3c
IF ~!HPPercentLT(Myself,50) RandomNum(4,4)~ EXTERN C0SAFAM KASHAI-BG1-3-3d
IF ~HPPercentLT(Myself,50) !HPPercentLT("Myself",25)~ EXTERN C0SAFAM KASHAI-BG1-3-3e
IF ~HPPercentLT(Myself,25)~ EXTERN C0SAFAM KASHAI-BG1-3-3f

CHAIN C0SAFAM KASHAI-BG1-3-3a
~Ka'Shai's head inclines towards you. "My form isss ssstable, massster. There isss nothing to fear..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-3b
~Ka'Shai begins to drift away, lost in thought, seemingly forgotten that you had asked it a question.~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-3c
~It finally appears to have found an answer. "All isss well..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-3d
~Its humanoid form begins to take on a more coherent shape, as though reassuring you. "I am prepared for anything, massster..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-3e
~Ka'Shai's form seems diminished, though it is seemingly not in pain. "I have... ssssuffered damage to my body, massster... but my presssence in this plane remainsss ssstrong."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-3f
~Ka'Shai appears barely able to hold its form together. "Weak... growing weak... I mussst have time to rebuild my form, massster... I beg your forgivenessss..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-4
~"Me...?" The shadow hesitates. "Very well, massster... I will tell you how I came to be..."~
= ~"Underssstand that I wasss not an individual before you became my massster... I wasss but a piece of the Plane of Ssshadow, no more alive than the air you breathe... I wasss nothing more than a part of a whole, a portion of the greater entity that isss the Ssshadow Plane..."~
= ~"When you sssummoned me into thisss plane, however... I wasss ssseparated from my bondsss to the greater ssshadow... and for the firssst time, I felt what you could dessscribe to be life... it isss a curiousss feeling... one which I am eager to know more of..."~
= ~"You are my massster, and I am here to ssserve you... but I alssso wisssh to explore my newfound ssstate of exissstence... and thusss isss why I chossse to anssswer your call... I am grateful to you for thisss new experience..."~
= ~"Lead and command me however you choose, massster... and I will obssserve... and continue to learn..."~
EXIT

CHAIN C0SAFAM KASHAI-BG1-3-5
~Assss you command, massster...~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SAFamiliarSummoned","GLOBAL",2) Alignment(Myself,MASK_CHAOTIC) InPartySlot(LastTalkedToBy,0)~ THEN C0SAFAM NYX-BG1-3
~Nyx looks back at you and crosses her arms impatiently. "Yeah, boss? Whatcha got for me this time?"~
END
+ ~Global("Background","LOCALS",0)~ + ~Tell me about yourself, Nyx.~ DO ~SetGlobal("Background","LOCALS",1)~ + NYX-BG1-3-5
++ ~Return to your home plane for now. I will call for you when you're needed.~ + NYX-BG1-3-1
++ ~You wouldn't happen to have any advice, would you?~ + NYX-BG1-3-2
++ ~Give me anything you have pickpocketed, will you?~ + NYX-BG1-3-4
+ ~Global("DisableFamiliarAI","LOCALS",0)~ + ~I want you to stop searching for traps.~ DO ~SetGlobal("DisableFamiliarAI","LOCALS",1)~ + NYX-BG1-3-5
+ ~Global("DisableFamiliarAI","LOCALS",1)~ + ~I want you to search for traps.~ DO ~SetGlobal("DisableFamiliarAI","LOCALS",0)~ + NYX-BG1-3-5
++ ~Nothing right now. Let's get moving.~ + NYX-BG1-3-0

CHAIN C0SAFAM NYX-BG1-3-0
~The mephit shrugs. "If you say so."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-1
~The mephit nods as it opens a planar gate. "You got it, boss. I could use a break anyways. See ya around."~
DO ~GivePartyAllEquipment()
ActionOverride(LastTalkedToBy,AddSpecialAbility("c0safam2"))
CreateVisualEffectObject("c0cloud1",Myself)
Wait(1)
DestroySelf()~ EXIT

CHAIN C0SAFAM NYX-BG1-3-2
~"Come again, boss?" The mephit blinks in bewilderment. "What kind of advice could I give for you? Well, if you must ask, hmm... let me think..."~
END
IF ~GlobalLT("chapter","GLOBAL",1)~ EXTERN C0SAFAM NYX-BG1-3-2a
IF ~Global("chapter","GLOBAL",1)~ EXTERN C0SAFAM NYX-BG1-3-2b
IF ~Global("chapter","GLOBAL",2)~ EXTERN C0SAFAM NYX-BG1-3-2c
IF ~Global("chapter","GLOBAL",3)~ EXTERN C0SAFAM NYX-BG1-3-2d
IF ~Global("chapter","GLOBAL",4)~ EXTERN C0SAFAM NYX-BG1-3-2e
IF ~Global("chapter","GLOBAL",5)~ EXTERN C0SAFAM NYX-BG1-3-2f
IF ~Global("chapter","GLOBAL",6)~ EXTERN C0SAFAM NYX-BG1-3-2g
IF ~Global("chapter","GLOBAL",7)~ EXTERN C0SAFAM NYX-BG1-3-2h
IF ~Global("chapter","GLOBAL",7)
GlobalGT("bd_plot","GLOBAL",0)
GlobalLT("bd_plot","GLOBAL",50)~ EXTERN C0SAFAM NYX-BG1-3-2i
IF ~Global("chapter","GLOBAL",7)
GlobalGT("bd_plot","GLOBAL",51)~ EXTERN C0SAFAM NYX-BG1-3-2j
IF ~Global("chapter","GLOBAL",8)~ EXTERN C0SAFAM NYX-BG1-3-2k
IF ~Global("chapter","GLOBAL",9)~ EXTERN C0SAFAM NYX-BG1-3-2l
IF ~Global("chapter","GLOBAL",10)~ EXTERN C0SAFAM NYX-BG1-3-2m
IF ~Global("chapter","GLOBAL",11)~ EXTERN C0SAFAM NYX-BG1-3-2n
IF ~Global("chapter","GLOBAL",12)~ EXTERN C0SAFAM NYX-BG1-3-2o
IF ~Global("chapter","GLOBAL",13)~ EXTERN C0SAFAM NYX-BG1-3-2p

CHAIN C0SAFAM NYX-BG1-3-2a
~The mephit's wings flutter with excitement. "C'mon, c'mon, boss, let's get outta here! We've been cooped up in this place long enough. There's never anything interesting to steal here, either."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2b
~The mephit shrugs. "We ain't off to the greatest start, boss. But cheer up! There's still a whole world out there for us to explore! Countless stories to hear, treasures to find, and pockets to search!"~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2c
~"Ugh." The mephit grimaces. "I'd have been happier delving into a gold mine. Iron is so tacky. And touching it gives me nasty rashes."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2d
~"Guess it's up to us to do the hero-work, boss." Suddenly, the mephit's expression brightens. "Although... a group of bandits has to keep their shiny loot somewhere, right?"~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2e
~The mephit pouts. "Do we have to go trudgin' through the woods, boss? There ain't ever anythin' worth takin'. Just lotsa trees and bugs." She shudders at the mention of bugs.~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2f
~"A company called the Iron Throne's gotta have a nice fat stash locked away somewhere, don't you agree, boss? Let's find where they're keepin' the good stuff."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2g
~The mephit's expression turns semi-serious for a second. "Somethin' ain't right, boss. Candlekeep's still quiet, but in a different way. It's like no one here knows each other no more." She then smirks. "Their pockets are as dusty and borin' as ever, though."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2h
~The mephit rolls her eyes. "We better get a big payload after all the hard work we've been through, boss..."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2i
~"I ain't too fond of stealin' from the dead, boss. You never know when they'll jump up at you. If you take anythin', keep an ear out for the knockin' sound of bones, just in case."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2j
~"We gotta take the fight to this Shining Lady gal, eh boss?" The mephit shrugs. "Fightin' ain't my hobby, but I'm sure we'll find a shiny trinket or two along the way, so I'm not complainin'."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2k
~The mephit looks towards the north. "That's the direction we're headin', boss. No point meanderin' about when we know where we're headed."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2l
~The mephit sniffs the air. "That bridge over there was where Cyric stabbed your old man in the back, boss. Let's hope you don't end up goin' the same way."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2m
~The mephit appears to be in thought. "What's this Caelar gal so crazy 'bout the light for, anyways? I've lived in the dark most of my life, and everything's great. Guess it's just one of those crazy pious people things..."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2n
~"Stabby stabby, kill kill!" The mephit stops and looks at you sheepishly. "Cripes, I'm not doin' it right, am I?"~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2o
~For once, the mephit appears genuinely afraid. "This place ain't home for either of us, boss. We stay, we die, no question about it. Let's not stay."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-2p
~"Aw, friggers." The mephit looks down shamefully. "I'm all outta ideas, boss. Sorry."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-3
~The mephit looks itself over for a moment, as though the thought of being unwell just came over her. "Well, boss, since you're nice enough to ask..."~
END
IF ~!HPPercentLT(Myself,50) RandomNum(4,1)~ EXTERN C0SAFAM NYX-BG1-3-3a
IF ~!HPPercentLT(Myself,50) RandomNum(4,2)~ EXTERN C0SAFAM NYX-BG1-3-3b
IF ~!HPPercentLT(Myself,50) RandomNum(4,3)~ EXTERN C0SAFAM NYX-BG1-3-3c
IF ~!HPPercentLT(Myself,50) RandomNum(4,4)~ EXTERN C0SAFAM NYX-BG1-3-3d
IF ~HPPercentLT(Myself,50) !HPPercentLT("Myself",25)~ EXTERN C0SAFAM NYX-BG1-3-3e
IF ~HPPercentLT(Myself,25)~ EXTERN C0SAFAM NYX-BG1-3-3f

CHAIN C0SAFAM NYX-BG1-3-3a
~Nyx shrugs. "Everything feels fine, boss. Fingers are itchin', though. Any chance we'll find a few pockets for me to pick?"~
EXIT

CHAIN C0SAFAM NYX-BG1-3-3b
~Nyx's stomach growls. "Oops... heh heh, you heard that, right, boss? Mind stoppin' for a snack break?~
EXIT

CHAIN C0SAFAM NYX-BG1-3-3c
~Nyx scratches her head. "What'ya want me to say, boss? I've got nothin', really. Ready for action, as usual."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-3d
~Nyx flies in figure-eights before you. "I'm just so boooored. Never thought this plane would be so boring, y'know? Let's find something to do already!"~
EXIT

CHAIN C0SAFAM NYX-BG1-3-3e
~She grimaces. "Well, actually... can't say I'm feelin' so good, boss, but I'll live, no worries. I'll get better."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-3f
~Nyx appears to have trouble keeping herself in the air due to her injuries. "I'm not dead yet, but... well, I'm not that far off, if you get what I'm sayin'. I'll make a quick jaunt outta here if things get dicey, but I'd rather it not come to that. I like it better in this plane."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-4
~The mephit pouts before reluctantly handing over her stolen goods. "Ah, whatever. Can't carry it all around forever anyways. Just remember you owe me for this, got it, boss?"~
DO ~GivePartyAllEquipment()~ EXIT

CHAIN C0SAFAM NYX-BG1-3-5
~"What?" Nyx make s sudden drop from surprise at being asked. "You wanna know about me, boss? Really?"~
= ~"Alright, well, lemme just get one thing straight, boss. I'm actually not native to the Plane of Shadow. I am - was, I dunno - anymore, an air mephit from the Elemental Plane of, well, Air. Bit of a wild thing, I was, and I found myself ending up in different planes all the time, and getting out just as suddenly as I got in... well, until I ended up getting sucked into the Plane of Shadow, that is."~
= ~"Actually, I don't really remember much of what happened. But as far as I remember, I ended up in the Shadow Plane, and I eventually got changed. Maybe I died and was reborn like this, or maybe that's just what happens when you live in the plane for too long. Either way, I was changed completely. And by that, I mean, I grew legs. Yeah... the planes do weird things to you, let's just put it that way. Wouldn't suggest it if you value your limbs."~
= ~"Anyways, I ain't sure what I am now, but I ain't what I used to be. An' now I'm bound to you, boss. Not sure I like bein' tied down, but I don't blame you at all. You've done well by me so far."~
EXIT

CHAIN C0SAFAM NYX-BG1-3-6
~Will do, boss.~
EXIT