=begin
Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.



Example 1:

Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]
Explanation:
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
The distinct triplets are [-1,0,1] and [-1,-1,2].
Notice that the order of the output and the order of the triplets does not matter.
Example 2:

Input: nums = [0,1,1]
Output: []
Explanation: The only possible triplet does not sum up to 0.
Example 3:

Input: nums = [0,0,0]
Output: [[0,0,0]]
Explanation: The only possible triplet sums up to 0.


Constraints:

3 <= nums.length <= 3000
-105 <= nums[i] <= 105
=end
# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  result = []
  (0..nums.size-2).each do |i|
    next if i > 0 && nums[i] == nums[i-1]
    left = i + 1
    right = nums.size - 1
    while left < right
      sum = nums[i] + nums[left] + nums[right]
      if sum == 0
        result << [nums[i], nums[left], nums[right]]
        left += 1
        right -= 1
        left += 1 while left < right && nums[left] == nums[left-1]
        right -= 1 while left < right && nums[right] == nums[right+1]
      elsif sum < 0
        left += 1
      else
        right -= 1
      end
    end
  end
  result
end
