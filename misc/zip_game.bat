:: Copyright moonabyss. All Rights Reserved.
@echo off

call "%~dp0..\devops_data\config.bat"

del %ProjectPureName%.zip
"%RarPath%" a -afzip %ProjectPureName%.zip Windows
