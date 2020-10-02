BEGIN IZMendak


IF ~True()~ THEN BEGIN 0
      SAY ~Behold travellers. Before you is the great Mendak, champion of the people of Cormyr, slayer of the dragon of the Great Mountain.~
		+~Global("IZDagger","GLOBAL",2)~+ ~I got that dagger identified. Looks like its cursed.~ GOTO 3
                ++ ~May I ask what brings you to Candlekeep?~     GOTO 1
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Ahh someone here with actual manners. Why I'm here in search of answers. I have this magic dagger. Despite my best efforts, I've been unable to get it identified. Would you perhaps know who might be able to help?~
		++ ~I will bring it to my mentor, Gorion.~    GOTO 2
		++ ~I'm not much for helping. In fact, I think I'll take my leave now.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Ahh splended. Off you go.~ IF ~~ THEN DO ~GiveItemCreate("IZDagg01",LastTalkedToBy,0,0,0) AddJournalEntry(@15,QUEST) SetGlobal("IZDagger","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Ahh well. Keep the thing then. I suppose I shall have to return to Cormyr in shame.~ IF ~~ THEN DO ~SetGlobal("IZDagger","GLOBAL",3) AddJournalEntry(@17,QUEST_DONE) GivePartyGold(50)  AddexperienceParty(50)    EscapeArea()~ EXIT
END