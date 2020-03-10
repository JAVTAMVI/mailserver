<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="mailserver_0"></a>mailserver</h1>
<p class="has-line-data" data-line-start="2" data-line-end="3">A simple mail server for testing purposes (smtp, imap, roundcube) with MySQL database</p>
<p class="has-line-data" data-line-start="4" data-line-end="5">Configure build:</p>
<ul>
<li class="has-line-data" data-line-start="6" data-line-end="8">
<p class="has-line-data" data-line-start="6" data-line-end="7">Configure Environment variables in file .env</p>
</li>
<li class="has-line-data" data-line-start="8" data-line-end="10">
<p class="has-line-data" data-line-start="8" data-line-end="9">Configure virtual mail domain name and virtual users in file target/postfix/create-users.sql</p>
</li>
</ul>
<p class="has-line-data" data-line-start="10" data-line-end="11">Build image:</p>
<p class="has-line-data" data-line-start="12" data-line-end="17">docker-compose build \<br>
–build-arg MAIL_HOSTNAME=&lt;your-hostname&gt; \<br>
–build-arg MAIL_DOMAINNAME=&lt;your-mail-domain&gt; \<br>
–build-arg CONTAINER_NAME=&lt;your-container-name&gt; \<br>
–build-arg MYSQL_ROOT_PASSWORD=&lt;your-mysql-root-password&gt;</p>
<p class="has-line-data" data-line-start="18" data-line-end="19">Create container:</p>
<p class="has-line-data" data-line-start="20" data-line-end="21">docker run -p 80:80 -d faperezg/mailserver</p>
<p class="has-line-data" data-line-start="22" data-line-end="23">References:</p>
<ul>
<li class="has-line-data" data-line-start="24" data-line-end="25">ISPmail guide for Debian Stretch (<a href="https://workaround.org/ispmail/stretch">https://workaround.org/ispmail/stretch</a>)</li>
<li class="has-line-data" data-line-start="25" data-line-end="26">Thomas VIAL docker-mailserver image (<a href="https://github.com/tomav/docker-mailserver">https://github.com/tomav/docker-mailserver</a>)</li>
</ul>
