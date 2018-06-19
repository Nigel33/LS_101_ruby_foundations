def prompt(message)
  puts "=> #{message}"
end

# def valid_number?(number)
#   number.to_i.to_s == number
# end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(number)
  integer?(number) || float?(number)
end

def operation_to_message(operation)
  case operation
  when "1"
    "adding"
  when "2"
    "subtracting"
  when "3"
    "multiplying"
  when "4"
    "dividing"
  end
end

prompt("Welcome to calculator!Please enter your name!")
name1 = nil
loop do
  name1 = gets.chomp
  if name1.empty?
    prompt("Please enter a name")
  else
    break
  end
end

prompt("Hi #{name1}!")

loop do
  number1 = ''
  number2 = ''
  loop do
    prompt("What is your first number?")
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt("Hmm, it doesn't look like its correct")
    end
  end

  loop do
    prompt("What is your second number?")
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt("Hmm, it looks like its incorrect")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like?
    1) Addition
    2) Subtraction
    3) Multiplication
    4) Division
  MSG

  operation = ''
  loop do
    prompt(operator_prompt)
    operation = gets.chomp
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("invalid operation")
    end
  end

  result = case operation
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_i / number2.to_i
           end

  prompt("#{operation_to_message(operation)} the two
  numbers with one another...")

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? Y to perform")
  response = gets.chomp
  break unless response.downcase.start_with?('y')
end

prompt("Thanks for using the calculator!")
