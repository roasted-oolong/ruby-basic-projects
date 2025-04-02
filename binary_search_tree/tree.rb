class Tree
  def initialize(array)   #accepts array when initialized
    #should have root attribute, which uses return value of build_tree
    # example initialized array >> (Array.new(15) { rand(1..100) })
  end

  def build_tree(array)
    #turns array into balanced binary tree full of node objects
    #ex. [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
    #must sort and remove duplicates
    #return level-0 root node

    # Tip: If you would like to visualize your binary search tree, here is a #pretty_print method that a student wrote and shared on Discord:

    # def pretty_print(node = @root, prefix = '', is_left = true)
    # pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    # puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    # pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
    # end
  end

  #Video on BST inserting/removing: https://youtu.be/wcIRPqTR3Kc
  def insert(value)
    #insert value
    #https://www.geeksforgeeks.org/insertion-in-binary-search-tree/?ref=lbp
  end

  def delete(value)
    #delete value
    #consider several cases, including when a node has children or not
    #case1: delete leaf in the tree
    #case2: remove node w/ 1 child >> delete node and point its parent to its child
    #case3: remove node w/ 2 children >> find next biggest node, recursely remove it, the deleted node with it
    #https://www.geeksforgeeks.org/deletion-in-binary-search-tree/
  end

  def find(value)
    #returns node with given value
  end

  def level_order(block)
    #traverse tree in breadth-first order
    #then yield each node to the provided block
    #you can use iteration or recursion, try both though
    #TIP: use an array acting as a queue to keep track of all child nodes you haven't traversed
    #and add new ones to the list
    #video on level order traversal: https://www.youtube.com/watch?v=86g8jAQug04
  end

  def inorder(block)
    #traverse tree depth-first and yield each node to provided block
    #return array of values if no block is given
    #Video on preorder, inorderl, postorder: https://www.youtube.com/watch?v=gm8DUJJhmY4
  end

  def preorder(block)
    #traverse tree depth-first and yield each node to provided block
    #return array of values if no block is given
    #Video on preorder, inorderl, postorder: https://www.youtube.com/watch?v=gm8DUJJhmY4
  end

  def postorder(block)
    #traverse tree depth-first and yield each node to provided block
    #return array of values if no block is given
    #Video on preorder, inorderl, postorder: https://www.youtube.com/watch?v=gm8DUJJhmY4
  end

  def height(node)
    #returns height (define as # of edges in longest past from given node to a leaf node)
  end

  def depth(node)
    #returns depth (defined as # of edges in path fr a given node to the tree's root node)
  end

  def balanced?
    #checks if tree is balanced
  end

  def rebalance()
    #relabances an unbalanced tree
    #TIP: use traversal method to provide new array to the build_tree method"
  end