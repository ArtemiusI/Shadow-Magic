// Shadow Adept - learn spell

BEGIN C0SATALK
/*
// Extra Level 1 Spell

IF ~!Class(Myself,SORCERER) CheckStat(Myself,16,CHR) Global("C0SAExtraLevel1Spell","LOCALS",0)~ EXTRA1
SAY ~\[16 CHARISMA\] Your above-average charisma has allowed you to bargain with the Shadow Weave for an extra level 1 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel1Spell","LOCALS",1) IncrementGlobal("C0SALv1","LOCALS",1) StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~!Class(Myself,SORCERER) CheckStatGT(Myself,16,CHR) Global("C0SAExtraLevel1Spell","LOCALS",0)~ EXTRA2
SAY ~\[17+ CHARISMA\] Your high charisma has allowed you to bargain with the Shadow Weave for two extra level 1 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel1Spell","LOCALS",2) IncrementGlobal("C0SALv1","LOCALS",2) StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~!Class(Myself,SORCERER) CheckStatGT(Myself,16,CHR) Global("C0SAExtraLevel1Spell","LOCALS",1)~ EXTRA3
SAY ~\[17+ CHARISMA\] Your high charisma has allowed you to bargain with the Shadow Weave for an extra level 1 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel1Spell","LOCALS",1) IncrementGlobal("C0SALv1","LOCALS",1) StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 2 Spell

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,2)
ClassLevelGT(Myself,ROGUE,3) CheckStat(Myself,17,CHR) Global("C0SAExtraLevel2Spell","LOCALS",0)~ EXTRA4
SAY ~\[17 CHARISMA\] Your high charisma has allowed you to bargain with the Shadow Weave for an extra level 2 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel2Spell","LOCALS",1) IncrementGlobal("C0SALv2","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,2)
ClassLevelGT(Myself,ROGUE,3) CheckStatGT(Myself,17,CHR) Global("C0SAExtraLevel2Spell","LOCALS",0)~ EXTRA5
SAY ~\[18+ CHARISMA\] Your great charisma has allowed you to bargain with the Shadow Weave for two extra level 2 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel2Spell","LOCALS",2) IncrementGlobal("C0SALv2","LOCALS",2)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,2)
ClassLevelGT(Myself,ROGUE,3) CheckStatGT(Myself,17,CHR) Global("C0SAExtraLevel2Spell","LOCALS",1)~ EXTRA6
SAY ~\[18+ CHARISMA\] Your high charisma has allowed you to bargain with the Shadow Weave for an extra level 2 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel2Spell","LOCALS",1) IncrementGlobal("C0SALv2","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 3 Spell

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,4)
ClassLevelGT(Myself,ROGUE,6) CheckStat(Myself,18,CHR) Global("C0SAExtraLevel3Spell","LOCALS",0)~ EXTRA7
SAY ~\[18 CHARISMA\] Your great charisma has allowed you to bargain with the Shadow Weave for an extra level 3 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel3Spell","LOCALS",1) IncrementGlobal("C0SALv3","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,4)
ClassLevelGT(Myself,ROGUE,6) CheckStatGT(Myself,18,CHR) Global("C0SAExtraLevel3Spell","LOCALS",0)~ EXTRA8
SAY ~\[19+ CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for two extra level 3 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel3Spell","LOCALS",2) IncrementGlobal("C0SALv3","LOCALS",2)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,4)
ClassLevelGT(Myself,ROGUE,6) CheckStatGT(Myself,18,CHR) Global("C0SAExtraLevel3Spell","LOCALS",1)~ EXTRA9
SAY ~\[19+ CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for two extra level 3 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel3Spell","LOCALS",1) IncrementGlobal("C0SALv3","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 4 Spell

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,6)
ClassLevelGT(Myself,ROGUE,9) CheckStat(Myself,19,CHR) Global("C0SAExtraLevel4Spell","LOCALS",0)~ EXTRA10
SAY ~\[19 CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for an extra level 4 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel4Spell","LOCALS",1) IncrementGlobal("C0SALv4","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,6)
ClassLevelGT(Myself,ROGUE,9) CheckStatGT(Myself,19,CHR) Global("C0SAExtraLevel4Spell","LOCALS",0)~ EXTRA11
SAY ~\[20+ CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for two extra level 4 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel4Spell","LOCALS",2) IncrementGlobal("C0SALv4","LOCALS",2)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,6)
ClassLevelGT(Myself,ROGUE,9) CheckStatGT(Myself,19,CHR) Global("C0SAExtraLevel4Spell","LOCALS",1)~ EXTRA12
SAY ~\[20+ CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for two extra level 4 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel4Spell","LOCALS",1) IncrementGlobal("C0SALv4","LOCALS",2)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 5 Spell

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,8)
ClassLevelGT(Myself,ROGUE,12) CheckStatGT(Myself,20,CHR) Global("C0SAExtraLevel5Spell","LOCALS",0)~ EXTRA13
SAY ~\[21 CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for an extra level 5 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel5Spell","LOCALS",1) IncrementGlobal("C0SALv5","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 6 Spell

IF ~!Class(Myself,SORCERER) 
OR(2)
ClassLevelGT(Myself,WIZARD,11)
ClassLevelGT(Myself,ROGUE,15) CheckStatGT(Myself,21,CHR) Global("C0SAExtraLevel6Spell","LOCALS",0)~ EXTRA14
SAY ~\[22 CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for an extra level 6 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel6Spell","LOCALS",1) IncrementGlobal("C0SALv6","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 7 Spell

IF ~!Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,13) CheckStatGT(Myself,22,CHR) Global("C0SAExtraLevel7Spell","LOCALS",0)~ EXTRA15
SAY ~\[23 CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for an extra level 7 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel7Spell","LOCALS",1) IncrementGlobal("C0SALv7","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 8 Spell

IF ~!Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,15) CheckStatGT(Myself,23,CHR) Global("C0SAExtraLevel8Spell","LOCALS",0)~ EXTRA16
SAY ~\[24 CHARISMA\] Your deific charisma has allowed you to bargain with the Shadow Weave for an extra level 8 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel8Spell","LOCALS",1) IncrementGlobal("C0SALv8","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 9 Spell

IF ~!Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,17) CheckStatGT(Myself,24,CHR) Global("C0SAExtraLevel9Spell","LOCALS",0)~ EXTRA17
SAY ~\[25 CHARISMA\] Your deific charisma has allowed you to bargain with the Shadow Weave for an extra level 9 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel9Spell","LOCALS",1) IncrementGlobal("C0SALv9","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 1 Spell

IF ~Class(Myself,SORCERER) CheckStat(Myself,16,CHR) Global("C0SAExtraLevel1Spell","LOCALS",0)~ EXTRA1
SAY ~\[16 CHARISMA\] Your above-average charisma has allowed you to bargain with the Shadow Weave for an extra level 1 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel1Spell","LOCALS",1) IncrementGlobal("C0SALv1","LOCALS",1) StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~Class(Myself,SORCERER) CheckStatGT(Myself,16,CHR) Global("C0SAExtraLevel1Spell","LOCALS",0)~ EXTRA2
SAY ~\[17+ CHARISMA\] Your high charisma has allowed you to bargain with the Shadow Weave for two extra level 1 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel1Spell","LOCALS",2) IncrementGlobal("C0SALv1","LOCALS",2) StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~Class(Myself,SORCERER) CheckStatGT(Myself,16,CHR) Global("C0SAExtraLevel1Spell","LOCALS",1)~ EXTRA3
SAY ~\[17+ CHARISMA\] Your high charisma has allowed you to bargain with the Shadow Weave for an extra level 1 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel1Spell","LOCALS",1) IncrementGlobal("C0SALv1","LOCALS",1) StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 2 Spell

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,3) CheckStat(Myself,17,CHR) Global("C0SAExtraLevel2Spell","LOCALS",0)~ EXTRA4
SAY ~\[17 CHARISMA\] Your high charisma has allowed you to bargain with the Shadow Weave for an extra level 2 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel2Spell","LOCALS",1) IncrementGlobal("C0SALv2","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~Class(Myself,SORCERER)
ClassLevelGT(Myself,WIZARD,3) CheckStatGT(Myself,17,CHR) Global("C0SAExtraLevel2Spell","LOCALS",0)~ EXTRA5
SAY ~\[18+ CHARISMA\] Your great charisma has allowed you to bargain with the Shadow Weave for two extra level 2 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel2Spell","LOCALS",2) IncrementGlobal("C0SALv2","LOCALS",2)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,3) CheckStatGT(Myself,17,CHR) Global("C0SAExtraLevel2Spell","LOCALS",1)~ EXTRA6
SAY ~\[18+ CHARISMA\] Your high charisma has allowed you to bargain with the Shadow Weave for an extra level 2 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel2Spell","LOCALS",1) IncrementGlobal("C0SALv2","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 3 Spell

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,5) CheckStat(Myself,18,CHR) Global("C0SAExtraLevel3Spell","LOCALS",0)~ EXTRA7
SAY ~\[18 CHARISMA\] Your great charisma has allowed you to bargain with the Shadow Weave for an extra level 3 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel3Spell","LOCALS",1) IncrementGlobal("C0SALv3","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,5) CheckStatGT(Myself,18,CHR) Global("C0SAExtraLevel3Spell","LOCALS",0)~ EXTRA8
SAY ~\[19+ CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for two extra level 3 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel3Spell","LOCALS",2) IncrementGlobal("C0SALv3","LOCALS",2)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,5) CheckStatGT(Myself,18,CHR) Global("C0SAExtraLevel3Spell","LOCALS",1)~ EXTRA9
SAY ~\[19+ CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for two extra level 3 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel3Spell","LOCALS",1) IncrementGlobal("C0SALv3","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 4 Spell

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,7) CheckStat(Myself,19,CHR) Global("C0SAExtraLevel4Spell","LOCALS",0)~ EXTRA10
SAY ~\[19 CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for an extra level 4 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel4Spell","LOCALS",1) IncrementGlobal("C0SALv4","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,7) CheckStatGT(Myself,19,CHR) Global("C0SAExtraLevel4Spell","LOCALS",0)~ EXTRA11
SAY ~\[20+ CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for two extra level 4 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel4Spell","LOCALS",2) IncrementGlobal("C0SALv4","LOCALS",2)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,7) CheckStatGT(Myself,19,CHR) Global("C0SAExtraLevel4Spell","LOCALS",1)~ EXTRA12
SAY ~\[20+ CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for two extra level 4 spells.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel4Spell","LOCALS",1) IncrementGlobal("C0SALv4","LOCALS",2)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 5 Spell

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,9) CheckStatGT(Myself,20,CHR) Global("C0SAExtraLevel5Spell","LOCALS",0)~ EXTRA13
SAY ~\[21 CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for an extra level 5 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel5Spell","LOCALS",1) IncrementGlobal("C0SALv5","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 6 Spell

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,11) CheckStatGT(Myself,21,CHR) Global("C0SAExtraLevel6Spell","LOCALS",0)~ EXTRA14
SAY ~\[22 CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for an extra level 6 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel6Spell","LOCALS",1) IncrementGlobal("C0SALv6","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 7 Spell

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,13) CheckStatGT(Myself,22,CHR) Global("C0SAExtraLevel7Spell","LOCALS",0)~ EXTRA15
SAY ~\[23 CHARISMA\] Your exceptional charisma has allowed you to bargain with the Shadow Weave for an extra level 7 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel7Spell","LOCALS",1) IncrementGlobal("C0SALv7","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 8 Spell

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,15) CheckStatGT(Myself,23,CHR) Global("C0SAExtraLevel8Spell","LOCALS",0)~ EXTRA16
SAY ~\[24 CHARISMA\] Your deific charisma has allowed you to bargain with the Shadow Weave for an extra level 8 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel8Spell","LOCALS",1) IncrementGlobal("C0SALv8","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END

// Extra Level 9 Spell

IF ~Class(Myself,SORCERER) 
ClassLevelGT(Myself,WIZARD,17) CheckStatGT(Myself,24,CHR) Global("C0SAExtraLevel9Spell","LOCALS",0)~ EXTRA17
SAY ~\[25 CHARISMA\] Your deific charisma has allowed you to bargain with the Shadow Weave for an extra level 9 spell.~ [C0BLANK]
IF ~~ DO ~IncrementGlobal("C0SAExtraLevel9Spell","LOCALS",1) IncrementGlobal("C0SALv9","LOCALS",1)
StartDialogOverride("c0satalk",Myself)~ EXIT
END
*/
IF ~OR(9)
!Global("C0SALv1","LOCALS",0)
!Global("C0SALv2","LOCALS",0)
!Global("C0SALv3","LOCALS",0)
!Global("C0SALv4","LOCALS",0)
!Global("C0SALv5","LOCALS",0)
!Global("C0SALv6","LOCALS",0)
!Global("C0SALv7","LOCALS",0)
!Global("C0SALv8","LOCALS",0)
!Global("C0SALv9","LOCALS",0)~ learn
SAY ~Choose a spell level:~ [C0BLANK]
+ ~GlobalGT("C0SALv1","LOCALS",0)
OR(12)
!HaveKnownSpellRES("c0sa101")
!HaveKnownSpellRES("c0sa102")
!HaveKnownSpellRES("c0sa103")
!HaveKnownSpellRES("c0sa104")
!HaveKnownSpellRES("c0sa105")
!HaveKnownSpellRES("c0sa106")
!HaveKnownSpellRES("c0sa107")
!HaveKnownSpellRES("c0sa108")
!HaveKnownSpellRES("c0sa109")
!HaveKnownSpellRES("c0sa110")
!HaveKnownSpellRES("c0sa111")
!HaveKnownSpellRES("c0sa112")~ + ~1st level~ + level1
+ ~OR(2)
ClassLevelGT(Myself,WIZARD,2)
ClassLevelGT(Myself,ROGUE,3)
GlobalGT("C0SALv2","LOCALS",0)
OR(13)
!HaveKnownSpellRES("c0sa201")
!HaveKnownSpellRES("c0sa202")
!HaveKnownSpellRES("c0sa203")
!HaveKnownSpellRES("c0sa204")
!HaveKnownSpellRES("c0sa205")
!HaveKnownSpellRES("c0sa206")
!HaveKnownSpellRES("c0sa207")
!HaveKnownSpellRES("c0sa208")
!HaveKnownSpellRES("c0sa209")
!HaveKnownSpellRES("c0sa210")
!HaveKnownSpellRES("c0sa211")
!HaveKnownSpellRES("c0sa212")
!HaveKnownSpellRES("c0sa213")~ + ~2nd level~ + level2
+ ~OR(2)
ClassLevelGT(Myself,WIZARD,4)
ClassLevelGT(Myself,ROGUE,6)
GlobalGT("C0SALv3","LOCALS",0)
OR(12)
!HaveKnownSpellRES("c0sa301")
!HaveKnownSpellRES("c0sa302")
!HaveKnownSpellRES("c0sa303")
!HaveKnownSpellRES("c0sa304")
!HaveKnownSpellRES("c0sa305")
!HaveKnownSpellRES("c0sa306")
!HaveKnownSpellRES("c0sa307")
!HaveKnownSpellRES("c0sa308")
!HaveKnownSpellRES("c0sa309")
!HaveKnownSpellRES("c0sa310")
!HaveKnownSpellRES("c0sa311")
!HaveKnownSpellRES("c0sa312")~ + ~3rd level~ + level3
+ ~OR(2)
ClassLevelGT(Myself,WIZARD,6)
ClassLevelGT(Myself,ROGUE,9)
GlobalGT("C0SALv4","LOCALS",0)
OR(13)
!HaveKnownSpellRES("c0sa401")
!HaveKnownSpellRES("c0sa402")
!HaveKnownSpellRES("c0sa403")
!HaveKnownSpellRES("c0sa404")
!HaveKnownSpellRES("c0sa405")
!HaveKnownSpellRES("c0sa406")
!HaveKnownSpellRES("c0sa407")
!HaveKnownSpellRES("c0sa408")
!HaveKnownSpellRES("c0sa409")
!HaveKnownSpellRES("c0sa410")
!HaveKnownSpellRES("c0sa411")
!HaveKnownSpellRES("c0sa412")
!HaveKnownSpellRES("c0sa413")~ + ~4th level~ + level4
+ ~OR(2)
ClassLevelGT(Myself,WIZARD,8)
ClassLevelGT(Myself,ROGUE,12)
GlobalGT("C0SALv5","LOCALS",0)
OR(12) 
!HaveKnownSpellRES("c0sa501")
!HaveKnownSpellRES("c0sa502")
!HaveKnownSpellRES("c0sa503")
!HaveKnownSpellRES("c0sa504")
!HaveKnownSpellRES("c0sa505")
!HaveKnownSpellRES("c0sa506")
!HaveKnownSpellRES("c0sa507")
!HaveKnownSpellRES("c0sa508")
!HaveKnownSpellRES("c0sa509")
!HaveKnownSpellRES("c0sa510")
!HaveKnownSpellRES("c0sa511")
!HaveKnownSpellRES("c0sa512")~ + ~5th level~ + level5
+ ~OR(2)
ClassLevelGT(Myself,WIZARD,11)
ClassLevelGT(Myself,ROGUE,15)
GlobalGT("C0SALv6","LOCALS",0)
OR(11) 
!HaveKnownSpellRES("c0sa601")
!HaveKnownSpellRES("c0sa602")
!HaveKnownSpellRES("c0sa603")
!HaveKnownSpellRES("c0sa604")
!HaveKnownSpellRES("c0sa605")
!HaveKnownSpellRES("c0sa606")
!HaveKnownSpellRES("c0sa607")
!HaveKnownSpellRES("c0sa608")
!HaveKnownSpellRES("c0sa609")
!HaveKnownSpellRES("c0sa610")
!HaveKnownSpellRES("c0sa611")~ + ~6th level~ + level6
+ ~ClassLevelGT(Myself,WIZARD,13)
GlobalGT("C0SALv7","LOCALS",0)
OR(12) 
!HaveKnownSpellRES("c0sa701")
!HaveKnownSpellRES("c0sa702")
!HaveKnownSpellRES("c0sa703")
!HaveKnownSpellRES("c0sa704")
!HaveKnownSpellRES("c0sa705")
!HaveKnownSpellRES("c0sa706")
!HaveKnownSpellRES("c0sa707")
!HaveKnownSpellRES("c0sa708")
!HaveKnownSpellRES("c0sa709")
!HaveKnownSpellRES("c0sa710")
!HaveKnownSpellRES("c0sa711")
!HaveKnownSpellRES("c0sa712")~ + ~7th level~ + level7
+ ~ClassLevelGT(Myself,WIZARD,15)
GlobalGT("C0SALv8","LOCALS",0)
OR(12) 
!HaveKnownSpellRES("c0sa801")
!HaveKnownSpellRES("c0sa802")
!HaveKnownSpellRES("c0sa803")
!HaveKnownSpellRES("c0sa804")
!HaveKnownSpellRES("c0sa805")
!HaveKnownSpellRES("c0sa806")
!HaveKnownSpellRES("c0sa807")
!HaveKnownSpellRES("c0sa808")
!HaveKnownSpellRES("c0sa809")
!HaveKnownSpellRES("c0sa810")
!HaveKnownSpellRES("c0sa811")
!HaveKnownSpellRES("c0sa812")~ + ~8th level~ + level8
+ ~ClassLevelGT(Myself,WIZARD,17)
GlobalGT("C0SALv9","LOCALS",0)
OR(9) 
!HaveKnownSpellRES("c0sa901")
!HaveKnownSpellRES("c0sa902")
!HaveKnownSpellRES("c0sa903")
!HaveKnownSpellRES("c0sa904")
!HaveKnownSpellRES("c0sa905")
!HaveKnownSpellRES("c0sa906")
!HaveKnownSpellRES("c0sa907")
!HaveKnownSpellRES("c0sa908")
!HaveKnownSpellRES("c0sa909")~ + ~9th level~ + level9
IF ~~ DO ~SetGlobal("C0SALv1","LOCALS",0)
SetGlobal("C0SALv2","LOCALS",0)
SetGlobal("C0SALv3","LOCALS",0)
SetGlobal("C0SALv4","LOCALS",0)
SetGlobal("C0SALv5","LOCALS",0)
SetGlobal("C0SALv6","LOCALS",0)
SetGlobal("C0SALv7","LOCALS",0)
SetGlobal("C0SALv8","LOCALS",0)
SetGlobal("C0SALv9","LOCALS",0)
ClearAllActions()~ EXIT
END

