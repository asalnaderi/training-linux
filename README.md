# training-linux

A `README.md` is a text file with special characters that are used for formatting the text once uploaded.
It can be found in the root of any project to provide users with a description of the project
and any helpful instructions such as (assuming the project was a deployable product/service):

* A 'Design Guide' to explain the design of the product
* A 'User Guide' to explain how the product can be used once deployed
* A 'Developer Guide' to explain how a developer can maintain, test and deploy the product

# Training Revision Notes

_INSTRUCTION: Populate this README.md file with markdown text formatted notes about what you've learnt._

See [Getting Started with GitHub Markdown](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github)

This will accomplish a couple of aims:

1. Give you training in Markdown text formatting
2. Introduce you in maintaining good documentation with your projects
3. Help you to think about your learning experience and capture revision notes
4. Provide others looking at your project with a quick understanding of what you've learnt (like a resume)

_Bonus points for making use of Markdown formatting tricks like links, Bullet lists, Tables and Headings._



# General Concepts

| Concepts  | Description |
| --- | --- |
| `Kernel` | The kernel is a computer program at the core of a computer's operating system that manages operation of computer and hardwares |
| `Linux` | Linux is a open source Unix operating system based on the Linux kernal |
| `Unix`  | Linux is a clone of Unix |
| `Interpreter`| Interpreter translates the program line by line into machin code |
| `Complier`| Complier scans the whole program and converts it into machin code |
| `Shell scripting`| it is a text file which contain list or series of command or statements to be executed |
| `Root user`| it is an admin user that allows you full control of your system|
| ` prompt`| 
| `AWK`| programming language which also executes operations on a line-by-line basis just like Unix utilities |
| `wildcards` | A wildcard is a symbol that takes the place of an unknown character or set of characters. Commonly used wildcards are the asterisk ( * ) and the question mark ( ? ) |
|`/etc directory`| The /etc (et-see) directory is where a Linux system's configuration files live. It stores storage system configuration files, executables required to boot the system, and some log file |




# Commands

| Commands  | Description |
| --- | --- |
| `ls` | List the files and folders of the **location currently opened** in the terminal. Many times used as *ls -lah* which shows hidden files as well as it converts file-sizes to a human-readable form |
|`cd`| Change directory. Allows you to move in your disk from one location to another |
|`pwd`| Change directory. Allows you to move in your disk from one location to another |
|`mkdir`| Creates a new folder under the currently opened location (single folder) |
|`mkdir -p`| If you want to create a hierarchy of folders you can use the -p parameter |
|`cp`| Copies a file from one location to another. If you want to copy a folder, use the ‘-R’ flag |
|`rm and rmdir`| Delete a file or a folder |
|`cat`| displays the contents of one or more files without having to open the file for editing |
|`more and less`| to view multiple files at once. more allows us to view them as a single file separated by lines, and less allows us to switch between them. However, both more and less display all the opened files with the same options |
|`grep`| Filters a text file on the keyword you specify |
|`pipe`| used to combine two or more commands, and in this, the output of one command acts as input to another command, and this command's output may act as input to the next command, and so on |
|`man` | Displays the manual page of any supported command |
|`ln`| used to create a hard link or a symbolic link (symlink) to an existing file or directory |
|`sed`| stream editor is a powerfull tool for editing text file from the commandline without entering any texteditors|
| `diff`| shows the diffrences between files and how to fix them to make files identical |
|`Tar`| help us to group files and directories into archives on the other word downloading, archiving and compressing |
|`echo`| used for displaying lines of text or string which are passed as arguments on the command line. This is one of the basic command in linux and most commonly used in shell scripts |
|`tail`| will output the first part of the file |
|`head`| will output the first part of the file |
|`àlias`| lets you create a shortcut name for a command, file name, or any shell text |

# Commands Exaples

| Commands  | Description |
| --- | --- |
|     |     |
|     |     |
|     |     |
|     |     |
|     |     |
|     |     |
 



- [x] **Components of Linux:**
- [ ] Kernal
- [ ] Gui
- [ ] Sysyem utilities
- [ ] Application programs

- [x] **Available Editor in Unix:**
- [ ] Vi/Vim
- [ ] Gedit
- [ ] Nano
- [ ] Sublime
- [ ] Atom
- [ ] GNU emacs
- [ ] Brackets

- [x] **grep essential flags:**
- [ ] -i (case-insensitive search)
- [ ] -l (list only the names of matching files)
- [ ] -w (which matches whole words only)
- [ ] -v (invert; this lists only the lines that do not match the pattern)

 ### diffrent between cat & echo:
 
      * cat is for listing contents of any file. echo is for listing value of some variable. Besides, echo without any value is used to insert a new line in many shell scripts
      
      
**SED or stream editor:**
Replacing strings and files is the most popular use of SED. 

|SED | components |
|-----:|-----------|
|     1| input stream|
|     2| pattern space|
|     3| hold buffer|
|     4| output stream



















