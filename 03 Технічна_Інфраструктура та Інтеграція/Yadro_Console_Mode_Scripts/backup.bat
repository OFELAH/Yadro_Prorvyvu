@echo off
chcp 65001 >nul
echo 🔄 Резервне копіювання Ядра...
xcopy /E /I /Y "G:\Мій диск\Obsidian_Yadro\Yadro_Proryvu\Ядро хмара ( нова система )" "G:\Мій диск\Обсидиан_Резерв"
echo ✅ Резервне копіювання завершено.
pause
