#!/bin/bash
if [ -f "/screeps_data/package.json" ]; then
    echo Starting Screeps
    cd /screeps_data
    if [ -z "$SCREEPS_PASS" ]; then
        npx screeps start
    else
        npx screeps start --password $SCREEPS_PASS
    fi
else
    echo Initializing Screeps Data
    cd /screeps_data
    npx screeps init
    echo Starting Screeps
    if [ -z "$SCREEPS_PASS" ]; then
        npx screeps start
    else
        npx screeps start --password $SCREEPS_PASS
    fi
fi
