# Latinium Roguelike

A turn-based dungeon crawler roguelike game written entirely in [OpenLatinum](https://github.com/awdemos/OpenLatinium)!

## Story

You are a bold explorer who fell asleep in a dark underground cave. Now you wake up! Goblins surround you. There is only one staircase to freedom. Find it!

## Features

- **Procedural Dungeon Generation**: Hand-crafted rooms and corridors
- **Interactive Combat System**: Turn-based combat with attack/flee choices
- **Monster AI**: Goblins (g) chase and attack with hit chance and damage variance
- **Items**: Health potions (!) heal +5 HP
- **Win Condition**: Find the stairs (>) to escape
- **Full Latin UI**: All text in Classical Latin

## How to Play

### Prerequisites

Install the OpenLatinum compiler:

```bash
git clone https://github.com/awdemos/OpenLatinium.git
cd OpenLatinium
pip install -e .
```

Build the C VM (required for running):

```bash
unzip vms-source.zip -d /tmp/vms
cd /tmp/vms/vms
make
# Binary will be at /tmp/vms/vms/vms
```

### Run the Game

```bash
lat run roguelike.lat
```

Or compile and run manually:

```bash
lat build roguelike.lat -o roguelike.vms
/tmp/vms/vms/vms roguelike.vms
```

### Controls

- `n` or `k` - Move North (up)
- `s` or `j` - Move South (down)
- `e` or `l` - Move East (right)
- `w` or `h` - Move West (left)
- `q` - Quit game
- Enter - Redraw screen

### Combat Controls

When encountering a monster:
- `a` - Attack (80% hit chance, 1-3 damage)
- `f` - Flee (60% success, or monster gets free attack)

### Symbols

- `@` - You (the player)
- `g` - Goblin (enemy)
- `!` - Health potion
- `>` - Stairs (escape to win!)
- `#` - Wall
- `.` - Floor

### Game Mechanics

- **Combat**: Walk into enemies to initiate combat. Choose to attack or flee.
- **Healing**: Walk into potions (!) to pick them up and heal +5 HP
- **Death**: If HP reaches 0, game over
- **Victory**: Reach the stairs (>) with at least 1 HP

## Technical Details

This demo showcases OpenLatinum language features:

- **Arrays**: 1D array used as 2D dungeon map
- **Functions**: 25+ functions with parameters and return values
- **String operations**: Concatenation for UI rendering
- **Control flow**: if/else, while, for loops
- **Pseudo-random**: LCG algorithm for procedural generation
- **Global state**: Player, monsters, items tracked in parallel arrays
- **Interactive input**: Real-time combat system with player choices

## Files

- `roguelike.lat` - Main game source (~520 lines of OpenLatinum)
- `roguelike.vms` - Compiled bytecode
- `demo.sh` - Demo script
- `README.md` - This file

## Screenshot

```
+========================================================+
|                                                        |
|           LATINIUM ROGUELIKE                           |
|                                                        |
+========================================================+

+----------------------------------------+
|           PUGNA!                       |
+----------------------------------------+
Goblinus appropinquat! PV: 2

Tuus PV: 8 | Goblinus PV: 2

Quid facis? (a=oppugnare, f=fugere)
> a
Percussisti goblinum! Dammum: 2
Goblinus mortuus est! XP +10
```

## License

MIT License - Part of the OpenLatinum project.

## Credits

Built with [OpenLatinum](https://github.com/awdemos/OpenLatinium) - A Latin-inspired programming language with a stack-based virtual machine.
