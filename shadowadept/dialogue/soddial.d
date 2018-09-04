EXTEND_BOTTOM BDWYNAN 16
IF ~Specifics(Player1,SHADOW_ADEPT)~ DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
SetGlobal("bd_sdd200_player","bd2100",1)
StartCutSceneMode()
ClearAllActions()
StartCutSceneEx("c0cutgl2",FALSE)~ EXIT
END

EXTEND_BOTTOM BDWYNAN 21
IF ~Global("bd_sdd200_player","bd2100",1) Specifics(Player1,SHADOW_ADEPT)~ DO ~SetGlobal("BD_SDD200","GLOBAL",4)~ EXTERN BDWYNAN bdwynan2
END

CHAIN BDWYNAN bdwynan2
~Looks like we've all recovered from the effects as well.~
COPY_TRANS BDWYNAN 23