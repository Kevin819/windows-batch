@echo off
setlocal EnableDelayedExpansion
if "%~1"=="" (
  echo please input parameter.
  echo usage:rename.bat arg1
 ) 
if %1 geq 1000 (
  echo arg1>=1000
  exit /b 1
 ) 
rem que ==
rem neq !=
rem gtr >
rem geq >=
rem leq <=
rem lss <

for /f %%n in ('dir /b *.jpg') do (
  ren %%n %%n_
  )
set a=%1
for /f %%n in ('dir /b *.jpg') do (
  if !a! lss 10 (
    ren %%n 00!a!.jpg
    echo %%n -^> 00!a!.jpg
  ) else if !a! lss 100 (
    ren %%n 0!a!.jpg
    echo %%n -^> 0!a!.jpg
  ) else (
    ren %%n !a!.jpg
    echo %%n -^> !a!.jpg
  )
  set /A a+=1
 ) 
 echo Finished
 exit /b 0
 
