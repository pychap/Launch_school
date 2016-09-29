#  pseudo-code

# 1 casual
# collect two numbers from user and store in variables
Ask user for number, twice, tell them they will recieve the sum
Add users input
Output input.
#1 formal
START
GET user input for number one
SET number_one = user input
GET user input for number two
SET number_two = user input
Add number_one and number_two
SET above to variable
PRINT variable

#2 a method that takes an array of strings, and returns a string that is all those strings concatenated together
# casual
Given an array of strings
- Iterate through them with each do, joining them, then storing into variable
- Output the variable

# formal
START
SET array of strings to variable
Join arrays with join method using " " as a parameter (empty string to separate)
SET joined above into new variable
PRINT variable

#3 a method that takes an array of integers, and returns a new array with every other element
# casual
Set the array of integers to a variable
- from the variable use each_index method to pull every other one
- get content of every other one 
- initialize a new variable to that
- output the new variable

# formal
START
SET array of integers to a variable
READ variable to each_index do loop with | x | x + 1 to skip every other one(?)
  SET new variable with collected numbers
  Return variable
PRINT variable
