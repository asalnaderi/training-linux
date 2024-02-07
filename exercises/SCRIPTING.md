## Scripting

_A training guide to creating your first bash script_

What we will cover:

* Creating a bash script
* Using variables in the script
* Using parameters (aka arguments) passes to the script
* Using environment variables in your script

### Creating a bash script

* Scripts in Linux are basic text files that are executable (like normal commands such as `ls`)
* Script files have the extension `.sh` to denote a _'shell script'_
* Script files must have the executable permission, the `x` in the files permissions e.g. `-rwxrwxrwx`
* Scripts can contain any command you can run in the terminal window
as a sequence of commands, saving you time and effort if the sequence
of commands is regularly required to perform some task
* Scripts make use of basic programming language features such as:
    * Variables - _e.g. the ability to store values that can change in a named 'container'_
    * Conditions - _e.g. if this condition is true then do something, else, do something different_ 
    * Loops - _e.g. repeating a set of commands on a list of values (like a list of filenames)_

#### Step 1 Creating your first bash script

Scripts 
* Create a new text file called `scripting-exercise-1.sh` using `nano`
* Paste the script below into the file

```shell
#!/bin/zsh
echo $USER
```

* Now try to run the script from the command line using `./scripting-execise-1.sh`

_You should see an error such as `zsh: permission denied: ./scripting-exercises-1.sh`_

* run the `ls -al` command to see the permissions on this script file
* you will see something like `-rw-r--r--` i.e. without any `x` to make it executable 
* run the `chmod 777 scripting-exercise-1.sh` command
* run the `ls -al` command again to see the permissions on this script file
* you will see something like `-rwxrrxrwx` i.e. now it is executable for everyone 

* Now try to run the script from the command line again

_You should see your username output to the terminal window_


#### Step 2 Understanding Variables

* 'Variables' are used in scripts and programming languages to store values (like a piece of text or a number)
* 'Variables' have a name (so you can reference the container by name)
* 'Variables' have a name (so you can reference the container by name)
* The value stored in a variable can be changed

##### Variables in shell scripts

Shell scripts can reference 'Environment Variables' and have 'Local Variables'

* 'Environment Variables' are variables available to any running script or program
* Some 'Environment Variables' come from the Operating System (Mac, Linux, Windows)
* Some 'Environment Variables' come from the user account (either assigned by installed programs or assigned manually by the user themselves)
* 'Local Variables' are variables declared (created) within the script or code itself
* 'Local Variables' are only available within the script that declared them

> Create a new script `variables-exercises-1.sh` with nano and place the following code into it: 

```shell
#!/bin/bash

echo The 'USER' Environment Variable is defined as the logged in user
echo You reference the value using '$USER'
echo The current value of the 'USER' variable is \'$USER\' right now:
echo

export MY_AGE=53
export ABOUT_ME="intelligent, hard-working, humble"

echo About $USER
echo $USER is $ABOUT_ME
echo $USER\'s age is $MY_AGE but I look younger
```

> Remember to run the `chmod 777` command on the variables-exercises-1.sh file so it can be executed

> Run `./variables-exercises-1.sh`

> You should not have any errors, you should see the current logged in user and other text

* Notice how the `echo` command combines both free text and the USER environment variable value using the `$USER` notation 
* You can reference a Variables value by placing a `$` before the name of the Variable
* Notice how the single quotes in the first echo are not shown in the output
* Notice how the single quotes in the third echo line are shown in the output, because they are _escaped_ with `\'`
* Notice how you define you own local variables using `export` to declare a variable and its value
* Notice environment and local variables are referenced exactly the same

> Exercise : Add another local variable called `FAVORITE_COLOR` with a text value of your favorite color,
> and `echo` the value with some text before and after the value.  Output the color value in single quotes.


#### Step 3 Understanding Script Arguments

* 'Arguments' (also called 'Parameters') are _values passed into_ a command or script
* The command `ls` has no arguments, whereas the command `ls -al` has one argument (`-al`)

##### Arguments in shell scripts

Shell scripts can reference 'Parameter Arguments' in a similar way to 'Variables'
but instead of using a name they use an index number
e.g. `$1` to access the first argument passed to the script.

> Create a new script `arguments-exercises-1.sh` with nano and place the following code into it:

```shell
#!/bin/bash

echo This scripts filename is $0
echo This scripts was passed $# arguments
echo This scripts 1st argument value is $1
echo This scripts 2nd argument value is $2
echo This scripts 3rd argument value is $3
echo This scripts 4th argument value is $4
echo This scripts 5th argument value is $5
echo All arguments passed to the script are \'$*\'

```

> Remember to run the `chmod 777` command on the arguments-exercises-1.sh file so it can be executed

> Run `./arguments-exercises-1.sh`

> You should not have any errors, you should see the current logged in user and other text

* Notice how the first line shows the path and script filename used to execute the script using the `$0` reference
* Notice how the second line shows the number of arguments passed using the `$#` reference
* Notice how there are no arguments as we didn't pass any

> Run `./arguments-exercises-1.sh this course is super amazing`

* Notice how each argument can be referenced by its index value, starting with `$1` for the first argument passed

> Exercise : At the bottom of the file, add a local variable called `FIRST` and assign the value 'The first argument value is'
> with the value of first argument at the end of the text.  The `echo` the value of your variable `FIRST`

* The output should now show an extra line at the bottom of `The first argument value is this` (using same above arguments)

> Exercise : Update the `FIRST` variable to show the value in single quotes

* The output should now show an extra line at the bottom of `The first argument value is 'this'` (using same above arguments)
