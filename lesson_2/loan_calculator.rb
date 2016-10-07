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

interest_rate = ''
def calc_it(apr)
  # convert APR to float and round to 2
  # decimal points to get mo interest rate - interest_rate
  interest_rate = (apr.to_f / 12).round(2)
end

monthly_payment = ""
def mo_paymt_calc(loan_mos)
  monthly_payment = loan_total * (interest_rate / (1 - (1 + interest_rate)**-loan_mos))
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
  # get the loan amount = loan_total
  loan_total = ''
  loop do
    prompt(MESSAGES['loan_amt'])
    loan_total = Kernel.gets().chomp()
    if number?(loan_total)
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
<<<<<<< HEAD
      calc_it(apr)
=======
      # convert APR to float and round to 2
      # decimal points to get mo interest rate - j
      j = (apr.to_f / 12).round(2)
      puts "Your annual interest rate is #{j}"
>>>>>>> 6c9e2be4880229ce129375f493db5c45b336c922
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
      loan_months = yr_amount.to_i * 12
      puts "There are #{loan_months} months in #{yr_amount} year(s)"
      break
    else
      prompt(MESSAGES['not_a_num'])
    end
  end
  # the calculation:
<<<<<<< HEAD
  puts "Interest rate is #{interest_rate}"
  # call mortgage calculation method here
  mo_paymt_calc(loan_months)
  prompt("#{name} your monthly payment will be #{monthly_payment}, at #{interest_rate}% interest per month.")
=======
  m = p * (j / (1 - (1 + j)**-n))
  prompt("#{name} your monthly payment will be #{m}")
>>>>>>> 6c9e2be4880229ce129375f493db5c45b336c922

  # see if user wants another calculation...

  prompt(MESSAGES['another'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for using the Mortgage-Loan calculator!")
prompt("Good bye.")
