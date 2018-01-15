CHAIN IF WEIGHT #-1 ~Specifics(Player1,12) Global("C0EdwinShadowAdeptReaction","LOCALS",0)~ THEN BEDWIN edwin
~You. Stop a moment. I must have a word with you regarding the... unusual brand of magic that you wield.~
DO ~SetGlobal("C0EdwinShadowAdeptReaction","LOCALS",1)~
END
++ ~Very well, Edwin. What is it?~ + edwin1
++ ~Unusual? I don't know what you're talking about.~ + edwin2
++ ~Now is not the time, wizard. Fall back in line.~ + edwin0

CHAIN BEDWIN edwin0
~Hmph. Very well. Though you would do well to wield that power of yours carefully... or else it will be the end of you, whether by your own hand or that of another.~
EXIT

CHAIN BEDWIN edwin1
~While I was but a mere student of Thay's academy, I studied almost every form of magic ever known by the various spellcasters of this realm. Many have depths and secrets too complex for your meager mind to understand.~
= ~Among them, I once read a passage about a power that rivaled Mystra's Weave, the source of which all magic originates... save for one. The Shadow Weave, created by the goddess Shar... a power which defies many of the laws of regular magic.~
= ~Until now, however, I have never met a practitioner of that power. Now, though, I am certain... for your magic is identical to everything that I have learned during my research of Shadow Weave Magic. It is... interesting.~
END
++ ~What interest would my magic be to you?~ + edwin3

CHAIN BEDWIN edwin2
~Do not play me for a fool, <CHARNAME>. Perhaps the other fools you display your ability to may not recognize the powers of the Shadow Weave, but I am not so ignorant.~
EXTERN BEDWIN edwin1

CHAIN BEDWIN edwin3
~Make no mistake, <CHARNAME> - I hold nothing but contempt for the method in which you have gained your magic. It is a reckless cheat, an faster route to power that would take true practitioners of magic years to achieve.~
= ~And I have noticed the heavy toll that your connection to the Shadow Weave has taken on your lifeforce. Power rarely comes without cost, but gambling for it with your life... that is a pact that only a fool would make.~
= ~But I cannot deny that I am... curious as to what your powers are truly capable of. If it is truly bound by different rules to that of my magic, then it could be a... fascinating subject for research. As such, I am willing to tolerate your use of it. But do not think that I speak from envy.~
EXIT