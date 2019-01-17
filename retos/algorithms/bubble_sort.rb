#!/bin/ruby

# Bubble sort: A very naive sort that keeps swapping elements until
# the container is sorted.
# Time Complexity: О(n^2)
# Space Complexity: О(n) total, O(1) auxiliary
# Stable: Yes

# BubbleSort
# for (int i = 0; i < n; i++) {
#     for (int j = 0; j < n - 1; j++) {
#         // Swap adjacent elements if they are in decreasing order
#         if (a[j] > a[j + 1]) {
#             swap(a[j], a[j + 1]);
#         }
#     }
# }
def bubble_sort(arr)
  loop do
    swapped = false
    (arr.size-1).times do |i|
      if (arr[i] <=> arr[i+1]) == 1
        arr[i], arr[i+1] = arr[i+1], arr[i] # Swap
        swapped = true
      end
    end
    break unless swapped
  end

  arr
end

n = gets.to_i

a = gets.rstrip.split(' ').map(&:to_i)

result = bubble_sort a
puts result
