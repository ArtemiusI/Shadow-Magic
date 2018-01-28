BEGIN C0SAPP06

CHAIN IF WEIGHT #-1 ~True()~ THEN C0SAPP06 a
~(This spectral figure does not respond to any gesture or speech you direct towards it.)~
END
IF ~Global("C0TalkedToKeeper","GLOBAL",0)~ DO ~SetGlobal("C0TalkedToKeeper","GLOBAL",1)~ EXIT
IF ~!Global("C0TalkedToKeeper","GLOBAL",0)~ EXIT