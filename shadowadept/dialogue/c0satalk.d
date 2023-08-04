// Shadow Adept - learn spell

BEGIN C0SABOX1
BEGIN C0SABOX2
BEGIN C0SABOX3
BEGIN C0SABOX4

CHAIN IF WEIGHT #-1 ~!Specifics(LastTalkedToBy,SHADOW_ADEPT)~ THEN C0SABOX1 NO_ADEPT
~The box resists any attempt to open it.~
EXIT

CHAIN IF WEIGHT #-1 ~!Specifics(LastTalkedToBy,SHADOW_ADEPT)~ THEN C0SABOX2 NO_ADEPT
~The box resists any attempt to open it.~
EXIT

CHAIN IF WEIGHT #-1 ~!Specifics(LastTalkedToBy,SHADOW_ADEPT)~ THEN C0SABOX3 NO_ADEPT
~The box resists any attempt to open it.~
EXIT

CHAIN IF WEIGHT #-1 ~!Specifics(LastTalkedToBy,SHADOW_ADEPT)~ THEN C0SABOX4 NO_ADEPT
~The box resists any attempt to open it.~
EXIT

CHAIN IF WEIGHT #-1 ~Specifics(LastTalkedToBy,SHADOW_ADEPT)~ THEN C0SABOX1 ADEPT
~The box seems to respond to magic from the Plane of Shadow. Even a novice shadow adept may open it and discover what's inside.~
END
++ ~Open the box.~ DO ~SetInterrupt(FALSE)
DestroyItem("C0SABOX1")
GiveItemCreate("C0SARN03",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN04",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN05",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN06",LastTalkedToBy,1,1,0)
CreateVisualEffectObject("c0dispma",Myself)
CreateCreatureObject("C0SAMON1",Myself,1,0,0)
SetInterrupt(TRUE)~ EXIT
++ ~Leave the box alone.~ EXIT

CHAIN IF WEIGHT #-1 ~Specifics(LastTalkedToBy,SHADOW_ADEPT)~ THEN C0SABOX2 ADEPT
~The box seems to respond to magic from the Plane of Shadow. A shadow adept with some experience may open it and discover what's inside.~
END
++ ~Open the box.~ DO ~SetInterrupt(FALSE)
DestroyItem("C0SABOX2")
GiveItemCreate("C0SARN07",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN08",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN09",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN10",LastTalkedToBy,1,1,0)
CreateVisualEffectObject("c0dispma",Myself)
CreateCreatureObject("C0SAMON2",Myself,1,0,0)
CreateCreatureObject("C0SAMOS1",Myself,1,0,0)
CreateCreatureObject("C0SAMOS1",Myself,1,0,0)
SetInterrupt(TRUE)~ EXIT
++ ~Leave the box alone.~ EXIT

CHAIN IF WEIGHT #-1 ~Specifics(LastTalkedToBy,SHADOW_ADEPT)~ THEN C0SABOX3 ADEPT
~The box seems to respond to magic from the Plane of Shadow. An experienced shadow adept may open it and discover what's inside.~
END
++ ~Open the box.~ DO ~SetInterrupt(FALSE)
DestroyItem("C0SABOX3")
GiveItemCreate("C0SARN11",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN12",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN13",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN14",LastTalkedToBy,1,1,0)
CreateVisualEffectObject("c0dispma",Myself)
CreateCreatureObject("C0SAMON3",Myself,1,0,0)
CreateCreatureObject("C0SAMOS2",Myself,1,0,0)
CreateCreatureObject("C0SAMOS2",Myself,1,0,0)
SetInterrupt(TRUE)~ EXIT
++ ~Leave the box alone.~ EXIT

CHAIN IF WEIGHT #-1 ~Specifics(LastTalkedToBy,SHADOW_ADEPT)~ THEN C0SABOX4 ADEPT
~The box seems to respond to magic from the Plane of Shadow. A particularly skilled shadow adept may open it and discover what's inside.~
END
++ ~Open the box.~ DO ~SetInterrupt(FALSE)
DestroyItem("C0SABOX4")
GiveItemCreate("C0SARN13",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN14",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN15",LastTalkedToBy,1,1,0)
GiveItemCreate("C0SARN16",LastTalkedToBy,1,1,0)
CreateVisualEffectObject("c0dispma",Myself)
CreateCreatureObject("C0SAMON3",Myself,1,0,0)
CreateCreatureObject("C0SAMON3",Myself,1,0,0)
CreateCreatureObject("C0SAMOS3",Myself,1,0,0)
CreateCreatureObject("C0SAMOS3",Myself,1,0,0)
SetInterrupt(TRUE)~ EXIT
++ ~Leave the box alone.~ EXIT