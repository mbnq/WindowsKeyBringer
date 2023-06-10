:: script by mbnq.pl
:: mbnq00@gmail.com
 
@echo off
title Windows Key Bringer by mbnq.pl
color 17
setlocal enabledelayedexpansion
cls

:: variables
set _regpath="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
set _output0=
SET _result=
set /a _counter=0

:: main
cls
call :intro

REG QUERY %_regpath% /v BackupProductKeyDefault | find /i "BackupProductKeyDefault" > tempfile.tmp
set /p _output0= < tempfile.tmp
del tempfile.tmp
SET _result=%_output0:~40%
echo:Windows10 key^: %_result% 

call :hold

goto end

:hold
   echo:
   echo:Press any key to quit...
   pause > nul
   goto end

:intro
   echo:лллллллллллллллллллллллллллллллллллллллллллллллллллллл
   echo:л                                                    л
   echo:л                       mbnq.pl                      л
   echo:л                              Windows Key Bringer   л
   echo:лллллллллллллллллллллллллллллллллллллллллллллллллллллл
   echo:
   goto end

:end