BEGIN C0SASCR1

IF ~OR(12)
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
!HaveKnownSpellRES("c0sa112")
!Class(Myself,SORCERER)~ EXTRA1
SAY ~Reading this scroll allows you to learn one extra 1st level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv1","LOCALS",1) DestroyItem("c0sascr1") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~HaveKnownSpellRES("c0sa101")
HaveKnownSpellRES("c0sa102")
HaveKnownSpellRES("c0sa103")
HaveKnownSpellRES("c0sa104")
HaveKnownSpellRES("c0sa105")
HaveKnownSpellRES("c0sa106")
HaveKnownSpellRES("c0sa107")
HaveKnownSpellRES("c0sa108")
HaveKnownSpellRES("c0sa109")
HaveKnownSpellRES("c0sa110")
HaveKnownSpellRES("c0sa111")
HaveKnownSpellRES("c0sa112")~ ALLEXTRA
SAY ~You have already learned all spells of this level.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR2

IF WEIGHT #-1 ~OR(13)
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
!HaveKnownSpellRES("c0sa213")
!Class(Myself,SORCERER)
OR(2)
ClassLevelGT(Myself,WIZARD,2)
ClassLevelGT(Myself,ROGUE,3)~ EXTRA2
SAY ~Reading this scroll allows you to learn one extra 2nd level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv2","LOCALS",1) DestroyItem("c0sascr2") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~HaveKnownSpellRES("c0sa201")
HaveKnownSpellRES("c0sa202")
HaveKnownSpellRES("c0sa203")
HaveKnownSpellRES("c0sa204")
HaveKnownSpellRES("c0sa205")
HaveKnownSpellRES("c0sa206")
HaveKnownSpellRES("c0sa207")
HaveKnownSpellRES("c0sa208")
HaveKnownSpellRES("c0sa209")
HaveKnownSpellRES("c0sa210")
HaveKnownSpellRES("c0sa211")
HaveKnownSpellRES("c0sa212")
HaveKnownSpellRES("c0sa213")~ ALLEXTRA
SAY ~You have already learned all spells of this level.~ [C0BLANK]
IF ~~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR3

IF WEIGHT #-1 ~OR(12)
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
!HaveKnownSpellRES("c0sa312")
!Class(Myself,SORCERER)
OR(2)
ClassLevelGT(Myself,WIZARD,4)
ClassLevelGT(Myself,ROGUE,6)~ EXTRA3
SAY ~Reading this scroll allows you to learn one extra 3rd level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv3","LOCALS",1) DestroyItem("c0sascr3") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~HaveKnownSpellRES("c0sa301")
HaveKnownSpellRES("c0sa302")
HaveKnownSpellRES("c0sa303")
HaveKnownSpellRES("c0sa304")
HaveKnownSpellRES("c0sa305")
HaveKnownSpellRES("c0sa306")
HaveKnownSpellRES("c0sa307")
HaveKnownSpellRES("c0sa308")
HaveKnownSpellRES("c0sa309")
HaveKnownSpellRES("c0sa310")
HaveKnownSpellRES("c0sa311")
HaveKnownSpellRES("c0sa312")~ ALLEXTRA
SAY ~You have already learned all spells of this level.~ [C0BLANK]
IF ~~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR4

IF WEIGHT #-1 ~OR(13)
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
!HaveKnownSpellRES("c0sa413")
!Class(Myself,SORCERER)
OR(2)
ClassLevelGT(Myself,WIZARD,6)
ClassLevelGT(Myself,ROGUE,9)~ EXTRA4
SAY ~Reading this scroll allows you to learn one extra 4th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv4","LOCALS",1) DestroyItem("c0sascr4") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~HaveKnownSpellRES("c0sa401")
HaveKnownSpellRES("c0sa402")
HaveKnownSpellRES("c0sa403")
HaveKnownSpellRES("c0sa404")
HaveKnownSpellRES("c0sa405")
HaveKnownSpellRES("c0sa406")
HaveKnownSpellRES("c0sa407")
HaveKnownSpellRES("c0sa408")
HaveKnownSpellRES("c0sa409")
HaveKnownSpellRES("c0sa410")
HaveKnownSpellRES("c0sa411")
HaveKnownSpellRES("c0sa412")
HaveKnownSpellRES("c0sa413")~ ALLEXTRA
SAY ~You have already learned all spells of this level.~ [C0BLANK]
IF ~~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR5

