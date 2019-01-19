#!/bin/ruby

# BubbleSort
# for (int i = 0; i < n; i++) {
#     for (int j = 0; j < n - 1; j++) {
#         // Swap adjacent elements if they are in decreasing order
#         if (a[j] > a[j + 1]) {
#             swap(a[j], a[j + 1]);
#         }
#     }
# }

# Complete the countSwaps function below. (BubbleSort)
def countSwaps(a)
  swaps = 0

  (a.size - 1).times do
    for j in 0..(a.size - 2)
      if a[j] > a[j+1]
        a[j], a[j+1] = a[j+1], a[j]
        swaps += 1
      end
    end
  end

  puts "Array is sorted in #{swaps} swaps."
  puts "First Element: #{a.first}"
  puts "Last Element: #{a.last}"
end

n = gets.to_i

a = gets.rstrip.split(' ').map(&:to_i)

countSwaps a
