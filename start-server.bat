@echo off
title SyncWave - Server :3001
color 0B
if not exist "server\node_modules" (
    cd server & call npm install --no-optional --legacy-peer-deps & cd ..
)
cd server
npm run dev
