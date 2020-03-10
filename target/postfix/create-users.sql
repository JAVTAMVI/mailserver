USE mailserver;
INSERT INTO mailserver.virtual_domains (id, name) VALUES ('1', '<your-domain-name>');
INSERT INTO mailserver.virtual_users (domain_id, email, password) VALUES ( (SELECT id FROM virtual_domains WHERE name='<your-domain-name>'), '<your-user-name>@<your-domain-name>', CONCAT('{SHA256-CRYPT}', ENCRYPT ('<your-password>', CONCAT('$5$', SUBSTRING(SHA(RAND()), -16)))));

