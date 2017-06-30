BEGIN C0SAORB

IF ~True()~ a1
SAY ~Strands of magical power burst forth from the fragments of the orb. You suddenly feel an overwhelming surge of negative emotions - anger, despair, fear, loss - and you realize that the magic you just released is trying to enter you. It offers power - but at a price. You will wield the magical energy of the Shadow Weave, but your connection to the Weave will be severed forever.~ [C0BLANK]
++ ~Allow the magic to enter your body.~ + a2
++ ~Resist it.~ + a0
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
IF ~~ DO ~ActionOverride(LastTalkedToBy(Myself),AddKit(C0SADEPT)) DestroySelf()~ EXIT
END