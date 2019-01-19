#!/bin/ruby

# Given five positive integers, find the minimum and maximum values
# that can be calculated by summing exactly four of the five integers.
# Then print the respective minimum and maximum values as a single
# line of two space-separated long integers.

# Sample input
# 1 2 3 4 5

# Sample output
# 10 14

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
  sorted_arr = sort(arr)
  sum = 0

  sorted_arr.each { |item| sum += item }

  min_sum = sum - sorted_arr.last
  max_sum = sum - sorted_arr.first

  puts "#{min_sum} #{max_sum}"
end

def sort(arr)
  return arr if arr.size < 2

  pivot_index = arr.size - 1
  pivot = arr.last

  arr.delete_at(pivot_index)

  left = []
  right = []

  arr.each do |item|
    if item < pivot
      left << item
    else
      right << item
    end
  end

  sort(left) + [pivot] + sort(right)
end

arr = gets.rstrip.split(' ').map(&:to_i)

miniMaxSum arr
