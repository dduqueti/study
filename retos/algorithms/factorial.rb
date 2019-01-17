# Recursion
# Space: O(n), Time: O(n)
# Vulnerable to a stack overflow error
def recursive_factorial(n)
  return 1 if n < 1

  n * recursive_factorial(n - 1)
end

# Iterative
# Space: O(1), Time: O(n)
def iterative_factorial(number)
  total = 1

  (1..number).each do |n|
    total *= n
  end

  total
end

result = recursive_factorial(5)
puts "Recursive factorial: #{5}"
puts result.to_s

result = iterative_factorial(5)
puts "Iterative factorial: #{5}"
puts result.to_s
