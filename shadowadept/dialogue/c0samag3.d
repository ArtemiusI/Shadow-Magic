BEGIN C0SAMAG3

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0SAMAG3 a1
= ~So you have come for me. I have been waiting.~
== C0SAMAG3 ~I know you intend to kill me. But has my master told you why?~
END
++ ~He ~
DO ~Enemy()
PlaySound("gulp")
DisplayStringHead(Myself,46150)
UseItem("c0sapot1",Myself)
RealSetGlobalTimer("C0DrinkPotion","LOCALS",60)~ EXIT