#!/bin/ruby

# Consider an array of integers.
# We define the absolute difference between two elements,
# a[i] and a[j] (where i!=j),to be the absolute value of
# a[i] - a[j]

# Given an array of integers, find and print the minimum
# absolute difference between any two elements in the array.

# Findings:
# 1. Greedy algorithm: This is a O(n!) where every
#    new input increases complexity dramatically
# 2. First sort the array
# 3. Then compare between closests like this:
# => [-2, 2, 4, 5]
# => |-2-2| then |2-4| then |4-5|
# 4. This makes it a O(n logn) + O(N) = O(N)

# Complete the minimumAbsoluteDifference function below.
def minimum_absolute_difference(arr)
  arr = arr.sort # can manually implement (quick_sort)

  min_diff = nil

  for i in 1..(arr.size - 1)
    new_diff = (arr[i-1] - arr[i]).abs
    if min_diff.nil? || min_diff > new_diff
      min_diff = new_diff
    end
  end

  min_diff
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = minimum_absolute_difference arr
puts result