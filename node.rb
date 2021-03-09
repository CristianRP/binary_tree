class Node
  attr_reader :x
  attr_accessor :left, :right, :args

  def initialize(x, *args)
    @x = x
    @args = args
    @left, @right = nil
  end
end
