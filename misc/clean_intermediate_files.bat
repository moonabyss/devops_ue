:: Copyright moonabyss. All Rights Reserved.
@echo off

call "%~dp0..\..\devops_data\config.bat"

pushd %ProjectRoot%
FOR %%f IN (%DirsToRemove%) DO (
    rmdir /s /q %%f
)

FOR %%f IN (%FilesToRemove%) DO (
    del /q %%f
)
popd

pushd "%PluginsPath%"
for /D %%D in ("%PluginsPath%\*") do (
    FOR %%f IN (%DirsToRemove%) DO (
        rmdir /s /q "%%D\%%f"
    )
)
popd
