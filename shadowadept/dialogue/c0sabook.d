BEGIN C0SABOOK

IF ~Global("C0SABOOK","LOCALS",0)~ CHEATER
SAY ~You open the Shadow Tome of Shar, and your mind is filled with endless cacophony of whispers and invocations. You have learned every spell of the Shadow Weave that exists. Have fun cheater.~
IF ~~ DO ~ClearAllActions()
StartCutsceneMode()
SetGlobal("C0SABOOK","LOCALS",1)
ScreenShake([50.50],5)
CreateVisualEffectObject("c0useany",Myself)
AddSpecialAbility("C0SA101")
AddSpecialAbility("C0SA102")
AddSpecialAbility("C0SA103")
AddSpecialAbility("C0SA104")
AddSpecialAbility("C0SA105")
AddSpecialAbility("C0SA106")
AddSpecialAbility("C0SA107")
AddSpecialAbility("C0SA108")
AddSpecialAbility("C0SA109")
AddSpecialAbility("C0SA110")
AddSpecialAbility("C0SA111")
AddSpecialAbility("C0SA112")
AddSpecialAbility("C0SA201")
AddSpecialAbility("C0SA202")
AddSpecialAbility("C0SA203")
AddSpecialAbility("C0SA204")
AddSpecialAbility("C0SA205")
AddSpecialAbility("C0SA206")
AddSpecialAbility("C0SA207")
AddSpecialAbility("C0SA208")
AddSpecialAbility("C0SA209")
AddSpecialAbility("C0SA210")
AddSpecialAbility("C0SA211")
AddSpecialAbility("C0SA212")
AddSpecialAbility("C0SA301")
AddSpecialAbility("C0SA302")
AddSpecialAbility("C0SA303")
AddSpecialAbility("C0SA304")
AddSpecialAbility("C0SA305")
AddSpecialAbility("C0SA306")
AddSpecialAbility("C0SA307")
AddSpecialAbility("C0SA308")
AddSpecialAbility("C0SA309")
AddSpecialAbility("C0SA310")
AddSpecialAbility("C0SA311")
AddSpecialAbility("C0SA312")
AddSpecialAbility("C0SA401")
AddSpecialAbility("C0SA402")
AddSpecialAbility("C0SA403")
AddSpecialAbility("C0SA404")
AddSpecialAbility("C0SA405")
AddSpecialAbility("C0SA406")
AddSpecialAbility("C0SA407")
AddSpecialAbility("C0SA408")
AddSpecialAbility("C0SA409")
AddSpecialAbility("C0SA410")
AddSpecialAbility("C0SA411")
AddSpecialAbility("C0SA412")
AddSpecialAbility("C0SA501")
AddSpecialAbility("C0SA502")
AddSpecialAbility("C0SA503")
AddSpecialAbility("C0SA504")
AddSpecialAbility("C0SA505")
AddSpecialAbility("C0SA506")
AddSpecialAbility("C0SA507")
AddSpecialAbility("C0SA508")
AddSpecialAbility("C0SA509")
AddSpecialAbility("C0SA510")
AddSpecialAbility("C0SA511")
AddSpecialAbility("C0SA512")
AddSpecialAbility("C0SA601")
AddSpecialAbility("C0SA602")
AddSpecialAbility("C0SA603")
AddSpecialAbility("C0SA604")
AddSpecialAbility("C0SA605")
AddSpecialAbility("C0SA606")
AddSpecialAbility("C0SA607")
AddSpecialAbility("C0SA608")
AddSpecialAbility("C0SA609")
AddSpecialAbility("C0SA610")
AddSpecialAbility("C0SA611")
AddSpecialAbility("C0SA701")
AddSpecialAbility("C0SA702")
AddSpecialAbility("C0SA703")
AddSpecialAbility("C0SA704")
AddSpecialAbility("C0SA705")
AddSpecialAbility("C0SA706")
AddSpecialAbility("C0SA707")
AddSpecialAbility("C0SA708")
AddSpecialAbility("C0SA709")
AddSpecialAbility("C0SA710")
AddSpecialAbility("C0SA711")
AddSpecialAbility("C0SA712")
AddSpecialAbility("C0SA801")
AddSpecialAbility("C0SA802")
AddSpecialAbility("C0SA803")
AddSpecialAbility("C0SA804")
AddSpecialAbility("C0SA805")
AddSpecialAbility("C0SA806")
AddSpecialAbility("C0SA807")
AddSpecialAbility("C0SA808")
AddSpecialAbility("C0SA809")
AddSpecialAbility("C0SA810")
AddSpecialAbility("C0SA811")
AddSpecialAbility("C0SA812")
AddSpecialAbility("C0SA901")
AddSpecialAbility("C0SA902")
AddSpecialAbility("C0SA903")
AddSpecialAbility("C0SA904")
AddSpecialAbility("C0SA905")
AddSpecialAbility("C0SA906")
AddSpecialAbility("C0SA907")
AddSpecialAbility("C0SA908")
AddSpecialAbility("C0SA909")
EndCutsceneMode()~ EXIT
END

IF ~Global("C0SABOOK","LOCALS",1)~ CHEATER
SAY ~You have read the Shadow Tome of Shar and already have learned all of the Shadow Weave's secrets. Have fun cheater.~
IF ~~ EXIT
END