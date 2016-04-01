class Node
  attr_accessor :value , :left , :right
  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end

root = Node.new(
  1,
  Node.new(
    3,
    Node.new(6),
    Node.new(7)
  ),
  Node.new(
    5,
    nil,
    Node.new(10)
  ),
)

queue = [root]

while queue.length > 0
  current_node = queue.shift
  puts current_node.value
  queue << current_node.left if current_node.left
  queue << current_node.right if current_node.right
end
