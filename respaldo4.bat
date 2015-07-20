
rem echo %DATE:~6,4%%DATE:~3,2%%DATE:~0,2%
cd c:\
mkdir tmp
cd c:\tmp
del *.out
rem vacuumdb --analyze --verbose pfc
rem vacuumdb --analyze --verbose winsoft
rem reindexdb pfc
rem reindexdb winsoft
pg_dump pfc > pfc.out
rem pg_dump winsoft > winsoft.out

set mydate=%date:~0,4%-%date:~5,2%-%date:~8,2%

rem xcopy *.out c:\backups\winsoft\%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%\* /Y /Q /S
xcopy *.out c:\backups\winsoft\%mydate% /i /y
cd c:\abaco\librerias

