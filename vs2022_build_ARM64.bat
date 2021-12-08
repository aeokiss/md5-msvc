@echo off

@call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x86_arm64

@set SrcDir=md5
@set ResDir=res

cd %SrcDir%

nmake -f ..\%ResDir%\Makefile.msvc clean
nmake -f ..\%ResDir%\Makefile.msvc NO_NLS=1 MFLAGS=-MTd DEBUG=1

cd ..

@set OutputLibDir=build\vs2022\ARM64\Debug

rmdir /S /Q %OutputLibDir%
mkdir %OutputLibDir%

copy %SrcDir%\md5.lib %OutputLibDir%
copy %SrcDir%\md5.h %OutputLibDir%
copy %SrcDir%\global.h %OutputLibDir%
copy %SrcDir%\*.pdb %OutputLibDir%

cd %SrcDir%

nmake -f ..\%ResDir%\Makefile.msvc clean
nmake -f ..\%ResDir%\Makefile.msvc NO_NLS=1 MFLAGS=-MT

cd ..

@set OutputLibDir=build\vs2022\ARM64\Release

rmdir /S /Q %OutputLibDir%
mkdir %OutputLibDir%

copy %SrcDir%\md5.lib %OutputLibDir%
copy %SrcDir%\md5.h %OutputLibDir%
copy %SrcDir%\global.h %OutputLibDir%
copy %SrcDir%\*.pdb %OutputLibDir%

pause
