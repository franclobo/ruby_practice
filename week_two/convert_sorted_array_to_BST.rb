=begin
Given an integer array nums where the elements are sorted in ascending order, convert it to a
height-balanced
 binary search tree.



Example 1:


Input: nums = [-10,-3,0,5,9]
Output: [0,-3,9,-10,null,5]
Explanation: [0,-10,5,null,-3,null,9] is also accepted:

Example 2:


Input: nums = [1,3]
Output: [3,1]
Explanation: [1,null,3] and [3,1] are both height-balanced BSTs.
=end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}

def sorted_array_to_bst(nums)
  return build_tree(nums, 0, nums.length - 1)
end

def build_tree(nums, left, right)
  return nil if left > right

  mid = (left + right) / 2

  root = TreeNode.new(nums[mid])
  root.left = build_tree(nums, left, mid - 1)
  root.right = build_tree(nums, mid + 1, right)

  return root
end
