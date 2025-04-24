@echo off
set ZIP_NAME=backup_%date:~-4%_%date:~3,2%_%date:~0,2%.zip
cd /d "G:\Мій диск\Obsidian_Yadro\Yadro_Proryvu"
powershell Compress-Archive -Path "Ядро хмара (нова система)\*" -DestinationPath %ZIP_NAME%
echo [ОРАВІС] Резервна копія створена: %ZIP_NAME%
pause
