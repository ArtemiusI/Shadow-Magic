BEGIN C0SAMAG1

CHAIN IF WEIGHT #-1 ~True()~ THEN C0SAMAG1 a1
~Ehehehe... d-dead, rotting flesh, sweet flesh... walking corpses, rattling bones... oh, how I long to join them...~
== XZARJ IF ~IsValidForPartyDialog("XZAR")~ THEN ~At last, one who speaks my language! Alas, you must go first, brother. 'Tis a pity I'll not be joining you.~
== C0SAMAG1 ~What?! W-who are you? No matter, you are too... fresh, too alive. Don't worry, I'll fix that for you! You'll decay before I join you!~
DO ~Enemy()~ EXIT

BEGIN C0SAMAG2

CHAIN IF WEIGHT #-1 ~True()~ THEN C0SAMAG2 a2
~The shadows... foretold of... your arrival... I know you seek my death...~
== JAHEIJ IF ~IsValidForPartyDialog("JAHEIRA")~ THEN ~This one's mind has withered away from the power she wields but cannot control. A merciful death is all we can give her.~
== C0SAMAG2 ~I am sorry... I cannot die yet... so you must go instead...~
DO ~Enemy()~ EXIT

BEGIN C0SAMAG3

CHAIN IF WEIGHT #-1 ~True()~ THEN C0SAMAG3 a3
~Ah, trespassers... I did not expect the living to disturb me. This was to be my final resting place.~
END
++ ~Who are you?~ EXTERN C0SAMAG3 a3.1
++ ~You're... not insane?~ EXTERN C0SAMAG3 a3.1
++ ~This is my home, in a manner of speaking. You're the trespasser.~ EXTERN C0SAMAG3 a3.1

CHAIN C0SAMAG3 a3.1
~I was once Mak'kai Haldovar of Thultanthar. Now... that name means nothing, for I am but a walking corpse.~
END
++ ~You're one of Kryn's apprentices. Your master wants you to return.~ EXTERN C0SAMAG3 a3.2
++ ~What are you doing here?~ EXTERN C0SAMAG3 a3.3
++ ~I've been looking for you.~ EXTERN C0SAMAG3 a3.3

CHAIN C0SAMAG3 a3.2
~Master Darkflame... yes, I imagine he feels responsible for what has become of his apprentices.~
EXTERN C0SAMAG3 a3.3

CHAIN C0SAMAG3 a3.3
~After the madness overtook us five and led us to flee into this plane, I was the first - and likely the only - to find my sanity returned to me. But I suspected this was only a temporary reprieve, and the curse of the ebonshade would soon return.~
= ~I learned of this castle, Candlekeep, a library of knowledge... and held onto hope that a cure for my condition would be found here. When I failed to find anything of use, I could only ask for a lonely place to die in peace. The monks led me here.~
= ~Have you encountered any of my fellows? If so, then they are dead, I suspect. Our fates were sealed the day we became slaves to the Shadovar. Master Darkflame believed we would find peace under his tutelage, but that does not change what we are.~
= ~The insanity will consume me soon, stranger, and fully this time. I cannot return, even if I wished to. I would rather die at your hands in this place, and you can tell my master that this was my choice.~
DO ~Enemy()
SetSequence(SEQ_CAST)
DisplayStringHead(Myself,@100001)
CreateVisualEffectObject("c0saef2",Myself)
CreateCreatureObjectOffset("c0maksim",Myself,[-10.-10])~ EXIT

BEGIN C0SAMAG4

CHAIN IF WEIGHT #-1 ~True()~ THEN C0SAMAG4 a4
~Xsa, oloth plynn d'jal! Usstan naut tlu plynnet! I will annihilate you all if I must!~
== VICONJ IF ~IsValidForPartyDialog("VICONIA")~ THEN ~Kyorl, jaluk! Skrel harl dosst sarol! Wun kaas d'Shar!~
== C0SAMAG4 IF ~IsValidForPartyDialog("VICONIA")~ THEN ~Usstan orn vok ulu Shar nau velendev, elg'caress!~
== VICONJ IF ~IsValidForPartyDialog("VICONIA")~ THEN ~You dare address me in such a tone, male?! Bah... it is no use, <CHARNAME>. This one is too far gone.~
== C0SAMAG4 ~Die!~
DO ~Enemy()~ EXIT

BEGIN C0SAMAG5

CHAIN IF WEIGHT #-1 ~True()~ THEN C0SAMAG5 a5
~C-c-cold... so cold...~
== DYNAHJ IF ~IsValidForPartyDialog("DYNAHEIR")~ THEN ~By the Three! This one is little more than a child! What cursed fate hath befallen her?~
== C0SAMAG5 ~W-who are you? Do... do you know where Ophelia is? I... I've been lost for so long...~
END
++ ~I'm here to take you back to your master, girl. Calm down.~ EXTERN C0SAMAG5 a5.2
++ ~Who's Ophelia?~ EXTERN C0SAMAG5 a5.1
++ ~I'm afraid I don't.~ EXTERN C0SAMAG5 a5.1
++ ~You won't be lost for much longer.~ EXTERN C0SAMAG5 a5.1

CHAIN C0SAMAG5 a5.1
~If you don't know Ophelia, then-- oh, no! Y-y-you're here to kill me, aren't you?!~
== DYNAHJ IF ~IsValidForPartyDialog("DYNAHEIR")~ THEN ~Stop! Cease, girl, lest we be forced to end thy misery!~
== C0SAMAG5 ~I-- I won't go! You can't make me! I'll turn you all to ash!~
DO ~Enemy()~ EXIT

CHAIN C0SAMAG5 a5.2
~Master? Who's... that? I... oh, my memory's so fuzzy... I can't remember...~
EXTERN C0SAMAG5 a5.1