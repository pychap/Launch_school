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

def loan_months(yrs)
  # convert years to months
  yrs.to_i * 12
end

def clear_screen
  system('clear') || system('cls')
end

def calculate_monthly_payment(month_total, i_rate)
  i_rate / (1 - (1 + i_rate)**-month_total)
end

clear_screen
prompt("Welcome to the Mortgage-Auto loan calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty? || name == ' '
    prompt("Make sure to enter a valid name.")
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
    prompt("What is your loan amount?")
    loan_total = Kernel.gets().chomp()
    if loan_total.empty? || loan_total.to_i <= 0
      prompt("Hmmm, that doesn't look like valid input, please check and re-enter.")
    else
      break
    end
  end
  loan_total = loan_total.to_i
  clear_screen

  # what's the interest rate?
  monthly_interest_rate = 0
  user_interest = 0
  loop do
    prompt("What is the interest rate?")
    prompt("(Example: 4 for 4% or 3.5 for 3.5%)")
    user_interest = Kernel.gets().chomp()
    if user_interest.empty?() || user_interest.to_i <= 0
      prompt("Hmmm, that doesn't look like valid input, please check and re-enter.")
    else # call the calculate_interest method
      user_interest = user_interest.to_f() / 100
      # monthly_interest_rate = calculate_interest(user_interest)
      monthly_interest_rate = user_interest / 12
      break
    end
  end

  # loan duration in years, converted to months
  total_months = 0
  loop do
    prompt("How many years to pay off?")
    yr_amount = Kernel.gets().chomp()
    if yr_amount.empty?() || yr_amount.to_i <= 0
      prompt("Hmmm, that doesn't look like valid input, please check and re-enter.")
    else
      # call the loan_months method
      total_months = loan_months(yr_amount)
      break
    end
  end

  # binding.pry
  rate = loan_total * calculate_monthly_payment(total_months, monthly_interest_rate)
  rate = rate.round(2)
  clear_screen
  puts "#{name}, your monthly payment will be $#{rate}"
  # see if user wants another calculation...

  prompt("Another calculation? Y to calculate again.")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
clear_screen
prompt("Thank you #{name} for using the Mortgage-Loan calculator!")
prompt("Good bye.")
