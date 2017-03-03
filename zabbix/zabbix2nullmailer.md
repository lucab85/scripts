# Zabbix to nullmailer

Successuffly tested in Ubuntu 16.04.1 LTS and Zabbix 2.4.

Workaround to let Zabbix to send a mail through the sendmail system even through the smtp port builtin.


Follow the steps of manual for 2.4 release: [https://www.zabbix.com/documentation/2.4/manual/config/notifications/media/script](https://www.zabbix.com/documentation/2.4/manual/config/notifications/media/script)

step 0:
setup nullmailer or ssmtp

step 1:
locate "AlertScriptsPath" directory in "/etc/zabbix/zabbix_server.conf"
Ubuntu 16.04: AlertScriptsPath=/usr/lib/zabbix/alertscripts

step 2:
create "zabbixMailScript.sh" and give execution flag

	#!/bin/bash
	
	to=$1
	subject=$2
	body=$3
	 
	cat <<EOF | mail -s "$subject" "$to"
	$body
	EOF


step 3:
configure Zabbix to use that script in:
* Administration -> Media types
* Administration -> Users
