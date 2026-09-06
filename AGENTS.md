# latinium-roguelike

## Deployment

No Dagger module or recognized deployment configuration was found.

General redeploy process:

1. Commit and push changes to the default branch.
2. Trigger the relevant CI/CD pipeline or run the documented deploy command.
3. If the project is served via GitHub Pages, the site redeploys automatically after the push.


## Setup commands
- Install the OpenLatinum compiler: `pip install -e /path/to/OpenLatinium`
- Compile the game: `lat build roguelike.lat -o roguelike.vms --ast`
- Run the compiled game: `/tmp/vms/vms/vms roguelike.vms`
- Or run with the Python VM: `python /path/to/OpenLatinium/lat/vm_interpreter.py roguelike.vms`
- Run the automated demo: `./demo.sh`

## Code style
- OpenLatinum language syntax (Latin-inspired keywords)
- Static typing: declare types explicitly (`integer`, `filum`, `vec<...>`)
- Use snake_case for variable and function names
- Use Latin identifiers where idiomatic (`gover` for game over, `pv` for hit points)
- Keep `main()` as the entry point and split logic into small functions
