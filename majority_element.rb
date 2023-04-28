#Given an array nums of size n, return the majority element.

#The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.



#Example 1:

#Input: nums = [3,2,3]
#Output: 3
#Example 2:

#Input: nums = [2,2,1,1,1,2,2]
#Output: 2
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  hash = Hash.new(0)
  nums.each do |num|
    hash[num] += 1
  end
  hash.each do |k, v|
    return k if v > nums.length / 2
  end
  return -1
end
