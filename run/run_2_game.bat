:: Copyright moonabyss. All Rights Reserved.
@echo off

call "%~dp0..\..\devops_data\config.bat"

start "" "%GameExePath%" -WINDOWED -ResX=1280 -ResY=720 -WinX=0 -WinY=40
start "" "%GameExePath%" -WINDOWED -ResX=1280 -ResY=720 -WinX=1280 -WinY=40
