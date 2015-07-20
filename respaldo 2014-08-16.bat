
rem echo %DATE:~6,4%%DATE:~3,2%%DATE:~0,2%
cd c:\
mkdir tmp
cd c:\tmp
del *.sql
reindexdb pfc
reindexdb winsoft
vacuumdb --analyze --verbose pfc
vacuumdb --analyze --verbose winsoft
pg_dump pfc > pfc.sql
pg_dump winsoft > winsoft.sql

set mydate=%date:~0,4%-%date:~5,2%-%date:~8,2%

rem xcopy *.out c:\backups\winsoft\%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%\* /Y /Q /S
xcopy *.sql c:\backups\winsoft\%mydate% /i /y
cd c:\abaco\librerias

