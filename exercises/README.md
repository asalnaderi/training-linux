## Linux Basics

_At any point you can use `man <command>` to help find out how to use a command and what flags are needed to complete the tasks or search google for examples._

### Download CSV files with `curl`

Curl can be used to download files from the internet (`http` addresses - same as web pages).
The structure of the command will be: `curl <http address>`.  Start with the following command:

```shell
curl https://data.neo4j.com/northwind/products.csv
```

You should see csv text content in the terminal window.

Next we will use the Linux redirect character `>` to write the contents to a local file
instead of printing to the console (console = terminal window).  The structure of a redirect is
`<command> > <filename>` where `<command>` can be anything that prints text and `<filename>`
will be the name and extension of the file you want to save the text into.

Start with the following command:

```shell
ls -al > list.txt
```

Now check the contents of `list.txt`

Now combine the above `curl` and `>` redirect examples and download the following files into your local folder. 

```shell
https://data.neo4j.com/northwind/products.csv
https://data.neo4j.com/northwind/categories.csv
https://data.neo4j.com/northwind/suppliers.csv
```

### Get line count using `wc`

* Find the command needed to count the number of lines (not words) in each file.
* Find the command needed to count the number of lines (not words) in all files in one command.

### Use the `head` and `tail` commands

* Use the `head` command on your downloaded `products.csv`
* Use the `tail` command on your downloaded `products.csv`
* Understand the difference between these two commands
* Find the command to print the first 5 lines of `products.csv`
* Find the command to print the last 5 lines of `products.csv`

### Use the `tail` to follow a text file contents

In one terminal window run the `tail -f <filename>` command on the `categories.csv` file.
This should show the contents but no return the cursor back to the terminal window.

* Open another terminal window
* `cd` to your `training-linux` folder
* Open to edit the `categories.csv` file using `nano`
* Move the cursor to the line below the last entry
* Add the following line `9,Burgers,"Burgers and chips",0`
* Save the change and exit

Return to your original terminal window (running the `tail` command) and see what changes

In your second terminal window that you used for `nano` command run the following command:

```shell
$ echo "10,Steak,\"Steak and chips\",0" >> categories.csv
```

* `cat` your `categories.csv` to see the content and understand what happened
* Check the first terminal running `tail` to see the changes