IF ~~ level1
SAY ~Choose one 1st level spell:~
+ ~!HaveKnownSpellRES("c0sa101")~ + ~Shadow Missile~ + 1.1
+ ~!HaveKnownSpellRES("c0sa102")~ + ~Sigil of Despair~ + 1.2
+ ~!HaveKnownSpellRES("c0sa103")~ + ~Blinding Darkness~ + 1.3
+ ~!HaveKnownSpellRES("c0sa104")~ + ~Deep Slumber~ + 1.4
+ ~!HaveKnownSpellRES("c0sa105")~ + ~Bittercold Touch~ + 1.5
+ ~!HaveKnownSpellRES("c0sa106")~ + ~Essence Drain~ + 1.6
+ ~!HaveKnownSpellRES("c0sa107")~ + ~Shadow Veil~ + 1.7
+ ~!HaveKnownSpellRES("c0sa108")~ + ~Curse~ + 1.8
+ ~!HaveKnownSpellRES("c0sa109")~ + ~Shadow Rope~ + 1.9
+ ~!HaveKnownSpellRES("c0sa110")~ + ~Decoy~ + 1.10
+ ~!HaveKnownSpellRES("c0sa111")~ + ~Mesmerize~ + 1.11
+ ~!HaveKnownSpellRES("c0sa112")~ + ~Cursed Flames~ + 1.12
END

IF ~~ level2
SAY ~Choose one 2nd level spell:~
+ ~!HaveKnownSpellRES("c0sa201")~ + ~Dark Mirage~ + 2.1
+ ~!HaveKnownSpellRES("c0sa202")~ + ~Night Terrors~ + 2.2
+ ~!HaveKnownSpellRES("c0sa203")~ + ~Dark Fortune~ + 2.3
+ ~!HaveKnownSpellRES("c0sa204")~ + ~Power Word: Sleep~ + 2.4
+ ~!HaveKnownSpellRES("c0sa205")~ + ~Dread Silence~ + 2.5
+ ~!HaveKnownSpellRES("c0sa206")~ + ~Ghostly Visage~ + 2.6
+ ~!HaveKnownSpellRES("c0sa207")~ + ~Lesser Drain Vitality~ + 2.7
+ ~!HaveKnownSpellRES("c0sa208")~ + ~Black Mist~ + 2.8
+ ~!HaveKnownSpellRES("c0sa209")~ + ~Negative Energy Ray~ + 2.9
+ ~!HaveKnownSpellRES("c0sa210")~ + ~Sigil of Vulnerability~ + 2.10
+ ~!HaveKnownSpellRES("c0sa211")~ + ~Shadow Walk~ + 2.11
+ ~!HaveKnownSpellRES("c0sa212")~ + ~Hallucinate~ + 2.12
+ ~!HaveKnownSpellRES("c0sa213")~ + ~Shadowfade~ + 2.13
END

IF ~~ level3
SAY ~Choose one 3rd level spell:~
+ ~!HaveKnownSpellRES("c0sa301")~ + ~Blackfire Arrow~ + 3.1
+ ~!HaveKnownSpellRES("c0sa302")~ + ~Shadowblast~ + 3.2
+ ~!HaveKnownSpellRES("c0sa303")~ + ~Inertia~ + 3.3
+ ~!HaveKnownSpellRES("c0sa304")~ + ~Lifedrinker Touch~ + 3.4
+ ~!HaveKnownSpellRES("c0sa305")~ + ~Beguile~ + 3.5
+ ~!HaveKnownSpellRES("c0sa306")~ + ~Shadow Comets~ + 3.6
+ ~!HaveKnownSpellRES("c0sa307")~ + ~Shadow Binding~ + 3.7
+ ~!HaveKnownSpellRES("c0sa308")~ + ~Impose~ + 3.8
+ ~!HaveKnownSpellRES("c0sa309")~ + ~Shadow Spear~ + 3.9
+ ~!HaveKnownSpellRES("c0sa310")~ + ~Cursed Earth~ + 3.10
+ ~!HaveKnownSpellRES("c0sa311")~ + ~Expunge Magic~ + 3.11
+ ~!HaveKnownSpellRES("c0sa312")~ + ~Void Edge~ + 3.12
END

IF ~~ level4
SAY ~Choose one 4th level spell:~
+ ~!HaveKnownSpellRES("c0sa401")~ + ~Fireshield (Shadow)~ + 4.2
+ ~!HaveKnownSpellRES("c0sa402")~ + ~Shadeskin~ + 4.3
+ ~!HaveKnownSpellRES("c0sa403")~ + ~Sigil of Misfortune~ + 4.4
+ ~!HaveKnownSpellRES("c0sa404")~ + ~Summon Shadow~ + 4.5
+ ~!HaveKnownSpellRES("c0sa405")~ + ~Shar's Blessing~ + 4.6
+ ~!HaveKnownSpellRES("c0sa406")~ + ~Phantasmal Killer~ + 4.7
+ ~!HaveKnownSpellRES("c0sa407")~ + ~Drain Vitality~ + 4.8
+ ~!HaveKnownSpellRES("c0sa408")~ + ~Dread Whispers~ + 4.9
+ ~!HaveKnownSpellRES("c0sa409")~ + ~Negative Immunity~ + 4.10
+ ~!HaveKnownSpellRES("c0sa410")~ + ~Black Ooze~ + 4.11
+ ~!HaveKnownSpellRES("c0sa411")~ + ~Wall of Black Flame~ + 4.12
+ ~!HaveKnownSpellRES("c0sa412")~ + ~Pain Mirror~ + 4.13
+ ~!HaveKnownSpellRES("c0sa413")~ + ~Greater Shadowfade~ + 4.14
END

IF ~~ level5
SAY ~Choose one 5th level spell:~
+ ~!HaveKnownSpellRES("c0sa501")~ + ~Cone of Bitter Cold~ + 5.1
+ ~!HaveKnownSpellRES("c0sa502")~ + ~Shadow Assault~ + 5.2
+ ~!HaveKnownSpellRES("c0sa503")~ + ~Breaching Dark~ + 5.3
+ ~!HaveKnownSpellRES("c0sa504")~ + ~Shadow Blade~ + 5.4
+ ~!HaveKnownSpellRES("c0sa505")~ + ~Sigil of Madness~ + 5.5
+ ~!HaveKnownSpellRES("c0sa506")~ + ~Shar's Memory Drain~ + 5.6
+ ~!HaveKnownSpellRES("c0sa507")~ + ~Unmask~ + 5.7
+ ~!HaveKnownSpellRES("c0sa508")~ + ~Nightshade~ + 5.8
+ ~!HaveKnownSpellRES("c0sa509")~ + ~Shadow Chain~ + 5.9
+ ~!HaveKnownSpellRES("c0sa510")~ + ~Void Blast~ + 5.10
+ ~!HaveKnownSpellRES("c0sa511")~ + ~Shadow Screen~ + 5.11
+ ~!HaveKnownSpellRES("c0sa512")~ + ~Summon Nighthaunt~ + 5.12
END

IF ~~ level6
SAY ~Choose one 6th level spell:~
+ ~!HaveKnownSpellRES("c0sa601")~ + ~Shar's Shield~ + 6.2
+ ~!HaveKnownSpellRES("c0sa602")~ + ~Twin Mislead~ + 6.3
+ ~!HaveKnownSpellRES("c0sa603")~ + ~Protection from Weave-forged Weapons~ + 6.4
+ ~!HaveKnownSpellRES("c0sa604")~ + ~Power Word: Silence~ + 6.5
+ ~!HaveKnownSpellRES("c0sa605")~ + ~Black Lightning~ + 6.6
+ ~!HaveKnownSpellRES("c0sa606")~ + ~Shatter Weave~ + 6.7
+ ~!HaveKnownSpellRES("c0sa607")~ + ~Umbral Blades~ + 6.8
+ ~!HaveKnownSpellRES("c0sa608")~ + ~Disintegrate~ + 6.9
+ ~!HaveKnownSpellRES("c0sa609")~ + ~Black Rose~ + 6.10
+ ~!HaveKnownSpellRES("c0sa610")~ + ~Negative Energy Burst~ + 6.11
+ ~!HaveKnownSpellRES("c0sa611")~ + ~Devour Dream~ + 6.12
END

