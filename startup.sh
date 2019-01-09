#!/bin/sh

if [ -z "$ADMIN_PASSWORD" ]; then
        
    echo "No ADMIN_PASSWORD provided for the web interface - exiting"
    exit
fi

echo "Creating auth file in /home/mailhog/auth-file"
htpasswd -Bbc /home/mailhog/auth-file admin $ADMIN_PASSWORD

/usr/local/bin/MailHog -auth-file=/home/mailhog/auth-file