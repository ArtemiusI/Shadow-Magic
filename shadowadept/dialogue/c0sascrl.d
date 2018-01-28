BEGIN C0SASCR1

IF ~!Class(Myself,SORCERER)~ EXTRA1
SAY ~Reading this scroll allows you to learn one extra 1st level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv1","LOCALS",1) DestroyItem("c0sascr1") StartDialogOverride("c0satalk",Myself)~ EXIT
END

BEGIN C0SASCR2

IF WEIGHT #-1 ~!Class(Myself,SORCERER)
OR(2)
ClassLevelGT(Myself,WIZARD,2)
ClassLevelGT(Myself,ROGUE,3)~ EXTRA2
SAY ~Reading this scroll allows you to learn one extra 2nd level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv2","LOCALS",1) DestroyItem("c0sascr2") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR3

IF WEIGHT #-1 ~!Class(Myself,SORCERER)
OR(2)
ClassLevelGT(Myself,WIZARD,4)
ClassLevelGT(Myself,ROGUE,6)~ EXTRA3
SAY ~Reading this scroll allows you to learn one extra 3rd level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv3","LOCALS",1) DestroyItem("c0sascr3") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR4

IF WEIGHT #-1 ~!Class(Myself,SORCERER)
OR(2)
ClassLevelGT(Myself,WIZARD,6)
ClassLevelGT(Myself,ROGUE,9)~ EXTRA4
SAY ~Reading this scroll allows you to learn one extra 4th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv4","LOCALS",1) DestroyItem("c0sascr4") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR5

IF WEIGHT #-1 ~!Class(Myself,SORCERER)
OR(2)
ClassLevelGT(Myself,WIZARD,8)
ClassLevelGT(Myself,ROGUE,12)~ EXTRA5
SAY ~Reading this scroll allows you to learn one extra 5th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv5","LOCALS",1) DestroyItem("c0sascr5") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR6

IF WEIGHT #-1 ~!Class(Myself,SORCERER)
OR(2)
ClassLevelGT(Myself,WIZARD,11)
ClassLevelGT(Myself,ROGUE,15)~ EXTRA6
SAY ~Reading this scroll allows you to learn one extra 6th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv6","LOCALS",1) DestroyItem("c0sascr6") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR7

IF ~!Class(Myself,SORCERER)
ClassLevelGT(Myself,WIZARD,13)~ EXTRA7
SAY ~Reading this scroll allows you to learn one extra 7th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv7","LOCALS",1) DestroyItem("c0sascr7") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR8

IF ~!Class(Myself,SORCERER)
ClassLevelGT(Myself,WIZARD,15)~ EXTRA8
SAY ~Reading this scroll allows you to learn one extra 8th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv8","LOCALS",1) DestroyItem("c0sascr8") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

BEGIN C0SASCR9

IF ~!Class(Myself,SORCERER)
ClassLevelGT(Myself,WIZARD,17)~ EXTRA9
SAY ~Reading this scroll allows you to learn one extra 9th level spell.~ [GAM_44]
IF ~~ DO ~IncrementGlobal("C0SALv9","LOCALS",1) DestroyItem("c0sascr9") StartDialogOverride("c0satalk",Myself)~ EXIT
END

IF ~True()~ NOEXTRA
SAY ~You have not reached the required level to make use of this scroll.~ [C0BLANK]
IF ~~ EXIT
END

