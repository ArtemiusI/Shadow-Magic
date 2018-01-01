BEGIN C0SAMAG4

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0SAMAG4 a1
= ~Do... do you see it?~
END
++ ~See what?~ + a2
++ ~I don't see anything.~ + a2
++ ~All I see is a madman about to die.~ + a2

CHAIN C0SAMAG4 a2
~Fool! You see nothing... your eyes see nothing but the shades and colors of this false world... the truth is... it is beautiful, devoid of color... you do not see it, but I will show you!~
DO ~Enemy()
PlaySound("gulp")
DisplayStringHead(Myself,46150)
UseItem("c0sapot1",Myself)
RealSetGlobalTimer("C0DrinkPotion","LOCALS",60)~ EXIT