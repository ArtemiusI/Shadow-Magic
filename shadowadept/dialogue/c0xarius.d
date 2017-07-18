BEGIN C0XARIUS

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0XARIUS a1
~No... no, no! Too p-pathetic, too useless, too... dead! I m-must... eh?~
= ~E-hehehehe... c-come for me, have you? The c-cats have come for the little mouse, hiding in the dark?~
END
++ ~Are you Xarius?~ + a2
++ ~What are you talking about?~ + a2
++ ~Shut up and die, madman!~ + a2

CHAIN C0XARIUS a2
~Master th-thinks I'll go back, does he? Save me, he says he will, but... e-hehehe, nooo... I don't *need* him anymore... I'm close... close to the cure... then, I'll... argh!~
== C0XARIUS ~I... I need... must have more... e-hehehe...! I'll kill you... then I'll add your souls to th... th-!~
== C0XARIUS ~P-pain... it hurts, hurts, HURTS! Make... end...~
== C0XARIUS ~...DIE!~
DO ~Enemy()
PlaySound("gulp")
DisplayStringHead(Myself,46150)
UseItem("c0sapot1",Myself)
RealSetGlobalTimer("C0DrinkPotion","LOCALS",60)~ EXIT