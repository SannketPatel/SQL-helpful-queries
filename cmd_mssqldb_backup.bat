@echo off

REM Set variables
set "server_name=YourServerName"
set "database_name=YourDatabaseName"
set "backup_path=C:\Path\To\Backup"
set "backup_filename_prefix=YourBackupFile_%date:~7,2%%date:~4,2%%date:~10,4%"

REM Display starting message
echo Starting the backup process for %database_name%...

REM Connect to SQL Server using Windows Authentication and execute backup command
sqlcmd -S %server_name% -E -Q "BACKUP DATABASE [%database_name%] TO DISK = '%backup_path%\%backup_filename_prefix%.bak' WITH FORMAT;"

REM Display ending message
echo Backup process completed for %database_name%.

