@ECHO OFF

SET IISExpressExe=C:\Program Files\IIS Express\iisexpress.exe

"%IISExpressExe%" "/path:C:\web3" /port:9090

REM START "." "http://localhost:9090/"


PAUSE