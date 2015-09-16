@ECHO OFF

SET module=%1
SHIFT

:GETTEMPNAME
set PYTHONSTARTUP=%TMP%\import-%RANDOM%.py
if exist "%PYTHONSTARTUP%" GOTO :GETTEMPNAME

echo import %module% > %PYTHONSTARTUP%
python %1 %2 %3 %4 %5 %6 %7 %8 %9
