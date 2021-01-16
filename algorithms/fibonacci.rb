#
# Calculate the fibonacci numbers
#

# O(n^2) and O(n)
# def fibo(num)
# 	return 1 if num < 2

# 	fibo(num - 1) + fibo(num - 2)
# end

# 0(n) and O(n) using memoization
def fib(num, memo = {})
	return memo[num] if memo[num]
	return 1 if num < 2

	memo[num] = fib(num - 1, memo) + fib(num - 2, memo)
end

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(50)
