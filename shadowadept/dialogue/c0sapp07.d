BEGIN C0SAPP07

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0SAPP07 a
~So... you're Master Darkflame's guests. *sigh* I'm Elak T'sahn, designated apothecary. If you need potions, then we may talk business. If not... *yawn*... leave me be.~
END
++ ~What have you to offer?~ DO ~StartStore("c0sasto4",Lasttalkedtoby(Myself))~ EXIT
++ ~Goodbye.~ EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)~ THEN C0SAPP07 b
~You're back. *yawn* Have you come to make a purchase? I suppose I can keep myself awake a while longer.~
END
++ ~What have you to offer?~ DO ~StartStore("c0sasto4",Lasttalkedtoby(Myself))~ EXIT
++ ~Goodbye.~ EXIT