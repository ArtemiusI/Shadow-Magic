BEGIN C0SAMAG5

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0SAMAG5 a1
= ~In darkness deep
The dying sleep
Where corpses lie
All will die

The vultures wait
Undying hate
In dark we lie
Waiting to die

All will die
All will die...~
== C0SAMAG5 ~You have trespassed in the grave of a dead woman... and so you will join me in eternal sleep.~
END
DO ~Enemy()
PlaySound("gulp")
DisplayStringHead(Myself,46150)
UseItem("c0sapot1",Myself)
RealSetGlobalTimer("C0DrinkPotion","LOCALS",60)~ EXIT