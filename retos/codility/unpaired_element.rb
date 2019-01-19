# A non-empty array A consisting of N integers is given.
# The array contains an odd number of elements, and each element
# of the array can be paired with another element that has the same value,
# except for one element that is left unpaired.

# Detected time complexity:
# O(N) or O(N*log(N))

def solution(a)
  # write your code in Ruby 2.2
  return nil if a.size.even? || a.nil?

  dict = {}

  a.each do |char|
    if dict[char]
      dict.delete(char)
    else
      dict[char] = 1
    end
  end

  dict.key(1)
end

res = solution([9, 3, 9, 3, 9, 7, 9])
puts res