# NagiosChecks

## adding a new check to nagios

1. move the script to the libexec folder (defult path: /usr/local/nagios/libexec)
2. change owner and mod of file
```
chown nagios:nagios /usr/local/nagios/libexec/<file> && chmod 755 /usr/local/nagios/libexec/<file>
```
3. create command for the check
4. create service for the check
5. check if nagios configurations are in order (defult path:)
```
/usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg
```
6. restart Nagios service

### check_Download_link

* when configuring the check you need to add the urel as $ARG1$ to allow max flexabilty 
