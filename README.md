# mailserver

A simple mail server for testing purposes (smtp, imap, roundcube) with MySQL database

Configure build:

+ Configure Environment variables in file .env

+ Configure virtual mail domain name and virtual users in file target/postfix/create-users.sql

Build image:

docker-compose build \
	--build-arg MAIL_HOSTNAME=<your-hostname> \
	--build-arg MAIL_DOMAINNAME=<your-mail-domain> \
	--build-arg CONTAINER_NAME=<your-container-name> \
	--build-arg MYSQL_ROOT_PASSWORD=<your-mysql-root-password>

Create container:

docker run -p 80:80 -d faperezg/mailserver

References:

- ISPmail guide for Debian Stretch (https://workaround.org/ispmail/stretch)
- Thomas VIAL docker-mailserver image (https://github.com/tomav/docker-mailserver)
