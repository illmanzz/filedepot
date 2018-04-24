Loop
{
	FileDelete, .\Documents\*.jpg
	FileDelete, .\Documents\*.jpeg
	FileDelete, .\Documents\*.tga
	FileDelete, .\Documents\*.bin
	FileDelete, .\Documents\user_info.txt
	FileDelete, .\Documents\market_record_point_*.txt
	FileDelete, .\Documents\notice_once_config.txt
	FileDelete, errorrpt_log.txt
	FileDelete, .\Documents\errorrpt_log.txt
	FileDelete, .\dumps\*.dmp
	FileDelete, .\CrashDump\my*
	FileDelete, crash.zip
	FileDelete, .\ccmini\logs\*.txt
	FileDelete, .\ccmini\logs\*.log
	FileDelete, config.ini
	sleep 1
}
return
