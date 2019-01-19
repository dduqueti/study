#!/bin/ruby

# Given a square matrix, calculate the absolute difference
# between the sums of its diagonals.

# For example, the square matrix  is shown below:

# 1 2 3
# 4 5 6
# 9 8 9

# Left to right diagonal 1 + 5 + 9 = 15
# Right to left diagonal 3 + 5 + 9 = 17
# Their absolute difference is |15-17| = 2

# Complete the diagonal_difference function below.
def diagonal_difference(arr)
  size = arr.size
  left_diagonal = 0
  right_diagonal = 0

  for i in 0..(size - 1)
    left_diagonal += arr[i][i]
    right_diagonal += arr[i][size - i - 1]
  end

  (left_diagonal - right_diagonal).abs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = diagonal_difference arr

fptr.write result
fptr.write "\n"

fptr.close()
