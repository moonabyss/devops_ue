:: Copyright moonabyss. All Rights Reserved.
@echo off

call "%~dp0..\..\devops_data\config.bat"

rmdir /s /q "%ArchivePath%\Windows"

"%RunUATPath%" BuildCookRun ^
-project="%ProjectPath%" ^
-platform="%Platform%" ^
-clientconfig="%Configuration%" ^
-archivedirectory="%ArchivePath%" ^
-build -cook -package -stage -archive -pak -allmaps

copy /y "..\Misc\zip_game.bat" "%ArchivePath%
