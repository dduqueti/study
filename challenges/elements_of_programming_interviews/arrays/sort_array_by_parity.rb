# Input is an array of integers, and you have to reorder its entries so that the
# even entries appear first. This is easy if you use O(N) space,
# where n in the length of the array. However, you are required to solve it
# without allocating additional storage

# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity(nums)
  next_even = 0
  next_odd = nums.length - 1

  while next_even < next_odd
    # can be done with nums[next_even].even? or nums[next_even].zero?
    if nums[next_even] % 2 == 0
      next_even += 1
    else
      # swapping by double assignment in Ruby
      nums[next_even], nums[next_odd] = nums[next_odd], nums[next_even]
      next_odd -= 1
    end
  end

  nums
end

# p calls inspect printing full array instead of array.to_s (new line per item)
# p reorder([1,3,5])
p sort_array_by_parity([2,3,4,6,5,7])
p sort_array_by_parity([3,1,2,4]) # [2,4,3,1] or [4,2,3,1], [2,4,1,3], and [4,2,1,3]