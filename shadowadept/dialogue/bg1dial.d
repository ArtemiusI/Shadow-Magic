I_C_T BUB 1 C0SABUB
== BUB IF ~Global("C0SAQuest1","GLOBAL",1) !Dead("c0samag4")~ THEN ~An' keep away from that cave down there. There's some mad drow in black robes mumblin' an' cursin' inside, ain't sure what's wrong with 'im. He'll kill you soon as he sees you, I'm bettin'.~
END

I_C_T BUB 2 C0SABUB
== BUB IF ~Global("C0SAQuest1","GLOBAL",1) !Dead("c0samag4")~ THEN ~An' keep away from that cave down there. There's some mad drow in black robes mumblin' an' cursin' inside, ain't sure what's wrong with 'im. He'll kill you soon as he sees you, I'm bettin'.~
END

I_C_T BUB 3 C0SABUB
== BUB IF ~Global("C0SAQuest1","GLOBAL",1) !Dead("c0samag4")~ THEN ~An' keep away from that cave down there. There's some mad drow in black robes mumblin' an' cursin' inside, ain't sure what's wrong with 'im. He'll kill you soon as he sees you, I'm bettin'.~
END

I_C_T OUBLEK 26 C0SAOUBLEK
== OUBLEK IF ~Global("C0SAQuest1","GLOBAL",1) !Dead("c0samag1")~ THEN ~There's also a recent bounty on a grave robber who was last spotted near the crypts south of the mines. It is said that he is an insane and powerful arcanist wielding some unknown magic, so beware if you intend on hunting him. The reward is a thousand gold for anyone willing to take the risk.~
END

I_C_T OUBLEK 27 C0SAOUBLEK
== OUBLEK IF ~Global("C0SAQuest1","GLOBAL",1) !Dead("c0samag1")~ THEN ~There's also a recent bounty on a grave robber who was last spotted near the crypts south of the mines. It is said that he is an insane and powerful arcanist wielding some unknown magic, so beware if you intend on hunting him. The reward is a thousand gold for anyone willing to take the risk.~
END

I_C_T OUBLEK 28 C0SAOUBLEK
== OUBLEK IF ~Global("C0SAQuest1","GLOBAL",1) !Dead("c0samag1")~ THEN ~There's also a recent bounty on a grave robber who was last spotted near the crypts south of the mines. It is said that he is an insane and powerful arcanist wielding some unknown magic, so beware if you intend on hunting him. The reward is a thousand gold for anyone willing to take the risk.~
END

I_C_T OUBLEK 29 C0SAOUBLEK
== OUBLEK IF ~Global("C0SAQuest1","GLOBAL",1) !Dead("c0samag1")~ THEN ~Ah, actually... there was a recent bounty on a grave robber who was last spotted south of the mines. It is said that he is an insane and powerful arcanist wielding some unknown magic, so beware if you intend on hunting him. The reward is a thousand gold for anyone willing to take the risk.~
END

EXTEND_TOP OUBLEK 9 
+ ~Dead("c0samag1") Global("C0OublekXariusBounty","GLOBAL",0)~ + ~I've come for the bounty on the grave robber.~ EXTERN OUBLEK oublek
END

EXTEND_TOP OUBLEK 10
+ ~Dead("c0samag1") Global("C0OublekXariusBounty","GLOBAL",0)~ + ~I've come for the bounty on the grave robber.~ EXTERN OUBLEK oublek
END

CHAIN OUBLEK oublek
~I'm surprised you were foolhardy... nay, brave enough to pursue such a dangerous man. Your reward is well earned.~
DO ~GivePartyGold(1000) Addexperienceparty(2000) SetGlobal("C0OublekXariusBounty","GLOBAL",1)~ EXIT

I_C_T TETHTO2 3 C0SATETHTO23
END
