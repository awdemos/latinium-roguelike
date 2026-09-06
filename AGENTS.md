# Agent Notes: latinium-roguelike

A turn-based dungeon-crawler roguelike written in OpenLatinum (a Latin-themed programming language). The game runs in a custom C VM and features a fully Latin UI.

## Repository Layout

- `roguelike.lat` — Source code for the game in OpenLatinum.
- `roguelike.vms` — Precompiled VM bytecode (build artifact).
- `demo.sh` — Automated demo script that plays through a short sequence.
- `README.md` — Game rules, controls, and build instructions.

## Prerequisites

Install the OpenLatinum compiler and build the C VM:

```bash
git clone https://github.com/awdemos/OpenLatinium.git
cd OpenLatinium
pip install -e .

unzip vms-source.zip -d /tmp/vms
cd /tmp/vms/vms
make
```

The VM binary will be at `/tmp/vms/vms/vms`.

## Build and Run

```bash
# Compile
cd latinium-roguelike
lat build roguelike.lat -o roguelike.vms

# Run with the C VM
/tmp/vms/vms/vms roguelike.vms

# Or use the OpenLatinum convenience command
lat run roguelike.lat
```

## Automated Demo

```bash
./demo.sh
```

## Controls

Movement:
- `n`/`k` — North (up)
- `s`/`j` — South (down)
- `e`/`l` — East (right)
- `w`/`h` — West (left)

Combat:
- `a` — Attack
- `f` — Flee

General:
- `q` — Quit
- Enter — Redraw screen

## Key Conventions

- The game logic, strings, and UI are in Latin.
- Do not edit `roguelike.vms` directly; regenerate it from `roguelike.lat`.
- `demo.sh` expects the OpenLatinum compiler and VM binary to already be installed.

## Common Issues

- **`lat: command not found`**: install the OpenLatinum compiler (`pip install -e /path/to/OpenLatinium`).
- **VM binary missing**: unzip and build the C VM source from `vms-source.zip`.
- **Latin source errors**: OpenLatinum is still evolving; check `OpenLatinium` docs for current syntax.

## License

See `LICENSE`.
