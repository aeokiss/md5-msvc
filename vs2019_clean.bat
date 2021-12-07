@echo off

@call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat"

@set SrcDir=md5
@set ResDir=res

cd %SrcDir%

nmake -f ..\%ResDir%\Makefile.msvc clean

cd ..

pause
