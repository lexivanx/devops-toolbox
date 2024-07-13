# create a tarball
tar -cvf {archive-name}.tar /path/to/dir

# compress tarball
gzip {archive-name}.tar

# decompress and extract
tar -zxvf {archive-name}.tar.gz

# refresh the user's bash environment variables, aliases, definitons and other config
source ~/.bashrc

# fin
## find a file of type FILE, ending with .conf, whose owner is root, larger than 20 KiB
## newer than 2020, march 3rd, executing the command and redirecting errors to null device
find / -type f -name *.conf -user root -size +20k -newermt 2020-03-03 -exec ls -al {} \; 2>/dev/null

# redirect STDOUT and STDERR to different files
{some-command} 2> stderr.txt 1> stdout.txt

# redirect STDIN
{some-command} < stdout.txt

# redirect STDIN stream to a file
## write lines in terminal until EOF is writing
## save lines to 'stream.txt' file
# cat << EOF > stream.txt

# grep
## show all users who have disabled standard shell with name /bin/false or /usr/bin/nologin
cat /etc/passwd | grep -v "false\|nologin"
## look for lines containing 'my' OR 'false'
grep -E "(my|false)" /etc/passwd
## look for lines containing 'my' AND 'false'
grep -E "(my.*false)" /etc/passwd
## check contents of file which are uncommented and exclude empty lines
grep -v "^\(#\|$\)" some_file.conf

# cut
## remove delimiters and keep column 1
cat /etc/passwd | grep -v "false\|nologin" | cut -d":" -f1

# tr
## replace delimiter with white space
cat /etc/passwd | grep -v "false\|nologin" | tr ":" " "

# column
## display results as a table
cat /etc/passwd | grep -v "false\|nologin" | tr ":" " " | column -t

# awk
## display first($1) and last result($NF) of the line
cat /etc/passwd | grep -v "false\|nologin" | tr ":" " " | awk '{print $1, $NF}'

# sed
## s -> substitute
## after / -> pattern to replace
## g -> replace all matches
cat /etc/passwd | grep -v "false\|nologin" | tr ":" " " | awk '{print $1, $NF}' | sed 's/bin/XXX/g'

# wc
## count lines
wc -l

# ss
## how many services are listnening, ipv4 and not on localhost (excludes services only accesible from local machine)
## i.e. these services accept connections from external devices and networks:
ss -l -4 | grep -v "127\.0\.0" | grep "LISTEN"

# permissions
## permissions order: owner, group, others
## Binary Notation:                4 2 1  |  4 2 1  |  4 2 1
## Binary Representation:          1 1 1  |  1 0 1  |  1 0 0
## Octal Value:                      7    |    5    |    4
## Permission Representation:      r w x  |  r - x  |  r - -

# chown
## change owner and/or group of file/dir
chown {user}:{group} {file/dir}