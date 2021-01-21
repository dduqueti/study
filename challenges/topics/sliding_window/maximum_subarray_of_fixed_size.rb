# Find the maximum subarray of a fixed size K
def max_sub_array(nums, k)
  max_sum = -1.0/0
  current_running_sum = 0

  nums.each_with_index do |num, i|
    current_running_sum += num

    if i >= k - 1
      max_sum = [max_sum, current_running_sum].max
      current_running_sum -= nums[i - (k - 1)]
    end
  end

  max_sum
end

# puts max_sub_array([-100000], 3)
# puts max_sub_array([-1], 3)
# puts max_sub_array([1], 3)
# puts max_sub_array([0], 3)
# puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4], 3)
puts max_sub_array([4,2,1,7,8,1,2,8,1,0], 3)


# Given an integer array nums, find the contiguous subarray
# (containing at least one number) which has the largest sum and return its sum.
# No particular size

# O(n) using Kadane's algorithm (max_so_far, max_ending_here)
def max_sub_array(nums)
  max = count = nums.shift

  nums.each do |num|
    count = num > count + num ? num : count + num
    max = count if count > max
  end

  max
end

puts max_sub_array([-100000])
puts max_sub_array([-1])
puts max_sub_array([1])
puts max_sub_array([0])
puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4])

