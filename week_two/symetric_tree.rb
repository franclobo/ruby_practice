=begin
Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).



Example 1:


Input: root = [1,2,2,3,4,4,3]
Output: true
Example 2:


Input: root = [1,2,2,null,3,null,3]
Output: false
Example 3:

Input: [1,2,2,3,4,4,3]
Output: true

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
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  return true if root.nil?
  is_mirror(root.left, root.right)
end

def is_mirror(left, right)
  return true if left.nil? && right.nil?
  return false if left.nil? || right.nil?
  return (left.val == right.val) && is_mirror(left.left, right.right) && is_mirror(left.right, right.left)
end
