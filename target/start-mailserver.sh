#!/bin/bash

touch /var/log/mail.log
tail -fn 0 /var/log/mail.log

exit 0
