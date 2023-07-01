:: Copyright moonabyss. All Rights Reserved.
@echo off

doxygen -g %~dp0Doxyfile
copy "%~dp0..\setup\Doxyfile.template" "%~dp0..\..\devops_data\Doxyfile"
