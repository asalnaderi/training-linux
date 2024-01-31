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

