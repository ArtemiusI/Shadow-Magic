BEGIN C0SAMAG1

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0SAMAG1 a1
= ~E-hehehehe... c-come for me, have you?~
END
++ ~Are you... eating the dead? That's disgusting!~ + a2
++ ~You must be Xarius, Kryn's apprentice. What are you doing here?~ + a2
++ ~Shut up and die, madman!~ + a2

CHAIN C0SAMAG1 a2
~M-master said he'd help us... he said he'd save us... but no, there's n-no cure for this... master lied... so I left. I- I won't go back... I won't... nggaaAARRGH!~
== C0SAMAG1 ~I... I must have more... I must make the pain stop... e-hehehe...! I'll kill you... then your blood... I will...~
== C0SAMAG1 ~P-pain... pain... hurts, hurts, HURTS! Make... end...~
== C0SAMAG1 ~...DIE!~
DO ~Enemy()
PlaySound("gulp")
DisplayStringHead(Myself,46150)
UseItem("c0sapot1",Myself)
RealSetGlobalTimer("C0DrinkPotion","LOCALS",60)~ EXIT