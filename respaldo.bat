
rem echo %DATE:~6,4%%DATE:~3,2%%DATE:~0,2%
cd c:\
mkdir tmp
cd c:\tmp
del *.sql
reindexdb -U dba -W pfc
reindexdb -U dba -W winsoft
vacuumdb --analyze --verbose --full -U dba -W pfc
vacuumdb --analyze --verbose --full -U dba -W winsoft
pg_dump -U dba -W pfc > pfc.sql
pg_dump -U dba -W winsoft > winsoft.sql

set mydate=%date:~0,4%-%date:~5,2%-%date:~8,2%

rem xcopy *.out c:\backups\winsoft\%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%\* /Y /Q /S
xcopy *.sql c:\backups\winsoft\%mydate% /i /y
cd c:\abaco\librerias

