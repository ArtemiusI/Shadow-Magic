BEGIN C0CICER

CHAIN IF WEIGHT #-1 ~!%is_shadow_adept_lasttalkedtoby%~ THEN C0CICER CICERO-NO
~Greetings, stranger. My apologies, but I have little time to spare at the moment.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0CiceroShop","Global",0)
%is_shadow_adept_lasttalkedtoby%~ THEN C0CICER CICERO
~Greetings, stranger. Is there something...? Hmm.~
END
++ ~You...~ DO ~SetGlobal("C0CiceroShop","Global",1)~ + CICERO-1
++ ~What is the meaning of that look?~ DO ~SetGlobal("C0CiceroShop","Global",1)~ + CICERO-1
++ ~Have we met?~ DO ~SetGlobal("C0CiceroShop","Global",1)~ + CICERO-1

CHAIN IF WEIGHT #-1 ~Global("C0CiceroShop","Global",1)
%is_shadow_adept_lasttalkedtoby%~ THEN C0CICER CICERO-STORE
~We meet again. I still have many scrolls to offer, should you be in need. The gold will aid in my research.~
END
++ ~Show me what you have.~ DO ~StartStore("c0sascr1",Lasttalkedtoby(Myself))~ EXIT
++ ~Perhaps another time.~ + CICERO-5

CHAIN C0CICER CICERO-1
~There is an aura about you... magic, but not of the sort commonly seen in these lands. You are a shadowcaster. To meet one in this plane... curious.~
END
++ ~So what if I am?~ + CICERO-2
++ ~You're a shadow adept?~ + CICERO-3
++ ~Who are you?~ + CICERO-3

CHAIN C0CICER CICERO-2
~Forgive my rudeness. 'Twas merely unexpected to meet one such as yourself. Not kin, but close enough.~
EXTERN C0CICER CICERO-3

CHAIN C0CICER CICERO-3
~My name... 'Cicero' will do. I am a scholar, traveling these lands for a certain... personal study. But that is my own business.~
= ~But, as you are a shadowcaster, I believe I have something to offer you. As a scribe of Darkflame tower, I have magical scrolls of the shadow art in my collection. For a small price, I would be willing to trade for gold in order to fund my travels. I do not believe you may find another who can offer the same in these lands.~
END
++ ~I would like to see what you have for sale.~ + CICERO-4
++ ~Perhaps another time.~ + CICERO-5

CHAIN C0CICER CICERO-4
~Please, take your time.~
DO ~StartStore("c0sascr1",Lasttalkedtoby(Myself))~ EXIT

CHAIN C0CICER CICERO-5
~Of course. May we meet again.~
EXIT

BEGIN C0JEVAN

CHAIN IF WEIGHT #-1 ~OR(2)
GlobalLT("GetQilueBrain","GLOBAL",1)
!%is_shadow_adept_lasttalkedtoby%~ THEN C0JEVAN JEVAN-NO
~Please, friend. I have much in my thoughts right now. I do not mean to be rude, but truly have no time for you.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("GetQilueBrain","GLOBAL",1)
Global("C0JevanShop","Global",0)
%is_shadow_adept_lasttalkedtoby%~ THEN C0JEVAN JEVAN
~Quite the obstinate creature, the aboleth. Would you not agree, 'Veldrin'?~
END
++ ~You...~ DO ~SetGlobal("C0JevanShop","Global",1)~ + JEVAN-1

CHAIN C0JEVAN JEVAN-1
~*chuckle* Worry not, my friend. I am not so simple-minded as that greedy fish there. You have little to fear from me, though I would advise you guard your thoughts more carefully in such a place.~
= ~Rest assured, neither the fish, nor our kin around us, will overhear us. Allow me to introduce myself. Jevan Dyrr...~
= ~(You suddenly realize the drow has not actually spoken a single word, but his voice is echoing in your mind.)

* ...of Thultanthar. *~ [EFF_P05]
= ~*You need not speak. Merely let your thoughts flow. From this distance, none will even suspect either of us have taken note of each other.*~
END
++ ~* What do you want? *~ + JEVAN-2
++ ~* Why should I trust you? *~ + JEVAN-2

