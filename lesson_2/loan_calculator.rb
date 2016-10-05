require 'yaml'
MESSAGES = YAML.load_file('mort_apr_calc.yml')
# greet
# ask for loan amount, APR, loan duration in months
# process the information
# output mo/interest rate
# output the length of the loan

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  # if valid_number is a letter will produce 0
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

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Welcome #{name}!")

# main loop
loop do
  # get the loan amount = p
  p = ''
  loop do
    prompt(MESSAGES['loan_amt'])
    p = Kernel.gets().chomp()
    if number?(p)
      break
    else
      prompt(MESSAGES['not_a_num'])
    end
  end
  # what's the APR?
  loop do
    prompt(MESSAGES['what_apr'])
    apr = Kernel.gets().chomp()
    if number?(apr)
      # convert APR to float and round to 2
      # decimal points to get mo interest rate - j
      j = (apr.to_f / 12).round(2)
      puts "Your annual interest rate is #{j}"
      break
    else
      prompt(MESSAGES['not_a_num'])
    end
  end
  # loan duration in years, converted to months
  loop do
    prompt(MESSAGES['loan_duration'])
    yr_amount = Kernel.gets().chomp()
    if number?(yr_amount)
      n = yr_amount.to_i * 12
      puts "There are #{n} months in #{yr_amount} year(s)"
      break
    else
      prompt(MESSAGES['not_a_num'])
    end
  end
  # the calculation:
  m = p * (j / (1 - (1 + j)**-n))
  prompt("#{name} your monthly payment will be #{m}")

  # see if user wants another calculation...

  prompt(MESSAGES['another'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for using the Mortgage-Loan calculator!")
prompt("Good bye.")
