BEGIN C0SAPP03

CHAIN IF WEIGHT #-1 ~True()~ THEN C0SAPP03 a
~Hail, supplicant. What would you ask of this humble servant of shadow?~
END
++ ~I would avail myself of the temple's services.~ DO ~StartStore("c0sasto3",Lasttalkedtoby(Myself))~ EXIT
++ ~Nothing for the moment.~ EXIT