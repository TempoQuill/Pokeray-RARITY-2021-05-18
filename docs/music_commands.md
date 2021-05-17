# Music Commands

NOTE: The music contained in `audio/music/new/` is hand-converted from files composed in DefleMask.  Immediately following respective labels within these music files is the necessary upgrades (if any) utilized throughout each file.  Below that is the creation date of the source DMF (DefleMask file).  Some of these date as far back as July of 2019 as that was when the idea of Pokemon Ray was first concieved.

## **Header Commands**

This is spread across two commands: `channel_count` and `channel`.  In Gold, `channel` was fixed to two arguments due to disassemblers failing to account for leftover header data.  However, Ray improves flexibility by letting `channel` opt to use only 1 argument in the case of leftovers.

USAGE:
```
	channel_count 3
	channel 1, Music_HouseEnroute_Ch1
	channel 2, Music_HouseEnroute_Ch2
	channel 3, Music_HouseEnroute_Ch3
	channel 4 ; from placeholder (it was the fanmade version)
```

## **Notes**

Depending on a variety of variables, a note could be anywhere from 1 to 4 bytes.
- `rest` - `00-0F` - Used for channels 1-4.  Sometimes 5-8 after `DF` is encountered.  1 byte.  Note length.
- `note` - `10-CF` - Used for channels 1-3.  Sometimes 5-7 after `DF` is encountered.  1 byte.  Pitch, note length.
- `drum_note` - `10-CF` - Used for channel 4.  Sometimes 8 after `DF` is encountered.  1 byte.  ID, note length.
- `square_note` - `00-CF` - Used for channels 5-7.  4 bytes.  Base length, Volume settings, raw pitch.
- `noise_note` - `00-CF` - Used for channel 8 and within percussion structure.  3 bytes.  Base length, Volume settings, raw pitch.

USAGE:
```
	note C_, 16
	...
	drum_note 12, 1
	...
	square_note 20, 8, 4, 1920
	...
	drum_note 4, 10, 1, 44
```

## `D0-D7` **Octave**

VARS:
- Nybble 2 = Reversed octave value (1 = d7, 2 = d6, etc.)


USAGE:
```
	octave 1
```

## `D8` **Note Initialization**

NAME:

Channel 1-3/5-7
- `note_type`


Channel 4/8
- `drum_speed`

VARS:

Channel 1-3/5-7
- Byte 2 = Note length multiplier
- Byte 3 = Volume Envelope

Channel 4/8
- Byte 2 = Note length multiplier

USAGE:
```
	note_type 12, 10, 1
	...
	drum_speed 6
```

## `D9` **Transposition**

VARS:
- Nybble 3 = Octave Offset (0-7)
- Nybble 4 = Note Offset (0-F)

NOTE: In Pokemon Ray, the note table has been expanded to make all note offsets for this command valid.

USAGE:
```
	transpose 0, 0
```

## `DA` **Tempo**

VARS:
- Byte 2-3 = Big endian speed

NOTE: Tempo is calculated by frame fractions of 256.  Contrary to programming rumors, in-RAM note length is not affected by shorter or longer tempos, but most songs forego the second byte in favor of practicality.

USAGE:
```
	tempo 256
```

## `DB` **Pulse Cycle**

VARS:
- Crumb 8 = Pulse ID

NOTE: Only works on channels 1-2/5-6.

USAGE:
```
	duty_cycle 1
```

## `DC` **Volume Envelope**

VARS:

Channel 1-2/5-6
- Nybble 3 = Volume
- Nybble 4 = Fade direction / speed

Channel 3/7
- Crumb 6 = Volume (0 = none 1 = 100 2 = 50 3 = 25)
- Nybble 4 = Wavetable ID

USAGE:
```
	volume_envelope 1, -1
```

## `DD` **Hardware Pitch Sweep**


VARS:
- Nybble 3 = Sweep speed
- Nybble 4 = Sweep direction / Incremental value

NOTE: Only works on channel 1/5.

USAGE:
```
	pitch_sweep 7, -7
```

