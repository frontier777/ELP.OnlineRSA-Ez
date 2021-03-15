@ECHO OFF

SETLOCAL

SET Success=0
SET ExitCode=1

SET searchreplaceexe=E:\My Projects\Frontier Search and Replace\Solution\Frontier.SearchReplace\bin\Frontier.SearchReplace.exe

IF NOT EXIST "%searchreplaceexe%" CALL :AppNotFoundError "Frontier Search Replace"

SET file1=%~1%
SET file2=%~2%

REM PUSHD ..\rsa
CD ..\rsa
"%searchreplaceexe%" "..\__build\Updates-01.srconfig" *.html /Recurse /Backup
REM /First
REM /Verbose
REM POPD

SET ExitCode=0
GOTO Success

:AppNotFoundError
ECHO.
ECHO Error: A required application was not found. (%*)
ECHO.
GOTO TheEnd

:Success
SET Success=1
REM ECHO Success!
PAUSE
GOTO TheEnd

:TheEnd
IF %Success% == 0 PAUSE
ENDLOCAL & EXIT /B %ExitCode%
