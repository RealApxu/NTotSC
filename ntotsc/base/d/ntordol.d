BEGIN ~NTORDOL~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @9 UNSOLVED_JOURNAL @10048 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~SetGlobal("NTSwieca","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @3
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~!NumberOfTimesTalkedTo(0)~ THEN BEGIN 8
  SAY @14
  IF ~PartyHasItem("MISC74")~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 DO ~AddexperienceParty(2000)
GiveItem("wand09",LastTalkedToBy)
TakePartyItem("misc74")
EraseJournalEntry(@10048)
EscapeArea()~ SOLVED_JOURNAL @10049 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @21
  IF ~~ THEN DO ~AddexperienceParty(2000)
GiveItem("wand09",LastTalkedToBy)
GiveGoldForce(2000)
TakePartyItem("misc74")
EraseJournalEntry(@10048)
EscapeArea()~ SOLVED_JOURNAL @10050 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @23
  IF ~~ THEN EXIT
END
