BEGIN C0SAMAGE

CHAIN IF WEIGHT #-1 ~HasItemEquiped("C0SAINVU",Myself)~ THEN C0SAMAGE a0
~The ghostly entity before you appears to be there, yet not there. The shadow brand on your palm is tingling, glowing in response to the presence.~
END
+ ~Name("C0SAMAG1",Myself)~ + ~Draw the figure into the material plane.~ DO ~StartCutSceneMode()
CreateVisualEffectObject("c0saef2",Myself)
Wait(1)
CreateVisualEffectObject("c0dispma",Myself)
Wait(1)
DestroyItem("c0saspcq")
DestroyItem("c0sainvu")
SetName(%shadow_mage_name1%)
Wait(2)
StartDialogueNoSet(Player1)~ EXIT
+ ~Name("C0SAMAG2",Myself)~ + ~Draw the figure into the material plane.~ DO ~StartCutSceneMode()
CreateVisualEffectObject("c0saef2",Myself)
Wait(1)
CreateVisualEffectObject("c0dispma",Myself)
Wait(1)
DestroyItem("c0saspcq")
DestroyItem("c0sainvu")
SetName(%shadow_mage_name2%)
Wait(2)
StartDialogueNoSet(Player1)~ EXIT
+ ~Name("C0SAMAG3",Myself)~ + ~Draw the figure into the material plane.~ DO ~StartCutSceneMode()
CreateVisualEffectObject("c0saef2",Myself)
Wait(1)
CreateVisualEffectObject("c0dispma",Myself)
Wait(1)
DestroyItem("c0saspcq")
DestroyItem("c0sainvu")
SetName(%shadow_mage_name3%)
Wait(2)
StartDialogueNoSet(Player1)~ EXIT
+ ~Name("C0SAMAG4",Myself)~ + ~Draw the figure into the material plane.~ DO ~StartCutSceneMode()
CreateVisualEffectObject("c0saef2",Myself)
Wait(1)
CreateVisualEffectObject("c0dispma",Myself)
Wait(1)
DestroyItem("c0saspcq")
DestroyItem("c0sainvu")
SetName(%shadow_mage_name4%)
Wait(2)
StartDialogueNoSet(Player1)~ EXIT
+ ~Name("C0SAMAG5",Myself)~ + ~Draw the figure into the material plane.~ DO ~StartCutSceneMode()
CreateVisualEffectObject("c0saef2",Myself)
Wait(1)
CreateVisualEffectObject("c0dispma",Myself)
Wait(1)
DestroyItem("c0saspcq")
DestroyItem("c0sainvu")
SetName(%shadow_mage_name5%)
Wait(2)
StartDialogueNoSet(Player1)~ EXIT
++ ~Leave it alone.~ EXIT

CHAIN IF WEIGHT #-1 ~Name("C0SAMAG1",Myself)~ THEN C0SAMAGE a1
~Eh? D-drawn back into, to, to the prime a-g-gain? Who...~
= ~Ah... I sense-se-se my w-wretched master's magic on y-you. E-hehehehe... here to s... s-send me t-t-to the grave, are you?~
== C0SAMAGE ~I, I, I welc-c-come you to t-try. Ahahah... hahAHAHAHAHA!~
DO ~Enemy()~ EXIT

CHAIN IF WEIGHT #-1 ~Name("C0SAMAG2",Myself)~ THEN C0SAMAGE a2
~Light? How can there be... you...~
= ~Master? No... I cannot see you, but you are not he. But his mark... it is on you.~
= ~Are you here to deliver me to the embrace of Her darkness? So it was fated to end like this... very well. Strike me down, if you can.~
DO ~Enemy()~ EXIT

CHAIN IF WEIGHT #-1 ~Name("C0SAMAG3",Myself)~ THEN C0SAMAGE a3
~Ah, trespassers... I did not expect the living to disturb me. This was to be my final resting place.~
END
++ ~Who are you?~ EXTERN C0SAMAGE a3.1
++ ~You're... not insane?~ EXTERN C0SAMAGE a3.1
++ ~This is my home, in a manner of speaking. You're the trespasser.~ EXTERN C0SAMAGE a3.1

