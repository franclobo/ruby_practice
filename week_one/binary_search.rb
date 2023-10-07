=beginGiven an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

You must write an algorithm with O(log n) runtime complexity.



Example 1:

Input: nums = [-1,0,3,5,9,12], target = 9
Output: 4
Explanation: 9 exists in nums and its index is 4
=end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  return -1 if nums.empty?
  return 0 if nums.size == 1 && nums[0] == target
  return -1 if nums.size == 1 && nums[0] != target
  left = 0
  right = nums.size - 1
  while left <= right
    mid = (left + right) / 2
    return mid if nums[mid] == target
    if nums[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end
  -1
end
