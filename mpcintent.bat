@echo off
set lnk=%1
for /f "useback tokens=*" %%a in ('%lnk:mpc=%') do set lnk=http%%~a
start /d "C:\Program Files (x86)\CMP\MPC-HC\" mpc-hc.exe "%lnk%"
exit