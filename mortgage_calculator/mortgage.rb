def prompt(message)
  puts ">> #{message}"
end

def valid_amt?(amount)
  amount.to_i > 0
end

def valid_apr?(rate)
  rate.to_f > 0
end

prompt("Welcome to the mortgage calculator!, what is your name?")

name1 = ''
loop do
  name1 = gets.chomp
  if name1.empty?
    prompt('Please put a valid name')
  else
    break
  end
end

loop do
  loan_amt = ''
  loop do
    prompt("Hi #{name1}!. What is the loan amount? Round up to nearest digit")
    loan_amt = gets.chomp
    break if valid_amt?(loan_amt)
    prompt("That is an invalid loan amount, please try again")
  end

  annual_rate = ''
  loop do
    prompt("What is the annual percentage rate?(Please enter 5% as 0.05)")
    annual_rate = gets.chomp
    break if valid_apr?(annual_rate)
    prompt("That is an invalid interest rate, please try again")
  end

  duration_years = ''
  loop do
    prompt("What is the loan duration in years?")
    duration_years = gets.chomp
    break if valid_amt?(duration_years)
    prompt("That is an invalid loan duration, please try again")
  end

  n = duration_years.to_i * 12 # months
  i = annual_rate.to_f / 12 # monthly interest rate
  monthly_amt = loan_amt.to_i * i / (1 - (1 + i)**-n)

  prompt("Calculating the monthly payment...")
  prompt("The monthly payment is #{monthly_amt.round(2)}")

  prompt("Do you want to calculate another loan? Press 'Y' to continue")
  response = gets.chomp
  break unless response.downcase.start_with?('y')
end
