#!/bin/bash
# Author: Xuedan Fillmore
# Date: 19 September 2020

cp /var/log/syslog ~

grep -E --color -i "error" /var/log/syslog | tee "error_log_check.txt"

echo "body" | mail -s "CRON JOB: sys error log" xufi2940@colorado.edu -A "error_log_check.txt"
