# Given an array of integers, return indices of
# the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution,
# and you may not use the same element twice.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# O(N^2) approach => Brute force
def two_sum(nums, target)
  puts "Nums: #{nums}"
  puts "Target: #{target}"

  nums.each_with_index do |first_num, first_index|
    nums.each_with_index do |second_num, second_index|
      next if first_index == second_index

      if (first_num + second_num) == target
        return puts "Result: #{[first_index, second_index]}"
      end
    end
  end

  puts 'Result: not found'
end

# O(N^2) approach => Brute force => USIN FOR LOOPS
def two_sum(nums, target)
  puts "Nums: #{nums}"
  puts "Target: #{target}"

  i = j = 0
  length = nums.length - 1

  for i in 0..length
    for j in 1..length
      if (nums[i] + nums[j]) == target
        return puts "Result: #{[i, j]}"
      end
    end
  end

  puts 'Result: not found'
end

# O(N) approach => Hash MAP approach => BEST
def two_sum(nums, target)
  puts "Nums: #{nums}"
  puts "Target: #{target}"

  temp = {}

  nums.each_with_index do |num, index|
    temp[num] = index
  end

  nums.each_with_index do |num, index|
    complement = target - num

    # alternative: temp.key?(complement)
    if temp[complement] && temp[complement] != index
      return puts "Result: #{[index, temp[complement]]}"
    end
  end

  puts 'Result: not found'
end

two_sum([2, 7, 11, 15], 9)
two_sum([2, 7, 11, 15], 17)
two_sum([2, 7, 11, 15], 26)
two_sum([3, 3], 6)
two_sum([2, 7, 11, 15], 999)