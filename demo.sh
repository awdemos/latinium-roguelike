#!/bin/bash
# Demo script for Latinium Roguelike
# Runs the game with a sequence of moves

echo "=== LATINIUM ROGUELIKE DEMO ==="
echo "Compiling..."
lat build roguelike.lat -o roguelike.vms --ast

echo ""
echo "Running automated demo (sequence: e,e,e,s,s)..."
echo ""

# Provide a sequence of moves and quit
printf '\n\ne\ne\ne\ns\ns\nq\n' | python /var/home/a/code/OpenLatinium/lat/vm_interpreter.py roguelike.vms

echo ""
echo "=== DEMO COMPLETE ==="
