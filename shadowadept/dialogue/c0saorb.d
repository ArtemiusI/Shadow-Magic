BEGIN C0SAORB

IF ~Class(Lastsummonerof(Myself),MAGE_ALL) !Class(Lastsummonerof(Myself),SORCERER)~ a1
SAY ~Strands of magical power strike against the inner surface of the orb. You suddenly feel an overwhelming surge of negative emotions - anger, despair, fear, loss - and you realize that the magic desires a living host. It offers power - but at a price. You will wield the magical energy of the Shadow Weave, but your connection to the Weave will be severed forever.~ [C0BLANK]
++ ~Shatter the orb, allowing the magic to enter your body.~ + a2
++ ~Shatter the orb, but resist the malevolent presence.~ + a0
++ ~Put the orb back into your pack.~ DO ~DestroySelf()~ EXIT
END

IF ~~ a0
SAY ~You feel a surge of rage as the magic begins to dissipate. Suddenly, the energies converse and explode in a wave of energy.~
IF ~~ DO ~ApplyDamagePercent(Player1,50,MAGIC)
ApplyDamagePercent(Player2,50,MAGIC)
ApplyDamagePercent(Player3,50,MAGIC)
ApplyDamagePercent(Player4,50,MAGIC)
ApplyDamagePercent(Player5,50,MAGIC)
ApplyDamagePercent(Player6,50,MAGIC) DestroySelf()~ EXIT
END

IF ~~ a2
SAY ~Your feel triumph as the energies take possession of you, cutting you off from the magic of the Weave. You have become a Shadow Adept and may cast spells of the Shadow Weave.~
IF ~~ DO ~CreateVisualEffectObject("c0darkbo",LastTalkedToBy(Myself))
	ActionOverride(LastTalkedToBy(Myself),AddKit(C0SADEPT))
	ActionOverride(Lastsummonerof(Myself),SetGlobal("C0SALV1","LOCALS",0))
	ActionOverride(Lastsummonerof(Myself),SetGlobal("C0SALV2","LOCALS",0))
	ActionOverride(Lastsummonerof(Myself),SetGlobal("C0SALV3","LOCALS",0))
	ActionOverride(Lastsummonerof(Myself),SetGlobal("C0SALV4","LOCALS",0))
	ActionOverride(Lastsummonerof(Myself),SetGlobal("C0SALV5","LOCALS",0))
	ActionOverride(Lastsummonerof(Myself),SetGlobal("C0SALV6","LOCALS",0))
	ActionOverride(Lastsummonerof(Myself),SetGlobal("C0SALV7","LOCALS",0))
	ActionOverride(Lastsummonerof(Myself),SetGlobal("C0SALV8","LOCALS",0))
	ActionOverride(Lastsummonerof(Myself),SetGlobal("C0SALV9","LOCALS",0))
	ApplySpellRES("c0erase2",Lastsummonerof(Myself))
	ApplySpellRES("c0sadual",Lastsummonerof(Myself))
	ChangeSpecifics(Lastsummonerof(Myself),12)
	DestroySelf()~ EXIT
END