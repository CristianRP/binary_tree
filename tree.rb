require './node.rb'

class Tree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def recursive_add(node, value)
    if @root.nil?
      @root = Node.new(value)
      puts " value; #{@root.x}, left: #{@root.left}, right: #{@root.right}"
    else
      if value < node.x
        if node.left.nil?
          node.left = Node.new(value)
        else
          recursive_add(node.left, value)
        end
      else
        if node.right.nil?
          node.right = Node.new(value)
        else
          recursive_add(node.right, value)
        end
      end
      puts "* value; #{node.x unless node.nil?}, left: #{node.left.x unless node.left.nil?}, right: #{node.right.x unless node.right.nil?}"
    end
  end

  def inorder(node)
    unless node.nil?
      inorder(node.left)
      puts node.x
      inorder(node.right)
    end
  end

  def preorder(node)
    unless node.nil?
      puts node.x
      preorder(node.left)
      preorder(node.right)
    end
  end

  def postorder(node)
    unless node.nil?
      postorder(node.left)
      postorder(node.right)
      puts node.x
    end
  end

end
