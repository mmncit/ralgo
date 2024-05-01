#!/usr/bin/ruby

# Node for binary search tree
class BTreeNode
  attr_reader :data # value
  attr_accessor :left, :right # left and rigt pointers

  def initialize(data = nil)
    @data = data
    @left = nil
    @right = nil
  end
end

# Binary search tree
class BTree
  attr_reader :root # root of the tree

  def initialize(data = nil)
    @root = unless data.nil? # if data is not nil
              BTreeNode.new(data) # create a tree with a node
            end
  end

  def insert(data)
    current = @root # a pointer to the current node
    parent = nil # suppose, the parent of the new node is nil
    while current
      parent = current # update the parent
      current = if data > current.data
                  current.right
                else
                  current.left
                end
    end

    if @root.nil? # if the tree is empty
      root = BTreeNode.new(data) # insert node as root
    elsif data > parent.data
      parent.right = BTreeNode.new(data)
    else
      parent.left = BTreeNode.new(data)
    end
  end

  # inorder traversal
  def inorder(current)
    return if current.nil? # base case : when leaf node is reached

    inorder(current.left) # L- traverse the left subtree
    print "#{current.data} " # V - visit the node and print
    inorder(current.right) # R- traverse the right subtree
  end

  # execute inorder from root
  def print_inorder_from_root
    inorder(@root)
  end
end
