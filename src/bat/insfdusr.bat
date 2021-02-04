@echo off
unix -s dosemu-installfreedosuserspace
if exist %USERDRV%:\bin\nul path %PATH%;%USERDRV%:\bin
