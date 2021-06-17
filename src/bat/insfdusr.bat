@echo off
unix -s dosemu-installfreedosuserspace
if ERRORLEVEL 1 goto failed
if exist %USERDRV%:\bin\nul path %PATH%;%USERDRV%:\bin
echo freedos installation completed.
echo rmfdusr command can be used to remove installed freedos.
goto done
:failed
echo freedos installation failed.
:done
