# 0x04. Loops, conditions and parsing
> ## Foundations - System engineering & DevOps ― Bash

![github version](https://d25lcipzij17d.cloudfront.net/badge.svg?id=gh&type=6&v=1.1.1&x2=0)

<p align="center">
  <img src="http://www.holbertonschool.com/holberton-logo.png">
</p>

### General :wrench:

* How to create SSH keys :key:

ssh-keygen generates, manages and converts authentication keys for ssh
Ssh-keygen is a tool for creating new authentication key pairs for SSH. Such key pairs are used for automating logins, single sign-on, and for authenticating hosts.


* What is the advantage of using #!/usr/bin/env bash over #!/bin/bash

The advantage of ```#!/usr/bin/env bash``` is that it will use whatever bash executable appears first in the running user’s ```$PATH variable```.
If you have two version of bash installed as follows and PATH set to ```/home/juan/bin:/usr/local/bin:/usr/bin:/bin:/usr/games/bin:/bin:/usr/bin```, than bash4 will execute the script:
```
/bin/bash # <-- bash3
/usr/local/bin/bash # <-- bash4
```

* How to use while, until and for loops

The __while__ and __until__ loops are similar to each other. The main difference is that the while loop iterates as long as the condition evaluates to true and the until loop iterates as long as the condition evaluates to false.

If you have any questions or feedback, feel free to leave a comment.


* How to use if, else, elif and case condition statements
* How to use the cut command
* What are files and other comparison operators, and how to use them

### ARITHMETIC


| OPERATOR	    | NAME			 | EXAMPLE			|
| --------------------- | --------------------- | ----------------------------- |
| +			| plus 			| let "z= 5 + 2" 		|
| -                     | minus 		| let "z= 5 - 2"                |
| *                     | multiplication        | let "z= 5 * 2"		|
| /                     | division              | let "z= 5 / 2"		|
| **                    | exponentiation        | let "z= 5 **2"		|
| +=			| plus-equal (increment variable by a constant)| let "var += 5" |
| -=			| minus-equal (decrement variable by a constant)| let "var -= 5" |
| *=			| times-equal (multiply variable by a constant) | let "var *= 4" |
| /=			| slash-equal (divide variable by a constant) | let "var *= 4" |
| %=			| mod-equal (remainder of dividing variable by a constant) | let "var *= 4" |
| <<			| bitwise left shift (multiplies by 2 for each shift position)| let "var << 2" |
| <=			| left-shift-equal results in var left-shifted 2 bits (multiplied by 4)  | let "var <<= 2" |
| >>			| bitwise right shift (divides by 2 for each shift position) | |
| >>=			| right-shift-equal (inverse of <<=)| |
| &			| bitwise AND | |
| &=			| bitwise AND-equal |  |
| \|			| bitwise OR |  |
| \|=			| bitwise OR-equal |  |
| ~			| bitwise NOT |  |
| ^			| bitwise XOR |  |
| ^=			| bitwise XOR-equal |  |
| !			| NOT |   if [ ! -f $FILENAME ]|

```
# Bash, version 2.02, introduced the "**" exponentiation operator.
let "z=5**3"    # 5 * 5 * 5
echo "z = $z"   # z = 125
```


### FILES

##### Returns true if...

| OPERATOR	    | FUNCTION			 | 
| --------------------- | --------------------- | 
| -e			| file exist		| 
| -a			| file exists This is identical in effect to -e. It has been "deprecated," [1] and its use is discouraged.|
| -f			| file is a regular file (not a directory or device file) |
| -s			| file is not zero size |
| -d			| file is a directory|
| -b			| file is a block device |
| -c			| file is a character device |
| -p			| file is a pipe      |
| -h			| file is a symbolic link|
| -L			| file is a symbolic link|
| -S			| file is a socket|
| -t			| file (descriptor) is associated with a terminal device This test option may be used to check whether the stdin [ -t 0 ] or stdout [ -t 1 ] in a given script is a terminal.|
| -r			| file has read permission (for the user running the test)|
| -w			| file has write permission (for the user running the test) |
| -x			| file has execute permission (for the user running the test)|
| -g			| set-group-id (sgid) flag set on file or directory If a directory has the sgid flag set, then a file created within that directory belongs to the group that owns the directory, not necessarily to the group of the user who created the file. This may be useful for a directory shared by a workgroup.|
| -u			| set-user-id (suid) flag set on file A binary owned by root with set-user-id flag set runs with root privileges, even when an ordinary user invokes it. [2] This is useful for executables (such as pppd and cdrecord) that need to access system hardware. Lacking the suid flag, these binaries could not be invoked by a non-root user.|
| -k			| sticky bit set Commonly known as the sticky bit, the save-text-mode flag is a special type of file permission. If a file has this flag set, that file will be kept in cache memory, for quicker access. [3] If set on a directory, it restricts write permission. Setting the sticky bit adds a t to the permissions on the file or directory listing. This restricts altering or deleting specific files in that directory to the owner of those files.|
| -O			| you are owner of file |
| -G			| group-id of file same as yours |
| -N			| file modified since it was last read |
| f1 -nt f2		| file f1 is newer than f2 |
| f1 -ot f2		| file f1 is older than f2 |
| f1 -ef f2		| files f1 and f2 are hard links to the same file |


support links

* [Loop](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_01.html)
* [files](http://tldp.org/LDP/abs/html/fto.html)
* [Other Comparison Operators](http://tldp.org/LDP/abs/html/comparison-ops.html)
* [Operators](http://tldp.org/LDP/abs/html/ops.html)
