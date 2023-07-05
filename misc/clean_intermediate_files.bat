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

pushd %PluginsPath%
FOR /R %%d IN (*) DO (
    FOR %%f IN (%DirsToRemove%) DO (
        rmdir /s /q %%f
    )
)
popd
