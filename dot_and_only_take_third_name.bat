FOR /R %%f IN (*.*) DO CALL :UseLast "%%~f" "%%~nf"

GOTO :EOF

:UseLast
FOR /F "TOKENS=1,3 DELIMS=." %%m IN (%2) DO IF "%%n"=="" (
    IF NOT "%~2"=="%~n1" REN %1 "%~2%~x1"
) ELSE CALL :UseLast %1 "%%n"
GOTO :EOF