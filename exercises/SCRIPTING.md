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