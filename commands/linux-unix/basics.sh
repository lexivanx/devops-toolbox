# create a tarball
tar -cvf {archive-name}.tar /path/to/dir

# compress tarball
gzip {archive-name}.tar

# decompress and extract
tar -zxvf {archive-name}.tar.gz

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
cat << EOF > stream.txt