IF WEIGHT #-1 ~OR(12)
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
!HaveKnownSpellRES("c0sa512")
!Class(Myself,SORCERER)
OR(2)
ClassLevelGT(Myself,WIZARD,8)
ClassLevelGT(Myself,ROGUE,12)~ EXTRA5
SAY ~Reading this scroll allows you to learn one extra 5th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv5","LOCALS",1) DestroyItem("c0sascr5") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~HaveKnownSpellRES("c0sa501")
HaveKnownSpellRES("c0sa502")
HaveKnownSpellRES("c0sa503")
HaveKnownSpellRES("c0sa504")
HaveKnownSpellRES("c0sa505")
HaveKnownSpellRES("c0sa506")
HaveKnownSpellRES("c0sa507")
HaveKnownSpellRES("c0sa508")
HaveKnownSpellRES("c0sa509")
HaveKnownSpellRES("c0sa510")
HaveKnownSpellRES("c0sa511")
HaveKnownSpellRES("c0sa512")~ ALLEXTRA
SAY ~You have already learned all spells of this level.~ [C0BLANK]
IF ~~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR6

IF WEIGHT #-1 ~OR(11)
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
!HaveKnownSpellRES("c0sa611")
!Class(Myself,SORCERER)
OR(2)
ClassLevelGT(Myself,WIZARD,11)
ClassLevelGT(Myself,ROGUE,15)~ EXTRA6
SAY ~Reading this scroll allows you to learn one extra 6th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv6","LOCALS",1) DestroyItem("c0sascr6") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~HaveKnownSpellRES("c0sa601")
HaveKnownSpellRES("c0sa602")
HaveKnownSpellRES("c0sa603")
HaveKnownSpellRES("c0sa604")
HaveKnownSpellRES("c0sa605")
HaveKnownSpellRES("c0sa606")
HaveKnownSpellRES("c0sa607")
HaveKnownSpellRES("c0sa608")
HaveKnownSpellRES("c0sa609")
HaveKnownSpellRES("c0sa610")
HaveKnownSpellRES("c0sa611")~ ALLEXTRA
SAY ~You have already learned all spells of this level.~ [C0BLANK]
IF ~~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR7

IF ~OR(12)
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
!HaveKnownSpellRES("c0sa712")
!Class(Myself,SORCERER)
ClassLevelGT(Myself,WIZARD,13)~ EXTRA7
SAY ~Reading this scroll allows you to learn one extra 7th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv7","LOCALS",1) DestroyItem("c0sascr7") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~HaveKnownSpellRES("c0sa701")
HaveKnownSpellRES("c0sa702")
HaveKnownSpellRES("c0sa703")
HaveKnownSpellRES("c0sa704")
HaveKnownSpellRES("c0sa705")
HaveKnownSpellRES("c0sa706")
HaveKnownSpellRES("c0sa707")
HaveKnownSpellRES("c0sa708")
HaveKnownSpellRES("c0sa709")
HaveKnownSpellRES("c0sa710")
HaveKnownSpellRES("c0sa711")
HaveKnownSpellRES("c0sa712")~ ALLEXTRA
SAY ~You have already learned all spells of this level.~ [C0BLANK]
IF ~~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR8

IF ~OR(12)
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
!HaveKnownSpellRES("c0sa812")
!Class(Myself,SORCERER)
ClassLevelGT(Myself,WIZARD,15)~ EXTRA8
SAY ~Reading this scroll allows you to learn one extra 8th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv8","LOCALS",1) DestroyItem("c0sascr8") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~HaveKnownSpellRES("c0sa801")
HaveKnownSpellRES("c0sa802")
HaveKnownSpellRES("c0sa803")
HaveKnownSpellRES("c0sa804")
HaveKnownSpellRES("c0sa805")
HaveKnownSpellRES("c0sa806")
HaveKnownSpellRES("c0sa807")
HaveKnownSpellRES("c0sa808")
HaveKnownSpellRES("c0sa809")
HaveKnownSpellRES("c0sa810")
HaveKnownSpellRES("c0sa811")
HaveKnownSpellRES("c0sa812")~ ALLEXTRA
SAY ~You have already learned all spells of this level.~ [C0BLANK]
IF ~~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR9

IF ~OR(9)
!HaveKnownSpellRES("c0sa901")
!HaveKnownSpellRES("c0sa902")
!HaveKnownSpellRES("c0sa903")
!HaveKnownSpellRES("c0sa904")
!HaveKnownSpellRES("c0sa905")
!HaveKnownSpellRES("c0sa906")
!HaveKnownSpellRES("c0sa907")
!HaveKnownSpellRES("c0sa908")
!HaveKnownSpellRES("c0sa909")
!Class(Myself,SORCERER)
ClassLevelGT(Myself,WIZARD,17)~ EXTRA9
SAY ~Reading this scroll allows you to learn one extra 9th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv9","LOCALS",1) DestroyItem("c0sascr9") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~HaveKnownSpellRES("c0sa901")
HaveKnownSpellRES("c0sa902")
HaveKnownSpellRES("c0sa903")
HaveKnownSpellRES("c0sa904")
HaveKnownSpellRES("c0sa905")
HaveKnownSpellRES("c0sa906")
HaveKnownSpellRES("c0sa907")
HaveKnownSpellRES("c0sa908")
HaveKnownSpellRES("c0sa909")~ ALLEXTRA
SAY ~You have already learned all spells of this level.~ [C0BLANK]
IF ~~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

