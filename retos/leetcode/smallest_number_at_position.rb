# Sort the numbers
# Get element at index (position - 1) of the array
def smallest_number_at_position(nums, position)
  puts "Numbers: #{nums}"
  puts "Position: #{position}"

  return 0 if position < 1 || nums.length < position

  nums = sort(nums)
  puts "Sorted numbers: #{nums}"

  nums[position - 1]
end

def sort(nums)
  return nums if nums.length < 2

  pivot = nums.last
  pivot_index = nums.length - 1

  nums.delete_at(pivot_index)

  left = []
  right = []

  nums.each do |item|
    if item > pivot
      right << item
    else
      left << item
    end
  end

  sort(left) + [pivot] + sort(right)
end

nums = [7, 3, 5]
result = smallest_number_at_position(nums, 2) # => 5
puts result

nums = [7, 3, 5, 8, 4, 9]
result = smallest_number_at_position(nums, 3) # => 5
puts result

nums = [2, 1]
result = smallest_number_at_position(nums, 3) # => 0
puts result


