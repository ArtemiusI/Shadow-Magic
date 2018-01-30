BEGIN C0SACOM

// Shadover Nobles

CHAIN IF WEIGHT #-1 ~RandomNum(6,1)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_CHAOTIC)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM a1
~My, what garish outfits you wear... if you must strut about like you own the streets, lighted, at least wear some more suitable attire.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,2)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_CHAOTIC)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM a2
~We are allowing lighted ones to roam the district now? Whatever is Archmage Darkflame thinking?~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,3)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_CHAOTIC)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM a3
~Oh, begone. Do you know who I am? I could have you sent to the Undercaverns with the right words to the right people.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,4)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_CHAOTIC)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM a4
~Commander Victus really should make more of an effort to have the rabble cleared from the streets.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,5)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_CHAOTIC)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM a5
~I would study at the tower, but to share the company of lowly slaves? Such a thing would be unacceptable. I cannot imagine why Archmage Darkflame tolerates such a thing.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,6)
!AreaCheck("c0sa11")
Alignment(Myself,MASK_CHAOTIC)
Gender(Myself,FEMALE)
Gender(Lasttalkedtoby(Myself),MALE)
CheckStatGT(Lasttalkedtoby(Myself),14,CHR)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM a6
~Aren't you a pretty one for a lighted. If I weren't so busy doing... well, nothing, I'd love to spend a little time taking you apart... figuratively speaking, of course.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,6)
!AreaCheck("c0sa11")
Alignment(Myself,MASK_CHAOTIC)
Gender(Myself,MALE)
Gender(Lasttalkedtoby(Myself),FEMALE)
CheckStatGT(Lasttalkedtoby(Myself),14,CHR)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM a7
~Aren't you a pretty one for a lighted. If I weren't so busy doing... well, nothing, I'd love to spend a little time taking you apart... figuratively speaking, of course.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,6)
!AreaCheck("c0sa11")
Alignment(Myself,MASK_CHAOTIC)
OR(3)
!Gender(Myself,FEMALE)
!Gender(Lasttalkedtoby(Myself),MALE)
!CheckStatGT(Lasttalkedtoby(Myself),14,CHR)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM a8
~Mark my words, lighted, one day the glory of Thultanthar will return to your plane. You should prepare to bend the knee when that time comes.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,1)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_LAWFUL)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM b1
~Archmage Darkflame is plotting something. I know it, but his plans are beyond my comprehension. But I cannot shake this feeling...~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,2)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_LAWFUL)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM b2
~Watch yourself, outsider. We are not so soft as those of your lighted cities.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,3)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_LAWFUL)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM b3
~Begone. You are disrupting my focus.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,4)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_LAWFUL)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM b4
~I would go to the Ebonshade Tavern if minister Janus were not so insistent upon the antimagic wards. The guards are all too happy to exert their authority upon us mages while we are helpless.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,5)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_LAWFUL)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM b5
~Have you visited the Umbral Arcanaeum, lighted? Master Umbra is all too happy to barter in foreign magical secrets.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,6)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_LAWFUL)
OR(2)
Class(Lasttalkedtoby(Myself),MAGE_ALL)
Class(Lasttalkedtoby(Myself),BARD)
!Specifics(Lasttalkedtoby(Myself),12)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM b6
~You are a practitioner of the arcane, are you not? Magic of the Prime is truly strange. Had I the time, I would ask for a demonstration.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,6)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_LAWFUL)
OR(2)
Class(Lasttalkedtoby(Myself),MAGE_ALL)
Class(Lasttalkedtoby(Myself),BARD)
Specifics(Lasttalkedtoby(Myself),12)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM b7
~You are a shadowcaster, yes? Strange... I was not aware that Primes could wield the Shadow Weave with such ability. Perhaps I have underestimated your kind.~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(6,6)
!AreaCheck("c0sa11")
Class(Myself,MAGE_ALL)
Alignment(Myself,MASK_LAWFUL)
!Class(Lasttalkedtoby(Myself),MAGE_ALL)
!Class(Lasttalkedtoby(Myself),BARD)
!GlobalGT("C0SAStronghold","GLOBAL",0)~ THEN C0SACOM b8
~I have no business with you, lighted.~
EXIT