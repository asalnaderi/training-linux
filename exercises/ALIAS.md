## Alias

_At any point you can use `man <command>` to help find out how to use a command and what flags are needed to complete the tasks or search google for examples._

### Create shortcut aliases for common commands

`alias` is a command that allows you to create shorthand 'aliases' for long commands.
It can save you time and make you more productive.

An alias is created with `alias="<command which can include flags>"` and can be used like
any normal command, but it will replace itself with the command in the double-quotes before executing.

This example creates an alias `wcl` to count lines in a file using the `wc -l` combination.
Try this command:

```shell
alias wcl="wc -l"
```

* Try using your new alias on a file:

```shell
wcl products.csv
```

_You should see the same output as `wc -l products.csv`_

* Open a new terminal window
* Navigate to your folder containing `products.csv`
* Try the alias you previously created in the other terminal window `wcl products.csv`

_You should get an error that the command `wcl` doesn't exist_

This is because the alias was created in the other terminal window and isn't available
to any other terminal window unless you define it again using `alias="wc -l"`

Define the alias again and check it works in this new terminal window.

### Making an alias always available

You can make an alias available to all your new terminal windows by saving the alias command
in your `~/.bashrc` file for bash terminals (the default on Linux)
or `~/.zshrc` file for z-shell terminals (the default on Mac). 

* Open with `nano` the home folder `~/.bashrc` or `~/.zshrc` file for your terminal shell type
* Cursor to the bottom of the file and add some blank lines
* Add your alias command `wcl="wc -l"` at the bottom and **save**, **exit**
* Open a new terminal window, navigate (`cd`) to your folder with `products.csv`
* Check the alias is working with `wcl products.csv` gives the same output as `wc -l products.csv`

### Exercise

Add a new alias called `ll` (letter l twice) to run the `ls -al` command and add to your home folder
`.?rc` file so this command will always show the long file list when used in new terminal windows.




