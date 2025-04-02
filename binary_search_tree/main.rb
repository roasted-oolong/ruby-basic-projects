required_relative 'tree'

tree = (Array.new(15) { rand(1..100) })

tree.balanced?    # => true

p tree.preorder
p tree.postorder
p tree.inorder

#unbalance tree by adding several numbers > 100

tree.balanced?    # => false
tree.rebalance
tree.balanced?    # => true

p tree.preorder
p tree.postorder
p tree.inorder