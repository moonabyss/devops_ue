:: Copyright moonabyss. All Rights Reserved.
@echo off

call "%~dp0..\devops_data\config.bat"

del %ProjectPureName%.rar
"%RarPath%" a %ProjectPureName%.rar Windows
