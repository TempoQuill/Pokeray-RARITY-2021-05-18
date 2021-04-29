# Bugs and Glitches

These are known bugs and glitches in the Pokémon Ray and Shade games: code that clearly does not work as intended, or that only works in limited circumstances but has the possibility to fail or crash.

Fixes are written in the `diff` format. If you've used Git before, this should look familiar:

```diff
 this is some code
-delete red - lines
+add green + lines
```

## Contents

- [Values stored before levels determine the battle transition animation](#values-stored-before-levels-determine-the-battle-transition-animation)

## Values Stored Before Levels Determine the Battle Transition Animation

([Video](https://www.youtube.com/watch?v=eij_1060SMc))

There are three things wrong here:

- `wEnemyMonLevel` isn't initialized yet
- `wBattleMonLevel` gets overwritten after it's initialized by `FindFirstAliveMonAndStartBattle`
- `wBattleMonLevel` isn't initialized until much later when the battle is with a trainer

**Fix:**

First, edit [engine/battle/battle_transition.asm](https://github.com/pret/pokecrystal/blob/master/engine/battle/battle_transition.asm):

```diff
 StartTrainerBattle_DetermineWhichAnimation:
 ; The screen flashes a different number of times depending on the level of
 ; your lead Pokemon relative to the opponent's.
-; BUG: wBattleMonLevel and wEnemyMonLevel are not set at this point, so whatever
-; values happen to be there will determine the animation.
+	ld a, [wOtherTrainerClass]
+	and a
+	jr z, .wild
+	farcall SetTrainerBattleLevel
+
+.wild
+	ld b, PARTY_LENGTH
+	ld hl, wPartyMon1HP
+	ld de, PARTYMON_STRUCT_LENGTH - 1
+
+.loop
+	ld a, [hli]
+	or [hl]
+	jr nz, .okay
+	add hl, de
+	dec b
+	jr nz, .loop
+
+.okay
+	ld de, MON_LEVEL - MON_HP - 1
+	add hl, de
	ld de, 0
-	ld a, [wBattleMonLevel]
+	ld a, [hl]
 	add 3
-	ld hl, wEnemyMonLevel
+	ld hl, wCurPartyLevel
 	cp [hl]
 	jr nc, .not_stronger
 	set TRANS_STRONGER_F, e
 .not_stronger
 	ld a, [wEnvironment]
 	cp CAVE
 	jr z, .cave
 	cp ENVIRONMENT_5
 	jr z, .cave
 	cp DUNGEON
 	jr z, .cave
 	set TRANS_NO_CAVE_F, e
 .cave
 	ld hl, .StartingPoints
 	add hl, de
 	ld a, [hl]
 	ld [wJumptableIndex], a
 	ret

 .StartingPoints:
 ; entries correspond to TRANS_* constants
 	db BATTLETRANSITION_CAVE
 	db BATTLETRANSITION_CAVE_STRONGER
 	db BATTLETRANSITION_NO_CAVE
 	db BATTLETRANSITION_NO_CAVE_STRONGER
```
