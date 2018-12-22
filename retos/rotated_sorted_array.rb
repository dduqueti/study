#  A sorted array has been rotated so that the elements might appear in
#  the order 3 4 5 6 7 1 2
#  How would you find the minimum element?

# Binary search approach
def find_minimum(array)
  puts "Input: #{array}"

  min = 0
  max = array.length - 1

  return puts "Minimum is: #{array.first}." if max < 1

  while(min <= max) do
    if (min-max).abs == 1
      min_value = array[min] > array[max] ? array[max] : array[min]
      return puts "Minimum is: #{min_value}."
    end

    middle = (min + max) / 2

    if array[max] > array[middle]
      max = middle
    else
      min = middle
    end
  end

  return puts 'Unexpected result'
end

find_minimum([10, 1, 2, 3, 4, 5, 6, 7, 8, 9]) # => 1
find_minimum([10, 9, 4, 5, 6, 7, 8])          # => 4
find_minimum([10, 9, 8, 5, 6, 7])             # => 5
find_minimum([3, 4, 5, 6, 7, 1, 2])           # => 1
find_minimum([5, 6, 7, 8, 2, 3, 4])           # => 2
find_minimum([3, 3, 1, 1, 2])                 # => 1
find_minimum([8, 8, 1, 8, 8])                 # => 1
find_minimum([3, 4, 1, 2])                    # => 1
find_minimum([1, 2, 3, 4])                    # => 1
find_minimum([3, 4, 2])                       # => 2
find_minimum([4, 3])                          # => 3
find_minimum([3])                             # => 3
