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

CHAIN IF WEIGHT #-1 ~Global("C0CiceroShop","Global",1)~ THEN C0CICER CICERO-STORE
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
