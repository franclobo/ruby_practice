=begin
Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Note that you must do this in-place without making a copy of the array.



Example 1:

Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]
Example 2:

Input: nums = [0]
Output: [0]

Example 3:

Input: nums = [0, 0, 1]
Output: [1, 0, 0]
=end

def move_zeroes(nums)
  zero_count = nums.count(0)
  nums.delete(0)
  zero_count.times { nums << 0 }
  nums
end