CHAIN C0JEVAN JEVAN-2
~* Calm, Veldrin. What you intend to do in this place in such a disguise is none of my affair. I am neither a native of this city, nor do my loyalties lie with those who would see you dead. 'Twas mere coincidence that we crossed paths. *~ [EFF_P05]
= ~* So long as you do not interfere with my business, I will treat you the same in turn. In fact... we may even be able to be of benefit to each other. *~
END
IF ~OR(6)
%is_shadow_adept_player1%
%is_shadow_adept_player2%
%is_shadow_adept_player3%
%is_shadow_adept_player4%
%is_shadow_adept_player5%
%is_shadow_adept_player6%~ EXTERN C0JEVAN JEVAN-3
IF ~!%is_shadow_adept_player1%
OR(5)
%is_shadow_adept_player2%
%is_shadow_adept_player3%
%is_shadow_adept_player4%
%is_shadow_adept_player5%
%is_shadow_adept_player6%~ EXTERN C0JEVAN JEVAN-4

CHAIN C0JEVAN JEVAN-3
~* You are a shadowcaster, as am I. I have items of value that would be of great value to our those of our craft. My kin here could not appreciate the worth of what I have, so I offer them to you for a reasonable price. *~
EXTERN C0JEVAN JEVAN-5

CHAIN C0JEVAN JEVAN-4
~* I know you harbor fellow shadowcasters within your group. I have items of value that would be of great value to our those of our craft. My kin here could not appreciate the worth of what I have, so I offer them to you for a reasonable price. *~
EXTERN C0JEVAN JEVAN-5

CHAIN C0JEVAN JEVAN-5
~* Think on it. I suspect neither of us shall be here for much longer, so this opportunity shall not last. But should you find yourself needing for power, I have that to give. *~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0JevanShop","Global",1)
%is_shadow_adept_lasttalkedtoby%~ THEN C0JEVAN JEVAN-STORE
~Greetings. You are here to see what I have to offer, are you not? Take your time, there is much to see.~
END
++ ~Show me what you have.~ DO ~StartStore("c0sascr2",Lasttalkedtoby(Myself))~ EXIT
++ ~Perhaps another time.~ EXIT

BEGIN C0SASMIT

CHAIN IF WEIGHT #-1 ~!AreaCheck("C0SAS1")
!%is_shadow_adept_lasttalkedtoby%~ THEN C0SASMIT SMITH
~This strange apparition does not respond to you.~
DO ~Face(NE)~ EXIT

CHAIN IF WEIGHT #-1 ~!AreaCheck("C0SAS1")
OR(2)
%is_shadow_adept_lasttalkedtoby%
HaveKnownSpellRES("SPSD02")~ THEN C0SASMIT SMITH1
~This strange apparition does not respond to you. You realize that it is a reflection of an entity who resides in the Shadow Plane. Perhaps if you used your ability to step into the Shadow Plane yourself, you may be able to interact with it.~
END
  ++ ~Use Shadowstep to enter the Shadow Plane.~ DO ~ActionOverride(Player1,SpellRES("SPSD02",Myself))
        ActionOverride(Player1,LeaveAreaLUA("C0SAS1","",[574.385],NW))  // Cromwell's Shop
        ActionOverride(Player2,LeaveAreaLUA("C0SAS1","",[580.380],NW))  // Cromwell's Shop
        ActionOverride(Player3,LeaveAreaLUA("C0SAS1","",[579.391],NW))  // Cromwell's Shop
        ActionOverride(Player4,LeaveAreaLUA("C0SAS1","",[585.385],NW))  // Cromwell's Shop
        ActionOverride(Player5,LeaveAreaLUA("C0SAS1","",[590.400],NW))  // Cromwell's Shop
        ActionOverride(Player6,LeaveAreaLUA("C0SAS1","",[600.405],NW))  // Cromwell's Shop
        SmallWait(1)
        MoveViewObject(Player1,INSTANT)~ EXIT
  ++ ~Leave.~ DO ~Face(NE)~ EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("C0SAS1")
Global("C0SASmithBegin","GLOBAL",0)~ THEN C0SASMIT SMITH2
~Hmm? Unexpected visitors... and from the Prime, as well. I have no quarrel with you, but take care not to knock anything over.~
END
  ++ ~Who are you?~ DO ~SetGlobal("C0SASmithBegin","GLOBAL",1)~ + SMITH2-1
  
CHAIN IF ~AreaCheck("C0SAS1")
GlobalGT("C0SASmithBegin","GLOBAL",0)~ THEN C0SASMIT SMITH4
~Welcome. If you are in need of my abilities, I may use my magic to discern if you have items worthy of being tempered in my forge.~
END
  ++ ~What can you make for me?~ + SMITH2-5
  ++ ~I'd like to go back to where I came.~ + SMITH2-6
  ++ ~Farewell.~ EXIT
  
