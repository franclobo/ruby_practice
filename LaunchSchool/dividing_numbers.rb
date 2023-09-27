=begin
Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second.
The second number must not be 0. Since this is user input, there's a good chance that the user won't enter a valid
integer. Therefore, you must validate the input to be sure it is an integer. You can use the following code to
determine whether the input is an integer:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

It returns true if the input string can be converted to an integer and back to a string without loss of information,
false otherwise. It's not a perfect solution in that some inputs that are otherwise valid (such as 003) will fail,
but it is sufficient for this exercise.
=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def get_valid_integer(prompt)
  while true
    print prompt
    input = gets.chomp

    if valid_number?(input)
      integer = input.to_i

      if integer != 0
        return integer
      else
        puts "The number cannot be 0. Please try again."
      end
    else
      puts "Invalid input. Please enter a valid integer."
    end
  end
end

# Get the first integer
num1 = get_valid_integer("Enter the first integer: ")

# Get the second integer
num2 = get_valid_integer("Enter the second integer: ")

result = num1.to_f / num2
puts "The result of dividing #{num1} by #{num2} is: #{result}"

