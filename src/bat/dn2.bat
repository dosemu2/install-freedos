@echo off
if not exist %USERDRV%:\apps\nul goto noapps
echo starting DOS Navigator 2
speed 3
%USERDRV%:\apps\dn2\dn.com
goto done
:noapps
echo run insfdusr to install dn2 and other apps
:done
