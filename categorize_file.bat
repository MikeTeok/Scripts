setlocal enabledelayedexpansion

cd 107APPLE
for %%i in (*) do (
for %%a in ("%%i") do set FileDate=%%~ta
set COMB=!FILEDATE:~6,4!!FILEDATE:~0,2!
md ..\!COMB!
move "%%i" ..\!COMB!
)
