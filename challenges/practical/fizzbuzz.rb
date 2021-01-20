# Write a program that prints the numbers from 1 to 100. But for multiples of
# three print “Fizz” instead of the number and for the multiples of five print
# “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”

# Basic, using conditionals
def fizzbuzz(number)
  1.upto(number) do |num|
    message = ''

    message << 'fizz' if (num % 3).zero?
    message << 'buzz' if (num % 5).zero?

    puts message.empty? ? num : message
  end

  true
end

# Hash approach
def fizzbuzz(number)
  memo = {
    3 => 'Fizz', 5 => 'Buzz', 7 => 'Jazz'
  }

  1.upto(number) do |num|
    message = ''

    memo.each do |k, v|
      message << v if (num % k).zero?
    end

    puts message.empty? ? num : message
  end

  true
end

fizzbuzz(20)