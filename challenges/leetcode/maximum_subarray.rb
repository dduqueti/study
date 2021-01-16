# Given an integer array nums, find the contiguous subarray
# (containing at least one number) which has the largest sum and return its sum.

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
