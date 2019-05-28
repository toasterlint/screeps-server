#!/bin/bash
if [ -f "/screeps_data/package.json"]; then
    echo Starting Screeps
    cd /screeps_data
    npx screeps start
else
    echo Initializing Screeps Data
    cd /screeps_data
    npx screeps init
    echo Starting Screeps
    npx screeps start
fi