CHAIN C0SASMIT SMITH2-1
~Aldon Val'kar. Apprentice and smith in service to Kryn Darkflame, master of the Phantasmal Tower. And, as I suspect you are unaware, you are currently within the Dusk District of Thultanthar.~
END
  ++ ~Thultanthar, the Shade Enclave?~ + SMITH2-2
  ++ ~I believe I've met your master before.~ + SMITH2-3
  ++ ~How did I end up here?~ + SMITH2-4

CHAIN C0SASMIT SMITH2-2
~Indeed. Though I could not stop you, I would still warn you not to leave this building. Though I, and many within the district, may be more tolerant toward outsiders than most, I still cannot assure your safety should you be discovered.~
EXTERN C0SASMIT SMITH2-4

CHAIN C0SASMIT SMITH2-3
~It would not surprise me. My master is fond of his frequent excursions into your plane, to gather knowledge and... talented individuals.~
EXTERN C0SASMIT SMITH2-4

CHAIN C0SASMIT SMITH2-4
~I presume that, in the process of walking through shadows, you were inadvertently caught within the magic attuned to my forge, and the connection brought you and those close to you here. I may return you to where you were, should you desire.~
= ~However, should you instead be interested, I may also offer you my services as smith. I do not sell wares, but I am skilled in enchanting and refining weapons of magical power.~
END
  ++ ~What can you make for me?~ + SMITH2-5
  ++ ~I'd like to go back to where I came.~ + SMITH2-6
  ++ ~I'll think about it. Farewell.~ EXIT

CHAIN C0SASMIT SMITH2-5
~That depends on what items you carry. You do not need to show me—my magic will reveal that within your possession which resonates with my forge.~
EXTERN C0SASMIT SMITH-CHECK

CHAIN C0SASMIT SMITH2-6
~As you wish. Should you ever wish to return, you may simply use your power to walk through shadows. The path to my forge will be visible to you.~
DO ~ActionOverride(Player1,LeaveAreaLUA("AR0334","",[574.385],NW))
ActionOverride(Player2,LeaveAreaLUA("AR0334","",[580.380],NW))
ActionOverride(Player3,LeaveAreaLUA("AR0334","",[579.391],NW))
ActionOverride(Player4,LeaveAreaLUA("AR0334","",[585.385],NW))
ActionOverride(Player5,LeaveAreaLUA("AR0334","",[590.400],NW))
ActionOverride(Player6,LeaveAreaLUA("AR0334","",[600.405],NW))
        SmallWait(1)
        MoveViewObject(Player1,INSTANT)~ EXIT

CHAIN C0SASMIT SMITH-CHECK
~...~
END
IF ~True()~ + SMITH-NO
IF ~PartyHasItem("SW1H06")~ + SMITH-VARSCONA

CHAIN C0SASMIT SMITH-CHECK-2
~...~
END
IF ~True()~ + SMITH-NO

CHAIN C0SASMIT SMITH-VARSCONA
~Ah... Varscona. A dark blade, and one well suited for the powers of this plane.~ [EFF_P05]
= ~It is a simple matter to empower the latent magicks within it. For the process, I will require the scrolls of Void Edge and Shadow Blade. If you do not possess the scrolls, I may use my own supply, but it will be at a premium.~
END
IF ~!PartyHasItem("SW1H31")~ + SMITH-VARSCONA-1
IF ~PartyHasItem("SW1H31")~ + SMITH-VARSCONA-DAYSTAR

CHAIN C0SASMIT SMITH-VARSCONA-1
~The cost will be the scrolls, and 7,500 gold. Alternatively, 12,000 gold and I will supply the magical scrolls myself.~
END
  + ~PartyHasItem("C0SA312A")
     PartyHasItem("C0SA504A")
     PartyGoldGT("7499")~ + ~I have the scrolls. I'll offer them and 7,500 gold for the enhancement.~ DO ~SetGlobal("C0SASmithItem","GLOBAL",1)
  TakePartyItemNum("C0SA312A",1)
  TakePartyItemNum("C0SA504A",1)
  TakePartyGold(7500)
  DestroyGold(7500)~ + SMITH-BEGIN
  + ~PartyGoldGT("11999")~ + ~I'll pay 12,000 gold for the enhancement.~ DO ~SetGlobal("C0SASmithItem","GLOBAL",1)
  TakePartyGold(12000)
  DestroyGold(12000)~ + SMITH-BEGIN
  ++ ~Not right now. Is there anything else?~ + SMITH-CHECK-2

