@echo off
cd /d "G:\Мій диск\Obsidian_Yadro\Yadro_Proryvu\Ядро хмара (нова система)"
git add .
git commit -m "Автосинхронізація з Obsidian"
git push
echo [ОРАВІС] Синхронізація завершена.
pause