IF ~~ level7
SAY ~Choose one 7th level spell:~
+ ~!HaveKnownSpellRES("c0sa701")~ + ~Black Ray of Destruction~ + 7.2
+ ~!HaveKnownSpellRES("c0sa702")~ + ~Shadowspray~ + 7.3
+ ~!HaveKnownSpellRES("c0sa703")~ + ~Power Word: Stun~ + 7.4
+ ~!HaveKnownSpellRES("c0sa704")~ + ~Sword of the Night~ + 7.5
+ ~!HaveKnownSpellRES("c0sa705")~ + ~Shadowplague~ + 7.6
+ ~!HaveKnownSpellRES("c0sa706")~ + ~Greater Drain Vitality~ + 7.7
+ ~!HaveKnownSpellRES("c0sa707")~ + ~Vengeful Shade~ + 7.8
+ ~!HaveKnownSpellRES("c0sa708")~ + ~Nightmare~ + 7.9
+ ~!HaveKnownSpellRES("c0sa709")~ + ~Possess~ + 7.10
+ ~!HaveKnownSpellRES("c0sa710")~ + ~Malefic Bomb~ + 7.11
+ ~!HaveKnownSpellRES("c0sa711")~ + ~Shadow Gate~ + 7.12
+ ~!HaveKnownSpellRES("c0sa712")~ + ~Nightfall~ + 7.13
END

IF ~~ level8
SAY ~Choose one 8th level spell:~
+ ~!HaveKnownSpellRES("c0sa801")~ + ~Negastorm~ + 8.2
+ ~!HaveKnownSpellRES("c0sa802")~ + ~Annulment~ + 8.3
+ ~!HaveKnownSpellRES("c0sa803")~ + ~Shadow Prison~ + 8.4
+ ~!HaveKnownSpellRES("c0sa804")~ + ~Power Word: Blind~ + 8.5
+ ~!HaveKnownSpellRES("c0sa805")~ + ~Shadow Shield~ + 8.6
+ ~!HaveKnownSpellRES("c0sa806") !HaveKnownSpellRES("c0sa813")~ + ~Blackfire Fury~ + 8.7
+ ~!HaveKnownSpellRES("c0sa807")~ + ~Shar's Mantle~ + 8.8
+ ~!HaveKnownSpellRES("c0sa808")~ + ~Shadow's Refuge~ + 8.9
+ ~!HaveKnownSpellRES("c0sa809")~ + ~Dark Premonition~ + 8.10
+ ~!HaveKnownSpellRES("c0sa810")~ + ~Dark Passage~ + 8.11
+ ~!HaveKnownSpellRES("c0sa811")~ + ~Invoke Reflection~ + 8.12
+ ~!HaveKnownSpellRES("c0sa812")~ + ~Merciless Blizzard~ + 8.13
END

IF ~~ level9
SAY ~Choose one 9th level spell:~
+ ~!HaveKnownSpellRES("c0sa901")~ + ~Darkbolt~ + 9.2
+ ~!HaveKnownSpellRES("c0sa902")~ + ~Umbral Stasis~ + 9.3
+ ~!HaveKnownSpellRES("c0sa903")~ + ~Nightsinger's Tithe~ + 9.4
+ ~!HaveKnownSpellRES("c0sa904")~ + ~Enervation~ + 9.5
+ ~!HaveKnownSpellRES("c0sa905")~ + ~Black Blade of Disaster~ + 9.6
+ ~!HaveKnownSpellRES("c0sa906")~ + ~Weird~ + 9.7
+ ~!HaveKnownSpellRES("c0sa907")~ + ~Death Mark~ + 9.8
+ ~!HaveKnownSpellRES("c0sa908")~ + ~Oblivion Pull~ + 9.9
+ ~!HaveKnownSpellRES("c0sa909")~ + ~Fiery Pandemonium~ + 9.10
END

IF ~~ 1.1
SAY ~Shadow Missile
(Invocation/Evocation – Shadow Weave)

Level: 1
Range: Visual range of the caster
Duration: Instant
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: None 

The shadow adept launches a missile of energy that unerringly strikes the target for 1d4 magic damage (+1 cold) and reduces the target's THAC0 by 1 for 3 rounds. An additional missile is launched for every 2 levels of the caster to a maximum of five missiles (5d4+5 damage and -5 THAC0) at level 9.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA101","LOCALS",1) AddSpecialAbility("c0sa101")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.2
SAY ~Sigil of Despair
(Alteration – Shadow Weave)

Level: 1
Range: 25 ft.
Duration: 1 turn
Casting Time: 9
Area of Effect: 1 creature
Saving Throw: None

This spell causes a feeling of doom to overwhelm the target. For the duration of the spell, the target receives a -2 penalty to all <PRO_HISHER> rolls, including THAC0 and Saving Throws. Additionally, the target suffers a -1 penalty to all statistics. There is no Saving Throw for this spell, and it is not affected by Magic Resistance.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA102","LOCALS",1) AddSpecialAbility("c0sa102")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.3
SAY ~Blinding Darkness
(Illusion/Phantasm – Shadow Weave)

Level: 1
Range: 40 ft.
Duration: 2 hours
Casting Time: 2
Area of Effect: 1 creature
Saving Throw: Neg.

This 1st-level spell temporarily blinds its target. A Saving Throw at -2 penalty is allowed and, if successful, there are no harmful effects. If a victim is blinded, <PRO_HESHE> receives a -4 penalty to <PRO_HISHER> attack rolls and Armor Class.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA103","LOCALS",1) AddSpecialAbility("c0sa103")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.4
SAY ~Deep Slumber
(Enchantment/Charm – Shadow Weave)

Level: 1
Range: Visual range of the caster
Duration: 5 rounds/level 
Casting Time: 1 
Area of Effect: 30-ft. radius
Saving Throw: Neg.

