@echo off
chcp 65001 >nul
echo 🔃 Синхронізація з GitHub...
cd /d "G:\Мій диск\Obsidian_Yadro\Yadro_Proryvu\Ядро хмара ( нова система )"
git add .
git commit -m "Автоматична синхронізація"
git push
echo ✅ Синхронізація завершена.
pause
