echo off
MODE COM1:9600,n,8,1
ECHO > COM1: @@@
echo ESC [H > com1
echo %1 > com1
