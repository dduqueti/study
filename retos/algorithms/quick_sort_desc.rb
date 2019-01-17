def quick_sort(input)
  return input if input.length < 2

  pivot_index = input.length - 1
  pivot_value = input.last

  input.delete_at(pivot_index)

  left = []
  right = []

  input.each do |item|
    if item > pivot_value
      left << item
    else
      right << item
    end
  end

  # Recursion on each side of the list
  quick_sort(left) + [pivot_value] + quick_sort(right)
end

list = [1, 2, 3, 3, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15].shuffle
result = quick_sort(list)
puts "Quick sort: #{list}"
puts result.to_s
