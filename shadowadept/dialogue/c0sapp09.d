BEGIN C0SAPP09

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0SAPP09 a
~Hmph... I see the whispers that outsiders had set foot in the city were not mere rumors. I am Janus Ebonmere, the proprietor of the Ebonshade Tavern. As you are no doubt unfamiliar with the rules in place here, I will be candid with you, lighted - this place is my domain, and I will not tolerate any misconduct from or towards my patrons.~
= ~Perhaps you have already sensed it, but this establishment is protected by a dead magic enchantment. I alone possess the ability to use my magic at will - let that be a warning in case you bear any intention of testing me. Have I made myself clear?~
END
++ ~As clear as can be.~ + a.1
++ ~Do not presume to threaten me, Shadovar.~ + a.2
++ ~Perhaps I shall seek hospitality elsewhere.~ + a.3

CHAIN C0SAPP09 a.1
~Good. Now then...~
EXTERN C0SAPP09 b

CHAIN C0SAPP09 a.2
~Consider yourself fortunate that threats are all I am giving you, lighted. Make any transgressions at your own peril.~
EXTERN C0SAPP09 b

CHAIN C0SAPP09 a.3
~Then do so. Begone.~
EXIT

CHAIN IF ~!NumTimesTalkedTo(0)~ THEN C0SAPP09 b
~What services do you require of this establishment, lighted?~
EXIT