Zabbix template MSSQL Express

Zabbix script to monitor MSSQL Express edition.

Base script (author Stephen Fritz):
https://share.zabbix.com/databases/microsoft-sql-server/template-app-ms-sql-default-installation-lld


Initialize Windows performance counters.

	Control Panel > Administrative Tools > Performance

Counters: 
	MSSQL$SQLEXPRESS:Access Methods
	MSSQL$SQLEXPRESS:Buffer Manager
	MSSQL$SQLEXPRESS:Databases(_Total)
	MSSQL$SQLEXPRESS:General Statistics
	MSSQL$SQLEXPRESS:Latches
	MSSQL$SQLEXPRESS:Locks(_Total)
	MSSQL$SQLEXPRESS:Memory Manager
	MSSQL$SQLEXPRESS:SQL Statistics