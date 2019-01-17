# Approach: recursion on merge_sort
def merge_sort(list)
  length = list.length

  return list if length <= 1

  middle = length / 2
  left = list.take(middle) # list.slice(0, middle)
  right = list.drop(middle) # list.slice(middle, length)

  # Recursion on each side of the list
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  result = []

  while !left.empty? || !right.empty? do
    result << right.shift && next if left.empty?
    result << left.shift && next if right.empty?

    if left.first < right.first
      result << left.shift
    else
      result << right.shift
    end
  end

  result
end

# # Alternative merge function
# def merge(left, right)
#   result = []

#   while !left.empty? || !right.empty? do
#     if !left.empty? && !right.empty?
#       if left.first < right.first
#         result << left.shift
#       else
#         result << right.shift
#       end
#     elsif left.empty?
#       result << right.shift
#     elsif right.empty?
#       result << left.shift
#     end
#   end

#   result
# end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15].shuffle

result = merge_sort(list)
puts "Mergesort: #{list}"
puts result.to_s


