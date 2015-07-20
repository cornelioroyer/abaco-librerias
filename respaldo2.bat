@echo off
reindexdb pfc
reindexdb winsoft
vacuumdb --analyze --verbose --full pfc
vacuumdb --analyze --verbose --full winsoft

cd \
md backups
cd backups
md winsoft
cd winsoft

set datestr=%date:~0,4%%date:~5,2%%date:~8,2%
echo datestr is %datestr%
set BACKUP_FILE=%datestr%_winsoft.out
set BACKUP_FILE2=%datestr%_pfc.out
echo on
pg_dump winsoft > %BACKUP_FILE%
pg_dump pfc > %BACKUP_FILE2%
