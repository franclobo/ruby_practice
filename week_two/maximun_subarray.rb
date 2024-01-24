=begin
Given an integer array nums, find the
subarray
 with the largest sum, and return its sum.



Example 1:

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: The subarray [4,-1,2,1] has the largest sum 6.
Example 2:

Input: nums = [1]
Output: 1
Explanation: The subarray [1] has the largest sum 1.
Example 3:

Input: nums = [5,4,-1,7,8]
Output: 23
Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
=end

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max_so_far = nums[0]
  max_ending_here = 0

  nums.each do |num|
    max_ending_here += num
    if max_so_far < max_ending_here
      max_so_far = max_ending_here
    end

    if max_ending_here < 0
      max_ending_here = 0
    end
  end

  max_so_far
end