CHAIN C0SASMIT SMITH-VARSCONA-DAYSTAR
~Unless...~
= ~I sense you carry another blade with you... one which is imbued with the power of the sun. There is a... theory I have considered for some time, if you are interested.~
END
  ++ ~What theory do you speak of?~ + SMITH-VARSCONA-DAYSTAR-1
  ++ ~I'd rather focus only on Varscona. What is the price for enhancing it?~ + SMITH-VARSCONA-1

CHAIN C0SASMIT SMITH-VARSCONA-DAYSTAR-1
~This blade... Daystar, I believe? Its light is drawn from the sun of your plane. A long time ago, I once created a blade which drew power in a similar manner. In a sense, you may consider it a sister blade to this one.~
= ~However, at the time, I viewed it as a failure, and left it to gather dust... but having seen the sword you carry with you, I realized that the key lies in bringing the two energies together... and as a light must cast a shadow, uniting these opposing powers may unlock something greater.~
= ~By adding Daystar and my blade into my forge, and using the magic within Varscona as a conduit... the latter will be sacrificed, but what I may create will undoubtedly be of great power, carrying aspects of each, yet stronger than all of them.~
END
  ++ ~I like the sound of that. How much will it cost?~ + SMITH-VARSCONA-DAYSTAR-2
  ++ ~I don't like the idea of corrupting Daystar.~ + SMITH-VARSCONA-DAYSTAR-3
  ++ ~Forget it. What can you do with Varscona alone?~ + SMITH-VARSCONA-1
  ++ ~Let's move on. What else can you do for me?~ + SMITH-CHECK-2

CHAIN C0SASMIT SMITH-VARSCONA-DAYSTAR-2
~I will take Daystar and Varscona from you, along with my own blade. The process will require 15,000 gold. I cannot say what the exact result will be, but it will undoubtedly be powerful.~
END
  + ~PartyGoldGT("14999")~ + ~Very well. I'll pay 15,000 gold. Show me what you'll make from it.~ DO ~SetGlobal("C0SASmithDaystar","GLOBAL",1)
  TakePartyGold(15000)
  DestroyGold(15000)~ + SMITH-BEGIN
  ++ ~Forget it. What can you do with Varscona alone?~ + SMITH-VARSCONA-1
  ++ ~Let's move on. What else can you do for me?~ + SMITH-CHECK-2

CHAIN C0SASMIT SMITH-VARSCONA-DAYSTAR-3
~There is no corruption, merely harmony. The essence of each blade will continue to exist as they are, in coexistence with each other. And in doing so, they may unlock something greater within themselves in the process.~
END
  ++ ~Alright then. What will the price be?~ + SMITH-VARSCONA-DAYSTAR-2
  ++ ~Forget it. What can you do with Varscona alone?~ + SMITH-VARSCONA-1
  ++ ~Let's move on. What else can you do for me?~ + SMITH-CHECK-2

CHAIN C0SASMIT SMITH-BEGIN
~So be it. Let the black fires be lit, and my forge awakened.~
DO ~StartCutSceneMode()
StartCutScene("C0SASMI2")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SASmithDaystar","GLOBAL",1)~ THEN C0SASMIT SMITH2
~Curious.~
= ~The blade appears unchanged on the surface. Its shape, and its light, as it was when it entered my forge.~
= ~However... something is different. With its sister blade joined with it, it seems to have become whole. I cannot put words to the changes that it has undergone, but it should be apparent enough in practice.~
= ~It cannot reach its full potential in this plane, however. Take it. In your plane, it will undoubtedly reveal its true nature. May it guide you to future victories.~
DO ~SetGlobal("C0SASmithDaystar","GLOBAL",0)~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0SASmithItem","GLOBAL",1)~ THEN C0SASMIT SMITH3
~The flames have dimmed, and the work is done. The item is yours to use. Return to me another time, and perhaps I will fuel my forge once more.~
DO ~SetGlobal("C0SASmithItem","GLOBAL",0)~ EXIT

CHAIN C0SASMIT SMITH-NO
~It seems you have nothing which is suitable for my forge. Return another time, and perhaps I may find something. Farewell.~
EXIT