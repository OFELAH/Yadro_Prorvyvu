@echo off
chcp 65001 >nul
cls
echo.
echo ==== [СТАРТ] Універсальний запуск Ядра Прориву ====
echo.

echo [1] Статус репозиторію:
call status.bat
echo.

echo [2] Синхронізація з GitHub:
call sync.bat
echo.

echo [3] Звіт поточного стану:
call report.bat
echo.

echo [4] Резервне копіювання:
call backup.bat
echo.

echo ==== [ЗАВЕРШЕНО] Всі основні скрипти виконано ====
pause
