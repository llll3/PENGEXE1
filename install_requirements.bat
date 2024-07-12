@echo off
cd /d %~dp0

:: Проверяем наличие ZIP-файлов
for %%a in (*.zip) do (
    :: Распаковываем архив
    echo Распаковка %%a...
    7z x "%%a" -o"%%~dpa"
    :: Удаляем архив
    echo Удаление %%a...
    del "%%a"
)

python -m pip install -r dir\requirements.txt
:: del "%~f0"
del "%~f0"
exit
