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



