# Given a sorted array of n integers that has been rotated an unknown
# target of times, give an O(log n) algorithm that finds an element in the array
# You may assume that the array was originally sorted in increasing order
# EXAMPLE:
# Input: find 5 in array (15 16 19 20 25 1 3 4 5 7 10 14)
# Output: 8 (the index of 5 in the array)
def search(nums, target)
  min = 0
  max = nums.length - 1

  while(min <= max)
    middle = (min + max) / 2

    if nums[middle] == target
      return middle
    # Modification of binary search
    elsif nums[min] <= nums[middle]
      if target > nums[middle]
        min = middle + 1
      elsif target >= nums[min]
        max = middle - 1
      else
        min = middle + 1
      end
    elsif target < nums[middle]
      max = middle - 1
    elsif target <= nums[max]
      min = middle + 1
    else
      max = middle - 1
    end
  end

  return -1
end

nums = [4, 5, 6, 7, 0, 1, 2]
puts search(nums, 0)

nums = [15, 16, 19, 20, 25, 1, 3, 4, 5, 7, 10, 14]
puts search(nums, 5)

nums = [4, 5, 6, 0, 1, 2]
puts search(nums, 5)

nums = [25, 35, 65, 75, 0, 15, 25]
puts search(nums, 15)
