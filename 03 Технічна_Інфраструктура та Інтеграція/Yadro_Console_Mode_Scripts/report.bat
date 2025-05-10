@echo off
chcp 65001 >nul
echo 📝 Звіт про останні коміти:
cd /d "G:\Мій диск\Obsidian_Yadro\Yadro_Proryvu\Ядро хмара ( нова система )"
git log --oneline -n 5
pause
