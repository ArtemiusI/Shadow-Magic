BEGIN C0SAMAG2

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0SAMAG2 a1
= ~The shadows... they beckon. But I am lost in the light... the mistress has not spoken for so long...~
== C0SAMAG2 ~Shar, take this sacrifice so that I might hear your voice once more. I am sorry, but you must die!~
END
DO ~Enemy()
PlaySound("gulp")
DisplayStringHead(Myself,46150)
UseItem("c0sapot1",Myself)
RealSetGlobalTimer("C0DrinkPotion","LOCALS",60)~ EXIT