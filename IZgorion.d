

APPEND Gorion

IF ~~ THEN BEGIN IZGorion
  SAY ~Hmm... let me see that child. Ahh yes. Tis a simple enough matter to identify it. Hmm... this dagger appears to be quite cursed. I don't know who you got it from but it would be best they know of this.~
  IF ~~ THEN DO ~AddJournalEntry(@16,QUEST) SetGlobal("IZDagger","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN IZGorion2
  SAY ~Yes I actually bothered to write text for this even though its only going to appear here for a few seconds. So what?~
  IF ~~ THEN EXIT
END

END



EXTEND_TOP GORION 0
  +~Global("IZDagger","GLOBAL",1)~+ ~So I was asked to find someone that could examine this dagger. Can you?~  GOTO IZGorion
END