## `DE` **Pulse Cycle Loop**

VARS:
- Crumbs 5-8 = Pulse ID (5, 6, 7, 8)

NOTE: Only works on channels 1-2/5-6.

USAGE:
```
	duty_cycle_pattern 1, 0, 3, 2
```

## `DF` **Data Mode Switch**

NOTE: Only works on channels 5-8

USAGE:
```
	toggle_music
```

## `E0` **Note Slide**

VARS:
- Nybble 4 = Remaining note length before the note reaches its destination
- Nybble 5 = Octave of destination
- Nybble 6 = Pitch of destination

NOTE: I've been trying to figure out how to get this to work on channels 2-3/6-7; as such, support has been added for that point in time.  But for now, it still only works on channel 1/5.

USAGE:
```
	pitch_slide 1, 4, A_
```

## `E1` **Vibrato**

VARS:
- Byte 2 = Preamble length
- Nybble 5 = Key pitch distance
- Nybble 6 = Time between keys

USAGE:
```
	vibrato 20, 2, 3
```

## `E2` **Mute**

IMPORTANT NOTE: This only works in Ray.  This is because it was stubbed in the retail release of Gold.

VARS:
- Byte 2 = Boolean Mute flag (On/off)

USAGE:
```
	set_mute TRUE
```

## `E3` **Drum Mode Switch (Channel 4)**

VARS:
- Byte 2 = Drum Kit

NOTE: This command is only one byte if used a second time.  Keep track of whether or not it's on when making music.

USAGE:
```
	toggle_noise 2
	...
	toggle_noise
```

## `E4` **Generation 1 Stereo Panning**

IMPORTANT NOTE: In Gold, this is just `EF` without the check for stereo.  In turn, it was named `force_stereo_panning`, which uses the same parameters as normal stereo.  Legacy for that command exists in Ray, but defaults to `EF`.  However, the macro for `EF` may also be `E4` in Ray, due to partial legacy for PokeRed macros.

VARS:
- Byte 2:
- Bit 0 = Channel 1/5 RIGHT
- Bit 1 = Channel 2/6 RIGHT
- Bit 2 = Channel 3/7 RIGHT
- Bit 3 = Channel 4/8 RIGHT
- Bit 4 = Channel 1/5 LEFT
- Bit 5 = Channel 2/6 LEFT
- Bit 6 = Channel 3/7 LEFT
- Bit 7 = Channel 4/8 LEFT

NOTE: Parameters are in binary.

USAGE:
```
	old_panning %1101, %1110
	...
	stereo_panning %0110, %1011
```

## `E5` **Global Volume**

VARS:
- Nybble 3 = Left Speaker
- Nybble 4 = Right Speeker

NOTE: This variables need to match

USAGE:
```
	volume 7, 7
```

## `E6` **Raw Pitch Modifier**

VARS:
- Byte 2-3 = Big-endian 16-bit addend

NOTE: `E6`'s use has been moderated due to the addition of `F1` in Ray (more on that later).

USAGE:
```
	pitch_offset 2
```

## `E7` **Relative Pitch**

IMPORTANT NOTE: This only works in Ray.  This is because it was stubbed in the retail release of Gold.

