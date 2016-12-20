#!/bin/bash 

# define a port
PORT="8000"
TESTFILE="/tmp/blah"

# we create our file with some text inside
echo "This is just a test :)" > /tmp/blah
# And open a socket with netcat and send the text over the socket...
nc -l -p $PORT < $TESTFILE
