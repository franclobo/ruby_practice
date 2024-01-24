=begin
Given the roots of two binary trees root and subRoot, return true if there is a subtree of root with the same structure and node values of subRoot and false otherwise.

A subtree of a binary tree tree is a tree that consists of a node in tree and all of this node's descendants. The tree tree could also be considered as a subtree of itself.



Example 1:


Input: root = [3,4,5,1,2], subRoot = [4,1,2]
Output: true
Example 2:


Input: root = [3,4,5,1,2,null,null,null,null,0], subRoot = [4,1,2]
Output: false
=end

def is_subtree(root, sub_root)
  return true if root.nil? && sub_root.nil?
  return false if root.nil? || sub_root.nil?

  return true if is_same_tree(root, sub_root)

  return is_subtree(root.left, sub_root) || is_subtree(root.right, sub_root)

end

def is_same_tree(root, sub_root)
  return true if root.nil? && sub_root.nil?
  return false if root.nil? || sub_root.nil?

  return root.val == sub_root.val && is_same_tree(root.left, sub_root.left) &&
  is_same_tree(root.right, sub_root.right)
end