VARS:
- Byte 2 = Note Offset (0-F is the valid range; would've been 0-C in Gold)

NOTE: `E7` is a primative version of `D9`.  It only adds pitch values, and doesn't even set any carry flags, leaving the possibility of triggering the rest pitch if the offset is high enough.

USAGE:
```
	relative_pitch 2
```

## `E8` **Volume Envelope Sequence**

IMPORTANT NOTE: This only works in Ray.  This is because it was stubbed in the retail release of Gold.

VARS:
- Byte 2 = Sequence ID.

NOTE: Channel 1/2/5/6 and Channel 3/7 are handled differently and, as such, possess their own groups of volume envelopes.  Each sequence either ends with `FE`, which resets the offset counter (which limits the sequence to 256 bytes), or `FF`, which ends the sequence entirely.

USAGE:
```
	volume_envelope_group 2
```

## `E9` **Tempo Offset**

VARS:
- Byte 2 = Signed offset (-128 to 127)

NOTE: The raw command is only 2 bytes, which Ray gets right.  Even so, it still has legacy for Gold, which misunderstands the command to be 3 bytes due to the assumption that this command would use the same format as `DA`.

USAGE:
```
	tempo_relative -2
```

## `EA` **Manual RST**

VARS:
- Byte 2-3 = Pointer to the RST for the channel that runs into this command.

USAGE:
```
	restart_channel .rst1
```

## `EB` **Present A New ID**

VARS:
- Byte 2-3 = Song/Sound Effect ID to play

USAGE:
```
	new_song MUSIC_AZALEA_TOWN
```

## `EC` **Turn the Music Off**

USAGE:
```
	sfx_priority_on
```

## `ED` **Resume Playing the Music**

USAGE:
```
	sfx_priority_off
```

## `EE` **Jump Only During Active RAM**

VARS:
- Byte 2-3 = Address to jump to.

NOTE: This will only work through external assistance, possibly by certain events activiting the RAM exclusive to this command.

USAGE:
```
	sound_jump_ram Music_NorgeoTown_Ch1.body
```

## `EF` **Stereo Panning**

VARS:
- Nybble 3 = Left Speaker (0 or f)
- Nybble 4 = Right Speaker (0 or f)

USAGE:
```
	stereo_panning TRUE, FALSE
```

## `F0` **Drum Mode Switch (Channel 8)**

VARS:
- Byte 2 = Drum Kit

NOTE: This command is only one byte if used a second time.  Keep track of whether or not it's on when making music.

USAGE:
```
	sfx_toggle_noise 2
	...
	sfx_toggle_noise
```

## `F1` **Pitch Incremental Switch**

NOTE: This is an exclusive command to Ray as the command is empty in Gold.  In Ray, this acts just like `E8` from Red.  It also renders `E6` obsolete in this regard.  However, `F1` and `E6` do stack with each other.  Preambling `E6` with `F1` just means to add by one more than `E6` says.

USAGE:
```
	pitch_inc_switch
```

## `F2` **Animate Sprite According to `wFrameSwap`**

NOTE: This is an exclusive command to Ray as the command is empty in Gold.  In the RARITY prototype of Ray and onward, this is the equivalent to `F1` in Yoshi.  It toggles bit zero of `wFrameSwap` near the end of audio RAM.

USAGE:
```
	frame_swap
```

## `F3` **Treat Sound Data As Music**

NOTE: This is an exclusive command to Ray as the command is empty in Gold.  Acts like `F8` from Red.  Uses the same flags `DF` uses.

USAGE:
```
	set_music
```

## `F4-F8` **NOTHING**

NOTE: In gold, the label is `music0x??` in `F1-F8`.

USAGE (if any):
```
	dummy_f4
	dummy_f5
	dummy_f6
	dummy_f7
	dummy_f8
```

## `F9` **Set Bit 0 of `wSoundEventFlag`**

NOTE: No scripts rely on `wSoundEventFlag`.

USAGE:
```
	set_sound_event
```

## `FA` **Set a Local Condition**

VARS:
- Byte 2 = Activation Statment

USAGE:
```
	set_condition TRUE
```

## `FB` **Jump On Matching Local Condition**

VARS:
- Byte 2 = Activation Statment
- Byte 3-4 = Address to jump to

USAGE:
```
	sound_jump_if TRUE, .mainloop2
```

## `FC` **Jump**

VARS:
- Byte 2-3 = Address to jump to

USAGE:
```
	sound_jump Music_WildPokemonVictory_Ch1.body
```

## `FD` **Loop**

VARS:
- Byte 2 = Loop count (0 to act like `FC`; obsolete)
- Byte 3-4 = Pointer

USAGE:
```
	sound_loop 4, .loop1
```

## `FE` **Call**

VARS:
- Byte 2-3 = Address to call

USAGE:
```
	sound_call .sub1
```

## `FF` **Return / End**

USAGE:
```
	sound_ret
```
