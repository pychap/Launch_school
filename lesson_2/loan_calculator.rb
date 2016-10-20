require 'pry'
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

def calc_it(apr)
  (apr.to_f / 12).round(2)
end

def loan_months(yrs)
  # convert years to months
  yrs.to_i * 12
end

def mo_paymt_calc(tot_loan_mos, interest_rate)
  # binding.pry
  interest_rate / (1 - (1 + interest_rate)**-tot_loan_mos)
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
    break if number?(loan_total)
    prompt(MESSAGES['not_a_num'])
  end

  # what's the APR?
  interest_rate = 0
  loop do
    prompt(MESSAGES['what_apr'])
    apr = Kernel.gets().chomp()
    if number?(apr)
      # call the calc_it method
      interest_rate = calc_it(apr)
      break
    else
      prompt(MESSAGES['not_a_num'])
    end
  end
  puts interest_rate
  puts loan_total

  # loan duration in years, converted to months
  tot_months = ''
  loop do
    prompt(MESSAGES['loan_duration'])
    yr_amount = Kernel.gets().chomp()
    if number?(yr_amount)
      # call the method from line 34
      tot_months = loan_months(yr_amount)
    else
      prompt(MESSAGES['not_a_num'])
    end
  end

  # binding.pry
  rate = loan_total * mo_paymt_calc(tot_months.to_i, interest_rate.to_i)
  puts "Your rate is #{rate}"
  # see if user wants another calculation...

  prompt(MESSAGES['another'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for using the Mortgage-Loan calculator!")
prompt("Good bye.")
