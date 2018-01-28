BEGIN C0OPHEL

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0OPHEL a
~Oh! I didn't hear you coming up the stairs... my apologies! When I have a tome in hand, I find myself lost in the text...~
DO ~MakeGlobal()~
= ~Wait, you're not one of the apprentices... I know all of them by name, even the new ones. You must be the guest that Master Kryn mentioned, then.~
END
++ ~Please join my party.~ DO ~JoinParty()~ EXIT
++ ~That I am. My name is <CHARNAME>... and yours, my lady?~ + a1
++ ~I apologize, but I have no time to speak right now.~ + a0

CHAIN C0OPHEL a0
~Oh, that's a shame. Well, if you have need of anything, feel free to come to me for any questions you may have. I'm Ophelia, by the way. Welcome to the Phantasmal Tower. Fare thee well for now, and, uh... don't be a stranger!~
EXIT

CHAIN C0OPHEL a1
~Ophelia Reyn'Tanthul. It's a pleasure to meet you, friend. I'm the most senior apprentice here, so when Master Kryn isn't around, the others defer to me. Or Bishop Andros, since he's technically a higher authority, but most find him intimidating, so they come to me for insight instead. And--  ah... I'm sorry, I do tend to ramble, given the opportunity.~
= ~Welcome to the Phantasmal Tower! I hope you'll forgive the lack of decor, but we rarely have visitors, especially those of the Prime. It's been... oh, a few years now. Anyways, Master Kryn is in charge, but he's often too busy to cater to the apprentices personally, so I deal with the day-to-day caretaking. Feel free to come to me for any questions you might have.~
= ~Perhaps you have something on your mind right now? Don't be afraid to ask.~
END
+ ~Global("C0TalkedToKeeper","GLOBAL",1)~ + ~What's with the spectre in the room to the south? It doesn't seem to respond to me.~ + b1
++ ~What are these fiery spirits that hover around the tower?~ + servants
+ ~Global("C0AskedOphelia","GLOBAL",0)~ + ~Can I ask you a few things about yourself?~ DO ~SetGlobal("C0AskedOphelia","GLOBAL",1)~ + b3
+ ~Global("C0AskedOphelia","GLOBAL",1)~ + ~Can I ask you a few things about yourself?~ + b4
++ ~Nothing at the moment. Goodbye, Ophelia.~ + a1.0

CHAIN C0OPHEL a1.0
~Goodbye! I'll be here if you ever need me.~
EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)~ THEN C0OPHEL b
~Hello again, <CHARNAME>. I'm glad to see you're well.~ [C0OPH21]
EXTERN C0OPHEL b0

CHAIN C0OPHEL b0
~Is there anything else you need from me?~
END
+ ~Global("C0TalkedToKeeper","GLOBAL",1)~ + ~What's with the spectre in the room to the south? It doesn't seem to respond to me.~ + b1
++ ~What are these fiery spirits that hover around the tower?~ + servants
+ ~Global("C0AskedOphelia","GLOBAL",0)~ + ~Can I ask you a few things about yourself?~ DO ~SetGlobal("C0AskedOphelia","GLOBAL",1)~ + b3
+ ~Global("C0AskedOphelia","GLOBAL",1)~ + ~Can I ask you a few things about yourself?~ + b4
++ ~Nothing at the moment. Goodbye, Ophelia.~ + a1.0

CHAIN C0OPHEL servants
~The Darkflame Servants? They're magical constructs created by Master Kryn to serve as the tower's custodians. Don't worry, they're not aggressive. They put the apprentices on edge too, but they get used to it quickly, especially since they take care of the all the cleaning around the place.~
= ~Their energies are tied to the magic of the tower itself, so as long as the tower stands, they're effectively immortal. Still, I'd rather you didn't bother them.~
EXTERN C0OPHEL b0

CHAIN C0OPHEL b1
~Oh, that's the Keeper. It's not just you, he-- uh, *it* doesn't really talk to anyone, save for Master Kryn, and even then they don't communicate through speech.~
= ~I'm not sure what it does, but according to Master Kryn it's harmless so long as you leave it alone. Just... don't anger it. It's... killed apprentices that attacked it in the past, and I'd rather not see it happen again.~
EXTERN C0OPHEL b0

CHAIN C0OPHEL b2
~Ivette! Oh, poor girl... I-- I still remember what happened. The day when she and the others succumbed to the ebonshade curse and went mad. I tried to break through to her, but I couldn't... I couldn't save her.~
= ~Master Kryn told me about what happened... about what you did. You only did what you had to... I miss Ivette greatly, but she was gone long before you met her. I... I don't blame you, <CHARNAME>, I don't...~
= ~I-- I would rather be alone for a while. Please excuse me.~
DO ~SetGlobalTimer("OpheliaLeaves","MYAREA",ONE_HOUR) EscapeArea()~ EXIT

CHAIN C0OPHEL b3
~A-about me? I-- well, I mean, I'm flattered, of course, but I'd consider myself a boring subject to talk about. Usually I prefer to hear about others' tales...~
EXTERN C0OPHEL b4

CHAIN C0OPHEL b4
~Well, if you're truly interested, I'll oblige. What do you want to know?~
END
+ ~Global("C0AskedIvette","GLOBAL",0)~ + ~I remember hearing your name from one of Kryn's apprentices, back in the Sword Coast. Her name was Ivette Cold-Whisper.~ DO ~SetGlobal("C0AskedIvette","GLOBAL",1)~ + b2
++ ~Nothing at the moment. Goodbye, Ophelia.~ + a1.0