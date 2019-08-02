# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  current = root
  stack = []
  inorder_traversal = []
 while !current.nil? || !stack.empty?
      while !current.nil?
         stack << current
         current = current.left
      end
      
      current = stack.pop
      inorder_traversal << current.val
      current = current.right
  end
  
  inorder_traversal
end