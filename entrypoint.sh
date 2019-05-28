#!/bin/bash
if [ -f "/screeps_data/package.json"]; then
    echo Starting Screeps
    cd /screeps
    npx screeps start
else
    echo Initializing Screeps Data
    cd /screeps
    npx screeps init /screeps_data
    echo Starting Screeps
    npx screeps start
fi