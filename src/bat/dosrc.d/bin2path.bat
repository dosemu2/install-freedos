@echo off
if exist %USERDRV%:\bin\nul path %PATH%;%USERDRV%:\bin
if exist %USERDRV%:\links\nul path %PATH%;%USERDRV%:\links
rem below is needed because links are not populated :(
for %%i in (%USERDRV%:\apps\*) do call add_path %%i
rem can run out of env space doing below
rem for %%i in (%USERDRV%:\net\*) do call add_path %%i
rem for %%i in (%USERDRV%:\sound\*) do call add_path %%i
