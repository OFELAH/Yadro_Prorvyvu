@echo off
REM YadroSyncLauncher - запуск синхронізації кожні 5 хвилин
:loop
python "%~dp0YadroSync.py"
timeout /t 300
goto loop
