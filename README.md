# Shell HTML Compiler

  This project consists of a conf.d directory. The file in there will go
into the same directory of main.sh. The contents of the files within the
c.d directory will be copied into the HTML, within the body section; when
the compiler is ran.

## head.conf

  The head.conf file contains three paramaters to be configured:
* TITLE
	- The title of your document
* DESC
	- The description of your document
* AUTH
	- The author of your document

The script uses ":" as the delimiter.

## Compiling
  The main.sh file outputs to stdout, which can be redirected with the
">" operator. Here is an example of the command that you would run:

> $ ./main.sh > out.html
