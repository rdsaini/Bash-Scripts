#!/bin/bash
SERVICE=httpd
if pgrep -x "$SERVICE" > /dev/null
then
#	echo "=====================" >> /root/scripts/service_status.log

	echo "$SERVICE is running" 

else 
	echo "=====================" >> /root/scripts/service_status.log
	echo "$SERVICE is Stopped" >>  /root/scripts/service_status.log

 systemctl start $SERVICE 
 systemctl status $SERVICE | grep -i loaded >> /root/scripts/service_status.log
 systemctl status $SERVICE | grep -i active >> /root/scripts/service_status.log

fi
