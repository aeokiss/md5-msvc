@echo off

@call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"

@set SrcDir=md5
@set ResDir=res

cd %SrcDir%

nmake -f ..\%ResDir%\Makefile.msvc clean

cd ..

pause
