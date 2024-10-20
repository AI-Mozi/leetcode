# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  check_nodes(p, q)
end

def check_nodes(node1, node2)
  return true if node1.nil? && node2.nil?
  return false if node1&.val != node2&.val
  
  left = check_nodes(node1.left, node2.left)
  right = check_nodes(node1.right, node2.right)
  
  left && right
end