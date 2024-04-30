:: Copyright moonabyss. All Rights Reserved.
@echo off

call "%~dp0..\..\devops_data\config.bat"

call rmdir /s /q "%ArchivePath%\Windows"
call mkdir "%ArchivePath%"
call copy /y "%~dp0..\misc\zip_game.bat" "%ProjectRoot%\Build"

"%RunUATPath%" BuildCookRun ^
-project="%ProjectPath%" ^
-platform="%Platform%" ^
-clientconfig="%Configuration%" ^
-archivedirectory="%ArchivePath%" ^
-build -cook -package -stage -archive -pak -allmaps
