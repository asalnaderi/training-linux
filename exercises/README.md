## Linux Basics

Use `man <command>` to help find out how to use a command and what flags are needed to complete the tasks.

### Download CSV files with `curl`

Download the following files using `curl` command and save the content into files of the same name in this folder using the shell `>` redirect.

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

