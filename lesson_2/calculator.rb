# ask the user for two numbers
# ask user for an operation to perform
# perform the operation on the 2 numbers
# output the result

# answer = Kernel.gets
# Kernel.puts answer

Kernel.puts("Welcome to Calculator")
Kernel.puts("What's the first number?")
num1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
num2 = Kernel.gets().chomp()

Kernel.puts(num1 + " " + num2) 
