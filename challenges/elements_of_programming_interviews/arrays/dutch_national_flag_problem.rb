# Write a program that takes an arary A and an index i into A, and rearranges
# the elements such that all elemsn less than A[i] (the pivot) appear first,
# followed by elements equal to the pivot, followed by elements greater than
# the pivot

# O(n) time complexity and O(n) space complexity
# Only if we are allowed to allocate more space
def dutch(array, pivot_index)
  pivot = array[pivot_index]

  left = []
  right = []
  mid = []

  array.each do |item|
    if item < pivot
      left << item
    elsif item > pivot
      right << item
    else
      mid << item
    end
  end

  left + mid + right
end

# If we cant use additional space we must sacrifice to a worst time complexity O(n^2)
# By traversing twice the array and doing nested loops.
#   1. We pick elements lower than the pivot and swap starting from the first e
#   2. We pick elements higher than the pivot and swap starting from the last e

# However we can do it in O(n) and O(1) if we are able to do two passes and
# avoid nested loops
# O(n) time complexity and O(n) space complexity
# We are allowed to allocate more space
def dutch(array, pivot_index)
  pivot = array[pivot_index]

  # Group elements smaller than the pivot
  # Start from the first element of the array
  smaller = 0
  array.each_with_index do |item, i|
    if item < pivot
      array[i], array[smaller] = array[smaller], array[i]
      smaller += 1
    end
  end

  # Group elements larger than the pivot
  # Start from the last element of the array
  # You can also do array.reverse.each but that's one pass
  larger = array.length - 1
  (array.length - 1).downto(0) do |i|
    if array[i] > pivot
      array[i], array[larger] = array[larger], array[i]
      larger -= 1
    end
  end

  array
end

# 15 items
list = [1, 10, 2, 3, 4, 4, 2, 5, 6, 7, 8, 8, 9, 9, 10, 7].shuffle
pivot_index = 7
puts "List: #{list}. \nPivot index: #{pivot_index}. Pivot value: #{list[7]}"
p dutch(list, pivot_index)

# List: [5, 7, 10, 3, 4, 9, 8, 7, 2, 8, 4, 6, 9, 10, 2, 1].
# Pivot index: 7. Pivot value: 7
# [5, 3, 4, 2, 4, 6, 2, 1, 7, 7, 8, 10, 9, 9, 10, 8]
# ➜
# List: [3, 9, 6, 10, 7, 10, 2, 2, 1, 5, 9, 8, 8, 7, 4, 4].
# Pivot index: 7. Pivot value: 2
# [1, 2, 2, 9, 6, 10, 7, 10, 3, 5, 9, 8, 8, 7, 4, 4]
