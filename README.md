# fake_app

# LPIC201/202 - Practice

So with this example we can simulate a fake app running on port 8000
or some other kind of external webapp to be reverse proxied into a web server like nginx or apache.
The script opens a socket on port 8000 and can only handle ONE connection. 

How to use it:

The script in intended to be "something" serving data so you can use a simple console and type:

            $ telnet <host> 8000

And the expected result:

      	$ telnet myexample.server.com 8000

      	Trying 123.123.123.123...
      	Connected to myexample.server.com.
      	Escape character is '^]'.
      	This is just a test :) 		<-------------- This is our text

 If it works then you can just launch the script and configure your
 webserver to allow accessing this fake app just by typing for instance: http://somewehere.net/myapp/

NOTE: Just to be sure that the script is up and running, you can put the script into a loop like:

            $ while [ true ] ; do fake_app.sh ; sleep 1 ; done

 or you can also do it like this

            $ watch -n1 fake_app.sh

 Happy testing!

