#!/bin/ruby

# You are given an unordered array consisting of consecutive integers
# [1, 2, 3, ..., n] without any duplicates. You are allowed to swap any
# two elements. You need to find the minimum number of swaps required to
# sort the array [7, 1, 3, 2, 4, 5, 6] in ascending order.

# i   arr                     swap (indices)
# 0   [7, 1, 3, 2, 4, 5, 6]   swap (0,3)
# 1   [2, 1, 3, 7, 4, 5, 6]   swap (0,1)
# 2   [1, 2, 3, 7, 4, 5, 6]   swap (3,4)
# 3   [1, 2, 3, 4, 7, 5, 6]   swap (4,5)
# 4   [1, 2, 3, 4, 5, 7, 6]   swap (5,6)
# 5   [1, 2, 3, 4, 5, 6, 7]

# It took  swaps to sort the array.

# Function Description
# Complete the function minimumSwaps in the editor below.
# It must return an integer representing the minimum number
# of swaps to sort the array.

# minimumSwaps has the following parameter(s):

# arr: an unordered array of integers

# Sample input
# 4 3 1 2

# Sample output
# 3

# Sample input
# 2 3 4 1 5

# Sample output
# 3

# Sample input
# 1 3 5 2 4 6 7

# Sample output
# 3

#!/bin/ruby

# Complete the hourglassSum function below.
def minimumSwaps(arr)
  swaps = 0

  for i in 0..arr.size - 1
    while(arr[i] != i + 1)
      swap_key = arr[i] - 1
      temp = arr[i]

      arr[i] = arr[swap_key]
      arr[swap_key] = temp

      swaps += 1
    end
  end

  return swaps
end

arr = gets.rstrip.split(' ').map(&:to_i)

result = minimumSwaps arr
puts result

