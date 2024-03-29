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
|`filesystem`| group of directories which we can drow it upside down tree |
|`~`| represent the user's home directory |



# root or / or filesystem

| Concepts  | Description |
| --- | --- |
| `/Bin`| bash, car, chmod, cp, date, echo, grep and ...|
| `/etc`| crontab, fonts, fstab, Host.conf, Hostname, Host and...|
| `/home`| /John, /Asal, /Roy and ...|
| `/var`|/cach, /lib, /lock, /log, /opt and ...|





# Commands

| Commands and flags  | Description |
| --- | --- |
| `ls` | List the files and folders of the **location currently opened** in the terminal. Many times used as *ls -lah* which shows hidden files as well as it converts file-sizes to a human-readable form |
|`ls -l`| provide long version of listing|
|`ls -lh`| provid human readable listing|
|`\s -a` `ls-la` | provide all files even the hidden files| 
|`ls -lt`| sort files with time modification |
|`ls -ltr`| reverse listing ordered by time|
|`ls -lS`| sort files by size| 
|`..`| will get us to parent directroty of current one|
|`.`| represent the directory theat we are curently in |
|`ls d*`| asterisk informs the shell that we want to see files which have some especific character in this example **d** |
|`ls d D*` |     |
|`echo D*` | just print the path witch we pass|
|`setopt no_nomatch`|    |
|`setopt csh_null_glob` | when we write a command to expand a pattern and you just have a one pattern match with pattern of intrest, shell can not give you any error because by this command you disabled the old pattern other hand to remedy the errors |
|`echo *s`| print the file whitch end with **s**|
|`echo s*` | print the file whitch start with **s**|
|` echo *.jpg`| when we just want to see specific dile for example .jpg |
|`ls *.*`| when we wan to see all files that end with an extension |
|`ls *.?*`| in order to make sure to see all files with one extention, we would use ? |
|`ls *.???*`| we use it to see 3 letters extension |
|`ls [ ]` | we use this command when we want to see the file which start with especific letter or number,we put letter or number in the brackets|
|` ls [ ]* [ ]*`|      |
|` ls file[1-4]` |     |
|` ^` | reverse the pattern. when yoy write it at the first of the command, means you are loking for file which doesnt have that especific character| 
|`[AB] * (.jpg|.txt|.mp4)`| this is other alternative to specific file with some special charachter also especific extention|
|` ls -l *(.)` | dot in paranteses means just show the regular files, no special files no directories|
|`ls -l *(/)`| just shows the directories |
|`ls -l *(*)` | shows executable files |
|` ls -l * (@)` | shows symbolic links |
|`ls -ldh *(LK+2)`| show s all file bigger than 2KB| 






# Commands

| Concepts  | Description |
| --- | --- |
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
| `cd /bin` | If i want to get to bin directory i would write this command|
| `cd` | to back to my home durectory i can write cd with no arguments also i can write full command **(cd /home/Asal)**|
|`hyphen` | **(cd -)** means get back me to the directory which i was|
|`ls -l`| print all list of directory which we currently in|
|`cd name of the file`| move you to the directory of intrest|
|`cd ..`|to get out of the current directory|
|`tab`| outo completion|
|`setopt auto_cd` `auto _cd`| change directory just by writing the name of directory and to get back, just need to write two dots ...**it cancle auto command** |
|`
 



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



 > [!NOTE]
> diffrent between cat & echo: cat is for listing contents of any file. echo is for listing value of some variable. Besides, echo without any value is used to insert a new line in many shell scripts

 


       
 ### Globbing:
   
 * pattern matching(Bash) and file name generation(zshell)
 * we use some special characters(Wildcards) to creat pattern which will expanded by shel
 * asterisk *
 * @
 * carent ^
 * Bracket [ ] 

      



      
**SED or stream editor:**
Replacing strings and files is the most popular use of SED. 

|SED | components |
|-----:|-----------|
|     1| input stream|
|     2| pattern space|
|     3| hold buffer|
|     4| output stream


















