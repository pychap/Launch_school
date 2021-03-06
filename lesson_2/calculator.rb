require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

# ask the user for two numbers
# ask user for an operation to perform
# perform the operation on the 2 numbers
# output the result

# answer = Kernel.gets
# Kernel.puts answer

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  # if valid_number is a character(letter), to_i will produce 0
  num.to_i().nonzero?
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['name_welcome'])

# main loop
loop do
  number1 = ''
  loop do
    prompt(MESSAGES['first_num'])
    number1 = Kernel.gets().chomp()
    if number?(number1)
      break
    else
      prompt("Hmm, that doesn't look like a valid number.")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
    if number?(number2)
      break
    else
      prompt("Hmmm, that doesn't look like a valid number.")
    end
  end

  # prompt(number1 + " " + number2)

  operator_prompt = <<-MSG
   What operation would you like to perform?
   1) add
   2) subtract
   3) multiply
   4) divide
  MSG

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_i().to_f() / number2.to_i().to_f()
           end
  prompt("The result is #{result}")

  prompt("Do you want to preform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")
