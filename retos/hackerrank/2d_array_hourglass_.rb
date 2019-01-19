#!/bin/ruby

# Given a  2D Array
# We define an hourglass in  to be a subset of values with indices
# falling in this pattern in arr's graphical representation:
# a b c
#   d
# e f g

#There are  hourglasses in , and an hourglass sum is the sum of
#an hourglass' values. Calculate the hourglass sum for every hourglass
#in arr, then print the maximum hourglass sum.

#For example, given the 2D array:

# 9 -9 -9  1 1 1
#  0 -9  0  4 3 2
# -9 -9 -9  1 2 3
#  0  0  8  6 6 0
#  0  0  0 -2 0 0
#  0  0  1  2 4 0

# Our highest hourglass value is 28 from the hourglass:
# 0 4 3
#   1
# 8 6 6

# Sample input
# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 2 4 4 0
# 0 0 0 2 0 0
# 0 0 1 2 4 0

# Sample output
# 19

# Sample input
# -1 -1 0 -9 -2 -2
# -2 -1 -6 -8 -2 -5
# -1 -1 -1 -2 -3 -4
# -1 -9 -2 -4 -4 -5
# -7 -3 -3 -2 -9 -9
# -1 -3 -1 -2 -4 -5

# Sample output
# -6

#!/bin/ruby

# Complete the hourglassSum function below.
def hourglassSum(arr)
  highest = nil
  length = arr.size - 3
  for i in 0..length
    for j in 0..length
      sum = arr[i][j] + arr[i][j+1] + arr[i][j+2]
      sum += arr[i+1][j+1]
      sum += arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]

      highest = sum if highest.nil? || sum > highest
    end
  end

  return highest
end


arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = hourglassSum arr
puts result

