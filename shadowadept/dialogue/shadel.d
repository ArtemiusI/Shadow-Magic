EXTEND_TOP SHADEL 3 
+ ~%is_shadow_adept_player1%~ + ~You are not the only one who controls the shadows, creature. As I see it, you shall be the one to be submit to *me*.~ EXTERN SHADEL shadel.1
+ ~%is_shadow_adept_player1%~ + ~Come and be destroyed, then.~ DO ~ActionOverride("rngsha02",Enemy())
Enemy()~ EXIT
END

EXTEND_TOP SHADEL 4 
+ ~%is_shadow_adept_player1%~ + ~You are nothing compared to the shadows that whisper in my mind. I do not fear you.~ EXTERN SHADEL 6
+ ~%is_shadow_adept_player1%~ + ~A mere broodling such as yourself has no place speaking to me as though you were my equal.~ EXTERN SHADEL 6
END

EXTEND_TOP SHADEL 7
+ ~%is_shadow_adept_player1%~ + ~You are not the only one who controls the shadows, creature. As I see it, you shall be the one to be submit to *me*.~ EXTERN SHADEL shadel.1
+ ~%is_shadow_adept_player1%~ + ~Come and be destroyed, then.~ DO ~ActionOverride("rngsha02",Enemy())
Enemy()~ EXIT
END

CHAIN SHADEL shadel.1
~Oh? I see... how very fascinating. So be it, then... this will be an amusing game. Let us match our wills against each other, shadow-weaver, and we shall see who consumes who in this struggle!~
DO ~SetGlobal("C0SAShadeLordKilled","GLOBAL",1)
ActionOverride("rngsha02",Enemy())
Enemy()~ EXIT