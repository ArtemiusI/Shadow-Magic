BEGIN C0SAORB

IF ~OR(2)
Class(Myself,MAGE_ALL)
Class(Myself,BARD_ALL)~ a
SAY ~Strands of magical power strike against the inner surface of the orb. You suddenly feel an overwhelming surge of negative emotions - anger, despair, fear, loss - and you realize that the magic desires a living host. It offers power - but at a price. You will wield the magical energy of the Shadow Weave, but your connection to the Weave will be severed forever.~ [C0BLANK]
+ ~InPartySlot(Myself,0)
CheckStatGT(Myself,11,CON)
CheckStatGT(Myself,8,INT)
CheckStatGT(Myself,8,CHR)~ + ~Shatter the orb, allowing the magic to enter your body.~ DO ~ChangeAIScript("C0SAPLAY",DEFAULT) TakePartyItem("c0saorb") DestroyItem("c0saorb")~ + a2
+ ~!InPartySlot(Myself,0)
CheckStatGT(Myself,11,CON)
CheckStatGT(Myself,8,INT)
CheckStatGT(Myself,8,CHR)~ + ~Shatter the orb, allowing the magic to enter your body.~ DO ~TakePartyItem("c0saorb") DestroyItem("c0saorb")~ + a2
+ ~OR(3)
!CheckStatGT(Myself,11,CON)
!CheckStatGT(Myself,8,INT)
!CheckStatGT(Myself,8,CHR)~ + ~Shatter the orb, allowing the magic to enter your body.~ DO ~TakePartyItem("c0saorb") DestroyItem("c0saorb")~ + a1
++ ~Shatter the orb, but resist the malevolent presence.~ DO ~TakePartyItem("c0saorb") DestroyItem("c0saorb")~ + a0
++ ~Put the orb back into your pack.~ EXIT
END

IF ~~ a0
SAY ~You feel a surge of rage as the magic begins to dissipate. Suddenly, the energies converse and explode in a wave of energy.~
IF ~~ DO ~ApplyDamagePercent(Player1,50,MAGIC)
ApplyDamagePercent(Player2,50,MAGIC)
ApplyDamagePercent(Player3,50,MAGIC)
ApplyDamagePercent(Player4,50,MAGIC)
ApplyDamagePercent(Player5,50,MAGIC)
ApplyDamagePercent(Player6,50,MAGIC)~ EXIT
END

IF ~~ a1
SAY ~You attempt to absorb the energies, but you feel a wave of nausea, your body convulsing as you find yourself unable to maintain your focus, perhaps due to an insufficiency in your mental or physical stamina... the magic dissipates and you are left with nothing but a pile of broken shards.~
IF ~~ DO ~ApplyDamagePercent(Myself,99,MAGIC)~ EXIT
END

IF ~~ a2
SAY ~Your feel triumph as the energies take possession of you, cutting you off from the magic of the Weave. You have become a Shadow Adept and may cast spells of the Shadow Weave.~
IF ~Class(Myself,MAGE_ALL)
	!Class(Myself,SORCERER)
	!Class(Myself,MAGE_THIEF)
	!Class(Myself,FIGHTER_MAGE)
	!Class(Myself,CLERIC_MAGE)
	!Class(Myself,FIGHTER_MAGE_CLERIC)
	!Class(Myself,FIGHTER_MAGE_THIEF)~ DO ~CreateVisualEffectObject("c0darkbo",LastTalkedToBy(Myself)) ApplySpellRES("c0erase2",Myself)
	AddSuperKit(C0SADEPT)~ EXIT
IF ~Class(Myself,MAGE_ALL)
	!Class(Myself,SORCERER)
	OR(4)
	OriginalClass(Myself,FIGHTER)
	OriginalClass(Myself,CLERIC)
	OriginalClass(Myself,MAGE)
	OriginalClass(Myself,THIEF)~ DO ~CreateVisualEffectObject("c0darkbo",LastTalkedToBy(Myself)) ApplySpellRES("c0erase2",Myself)
	AddSuperKit(C0SADEPT)
	ApplySpellRES("c0sadual",Myself)~ EXIT
IF ~Class(Myself,SORCERER)~ DO ~CreateVisualEffectObject("c0darkbo",LastTalkedToBy(Myself)) ApplySpellRES("c0erase2",Myself)
	ActionOverride(LastTalkedToBy(Myself),AddSuperKit(C0SASORC))~ EXIT
IF ~Class(Myself,BARD_ALL)~ DO ~CreateVisualEffectObject("c0darkbo",LastTalkedToBy(Myself)) ApplySpellRES("c0erase2",Myself)
	ActionOverride(LastTalkedToBy(Myself),AddSuperKit(C0SABARD))~ EXIT
IF ~Class(Myself,FIGHTER_MAGE)
	!OriginalClass(Myself,FIGHTER)
	!OriginalClass(Myself,MAGE)~ DO ~CreateVisualEffectObject("c0darkbo",LastTalkedToBy(Myself)) ApplySpellRES("c0erase2",Myself)
	ActionOverride(LastTalkedToBy(Myself),AddSuperKit(C0SA_FM))~ EXIT
IF ~Class(Myself,MAGE_THIEF)
	!OriginalClass(Myself,MAGE)
	!OriginalClass(Myself,THIEF)~ DO ~CreateVisualEffectObject("c0darkbo",LastTalkedToBy(Myself)) ApplySpellRES("c0erase2",Myself)
	ActionOverride(LastTalkedToBy(Myself),AddSuperKit(C0SA_MT))~ EXIT
IF ~Class(Myself,CLERIC_MAGE)
	!OriginalClass(Myself,CLERIC)
	!OriginalClass(Myself,MAGE)~ DO ~CreateVisualEffectObject("c0darkbo",LastTalkedToBy(Myself)) ApplySpellRES("c0erase2",Myself)
	ActionOverride(LastTalkedToBy(Myself),AddSuperKit(C0SA_CM))~ EXIT
IF ~Class(Myself,FIGHTER_MAGE_THIEF)
	!OriginalClass(Myself,FIGHTER)
	!OriginalClass(Myself,MAGE)
	!OriginalClass(Myself,THIEF)~ DO ~CreateVisualEffectObject("c0darkbo",LastTalkedToBy(Myself)) ApplySpellRES("c0erase2",Myself)
	ActionOverride(LastTalkedToBy(Myself),AddSuperKit(C0SAFMT))~ EXIT
IF ~Class(Myself,FIGHTER_MAGE_CLERIC)
	!OriginalClass(Myself,FIGHTER)
	!OriginalClass(Myself,CLERIC)
	!OriginalClass(Myself,MAGE)~ DO ~CreateVisualEffectObject("c0darkbo",LastTalkedToBy(Myself)) ApplySpellRES("c0erase2",Myself)
	ActionOverride(LastTalkedToBy(Myself),AddSuperKit(C0SAFMC))~ EXIT
END