CHAIN C0SAMAGE a3.1
~I was once Mak'kai Hal'zuratheyn of Thultanthar. Now... that name means nothing, for I am but a walking corpse.~
END
++ ~You're one of Kryn's apprentices. Your master wants you to return.~ EXTERN C0SAMAGE a3.2
++ ~What are you doing here?~ EXTERN C0SAMAGE a3.3
++ ~I've been looking for you.~ EXTERN C0SAMAGE a3.3

CHAIN C0SAMAGE a3.2
~Master Darkflame... yes, I imagine he feels responsible for what has become of his apprentices.~
EXTERN C0SAMAGE a3.3

CHAIN C0SAMAGE a3.3
~After the madness overtook us five and led us to flee into this plane, I was the first - and likely the only - to find my sanity returned to me. But I suspected this was only a temporary reprieve, and the curse of the ebonshade would soon return.~
= ~I learned of this castle, Candlekeep, a library of knowledge... and held onto hope that a cure for my condition would be found here. When I failed to find anything of use, I could only ask for a lonely place to die in peace. The monks led me here.~
= ~Have you encountered any of my fellows? If so, then they are dead, I suspect. Our fates were sealed the day we became slaves to the Shadovar. Master Darkflame believed we would find peace under his tutelage, but that does not change what we are.~
= ~The insanity will consume me soon, stranger, and fully this time. I cannot return, even if I wished to. I would rather die at your hands in this place, and you can tell my master that this was my choice.~
DO ~Enemy()~ EXIT

CHAIN IF WEIGHT #-1 ~Name("C0SAMAG4",Myself)~ THEN C0SAMAGE a4
~Xsa, oloth plynn d'jal! Usstan naut tlu plynnet! I will annihilate you all if I must!~
== VICONJ IF ~IsValidForPartyDialog("VICONIA")~ THEN ~Kyorl, jaluk! Skrel harl dosst sarol! Wun kaas d'Shar!~
== C0SAMAGE IF ~IsValidForPartyDialog("VICONIA")~ THEN ~Usstan orn vok ulu Shar nau velendev, elg'caress!~
== VICONJ IF ~IsValidForPartyDialog("VICONIA")~ THEN ~You dare address me in such a tone, male?! Bah... it is no use, <CHARNAME>. This one is too far gone.~
== C0SAMAGE ~Die!~
DO ~Enemy()~ EXIT

CHAIN IF WEIGHT #-1 ~Name("C0SAMAG5",Myself)~ THEN C0SAMAGE a5
~D-DON'T TOUCH ME! You... you're...~
== DYNAHJ IF ~IsValidForPartyDialog("DYNAHEIR")~ THEN ~By the Three! This one is little more than a child! What cursed fate hath befallen her?~
== C0SAMAGE ~C-c-cold... so cold... w-who are you? Do... do you know where Ophelia is? I... I've been lost for so long...~
END
++ ~I'm here to take you back to your master, girl. Calm down.~ EXTERN C0SAMAGE a5.2
++ ~Who's Ophelia?~ EXTERN C0SAMAGE a5.1
++ ~I'm afraid I don't.~ EXTERN C0SAMAGE a5.1
++ ~You won't be lost for much longer.~ EXTERN C0SAMAGE a5.1

CHAIN C0SAMAGE a5.1
~If you don't know Ophelia, then-- oh, no! Y-y-you're here to kill me, aren't you?!~
== DYNAHJ IF ~IsValidForPartyDialog("DYNAHEIR")~ THEN ~Stop! Cease, girl, lest we be forced to end thy misery!~
== C0SAMAGE ~I-- I won't go! You can't make me! I'll turn you all to ash!~
DO ~Enemy()~ EXIT

CHAIN C0SAMAGE a5.2
~Master? Who's... that? I... oh, my memory's so fuzzy... I can't remember...~
EXTERN C0SAMAGE a5.1