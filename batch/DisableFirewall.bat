@echo off
SET F="%TEMP%\%RANDOM%.txt"

echo advfirewall > %F%
echo set store gpo = %COMPUTERNAME% >> %F%
echo set allprofiles state off >> %F%

netsh -f %F%
del %F%

sc stop MpsSvc
sc start MpsSvc
