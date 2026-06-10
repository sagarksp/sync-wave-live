@echo off
title SyncWave - Client :3000
color 0E
if not exist "client\node_modules" (
    cd client & call npm install --no-optional --legacy-peer-deps & cd ..
)
cd client
npm start
