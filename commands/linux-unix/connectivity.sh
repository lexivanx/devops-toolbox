# curl
## -x   === proxy
## -L   === follow HTTP redirects
## -k   === ignores invaldi and self-signed certificate errors
## -vv  === very verbose output
## --max-time 5
## --user
### pass and username must be in single quotes if special symbols present
curl -k -v --user username:'password' https://{url} -x {proxy-ip}:{proxy-port}

## curl with telnet
curl -vv telnet://{host}:{port}

# telnet
telnet -v -w 5 {host} {port}

# netcat
## -z   === scan for listening daemons w/o sending data
nc -vz -w 5 {hort} {port}