When a shadow adept casts Deep Slumber, <PRO_HESHE> causes a comatose slumber to come upon one or more enemies (other than undead and certain other creatures specifically excluded from the spell's effects). All creatures to be affected by Deep Slumber must be within a 30-ft. radius. Creatures in the area of effect must make a Saving Throw vs. Death with a -3 penalty or fall asleep. Monsters with 5 Hit Dice or more are unaffected. Attacks against sleeping opponents never miss.

At 9th level, targets above 4 Hit Dice may be affected though with no saving throw penalty.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA104","LOCALS",1) AddSpecialAbility("c0sa104")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.5
SAY ~Bittercold Touch
(Necromancy – Shadow Weave)

Level: 1
Range: 0
Duration: 1 turn
Casting Time: 1
Area of Effect: The creature
Saving Throw: Neg.

When the caster completes this spell, <PRO_HISHER> hand sucks in all light. This energy attacks the life force of any living creature upon which the shadow adept makes a successful melee attack (+4 bonus to hit). (Nonliving creatures such as golems and undead are unaffected by this spell.) The creature is punched for 1d2 fist damage (Strength bonuses apply) and must make a Saving Throw vs. Spell or suffer 1d8 points of cold damage and become Chilled for 3 rounds. Chilled creatures suffer a -2 penalty to Armor Class and THAC0 and move at half of their normal rate. Non-living creatures, such as undead or constructs, must instead make a Saving Throw vs. Spell at -2 or suffer 1d10 magic damage and do not become Chilled.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA105","LOCALS",1) AddSpecialAbility("c0sa105")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.6
SAY ~Essence Drain
(Necromancy – Shadow Weave)

Level: 1
Range: 30 ft.
Duration: Special
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: None

With this spell, the shadow adept drains the life force from a target and adds it to <PRO_HISHER> own. The target creature suffers 2 points of magical damage + 2 points per 2 levels of the caster to a maximum of 10 total at 9th level while the shadow adept gains an equal amount of Hit Points. If the shadow adept goes over <PRO_HISHER> maximum Hit Point total with this spell, <PRO_HESHE> loses any extra Hit Points after 1 turn.

If the target is slain, the amount of health gained by the caster is doubled.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA106","LOCALS",1) AddSpecialAbility("c0sa106")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.7
SAY ~Shadow Veil
(Conjuration/Summoning – Shadow Weave)

Level: 1
Range: 0
Duration: 9 hours
Casting Time: 9
Area of Effect: The caster
Saving Throw: None

By means of this spell, the shadow adept creates a magical field of force that serves as armor, increasing the caster's armor class by 1 point per 3 levels of the caster up to a maximum of +4 at level 13. It is cumulative with Dexterity bonuses to Armor Class. The veil is invisible, does not hinder movement, adds no weight or encumbrance, and doesn't prevent spellcasting. It lasts until successfully dispelled or until its duration expires.

Additionally, whenever the caster suffers damage while the shadow veil is active, <PRO_HESHE> has a 5% (+5% per ten caster levels) chance to turn invisible for 2 rounds.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA107","LOCALS",1) AddSpecialAbility("c0sa107")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.8
SAY ~Curse
(Conjuration/Summoning – Shadow Weave)

Level: 1
Range: Sight
Duration: 1 turn
Casting Time: 1 round
Area of Effect: 30 ft. radius
Saving Throw: None

When the Curse spell is uttered, the caster lowers the morale of enemy creatures and penalizes their saving throws and attack rolls by -1. At the instant the spell is completed, it affects all creatures in a 30 ft. radius centered on the point selected by the caster (thus, affected creatures leaving the area are still subject to the spell's effects; those entering the area after the casting is completed are not. This spell is not affected by Magic Resistance.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA108","LOCALS",1) AddSpecialAbility("c0sa108")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.9
SAY ~Shadow Rope
(Conjuration/Summoning – Shadow Weave)

Level: 1
Range: Visual range of the caster
Duration: Special
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: None

This spell creates a shadowy thread which wraps itself around the caster's target and pulls them towards the caster. It deals no damage, but the target is immobilized for the duration and is unable to attack or use spells for one round.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA109","LOCALS",1) AddSpecialAbility("c0sa109")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.10
SAY ~Decoy
(Illusion/Phantasm – Shadow Weave)

Level: 1
Range: Visual range of caster
Duration: 1 round
Casting Time: 1
Area of Effect:
Saving Throw: None

This spell briefly conjures a projection of the caster next to <PRO_HIMHER> while turning <PRO_HIMHER> invisible for 1 round.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA110","LOCALS",1) AddSpecialAbility("c0sa110")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.11
SAY ~Mesmerize
(Enchantment/Charm – Shadow Weave)

Level: 1
Range: Visual range of caster
Duration: 1 turn
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: None

This spell inflicts an enchantment upon a target creature of the shadow adept's choice. If the target fails a Save vs. Spells at -4, they are pacified for one turn, ceasing all action and remaining still for the duration. The target also suffers a -6 penalty to Armor Class due to being too mentally unfocused to actively dodge attacks. However, the target will break free of its enchantment prematurely if they are attacked.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA111","LOCALS",1) AddSpecialAbility("c0sa111")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 1.12
SAY ~Cursed Flames
(Alteration – Shadow Weave)

Level: 1
Range: 5 ft.
Duration: Special
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: 1/2

When the shadow adept casts this spell, a jet of searing flame shoots from <PRO_HISHER> fingertips. The shadow adept's hands must be held so as to send forth a fanlike sheet of flames: <PRO_HISHER> thumbs must touch each other and the fingers must be spread. The burning hands send out flame jets of 5 ft. length in a horizontal arc of about 120 degrees in front of the shadow adept. All targets within range take 1d4+10% of their maximum hit points in fire damage and have their Luck reduced by two points for 2 rounds + 1 round per level to a maximum of 10 rounds at 9th level, additionally, they take 2 points of fire damage per round for the duration. A successful Saving Throw vs. Spells negates the maximum hit points damage and the secondary effects.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv1","LOCALS",-1) SetGlobal("C0SA112","LOCALS",1) AddSpecialAbility("c0sa112")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.1
SAY ~Dark Mirage
(Illusion/Phantasm – Shadow Weave)

Level: 2
Range: 0
Duration: 1 hour
Casting Time: 2
Area of Effect: The caster
Saving Throw: None

When Dark Mirage is cast, the shadow adept causes the outline of <PRO_HISHER> form to become blurred, shifting and wavering. This distortion causes all missile and melee attacks against the caster to be made with a -3 penalty. The shadow adept also gains a +1 bonus to all of <PRO_HISHER> Saving Throws. Additionally, the caster causes from 2 to 8 exact duplicates of <PRO_HIMHER>self to come into being around <PRO_HIMHER>. These images do exactly what the shadow adept does. Since the spell causes a blurring and slight distortion when cast, it is impossible for opponents to be certain which are the illusions and which is the actual shadow adept. When an image is struck by a melee or missile attack—magical or otherwise—it disappears, but any other existing images remain intact until they are struck. However, it is important to note that this will not protect the caster against every attack, as it is possible for an enemy to choose the real caster amongst all the images.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA201","LOCALS",1) AddSpecialAbility("C0SA201")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.2
SAY ~Night Terrors
(Necromancy – Shadow Weave)

Level: 2
Range: 40 ft.
Duration: 1 turn
Casting Time: 2
Area of Effect: 30-ft. radius
Saving Throw: Neg.

All enemies within the area of effect when this spell is cast must Save vs. Spell at -2 or flee in terror. Certain creatures are immune to the effects of fear, including all undead.

At 12th level, this spell gains the effects of the 6th level wizard spell Death Spell: creatures below 8 Hit Dice and all summoned creatures will die instantly from overwhelming fear. (no saving throw)~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA202","LOCALS",1) AddSpecialAbility("C0SA202")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.3
SAY ~Dark Fortune
(Enchantment/Charm – Shadow Weave)

Level: 2
Range: 15 ft.
Duration: 1 hour
Casting Time: 2
Area of Effect: 1 creature
Saving Throw: None

The recipient of this spell gains extraordinary luck for the next hour, receiving a +1 bonus to <PRO_HISHER> Saving Throws, attack rolls, and minimum damage/healing rolls as well as +5% to all thieving skills. Furthermore, damage dice for all effects outside a weapon's base damage dealt towards the target is reduced by 1, while the target's damage dice are increased by 1. For example, a 6d6 fireball will do 6d5 damage, and a flaming long sword that deals 1d8+2 slashing plus 1d3 fire damage will deal 1d8+2 slashing plus 1d2 fire damage instead. Bonuses increase by the original amount for every five caster levels after 3rd level up to 23rd level. This spell also makes the target immune to effects that reduce luck, such as Doom or Greater Malison.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA203","LOCALS",1) AddSpecialAbility("C0SA203")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.4
SAY ~Power Word, Sleep
(Conjuration/Summoning – Shadow Weave)

Level: 2
Range: 90 ft.
Duration: 5 rounds
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: None

When a shadow adept calls upon a Power Word, Sleep spell, <PRO_HESHE> causes a comatose slumber to come upon 1 creature (other than undead and certain other creatures specifically excluded from the spell's effects). The creature targeted must have less than 20 Hit Points and gets no Saving Throw. Magically sleeping opponents can be attacked with substantial bonuses. The Sleep effect will last for 5 rounds. This spell has no effect on creatures with more than 20 Hit Points.

At 10th level, creatures above 20 Hit Points are put to sleep for 2 rounds.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA204","LOCALS",1) AddSpecialAbility("C0SA204")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.5
SAY ~Dread Silence
(Alteration – Shadow Weave)

Level: 2
Range: Visual range of the caster
Duration: 2 rounds/level
Casting Time: 5
Area of Effect: 15-ft. radius sphere
Saving Throw: Neg. 

Upon casting this spell, complete silence prevails in the affected area. All sound is stopped: Conversation is impossible and spells cannot be cast. Each creature in the area must make a Saving Throw vs. Spell with a -5 penalty; if the save is failed then they are silenced for the duration of the spell. Note that this spell does not continue to affect the area after being cast; only those in the area at the time of the casting are affected by the silence. Only the caster is immune to the spell's effects - both allies and enemies can be affected.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA205","LOCALS",1) AddSpecialAbility("C0SA205")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.6
SAY ~Ghostly Visage
(Illusion/Phantasm – Shadow Weave)

Level: 2
Range: Self
Duration: 1 turn/level
Casting Time: 2
Area of Effect: 1 creature
Saving Throw: None

The caster is surrounded by a ghostly nimbus of light that grants 10% resistance to physical damage and prevents all level 1 spells from affecting <PRO_HIMHER>.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA206","LOCALS",1) AddSpecialAbility("C0SA206")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.7
SAY ~Lesser Drain Vitality
(Necromancy – Shadow Weave)

Level: 2
Range: Touch
Duration: 1 turn
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: None

This spell allows the shadow adept to drain two points of Constitution from a single target, increasing the caster's own for 1 turn. Drain Vitality (and its variants) does not cost Constitution as other spells of the Shadow Weave and may not affect the same target more than once per turn.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA207","LOCALS",1) AddSpecialAbility("C0SA207")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.8
SAY ~Black Mist
(Illusion/Phantasm – Shadow Weave)

Level: 2
Range: 90 ft.
Duration: 1 turn
Casting Time: 2
Area of Effect: 30' radius
Saving Throw: Neg.

When this spell is cast, a thick shadowy mist spreads across the area selected by the caster. Any creatures caught within the mist must make a Save vs. Spells at -2 at the beginning of each round or become blinded for that round, receiving a -4 penalty to their Armor Class and attack rolls and greatly reducing their vision range. Those who make successful Saving Throws can leave the mist without suffering any ill effects, although those remaining in the mist must continue to save each round. A Dispel Magic will remove the blindness on a particular character, but if they remain in the mist, then they are still subject to its effects.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA208","LOCALS",1) AddSpecialAbility("C0SA208")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.9
SAY ~Negative Energy Ray
(Necromancy – Shadow Weave)

Level: 2
Range: 15 ft.
Duration: 1 turn
Casting Time: 3
Area of Effect: 1 creature
Saving Throw: None

Upon casting this spell, a black ray appears at the caster's fingertips and bursts out towards one target of the caster's choice. That target will be hit by the ray for 3d6 points of magical damage and suffers a -1 penalty to Armor Class, THAC0 and damage for 1 turn. The ray strikes a second time halfway through its duration, dealing the same amount of damage and applying a second instance of penalties. The caster may move while the spell is in effect. There is no saving throw against this spell's effects.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA209","LOCALS",1) AddSpecialAbility("C0SA209")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.10
SAY ~Sigil of Vulnerability
(Enchantment/Charm – Shadow Weave)

Level: 2
Range: 30 ft.
Duration: 1 round/level
Casting Time: 1 round
Area of Effect: 1 creature
Saving Throw: Neg.

This spell curses the target creature with mortality. For as long as the curse is in effect, the target loses 1% resistance to physical damage per level of the caster and is unable to be healed by any magical means. A Saving Throw vs. Spells negates the effect.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA210","LOCALS",1) AddSpecialAbility("C0SA210")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.11
SAY ~Shadow Walk
(Alteration – Shadow Weave)

Level: 2
Range: 0
Duration: Instant
Casting Time: 1
Area of Effect: The caster
Saving Throw: None

This spell transports the caster to any place within the visual range of the caster. When the spell is cast, the shadow adept makes a brief planar jaunt into the Plane of Shadow and exits at a different location, making it seem as though <PRO_HESHE> has teleported. The caster is also briefly invisible for the travel duration, cancelling spells targeted at <PRO_HIMHER> unless the spellcaster can see through invisibility.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA211","LOCALS",1) AddSpecialAbility("C0SA211")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.12
SAY ~Hallucinate
(Illusion/Phantasm – Shadow Weave)

Level: 2
Range: Visual range of the caster
Duration: 1 round/level
Casting Time: 5 
Area of Effect: 1 person or mammal 
Saving Throw: Neg.

The target of this spell must make a Saving Throw vs. Spell or come under its effects. When under the effects of the Hallucinate spell, the victim experiences a disruption of their senses causing them to perceive something that is not actually there, causing them to randomly wander, attack the nearest person, or stand confused.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA212","LOCALS",1) AddSpecialAbility("C0SA212")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 2.13
SAY ~Shadowfade
(Illusion/Phantasm – Shadow Weave)

Level: 2
Range: Touch 
Duration: Special 
Casting Time: 2 
Area of Effect: 1 creature 
Saving Throw: None 

This spell causes the creature touched to vanish from sight and be undetectable by normal vision or even infravision. Of course, the invisible creature is not magically silenced, and certain other conditions can render the creature detectable. Even allies cannot see the invisible creature or its gear, unless these allies can normally see invisible things or employ magic to do so. Items dropped or put down by the invisible creature become visible; items picked up disappear if tucked into the clothing or pouches worn by the creature. The spell remains in effect until it is magically broken or dispelled, until the recipient attacks any creature, or until 24 hours have passed. The caster cannot perform any actions that manipulate the environment around <PRO_HIMHER>, such as opening doors, disarming a trap, or opening a chest. The caster can, however, cast defensive spells on <PRO_HIMHER>self and fellow party members. And if <PRO_HESHE> attacks, <PRO_HESHE> immediately becomes visible, although the invisibility enables <PRO_HIMHER> to attack first.

Additionally, if the target is either a shadow adept or a native of the Shadow Plane, they are healed for 1d6 hit points (+1d6 per five caster levels).~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv2","LOCALS",-1) SetGlobal("C0SA213","LOCALS",1) AddSpecialAbility("C0SA213")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.1
SAY ~Blackfire Arrow
(Conjuration/Summoning – Shadow Weave)

Level: 3
Range: 60 ft.
Duration: Instant
Casting Time: 3
Area of Effect: Special
Saving Throw: 1/2

This spell enables the caster to hurl coldfire bolts at multiple opponents within range. Each bolt inflicts 1d6 points of cold damage plus 4d6 points of fire damage. Only half of the fire damage is inflicted if the creature struck saves vs. Spell. The caster receives one bolt every 5 levels beyond the 5th (2 bolts at 10th level, 3 at 15th level, etc.). Each arrow may be targeted individually towards any chosen target.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA301","LOCALS",1) AddSpecialAbility("C0SA301")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.2
SAY ~Shadowblast
(Invocation/Evocation – Shadow Weave)

Level: 3
Range: 40 ft.
Duration: Instant
Casting Time: 3
Area of Effect: 30-ft. radius
Saving Throw: 1/2 

The shadow adept launches an unstable mass of shadowstuff which explodes, dealing 1d3 points of cold damage and 1d3 points of magic damage for every level of the caster (to a maximum of 10d6) and penalizes their saving throws and attack rolls by -1 per 10 levels of the caster (-2 at 10th level, -3 at 20th level, etc.) for 1 turn. Creatures who pass their saving throw avoid the direct blast taking no magic damage or stat loss.

From 10th level onwards, targets damaged by Shadowblast lose 20% resistance to cold and magic damage for 1 turn.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA302","LOCALS",1) AddSpecialAbility("C0SA302")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.3
SAY ~Inertia
(Alteration – Shadow Weave)

Level: 3
Range: 25 ft.
Duration: 1 turn
Casting Time: 3
Area of Effect: 30-ft. radius
Saving Throw: Neg.

This spell causes creatures to move and attack at half of their normal rates. It negates Haste, but does not otherwise affect magically hasted or slowed creatures. Slowed creatures have an Armor Class and attack penalty of -4. Creatures save at -4 vs. Spell. Targets must also make an initial Save vs. Spells or be slowed to a halt, becoming held for 1 round.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA303","LOCALS",1) AddSpecialAbility("C0SA303")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.4
SAY ~Lifedrinker Touch
(Necromancy – Shadow Weave)

Level: 3
Range: Touch
Duration: Instant 
Casting Time: 3 
Area of Effect: 1 creature
Saving Throw: None 

When this spell is cast, the target loses 1d6 Hit Points for every 2 caster levels, to a maximum drain of 6d6 for a 12th-level caster. In addition, the target transfers 3 points of either Strength, Dexterity or Constitution to the caster. The Hit Points are added to the caster's current Hit Points, with any Hit Points over the caster's normal maximum treated as temporary additional Hit Points. The temporary Hit Points and statistics last for 1 hour.

Note: This spell may not be cast multiple times to radically increase the caster's Hit Points. The caster must wait for the first Lifedrinker Touch spell to run its course before casting another.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA304","LOCALS",1) AddSpecialAbility("C0SA304")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.5
SAY ~Beguile
(Enchantment/Charm – Shadow Weave)

Level: 3
Range: 60 ft.
Duration: 5 rounds
Casting Time: 3
Area of Effect: 1 creature
Saving Throw: Neg. 

This spell works in the exact same manner as Charm Person, with one difference: There is no Saving Throw bonus. Beguile affects any single person it is cast upon. The term person includes any bipedal human, demihuman, or humanoid of man-size or smaller, such as brownies, dryads, dwarves, elves, gnolls, gnomes, goblins, half-elves, halflings, half-orcs, hobgoblins, humans, kobolds, lizard men, nixies, orcs, pixies, sprites, troglodytes, and others. Thus, a 10th-level fighter could be charmed, but an ogre could not. The person is allowed a Saving Throw vs. Spell to negate the effect.

If the spell's recipient fails <PRO_HISHER> Saving Throw, <PRO_HESHE> regards the caster as a trusted friend and ally to be heeded and protected. The caster may give <PRO_HIMHER> orders, and the charmed individual will carry them out as quickly as possible.

If the caster harms - or attempts to harm - the charmed person by some overt action, or if a Dispel Magic spell is cast upon the charmed person, the Beguile spell is broken. If two or more Charms simultaneously affect a creature, the most recent Charm takes precedence. Note that the subject has full memory of the events that took place while <PRO_HESHE> was charmed. Also note that you cannot have a charmed creature leave the area where <PRO_HESHE> is charmed.

The saving throw penalty increases by -1 for every 5 caster levels.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA305","LOCALS",1) AddSpecialAbility("C0SA305")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.6
SAY ~Shadow Comets
(Invocation/Evocation – Shadow Weave)

Level: 3
Range: 0
Duration: Special
Casting Time: 3
Area of Effect: The caster
Saving Throw: None

This spell creates several small globes of shadowy matter, two for each experience level of the shadow adept, which are held in <PRO_HISHER> hands in place of <PRO_HISHER> usual weapons. The meteors can be hurled at targets up to 270 feet away and are treated as missiles with a +5 bonus to the attack rolls. Each meteor bursts into a 1-ft. diameter sphere upon impact, inflicting 1d4+3 points of damage plus an additional 3 points of cold damage to any creature struck. The shadow adept may hurl up to five missiles per round.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA306","LOCALS",1) AddSpecialAbility("C0SA306")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.7
SAY ~Shadow Binding
(Enchantment/Charm – Shadow Weave)

Level: 3
Range: 35 ft.
Duration: 1 turn
Casting Time: 3
Area of Effect: 1 creature and any enemy within 7.5 ft.
Saving Throw: Neg. 

This spell holds one creature of any type rigidly immobile and in place for one turn, unless a Saving Throw vs. Spell is made with a -4 penalty. Those who succeed on their Saving Throws are totally unaffected by the spell.

Held creatures cannot move or speak, but they remain aware of events around them and can use abilities not requiring motion or speech. Being held does not prevent the worsening of the subject's condition due to wounds, diseases, or poison.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA307","LOCALS",1) AddSpecialAbility("C0SA307")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.8
SAY ~Impose
(Evocation – Shadow Weave)

Level: 3
Range: 30 ft.
Duration: 1 round
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: None

This spell launches a blast of invisible force towards a target, dealing 3d6 crushing damage and knocking them away from the caster as well as stunning them for 1 round. There is no saving throw.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA308","LOCALS",1) AddSpecialAbility("C0SA308")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.9
SAY ~Shadow Spear
(Invocation/Evocation – Shadow Weave)

Level: 3
Range: 70 ft.
Duration: Special
Casting Time: 5
Area of Effect: Path of spear
Saving Throw: Neg.

Upon casting this spell, a spear made of shadowstuff forms in the caster's hands, which can be thrown once towards a target of the caster's choosing. The spear may be launched by any target the caster is able to attack, dispelling all of the spell protections of 5th level and lower affecting it. This includes the following spells: Minor Spell Deflection, Minor Globe of Invulnerability, Spell Immunity, and Minor Spell Turning. If no such spells protect the targets, the spear instead deals 5d6 magic damage and inflicts an additional effect dependent on the caster's level.

5th level and below: Reduces targets' Armor Class by two points for five rounds
8th-10th level: Reduces targets' saving throws and THAC0 by 1 point for five rounds
11th-13th level: Halves targets' Dexterity for one turn
14th-16th level: Drains two levels from targets for one turn
17th level and above: Instantly kills targets

The spear is not affected by Magic Resistance. Targets may make a Saving Throw vs. Death (-1 per spear upgrade) to avoid all secondary effects.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA309","LOCALS",1) AddSpecialAbility("C0SA309")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.10
SAY ~Cursed Earth
(Conjuration – Shadow Weave)

Level: 3
Range: 90 ft.
Duration: 1 turn
Casting Time: 4
Area of Effect: 30' radius
Saving Throw: Neg.

This spell creates a zone of blackened, poisonous earth within a 30' radius. All creatures standing within the area have their movement rate halved and suffer 2d4 poison damage each round if they fail a Saving Throw vs. Death.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA310","LOCALS",1) AddSpecialAbility("C0SA310")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.11
SAY ~Expunge Magic
(Abjuration – Shadow Weave)

Level: 3
Range: 40 ft.
Duration: Instant
Casting Time: 5
Area of Effect: 30-ft. radius
Saving Throw: None

A Expunge Magic spell removes magical effects upon anyone within the area. This includes effects given from spells, potions and certain magical items such as wands. It does not, however, affect enchanted magical items or spell protections such as Spell Turning and Spell Deflection. The chance of the dispel succeeding is determined by the effective level of the caster and the level of the magic being dispelled (Expunge Magic is cast as though at 1.5x the caster's actual level). The base chance of successfully dispelling is 50%. For every level that the caster of the Expunge Magic is above the original caster, <PRO_HISHER> chance of success increases by 5%. For every level that the caster of Expunge Magic is below the original caster, <PRO_HISHER> chance of success decreases by 10%. However, despite the difference in levels, there is always at least a 5% chance of success or failure. Thus, if a caster is 10 levels higher than the magic <PRO_HESHE> is trying to dispel, there is only a 5% chance of failure. Similarly if the caster is 4 levels lower than the magic <PRO_HESHE> is trying to dispel, there is only a 10% chance of success. Intuitively, this spell is almost useless if the target is 5 or more levels higher than the caster.

Note: While this spell dispels the individual effects of Grease, Web, Stinking Cloud, and other such spells, it does not dispel the area of effect.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA311","LOCALS",1) AddSpecialAbility("C0SA311")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 3.12
SAY ~Void Edge
(Invocation/Evocation – Shadow Weave)

Level: 3
Range: Self
Duration: 1 turn
Casting Time: 2
Area of Effect: Self
Saving Throw: None

Upon casting this spell, the shadow adept imbues <PRO_HISHER> next melee attack with shadow magic, providing it with a +5 enchantment bonus and the ability to drain 2 hit points per level as magic damage.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv3","LOCALS",-1) SetGlobal("C0SA312","LOCALS",1) AddSpecialAbility("C0SA312")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.2
SAY ~Fireshield (Shadow) 
(Invocation/Evocation, Alteration – Shadow Weave)

Level: 4
Range: 0
Duration: 3 rounds + 1 round/level
Casting Time: 4 
Area of Effect: The caster 
Saving Throw: None 

The shadow fireshield protects the user from cold damage by surrounding the caster with a shield of black flame. This shield not only grants the user 50% resistance to cold, but also protects the caster from attacks made within a 5-ft. radius around the caster. An opponent that hits the caster with any weapons or spells within this radius suffers 1d8+2 damage (half cold, half magic) and reduces the attacker's THAC0 by one point for 6 rounds (cumulative).~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA401","LOCALS",1) AddSpecialAbility("C0SA401")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.3
SAY ~Shadeskin
(Alteration – Shadow Weave)

Level: 4
Range: 0
Duration: 12 hours
Casting Time: 1
Area of Effect: The caster
Saving Throw: None 

When a shadow adept casts this powerful spell upon <PRO_HIMHER>self, an outer skin of shadowstuff will move up from the ground, completely covering <PRO_HIMHER>. This skin is of course magical and will hinder the shadow adept in no way. The effect of this is to protect the shadow adept from physical attacks such as melee weapons and projectiles. For every 2 levels of the caster, an additional skin is gained upon casting. For example, a 10th-level shadow adept would receive 5 skins while a 20th-level shadow adept would receive 10. For each skin the shadow adept possesses, the spell will stop one attack, so a 10th-level shadow adept would be protected from the first 5 attacks made against <PRO_HIMHER>, but the 6th would affect <PRO_HIMHER> normally. The skins will remain on the shadow adept until <PRO_HESHE> is affected by a Dispel Magic, all of the skins are removed due to physical attacks, or the spell duration expires. It is important to note that this will not protect the shadow adept from any magical attacks, such as Fireball.

Additionally, so long as at least one layer of Shadeskin is active, the shadow adept gains 25% resistance to acid, cold, fire, electrical and magic damage.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA402","LOCALS",1) AddSpecialAbility("C0SA402")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.4
SAY ~Sigil of Misfortune
(Enchantment/Charm – Shadow Weave)

Level: 4
Range: 50 ft.
Duration: 2 rounds/level
Casting Time: 4
Area of Effect: 30-ft. radius
Saving Throw: None

The spell allows the caster to adversely affect all the Saving Throws of <PRO_HISHER> enemies. The effect is applied to all hostile creatures within the area of effect. Opponents under the influence of this spell make all Saving Throws and attack rolls at a penalty of -4. This spell is not affected by Magic Resistance.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA403","LOCALS",1) AddSpecialAbility("C0SA403")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.5
SAY ~Summon Shadow
(Necromancy – Shadow Weave)
Level: 4
Range: Long
Duration: 2 hours
Casting Time: 1 round
Area of Effect: Special
Saving Throw: None

By means of this spell, the caster summons a number of shadows, undead monsters which serve the mage under any conditions. The type and number of creatures that appear depend upon the level of the shadow adept casting the spell.

7th: 3 shadows
9th: 3 shadow fiends
12th+ : 3 wraiths
16th+ : 2 wraiths, 1 devil shade

The undead creatures will remain under the shadow adept's control until they are slain or the spell duration expires.

NOTE: Due to being creatures of the Plane of Shadow, shadows are weakened in natural daylight.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA404","LOCALS",1) AddSpecialAbility("C0SA404")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.6
SAY ~Shar's Blessing
(Invocation/Evocation – Shadow Weave)

Level: 4
Range: 0
Duration: 1 round/level
Casting Time: 6
Area of Effect: The caster
Saving Throw: None

Through this spell, the caster draws upon energy from the Plane of Shadow to imbue <PRO_HIMHER>self with the strength and skill of a Fighter of the same level. The shadow adept's Strength score is increased by four points, <PRO_HISHER> THAC0 becomes that of a Fighter of the same level, <PRO_HESHE> gains one extra attack per round and <PRO_HESHE> gains 1 temporary Hit Point per level. This will last for the duration of the spell or until dispelled.

From 14th level onwards, the caster's attacks per round are doubled instead.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA405","LOCALS",1) AddSpecialAbility("C0SA405")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.7
SAY ~Phantasmal Killer
(Illusion/Phantasm – Shadow Weave)

Level: 4
Range: Visual range of the caster
Duration: Permanent
Casting Time: 5
Area of Effect: 1 creature
Saving Throw: Special

The caster creates a phantasmal image of the most fearsome creature imaginable to the subject simply by forming the fears of the subject’s subconscious mind into something that its conscious mind can visualize: this most horrible beast. Only the spell’s subject can see the phantasmal killer. The target first gets a Save vs. Spells to recognize the image as unreal. If that save fails, the phantasm touches the subject, and the subject must succeed on a Save vs. Death at +2 or die from fear. Even if the second save is successful, the subject takes 3d6 points of damage.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA406","LOCALS",1) AddSpecialAbility("C0SA406")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.8
SAY ~Drain Vitality
(Necromancy – Shadow Weave)

Level: 4
Range: Touch
Duration: 1 turn
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: None

This spell allows the shadow adept to drain four points of Constitution from a single target, increasing the caster's own for 1 turn. Drain Vitality (and its variants) does not cost Constitution as other spells of the Shadow Weave and may not affect the same target more than once per turn.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA407","LOCALS",1) AddSpecialAbility("C0SA407")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.9
SAY ~Dread Whispers
(Illusion/Phantasm – Shadow Weave)

Level: 4
Range: 30 ft.
Duration: 5 rounds
Casting Time: 9
Area of Effect: 30 ft. radius
Saving Throw: None

Dread Whispers causes all enemies within range to become afflicted by an ominous chorus of voices infesting their mind. The voices are distracting, causing 50% spell failure on targets. In addition, at the beginning of every round the target must make a Save vs. Spell at -2 or lose morale, running in panic for 1 round.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA408","LOCALS",1) AddSpecialAbility("C0SA408")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.10
SAY ~Negative Immunity
(Abjuration – Shadow Weave)

Level: 4
Range: Touch
Duration: 1 turn/level
Casting Time: 5
Area of Effect: 1 creature
Saving Throws: None

This spell grants the target immunity to blindness, fear, sleep, confusion and level drain for 1 turn per level of the caster.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA409","LOCALS",1) AddSpecialAbility("C0SA409")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.11
SAY ~Black Ooze
(Conjuration – Shadow Weave)

Level; 4
Range: Visual range of the caster
Duration: 1 turn
Casting Time: 3
Area of Effect: 1 creature and any enemy within 7.5 ft.
Saving Throw: 1/2

With this spell, the shadow adept conjures a glob of shadowy, vaporous ooze from the Plane of Shadow and drops it on the target, dealing 6d6 acid damage to them and any nearby targets, holding them for 1 round (no save) then slowing them and reducing their magic resistance by 20% for 1 turn. Targets who make a Saving Throw vs. Death at -2 take half damage and avoid the secondary effects. This spell ignores Magic Resistance.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA410","LOCALS",1) AddSpecialAbility("C0SA410")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.12
SAY ~Wall of Black Flame
(Invocation/Evocation – Shadow Weave)

Level: 4
School: Evocation
Range: Long
Duration: 1 turn
Casting Time: 3
Area of Effect: 10'
Saving Throw: 1/2

With this spell, the shadow adept creates a wall of black fire, dealing 4d6 damage (half fire, half magic) to all creatures who pass through it (Save vs. Spells at -4 for half) and reduces their Armor Class by -4 for one round. Creatures cannot take damage more than once per round.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA411","LOCALS",1) AddSpecialAbility("C0SA411")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.13
SAY ~Pain Mirror
(Necromancy – Shadow Weave)

Level; 4
Range: Visual range of the caster
Duration: 1 turn
Casting Time: 7
Area of Effect: 1 creature
Saving Throw: None

When the caster is struck with an attack, <PRO_HESHE> takes no damage and drains 1d4 hit points per level from the attacker instead. It only works for one attack, and the effects are not cumulative (you cannot have more than one mirror erected). If the spell is not triggered, it lasts for 1 turn.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA412","LOCALS",1) AddSpecialAbility("C0SA412")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 4.14
SAY ~Greater Shadowfade
(Illusion/Phantasm – Shadow Weave)

Level: 4
Range: Touch
Duration: 3 rounds + 1 round/level
Casting Time: 4
Area of Effect: 1 creature
Saving Throw: None

This spell is similar to Invisibility, but the recipient is able to attack by missile discharge, melee combat, or spellcasting while remaining unseen. However, telltale traces – a shimmering – allow an observant opponent to attack the invisible spell recipient. These traces are only noticeable when specifically looked for (after the invisible character has made <PRO_HISHER> presence known). Attacks against the invisible character suffer a -4 penalty to attack rolls, and the invisible character's Saving Throws are made with a +4 bonus. Additionally, for as long as the caster is at least partially invisible, <PRO_HESHE> is healed for 2d6 hit points per round for the duration.

Note: After making an attack, the caster is no longer completely invisible. Opponents can target the caster. The caster is treated as Non-Detected for the duration.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv4","LOCALS",-1) SetGlobal("C0SA413","LOCALS",1) AddSpecialAbility("C0SA413")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.1
SAY ~Cone of Bitter Cold
(Invocation/Evocation – Shadow Weave)

Level: 5
Range: 0
Duration: Instant
Casting Time: 5
Area of Effect: Special
Saving Throw: 1/2

When this spell is cast, it generates a cone-shaped area of freezing ice originating at the shadow adept's hand and extending outwards of 30 ft. in a 90' cone in front of the caster. It drains heat and causes 1d4 cold damage plus 1% of all targets' maximum hit points in damage per level of the caster. For example, a 10th-level shadow adept would deal 10d4 (Save vs. Spell at -2 for half) plus 10% maximum hit points in cold damage. Targets who fail their saving throw are also slowed and take 1d6 extra cold damage per round for 2 rounds + 1 round per 4 caster levels.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA501","LOCALS",1) AddSpecialAbility("C0SA501")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.2
SAY ~Shadow Assault
(Illusion/Phantasm – Shadow Weave)

Level: 5
Range: 0
Duration: 9 rounds + 1 round/level after 9th
Casting Time: 2
Area of Effect: The caster
Saving Throw: None

This spell is similar to Invisibility, but the recipient is able to attack by missile discharge, melee combat, or spellcasting while remaining unseen. However, telltale traces - a shimmering - allow an observant opponent to attack the invisible spell recipient. These traces are only noticeable when specifically looked for (after the invisible character has made <PRO_HISHER> presence known). Attacks against the invisible character suffer a -4 penalty to attack rolls, and the invisible character's Saving Throws are made with a +4 bonus. For the duration of the spell, the shadow adept is also able to backstab with a x2 multiplier, increased to x3 at level 14 and x4 at level 21.

Additionally, the caster's movement rate is doubled, allowing for a quick retreat from battle if necessary.

Note: After making an attack, the shadow adept is no longer completely invisible. Opponents can target the shadow adept.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA502","LOCALS",1) AddSpecialAbility("C0SA502")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.3
SAY ~Breaching Dark
(Abjuration – Shadow Weave)

Level: 5
Range: 40 ft.
Duration: Instant
Casting Time: 5
Area of Effect: 1 creature
Saving Throw: None

When this spell is cast at a creature, it breaches and dispels all of the specific and combat protections on the target creature. Here is a complete list of all the specific protection spells that are dispelled by Breach: Shield, Protection Circle, Resist Fear, Protection From Fire/Cold, Fireshield, Protection From Acid, Protection From Electricity, Protection From Magic Energy, Protection From The Elements, and Protection From Energy. The combat protection spells dispelled by Breach are Protection From Normal Missiles, Protection From Normal Weapons, Protection From Magical Weapons, Stoneskin, Iron Skins, Armor, Ghost Armor, Spirit Armor, Absolute Immunity, Mantle, and Improved Mantle. The target's Magic Resistance, if any, does not affect this spell. Additionally, this spell also lower's the opponent's magic resistance by 10% + 1% per level of the caster.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA503","LOCALS",1) AddSpecialAbility("C0SA503")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.4
SAY ~Shadow Blade
(Invocation/Evocation – Shadow Weave)

Level: 5
Range: 0
Duration: 2 turns
Casting Time: 5
Area of Effect: Special
Saving Throw: None

This spell creates a translucent, shadow-like, weightless area of shadowstuff extending from the fingers of one of the caster's hands. The silent, blade-shaped construct's cutting edges inflict damage just as those of a real sword do. The Shadow Sword's power increases with the caster's level, upgrading once every 7 caster levels.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA504","LOCALS",1) AddSpecialAbility("C0SA504")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.5
SAY ~Sigil of Madness
(Enchantment/Charm – Shadow Weave)

Level: 5
Range: 35 ft.
Duration: 5 rounds + 1 round/6 levels
Casting Time: 4
Area of Effect: 30-ft. radius
Saving Throw: Special

The effects of this spell are identical to the 5th-level spell Chaos in all respects, except this spell ignores magic resistance. The victims wander around as if in a daze, sometimes wandering away, sometimes attacking either friend or foe. If the victim is 4th level or lower, <PRO_HESHE> does not receive a Saving Throw vs. the effects. However, if the victim is 5th level or higher, <PRO_HESHE> receives a Save vs. Spell with a -4 penalty. The spell lasts for the duration or until a successful Dispel Magic is cast.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA505","LOCALS",1) AddSpecialAbility("C0SA505")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.6
SAY ~Shar's Memory Drain
(Enchantment – Shadow Weave)

Level: 5
Range: 40 ft.
Duration: 5 rounds
Casting Time: 5
Area of Effect: 1 creature
Saving Throw: None

This powerful spell erases a portion of the target's memory, weakening them. All saving throws are reduced by 2 and arcane casters lose two memorized spells and have their casting time increased by 2. After 5 rounds, the target must make a Save vs. Spells at -4 or suffer the same effects a second time.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA506","LOCALS",1) AddSpecialAbility("C0SA506")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.7
SAY ~Unmask
(Divination – Shadow Weave)

Level: 5
Range: 0
Duration: Instant
Casting Time: 5
Area of Effect: 235-ft. radius
Saving Throw: None

When this spell is cast, an area roughly 30 feet in radius around the caster will be affected. All hostile illusion/phantasm spells in this area will be dispelled. This spell only affects one's enemies.

The spells that are affected by this are: Reflected Image, Invisibility, Blur, Mirror Image, Ghost Armor, Invisibility Sphere, Improved Invisibility, Shadow Door, Pixie Dust, Mislead, Project Image, and Mass Invisibility.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA507","LOCALS",1) AddSpecialAbility("C0SA507")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.8
SAY ~Nightshade
(Necromancy – Shadow Weave)

Level: 5
Range: 90 ft.
Duration: Permanent
Casting Time: 4
Area of Effect: 1 creature
Saving Throw: 1/2

When this spell is cast, the target suffers damage equal to 2% of their maximum hit points per level of the caster up to a maximum of 40%. The target may make a Saving Throw vs. Death to take half damage.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA508","LOCALS",1) AddSpecialAbility("C0SA508")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.9
SAY ~Shadow Chain
(Conjuration/Summoning – Shadow Weave)

Level: 5
Range: Visual range of the caster
Duration: Special
Casting Time: 1
Area of Effect: 30 ft. radius
Saving Throw: None

This spell creates several shadowy threads which wraps itself around all enemies in a 30 ft. radius from the center of the caster's targeted location. and pulls them towards the caster. It deals no damage, but targets become disoriented once they arrive and are unable to attack or use spells for 1 round.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA509","LOCALS",1) AddSpecialAbility("C0SA509")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.10
SAY ~Void Blast
(Evocation – Shadow Weave)

Level: 5
Range: 90 ft.
Duration: 1d4 rounds
Casting Time: 2
Area of Effect: 1 creature
Saving Throw: Neg.

With this spell, the shadow adept launches a bolt of energy at a targeted creature. The target takes 2d6 magical damage, and if it fails a Save vs. Spells at -2, is banished to a pocket realm for 1d4 rounds and upon returning takes another 2d6 magical damage and is stunned for 2 rounds.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA510","LOCALS",1) AddSpecialAbility("C0SA510")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.11
SAY ~Shadow Screen
(Abjuration – Shadow Weave)

Level: 5
Range: 0
Duration: 2 hours
Casting Time: 8
Area of Effect: The caster
Saving Throw: None

When this spell is cast, the shadow adept is protected from the next magical attack against <PRO_HIMHER>. The spells from which the shadow adept is protected are Dispel/Remove Magic, Spell Thrust, Secret Word, Breach, Lower Resistance, Pierce Magic, Ruby Ray, Khelben's Warding Whip, Pierce Shield, and Spellstrike. If one of these spells is cast at the shadow adept, this spell activates and absorbs the attack. However, this only works once and this spell is consumed in the process. Otherwise, it will last for its duration.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA511","LOCALS",1) AddSpecialAbility("C0SA511")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 5.12
SAY ~Summon Nighthaunt
(Conjuration/Summoning)

Level: 5
Range: 45 ft.
Duration: 1 turn + 1 round/level
Casting Time: 8
Area of Effect: Special
Saving Throw: None

This spell conjures forth a nighthaunt, an undead monster from the Shadow Plane. Nighthaunts are deadly creatures that emit an aura of desecration, reducing the THAC0 and damage of all nearby living creatures by one point while increasing THAC0 and damage of all undead creatures by one point. Its natural weapon is capable of draining two levels on hit and strikes as a +4 weapon. However, nighthaunts are greatly weakened in natural daylight. From 14th level onwards, two nighthaunts are summoned instead.

The nighthaunt is fully under the control of the caster for the duration of the spell and will follow all of <PRO_HISHER> orders until the duration has expired.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv5","LOCALS",-1) SetGlobal("C0SA512","LOCALS",1) AddSpecialAbility("C0SA512")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.2
SAY ~Shar's Shield
(Abjuration – Shadow Weave)

Level: 6
Range: 0
Duration: 1 round/level
Casting Time: 6
Area of Effect: 5-ft. radius sphere
Saving Throw: None

This spell creates an immobile, faintly shimmering magical sphere around the caster that prevents any 1st-, 2nd-, 3rd-, or 4th-level spell effects from penetrating (i.e., the area of effect of any such spells does not include the area of the Globe of Invulnerability). This includes innate abilities and effects from devices. However, any type of spell can be cast out of the magical sphere, and these pass from the caster of the globe to their subject without affecting the globe. 5th- and higher level spells are not affected by the globe, and magical attacks of 5th-level or higher, such as Spellstrike and Pierce Magic, can bring it down. Additionally, the shadow adept gains 20% magic resistance as long as the globe is up.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA601","LOCALS",1) AddSpecialAbility("C0SA601")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.3
SAY ~Twin Mislead
(Illusion/Phantasm – Shadow Weave)

Level: 6
Range: 0
Duration: 1 round/level
Casting Time: 1
Area of Effect: Special
Saving Throw: None

When this spell is cast, the wizard is affected by an Improved Invisibility spell and is teleported a few feet away from <PRO_HISHER> original position. Meanwhile, an exact image of the caster is created where <PRO_HESHE> used to be, with exactly the same Hit Points as the caster. The image cannot perform any actions at all, such as attacking or casting spells. It can, however, move around and act as a decoy for the invisible wizard. The image will remain under control of the caster until reduced to 0 Hit Points, or until affected by a Dispel Magic or a spell that reveals illusions, such as True Sight.

After 3 rounds have passed, a second decoy is spontaneously created, regardless of whether or not the first has been destroyed.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA602","LOCALS",1) AddSpecialAbility("C0SA602")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.4
SAY ~Protection From Weave-forged Weapons
(Abjuration – Shadow Weave)

Level: 6
Range: 0
Duration: 4 rounds
Casting Time: 1
Area of Effect: The caster
Saving Throw: None 

When the spell is cast, it confers complete invulnerability to all magical weapons created using Weave magic. This includes weapons that are blessed or enchanted. The attacks of powerful monsters are also considered magical weapons. This spell cannot be cast on anyone who is protected from normal weapons as well as anyone protected by Mantle, Improved Mantle, or Absolute Immunity. Due to the nature of this spell, with the short casting time and duration, it is mainly used to buy the shadow adept a few rounds in the thick of combat. This effect lasts for the duration of the spell or until dispelled.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA603","LOCALS",1) AddSpecialAbility("C0SA603")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.5
SAY ~Power Word, Silence
(Conjuration/Summoning – Shadow Weave)

Level: 6
Range: 90 ft.
Duration: 7 rounds
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: None

In using this spell, the shadow adept points at an individual and utters the Power Word. For the next 7 rounds, that creature cannot make any sound. This silence completely foils any spells that require verbal components. The only ways to counter this spell are either a Dispel Magic or a Vocalize spell. There is no Saving Throw and the spell ignores magic resistance.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA604","LOCALS",1) AddSpecialAbility("C0SA604")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.6
SAY ~Black Lightning 
(Invocation/Evocation – Shadow Weave)

Level: 6
Range: 40 ft.
Duration: 3 rounds
Casting Time: 5
Area of Effect: Special 
Saving Throw: 1/2 

When the shadow adept casts Black Lightning, arcs of electrical energy burst from <PRO_HISHER> fingertips. These brilliant arcs of lightning leap at all enemies near the caster, burning them with electrical and fire damage. The lightning causes 1d6 points of damage for every 2 levels of the caster and causes all targets struck to go berserk for 3 rounds. If the target of the lightning saves vs. Spell, only half damage is inflicted and they do not go berserk. Thus, a 12th-level shadow adept will cause 6d6 (half electrical, half fire) damage to a victim (3d6 electrical if the victim makes <PRO_HISHER> Saving Throw vs. Spell).~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA605","LOCALS",1) AddSpecialAbility("C0SA605")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.7
SAY ~Shatter Weave
(Invocation/Evocation – Shadow Weave)

Level: 6
Range: 40 ft.
Duration: Instant
Casting Time: 5
Area of Effect: Special 
Saving Throw: 1/2 

When this spell is cast upon a target creature there will be two major effects. The first is that it will dispel one spell protection of 8th level or lower from the creature. This will always dispel the highest level of spell protection on the target first. If the target has two or more protections tied for the highest level, the choice will be random. The second effect of the spell is that the creature's magic resistance is temporary nullified. The resistance remains lowered for 2 rounds, and this effect cannot be negated in any way. Additionally, mages will take 4d10 magic damage and suffer 50% spell failure for the next 2 rounds. Spells affected by Pierce Magic are Minor Spell Deflection, Minor Spell Turning, Spell Deflection, Spell Turning, Minor Globe of Invulnerability, Spell Immunity, and Globe of Invulnerability. The target's magic resistance, if any, does not affect this spell.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA606","LOCALS",1) AddSpecialAbility("C0SA606")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.8
SAY ~Umbral Blades
(Evocation – Shadow Weave)

Level: 6 
Range: Self
Duration: 1 turn
Casting Time: 9
Area of Effect: Special
Saving Throw: Special

The shadow adept employs this spell to set up a ring of circling, razor sharp blades. These whirl and flash around the caster, providing a bonus of 4 Armor Class against melee weapons and dealing damage to enemies in range every round. Any creature attempting to pass through the blades will suffer 6d8 points of damage and lose 1 point of Strength for 1 turn. Creatures within the area of the barrier when it is invoked are entitled to a Saving Throw vs. Spell to negate the damage. The barrier remains for 1 turn.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA607","LOCALS",1) AddSpecialAbility("C0SA607")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.9
SAY ~Disintegrate
(Alteration – Shadow Weave)

Level: 6
Range: Visual range of the caster
Duration: Instant
Casting Time: 6
Area of Effect: 1 creature
Saving Throw: Neg.

When this spell is cast at another creature, a thin purple ray is shot out. Upon contact with the ray, the creature must make a Saving Throw vs. Spell at -2 or be transformed into dust. This transformation is instantaneous and irreversible. There is also a good chance that this will destroy some if not all of the items that the creature is carrying. If the target survives the process, they still take 6d6 magic damage.

Targets slain by this spell will be raised as a wraith under the caster's allegiance for 5 turns.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA608","LOCALS",1) AddSpecialAbility("C0SA608")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.10
SAY ~Black Rose
(Conjuration/Summoning – Shadow Weave)

Level: 6
Range: Visual range of the caster
Duration: 1 turn
Casting Time: 5
Area of Effect: 1 creature
Saving Throw: 1/2

This spell conjures a thorned, magical rose that wraps itself around the caster's chosen target, dealing 6d6 piercing damage. If the target fails a Saving Throw vs. Spells at -6, they suffer an additional 20% of their maximum hit points as piercing damage and become entangled for 1 turn, receiving a -2 penalty to Armor Class, THAC0 and casting time. Additionally, the target must make another Save vs. Spells every round or suffer an additional 2d6 piercing damage until the rose vanishes.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA609","LOCALS",1) AddSpecialAbility("C0SA609")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.11
SAY ~Negative Energy Burst
(Necromancy – Shadow Weave)

Level: 6
Range: 30 ft.
Duration: 1 turn
Casting Time: 6
Area of Effect: 20 ft. radius
Saving Throw: None

Upon casting this spell, a burst of negative energy engulfs the area targeted by the caster. All enemies within the radius take 6d6 magical damage and suffer a -3 penalty to Armor Class, THAC0 and damage for 1 turn. There is no saving throw against this spell's effects.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA610","LOCALS",1) AddSpecialAbility("C0SA610")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 6.12
SAY ~Devour Dream
(Enchantment/Charm – Shadow Weave)

Level: 6
Range: Touch
Duration: Instant
Casting Time: 2
Area of Effect: 1 creature
Saving Throw: None

This spell may only affect sleeping targets. Upon casting the spell, the shadow adept consumes the target's thoughts, dealing 10d8 magical damage and restoring up to five of the caster's previously cast spells. The target is always woken up after the effects of this spell.

Devour Dream cannot recall 6th-level or greater spells.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv6","LOCALS",-1) SetGlobal("C0SA611","LOCALS",1) AddSpecialAbility("C0SA611")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.2
SAY ~Black Ray of Destruction
(Alteration – Shadow Weave)

Level: 7
Range: 40 ft.
Duration: Instant
Casting Time: 2
Area of Effect: 1 creature
Saving Throw: None

When this spell is cast, it dispels one spell protection of any level affecting the target creature. The spells affected by the Black Ray of Destruction are Minor Spell Turning, Minor Globe of Invulnerability, Spell Immunity, Globe Of Invulnerability, Minor Spell Deflection, Spell Turning, Spell Shield, Spell Deflection, and Spell Trap. This will always remove the highest-level spell protection affecting the target; if more than one same-level protection is active on the target simultaneously, one of them will be randomly chosen and dispelled. Additionally, this spell creates a small dead magic zone around the target, preventing the target from casting spells for 5 rounds. The target's Magic Resistance, if any, does not affect this spell.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA701","LOCALS",1) AddSpecialAbility("C0SA701")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.3
SAY ~Shadowspray
(Conjuration/Summoning – Shadow Weave)

Level: 7
Range: 60 ft.
Duration: Instant
Casting Time: 4
Area of Effect: 70-ft.-long cone 
Saving Throw: Special

When casting this spell, the shadow adept unleashes a wave of shadow fire from <PRO_HISHER> hand. Any creature with fewer than 8 Hit Dice struck by a wave is blinded for 5 rounds, regardless of any other effect. Additionally, the fire is chaotic in nature, and may cause random effects as per the Prismatic Spray spell:

  - Inflicts 20 points of damage; Save vs. Spell for half.
  - Inflicts 40 points of damage; Save vs. Spell for half.
  - Inflicts 80 points of damage; Save vs. Spell for half.
  - Save vs. Poison or die; survivors take 20 points of poison damage.
  - Save vs. Petrification or be turned to stone.
  - Save vs. Wand or be feebleminded.
  - Save vs. Spell or be disintegrated.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA702","LOCALS",1) AddSpecialAbility("C0SA702")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.4
SAY ~Power Word, Stun
(Conjuration/Summoning – Shadow Weave)

Level: 7
Range: Visual range of the caster 
Duration: Special
Casting Time: 1 
Area of Effect: 1 creature 
Saving Throw: None

When a Power Word, Stun spell is uttered, any creature of the mage's choice within visual range is stunned for the duration depending on its current Hit Points: 
 1 to 29 Hit Points: Stunned for 4d4 rounds; 
 30 to 59 Hit Points: Stunned for 2d4 rounds; 
 60 to 89 Hit Points: Stunned for 1d4 rounds; 
 90 or more Hit Points: unaffected.
Note that if a creature is weakened so that its Hit Points are below its usual maximum, the current number of Hit Points is used to determine this spell's effects. This spell ignores magic resistance.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA703","LOCALS",1) AddSpecialAbility("C0SA703")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.5
SAY ~Sword of the Night
(Invocation/Evocation – Shadow Weave)

Level: 7
Range: 0
Duration: 1 round/level
Casting Time: 7
Area of Effect: Special
Saving Throw: None

Upon casting this spell, the shadow adept brings into being a shimmering, sword-like plane of force that leaps into <PRO_HISHER> hands. The sword acts as a +4 weapon in all respects and deals 3d4 points of slashing damage and 2d4 cold damage upon hitting a target. Once the spell is cast, the sword will float in the air completely under the caster's control. This does not prevent the caster from doing any other actions during the spell's duration.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA704","LOCALS",1) AddSpecialAbility("C0SA704")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.6
SAY ~Shadowplague
(Conjuration/Summoning – Shadow Weave)
Level: 7
Range: Long
Duration: 6 rounds
Casting Time: 1 round
Area of Effect: Target, and enemies within 30'
Saving Throw: Special

When the caster utters the spell, he calls forth a swarm of venomous biting and stinging shadow creatures to plague the target. This carpet-like mass swarms over a large area, spreading to all creatures within 30 feet of the target. Invisibility is no protection.

For the duration of the spell, those affected fight with a -2 penalty to attack rolls and armor class. In addition, each round, the victims suffer 2d6 points of damage from bites, have a 100% chance of spell failure, and must make saving throws vs. Death at -2 or run away in fear. If a successful Save vs. breath at -6 is made, the target manages to avoid most of the swarm, reducing damage from bites by half and completely negating the spell failure penalty. This spell is not affected by Magic Resistance.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA705","LOCALS",1) AddSpecialAbility("C0SA705")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.7
SAY ~Greater Drain Vitality
(Necromancy – Shadow Weave)

Level: 7
Range: Touch
Duration: 1 turn
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: None

This spell allows the shadow adept to drain eight points of Constitution from a single target, increasing the caster's own for 1 turn. Drain Vitality (and its variants) does not cost Constitution as other spells of the Shadow Weave and may not affect the same target more than once per turn.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA706","LOCALS",1) AddSpecialAbility("C0SA706")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.8
SAY ~Vengeful Shade
(Necromancy – Shadow Weave)

Level: 7
Range: Touch
Duration: 1 turn
Casting Time: 9
Area of Effect: 1 creature
Saving Throw: None

This powerful and dangerous spell has the power to temporarily revive dead allies. For 1 turn, the target ally is resurrected with full hit points and dramatically increased power - the resurrected ally is hasted for the duration, Strength and Dexterity are set to 25, base AC is set to -6 and target gains immunity to all mind-affecting spells. The target deals maximum damage for the duration of the spell and their casting speed is increased by 4. However, this spell does not truly resurrect the target - once the spell has expired, the target dies again, regardless of their current hit points.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA707","LOCALS",1) AddSpecialAbility("C0SA707")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.9
SAY ~Nightmare
(Enchantment/Charm – Shadow Weave)

Level: 7
Range: Visual range of the caster
Duration: 5 rounds
Casting Time: 1 
Area of Effect: 1 creature
Saving Throw: Neg.

Nightmare is both a deadly weapon and a horrific torture device. When the shadow adept casts this spell, <PRO_HESHE> causes one creature to fall into a deep sleep and become tormented with terrible nightmares. For each round that the target remains asleep, they must make a Save vs. Spell at -4 to wake up from the nightmare. If the save is failed, they must make a Save vs. Death at -2 or lose 10% of their hit points. Once 5 rounds have passed, the victim awakens from their nightmare without needing a save.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA708","LOCALS",1) AddSpecialAbility("C0SA708")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.10
SAY ~Possess
(Enchantment/Charm – Shadow Weave)

Level: 7
Range: Visual range of the caster
Duration: 10 turns
Casting Time: 1 round
Area of Effect: 1 creature
Saving Throw: Neg.

When the shadow adept casts Possess, <PRO_HESHE> attempts to forcibly take control of one creature within <PRO_HISHER> visual range. The target must make as Saving Throw vs. Spells at -7 or become directly controlled by the caster. The shadow adept loses control of <PRO_HISHER> body but may see through the eyes of <PRO_HISHER> target and use spells and abilities available to them. Additionally, the possessed target's Strength, Dexterity and Constitution are increased to 25 while they are possessed. Possess may not be dispelled and the target only regains control over their own body once the duration has ended or if the caster chooses to relinquish control of <PRO_HISHER> own volition.

Once the duration expires, the vertigo and shock of suddenly regaining control causes the target to suffer 5d10 non-lethal damage and fall unconscious for 5 rounds (no save).~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA709","LOCALS",1) AddSpecialAbility("C0SA709")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.11
SAY ~Malefic Bomb
(Invocation/Evocation – Shadow Weave)

Level: 7
Range: 50 ft.
Duration: Permanent
Casting Time: 6
Area of Effect: 10 ft. radius
Saving Throw: 1/2

The shadow adept launches a mass of volatile shadowstuff towards a target location, dealing 8d6 magic damage in a 20 ft. radius (Save vs. Death at -2 for half). All enemies that fail the save will, after 1 round, spontaneously explode with another Malefic Bomb dealing 4d6 damage in a 20 ft. radius (Save vs. Death for half), afflicting all enemies that fail the save with another Malefic Bomb dealing 2d6 damage in a 20 ft. radius.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA710","LOCALS",1) AddSpecialAbility("C0SA710")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.12
SAY ~Shadow Gate
(Conjuration – Shadow Weave)

Level: 7
Range: Visual range of the caster
Duration: 8 rounds
Casting Time: 1 round
Area of Effect: Special
Saving Throw: None

This spell conjures a one-way portal linked to the Plane of Shadow at the caster's targeted location for 8 rounds. For each round that the portal is active, a creature of the Plane of Shadow has a chance of emerging. These creatures are allied with the caster. There is a 40% chance of spawning a Shadow Fiend, a 40% chance of spawning a Wraith, a 10% chance of spawning a Devil Shade and a 5% chance of spawning a Nightwalker each turn. The Shadow Gate may be targeted and destroyed by enemies, though it is immune to elemental damage as well as weapons of +1 enchantment and below.

Creatures summoned by this spell remain for 1 turn.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA711","LOCALS",1) AddSpecialAbility("C0SA711")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 7.13
SAY ~Nightfall
(Evocation – Shadow Weave) 

Level: 7
Range: Visual range of the caster 
Duration: 6 rounds
Casting Time: 8
Area of Effect: 30-ft. radius
Saving Throw: None

This spell creates a rainfall of shadowstuff on the target location for six rounds. All creatures suffer 2d6 magical damage for every round that they remain within the rainfall and suffer a cumulative penalty of -1 to Armor Class and all Saving Throws for one turn. However, shadow adepts and undead creatures standing in the rainfall are healed for 2d6 hit points per round instead.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv7","LOCALS",-1) SetGlobal("C0SA712","LOCALS",1) AddSpecialAbility("C0SA712")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.2
SAY ~Negastorm
(Necromancy – Shadow Weave) 

Level: 8
Range: Visual range of the caster 
Duration: 2 rounds
Casting Time: 8
Area of Effect: 30-ft. radius
Saving Throw: 1/2

This spell summons a shower of negative energy upon a targeted location, inflicting 1d4 cold damage per level plus 20% of their maximum hit points in damage (+2% per caster level after 16th level) over two rounds as well as draining one level and one point of strength for each instance of damage dealt. Affected creatures are allowed a Saving Throw vs. Spell to avoid the cold damage and loss of levels (but not strength). Effects last for 1 turn.

The negastorm lasts for 2 rounds and does not affect allies. If an enemy enters the negastorm after the first round, they only suffer half of the effects.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA801","LOCALS",1) AddSpecialAbility("C0SA801")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.3
SAY ~Annulment
(Abjuration – Shadow Weave)

Level: 8
Range: Touch
Duration: 1 round/level
Casting Time: 8
Area of Effect: 1 creature
Saving Throw: None

When the spell is cast, it confers 75% immunity against all energy attacks - such as fire, cold, acid, magic, and electricity, whether from magical or non-magical sources - such as spells, weapons, wands, breath weapons, etc. The target also becomes immune to all spells of 6th level and below, both beneficial and harmful, cast by others. This excludes any physical attacks and spell-created weapons, such as Enchanted Weapon and Spiritual Hammer. In other words, any physical damage, such as piercing, crushing, or slashing will get through. This effect lasts for the duration of the spell or until dispelled.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA802","LOCALS",1) AddSpecialAbility("C0SA802")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.4
SAY ~Shadow Prison
(Conjuration/Summoning – Shadow Weave)

Level: 8
Range: Touch 
Duration: Special
Casting Time: 3
Area of Effect: 1 creature 
Saving Throw: None

An extradimensional space is brought into being upon utterance of a Shadow Prison spell. The subject and all enemies within a 10 ft radius vanish into the shifting labyrinth in the Shadow Plane for a period of time that is totally dependent upon its Intelligence.

Intelligence of Target    -    Time trapped in maze
         under 3                -            2d4 turns
         3 to 5                   -            1d4 turns
         6 to 8                   -            5d4 rounds
         9 to 11                 -            4d4 rounds
         12 to 14               -            3d4 rounds
         15 to 17               -            2d4 rounds
         18 and up            -           1d4 rounds

Note that if the 9th-level spell Freedom is cast in the area where a creature is mazed, it will effectively bring <PRO_HIMHER> back to this plane, ending the spell prematurely. Note that a mazed creature is not freed through Dispel Magic.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA803","LOCALS",1) AddSpecialAbility("C0SA803")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.5
SAY ~Power Word, Blind
(Conjuration/Summoning – Shadow Weave)

Level: 8
Range: Visual range of the caster
Duration: 6 rounds
Casting Time: 1
Area of Effect: 10-ft. radius
Saving Throw: None

When a Power Word, Blind spell is cast, one or more creatures within the area of effect become sightless. The spellcaster selects one creature as the target center, and the effect spreads outward from the center, affecting all within a 10-ft. radius. This lasts for 6 rounds or until dispelled. All of the effects of blindness apply to the victims, such as a penalty to hit and to AC. The visibility range of the afflicted character is also decreased. This spell is not effected by magic resistance.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA804","LOCALS",1) AddSpecialAbility("C0SA804")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.6
SAY ~Shadow Shield
(Abjuration – Shadow Weave)

Level: 8
Range: 0
Duration: 2 turns
Casting Time: 8
Area of Effect: The caster
Saving Throw: None

This spell shrouds the shadow adept in a cloak of shadow that protects <PRO_HIMHER> with the following effects: +5 bonus to AC, immunity to magic damage, 20% magic and physical resistance. This spell, unlike other Shadow Weave spells, does not drain the caster's life force and will in fact temporarily protect the shadow adept from loss of Constitution while it is active.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA805","LOCALS",1) AddSpecialAbility("C0SA805")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.7
SAY ~Blackfire Fury
(Invocation/Evocation – Shadow Weave)

Level: 8
Range: 0
Duration: 5 turns
Casting Time: 8
Area of Effect: The caster
Saving Throw: 1/2

The shadow adept conjures a rift from the Shadow Plane beneath the target's feet, which unleashes shadow fire after a short delay dealing 10d10 fire damage (Save vs. Spells at at -4 for half damage). This damage is not mitigated by fire resistance and ignores magic resistance.

If the target is slain by this spell, it is burned to ash completely and its remaining consciousness becomes a devil shade under the caster's allegiance for 5 turns before becoming assimilated into the Shadow Plane.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA806","LOCALS",1) AddSpecialAbility("C0SA806")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.8
SAY ~Shar's Mantle
(Abjuration – Shadow Weave)

Level: 8
Range: 0
Duration: 1 round/4 levels
Casting Time: 6
Area of Effect: The caster
Saving Throw: Neg.

This spell surrounds the shadow adept with a barrier of dark energy. Missiles are completely deflected and weapons of +3 enchantment or below are unable to penetrate the darkness. Additionally, attackers within a 5-ft. radius will suffer 10% of their maximum hit points in damage, transferring the same amount to the caster, as well as losing one level permanently if they fail a Save vs. Death at -2.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA807","LOCALS",1) AddSpecialAbility("C0SA807")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.9
SAY ~Shadow's Refuge
(Abjuration – Shadow Weave)

Level: 8
Range: 0
Duration: 1 turn
Casting Time: 3
Area of Effect: The caster
Saving Throw: None

When a shadow adept casts Shadow's Refuge, <PRO_HESHE> opens a gate to a safe (in relative terms) pocket area in the Plane of Shadow, where time passes more slowly and gives <PRO_HIMHER> time to rest and recuperate away from the present battle. For one turn, the shadow adept is safe from combat and <PRO_HISHER> hit points are restored to full, and <PRO_HESHE> regains two arcane spells of each spell level of 7th level and below when <PRO_HESHE> returns. In addition, as the caster will be resting for a long period of time, all effects whether beneficial or otherwise will be removed when they return. The shadow adept may choose to return from the refuge before its duration has expired, but <PRO_HESHE> will only get partial benefits.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA808","LOCALS",1) AddSpecialAbility("C0SA808")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.10
SAY ~Dark Premonition
(Divination – Shadow Weave)

Level: 8
Range: Self
Duration: 4 rounds
Casting Time: 1
Area of Effect: Caster
Saving Throw: None

This spell grants the caster with a brief and short-sighted degree of prescience, enough to predict events in the immediate future and react to them in advance. For 4 rounds, the shadow adept gains a bonus of 20 to Armor Class, a +20 bonus to hit, +20 to all saves and immunity to backstabs. Due to this spell's short casting time and duration, it is mainly used to buy the shadow adept a few rounds in the thick of combat.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA809","LOCALS",1) AddSpecialAbility("C0SA809")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.11
SAY ~Dark Passage
(Evocation – Shadow Weave)

Level: 8
Range: Party
Duration: Special
Casting Time: 1 round
Area of Effect: 20-ft. radius
Saving Throw: None

This powerful but dangerous spell temporarily turns the caster into a gateway for the energies of the Shadow Weave, which <PRO_HESHE> may control and bestow upon <PRO_HISHER> allies within 20' in range for as long as <PRO_HESHE> can maintain it. For an indefinite amount of time, the shadow adept is unable to make any actions as <PRO_HESHE> channels power into <PRO_HISHER> party, providing a +4 bonus to all attributes, +6 to Armor Class, +4 to to-hit and damage modifiers, +50% magic resistance, +50% resistance to elemental damage and immunity to level drain. However, for each round the link is maintained, the caster loses 10% of <PRO_HISHER> hit points (Save vs. Death at -4 to avoid) and <PRO_HESHE> is completely vulnerable to attack unless <PRO_HESHE> breaks the connection. Additionally, if <PRO_HESHE> ends the channel, the backlash causes <PRO_HIMHER> to become stunned for 2 rounds unless a Save vs. Death at -2 is made.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA810","LOCALS",1) AddSpecialAbility("C0SA810")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.12
SAY ~Invoke Reflection
(Illusion/Phantasm – Shadow Weave) 

Level: 8
Range: Visual range of the caster
Duration: 2 turns
Casting Time: 9
Area of Effect: Special
Saving Throw: Special

A duplicate of the target is created with this spell. The duplicate is almost identical to the target, making it a very powerful ally. It is created at 60% of the target's level and has all the spells and abilities that the target would have at that level. It also has 60% of the target's Hit Points and is fully under the caster's control. Enemies can make a Saving Throw vs. Spells at -3 to avoid the spell's effect.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA811","LOCALS",1) AddSpecialAbility("C0SA811")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 8.13
SAY ~Merciless Blizzard
(Invocation/Evocation – Shadow Weave) 

Level: 8
Range: Visual range of the caster
Duration: 1 turn 
Casting Time: 8
Area of Effect: 30-ft. radius cloud 
Saving Throw: 1/2

This spell creates a vicious blizzard within a 30 ft. radius. Any in the area of the spell must leave the blizzard immediately or suffer 10d4 cold damage per round and become slowed for two rounds. Targets who remain within the blizzard suffer a cumulative -20% penalty to cold resistance for one turn. Additionally, all creatures must make a Save vs. Spells at -2 each round or be paralyzed for that round. This spell is not affected by Magic Resistance. Creatures that are immune to cold are unaffected by the blizzard.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv8","LOCALS",-1) SetGlobal("C0SA812","LOCALS",1) AddSpecialAbility("C0SA812")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 9.2
SAY ~Darkbolt
(Invocation/Evocation – Shadow Weave) 

Level: 9
Range: Visual range of the caster
Duration: 5 rounds
Casting Time: 0
Area of Effect: 1 creature
Saving Throw: Special 

This spell fires a bolt of necrotic energy which rends the soul of its target. Targets who fail a Save vs. Death at -2 have their maximum hit points cut in half for five rounds. Even if the target makes its save, they take 5d6+10 magic damage and their magic resistance, if any, is nullified for five rounds. If the bolt kills its target, the caster temporarily gains a 50% bonus to their maximum hit points for 1 turn and regains two spells of 8th level or below. This spell is not affected by Magic Resistance.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv9","LOCALS",-1) SetGlobal("C0SA901","LOCALS",1) AddSpecialAbility("C0SA901")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 9.3
SAY ~Umbral Stasis
(Alteration – Shadow Weave)

Level: 9
Range: 0
Duration: Special
Casting Time: 9
Area of Effect: Special
Saving Throw: None 

This powerful spell causes the shadow adept to partially shift to the Plane of Shadow at the exact same point as he was, creating an effect identical to the Time Stop spell. The caster may move freely for 3 rounds in terms of time in the Plane of Shadow while time stands still in the Prime Material Plane. Additionally, the shadow adept's casting speed is increased by 4 and <PRO_HISHER> movement rate is doubled for the duration of the spell.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv9","LOCALS",-1) SetGlobal("C0SA902","LOCALS",1) AddSpecialAbility("C0SA902")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 9.4
SAY ~Nightsinger's Tithe
(Conjuration/Summoning – Shadow Weave) 

Level: 9
Range: Visual range of the caster 
Duration: Instant
Casting Time: 1 
Area of Effect: 1 creature 
Saving Throw: None

When Nightsinger's Tithe is uttered, one creature within the spell range is slain. The target must have 60 or fewer current Hit Points, otherwise the spell has no effect. There is no Saving Throw. Creatures slain by this spell have their souls sent to the Plane of Shadow as a sacrifice to Shar. There is an 50% chance that killing a target with this spell will permanently bestow 1 bonus hit point to the caster. Once 50 enemies have been slain with this spell, the shadow adept permanently gains +2 to Constitution, +1 to all saves and -1 casting time, and further castings of this spell will no longer grant hit points.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv9","LOCALS",-1) SetGlobal("C0SA903","LOCALS",1) AddSpecialAbility("C0SA903")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 9.5
SAY ~Enervation
(Necromancy – Shadow Weave) 

Level: 9
Range: Touch
Duration: Permanent
Casting Time: 3
Area of Effect: 1 creature
Saving Throw: None 

The casting of this spell opens a channel between the caster's plane and the Negative Energy Plane. The caster of the spell acts as a conduit between the two planes, sucking life from a victim and transferring it to the Negative Energy Plane, draining the target of two levels of experience every round for four rounds. A Saving Throw vs. Death at -4 can be made to avoid losing levels after the first round. The target of this spell loses levels, Hit Dice, Hit Points, and abilities permanently. These levels can only be restored by a priest's Restoration spell. Additionally, the caster is restored of 1-4 lost spells of 8th level or below for every instance of level loss of the target.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv9","LOCALS",-1) SetGlobal("C0SA904","LOCALS",1) AddSpecialAbility("C0SA904")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 9.6
SAY ~Black Blade of Disaster
(Invocation/Evocation – Shadow Weave) 

Level: 9
Range: 0
Duration: 18 rounds
Casting Time: 4
Area of Effect: Special
Saving Throw: None 

This spell enables the caster to create a black, blade-shaped planar rift about three feet long. It jumps into the caster's hand and is used as a normal sword, remaining there for the duration of the spell. The caster is considered to be proficient to the point of Grand Mastery in this weapon. The sword acts as a +5 weapon and deals 2-24 damage to its victims. Also, every time it hits a target, the victim must make a Save vs. Death at +4 or be disintegrated. There is also a 10% chance with every hit that the sword drains 4 levels from the target and heals the wielder 20 Hit Points.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv9","LOCALS",-1) SetGlobal("C0SA905","LOCALS",1) AddSpecialAbility("C0SA905")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 9.7
SAY ~Weird
(Illusion/Phantasm – Shadow Weave) 

Level: 9
Range: 0
Duration: Instant
Casting Time: 8
Area of Effect: Special
Saving Throw: Special

You create a phantasmal image of the most fearsome creature imaginable to the subject simply by forming the fears of the subject’s subconscious mind into something that its conscious mind can visualize: this most horrible beast. Only the affected creatures see the phantasmal creatures attacking them, though you see the attackers as shadowy shapes. The target first gets a Save vs. Spells at -4 to recognize the image as unreal. If that save fails, the phantasm touches the subject, and the subject must succeed on a Save vs. Death at -2 or die from fear. If a subject succeeds, it still takes 3d6 points of damage and is stunned for 1 round. The subject also takes 1d4 points of temporary Strength damage.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv9","LOCALS",-1) SetGlobal("C0SA906","LOCALS",1) AddSpecialAbility("C0SA906")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 9.8
SAY ~Death Mark
(Necromancy – Shadow Weave) 

Level: 9
Range: 0
Duration: Special
Casting Time: 9
Area of Effect: 1 creature
Saving Throw: Special 

This horrific spell marks a specific target with a curse that dooms them to an inevitable end. The victim suffers 15% of their maximum hit points in damage on the first round with no save. On the next round, they must make another Saving Throw vs. Death at -8 or suffer the same amount of damage, then on the next round, make another saving throw at -7, and so on until a save modifier of zero. The curse remains indefinitely until the target is either killed, the curse is dispelled or resisted, or a successful save is made.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv9","LOCALS",-1) SetGlobal("C0SA907","LOCALS",1) AddSpecialAbility("C0SA907")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 9.9
SAY ~Oblivion Pull
(Abjuration – Shadow Weave)

Level: 9
Range: 30 ft.
Duration: 3 rounds
Casting Time: 9
Area of Effect: 1 creature and any creature within 7.5 ft.
Saving Throw: Special

When Oblivion Pull is cast, the shadow adept launches a tiny, fast-moving projectile towards a target which opens a portal using the target's body as a catalyst. When this happens, the portal pulls it and all other creatures within a 7.5 ft. radius into it and sends them to a small pocket in the Plane of Shadow where they are trapped indefinitely. The victim remains there unless the spell "Freedom" is cast. If a Freedom spell is cast in the area where the creature was imprisoned, then <PRO_HESHE> will reappear exactly where <PRO_HESHE> was last standing. Dispel Magic will not free creatures trapped in this manner. There is no Saving Throw against imprisonment for the target, but creatures within a 5 ft. radius may make a Save vs. Spells at -6 to resist being pulled into the portal.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv9","LOCALS",-1) SetGlobal("C0SA908","LOCALS",1) AddSpecialAbility("C0SA908")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ 9.10
SAY ~Fiery Pandemonium
(Invocation/Evocation – Shadow Weave)

Level: 9
Range: 270 ft.
Duration: 6 rounds
Casting Time: 9
Area of Effect: 30-ft. radius
Saving Throw: None

When the caster utters the words to this powerful spell, <PRO_HESHE> calls upon powerful forces indeed. These forces bring forth a storm of shadow fire, dealing 6d10 fire and magical damage per round with no Saving Throw. Additionally, anyone within the storm must make a Saving Throw vs. Death each round or be petrified permanently. If a statue created by this spell is subjected to attacks of any sort, it will shatter into tiny pieces, making it impossible for the creature to be returned to flesh. The caster is well advised to be careful in <PRO_HISHER> use of this spell. This spell is not affected by Magic Resistance. Creatures immune to fire are unaffected.~
++ ~Learn spell.~ DO ~IncrementGlobal("C0SALv9","LOCALS",-1) SetGlobal("C0SA909","LOCALS",1) AddSpecialAbility("C0SA909")~ + NEXT
++ ~Return to spell selection.~ + learn
END

IF ~~ NEXT
SAY ~You concentrate on your connection to the Shadow Weave and bring the incantations into focus...~
= ~You copy the spell to your spellbook.~ [GAM_44]
IF ~OR(9)
!Global("C0SALv1","LOCALS",0)
!Global("C0SALv2","LOCALS",0)
!Global("C0SALv3","LOCALS",0)
!Global("C0SALv4","LOCALS",0)
!Global("C0SALv5","LOCALS",0)
!Global("C0SALv6","LOCALS",0)
!Global("C0SALv7","LOCALS",0)
!Global("C0SALv8","LOCALS",0)
!Global("C0SALv9","LOCALS",0)~ DO ~StartCutsceneMode()
StartDialogOverride("c0satalk",Myself)~ EXIT
IF ~Global("C0SAFirstMemory","LOCALS",0)
Global("C0SALv1","LOCALS",0)
Global("C0SALv2","LOCALS",0)
Global("C0SALv3","LOCALS",0)
Global("C0SALv4","LOCALS",0)
Global("C0SALv5","LOCALS",0)
Global("C0SALv6","LOCALS",0)
Global("C0SALv7","LOCALS",0)
Global("C0SALv8","LOCALS",0)
Global("C0SALv9","LOCALS",0)~ DO ~SetGlobal("C0SAFirstMemory","LOCALS",1) ClearAllActions()~ EXIT
IF ~!Global("C0SAFirstMemory","LOCALS",0)
Global("C0SALv1","LOCALS",0)
Global("C0SALv2","LOCALS",0)
Global("C0SALv3","LOCALS",0)
Global("C0SALv4","LOCALS",0)
Global("C0SALv5","LOCALS",0)
Global("C0SALv6","LOCALS",0)
Global("C0SALv7","LOCALS",0)
Global("C0SALv8","LOCALS",0)
Global("C0SALv9","LOCALS",0)~ DO ~ClearAllActions()~ EXIT
END

IF ~Global("C0SABOOK","LOCALS",1)~ CHEATER
SAY ~You have read the Shadow Tome of Shar and already have learned all of the Shadow Weave's secrets. Have fun cheater.~
IF ~~ DO ~ClearAllActions()~ EXIT
END