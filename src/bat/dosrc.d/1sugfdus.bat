@echo off
if exist %USERDRV%:\bin\*.exe goto done
echo.
echo FreeDOS userspace tools can be installed with: insfdusr
:done
