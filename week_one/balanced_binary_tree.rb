#Given a binary tree, determine if it is
#height-balanced
#.



#Example 1:


#Input: root = [3,9,20,null,null,15,7]
#Output: true
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
def is_balanced(root)
  return true if root.nil?
  return false if (height(root.left) - height(root.right)).abs > 1
  is_balanced(root.left) && is_balanced(root.right)
end

def height(root)
  return 0 if root.nil?
  1 + [height(root.left), height(root.right)].max
end
