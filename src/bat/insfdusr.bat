@echo off
unix -s dosemu-installfreedosuserspace
if ERRORLEVEL 1 goto failed
call %XBATDRV%:\dosrc.d\bin2path.bat
echo freedos installation completed.
echo rmfdusr command can be used to remove installed freedos.
goto done
:failed
echo freedos installation failed.
:done
