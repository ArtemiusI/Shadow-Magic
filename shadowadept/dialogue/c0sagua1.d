BEGIN C0SAGUA1

CHAIN IF WEIGHT #-1 ~RandomNum(6,1)
!AreaCheck("c0sa11")
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SAGUA1 a1
~Move along, lighted.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,2)
!AreaCheck("c0sa11")
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SAGUA1 a2
~A warning for you - stray not from this area. The other districts are not as tolerant of outsiders as we.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,3)
!AreaCheck("c0sa11")
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SAGUA1 a3
~Archmage Darkflame has authority over the Dusk District. As his guests, you may come and go as you will.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,4)
!AreaCheck("c0sa11")
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SAGUA1 a4
~I am a soldier of the Shadovar legion. Do not test me.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,5)
!AreaCheck("c0sa11")
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SAGUA1 a5
~Cause trouble in the district, and you will face execution by my hand.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,6)
!AreaCheck("c0sa11")
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SAGUA1 a6
~I am not here to make small talk, lighted. Begone.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(3,1)
AreaCheck("c0sa11")
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SAGUA1 b1
~Do not cross minister Janus, lighted. You will not live to regret it.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(3,2)
AreaCheck("c0sa11")
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SAGUA1 b2
~Enjoy the services provided, but be respectful. Many powerful members of authority seek patronage here.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(3,3)
AreaCheck("c0sa11")
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SAGUA1 b1
~Magic has no effect in these halls. Start any trouble, and we will throw you out with might alone.~
EXIT