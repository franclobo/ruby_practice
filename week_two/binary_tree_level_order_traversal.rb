=begin
Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).



Example 1:


Input: root = [3,9,20,null,null,15,7]
Output: [[3],[9,20],[15,7]]
Example 2:

Input: root = [1]
Output: [[1]]
Example 3:

Input: root = []
Output: []


Constraints:

The number of nodes in the tree is in the range [0, 2000].
-1000 <= Node.val <= 1000
=end

#Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
  return [] if root.nil?
  result = []
  queue = []
  queue.push(root)
  while !queue.empty?
    level = []
    size = queue.size
    size.times do
      node = queue.shift
      level.push(node.val)
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end
    result.push(level)
  end
  result
end
