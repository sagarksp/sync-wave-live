@echo off
title SyncWave - Install
color 0A
echo.
echo  ============================================
echo   SyncWave - Installing...
echo  ============================================
echo.

echo [1/4] Cleaning server\node_modules...
if exist "server\node_modules" rmdir /s /q "server\node_modules"

echo [2/4] Installing server...
cd server
call npm install --no-optional --legacy-peer-deps
if %errorlevel% neq 0 ( echo ERROR: server install failed & cd .. & pause & exit /b 1 )
cd ..

echo [3/4] Cleaning client\node_modules...
if exist "client\node_modules" rmdir /s /q "client\node_modules"

echo [4/4] Installing client...
cd client
call npm install --no-optional --legacy-peer-deps
if %errorlevel% neq 0 ( echo ERROR: client install failed & cd .. & pause & exit /b 1 )
cd ..

echo.
echo  Done! Now run:
echo    start-server.bat  (Terminal 1)
echo    start-client.bat  (Terminal 2)
echo.
pause
