=beginWrite a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

You may use the following method to validate input integers:

Copy Code
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  num1, num2 = nil, nil

  loop do
    print "Enter a positive or negative integer: "
    input = gets.chomp

    if valid_number?(input)
      if input.to_i > 0
        num1 = input.to_i
      else
        num2 = input.to_i
      end

      break if num1 && num2 && (num1 * num2 < 0)
    else
      puts "Invalid input. Please enter a valid non-zero integer."
    end
  end

  result = num1 + num2
  puts "#{num1} + #{num2} = #{result}"

  print "Do you want to perform another calculation? (y/n): "
  choice = gets.chomp.downcase
  break unless choice == 'y'
end

