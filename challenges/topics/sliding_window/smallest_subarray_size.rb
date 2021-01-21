# Smallest subarray size given sum
def smallest_sub_array(nums, target_sum)
  current_running_sum = 0
  window_start = 0
  min_size = Float::INFINITY

  nums.each_with_index do |num, window_end|
    current_running_sum += num

    while current_running_sum >= target_sum
      # Can I do better?
      min_size = [min_size, window_end - window_start + 1].min
      current_running_sum -= nums[window_start]
      window_start += 1
    end
  end

  min_size
end

puts smallest_sub_array([4, 2, 2, 7, 8, 1, 2, 8, 10], 8)
