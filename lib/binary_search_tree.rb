require 'pry'
class BinarySearchTree

  def initialize
    @root = nil
  end

  def insert(score, data)
    counter = 0
    if @root == nil
      latest_node = Node.new(score, data)
      @root = latest_node
      return counter
    elsif @root.left_link == nil && @root.right_link == nil
      if @root.score > score
        @root.left_link = Node.new(score, data)
        counter += 1
        return counter
      else
        @root.right_link = Node.new(score, data)
        counter +=1
        return counter
      end
    elsif score > @root.score && @root.right_link == nil
      @root.right_link = Node.new(score, data)
      counter += 1
      return counter
    elsif score < @root.score && @root.left_link == nil
      @root.left_link = Node.new(score, data)
      counter =+ 1
      return counter
    elsif score < @root.score && @root.left_link != nil
      next_node = @root.left_link
      counter += 1
        if next_node.score > score && next_node.left_link == nil
          next_node.left_link = Node.new(score, data)
          counter += 1
          return counter
        elsif next_node.score < score && next_node.right_link ==nil
          next_node.right_link = Node.new(score, data)
          counter += 1
          return counter
        end
    elsif score > @root.score && @root.right_link != nil
      next_node = @root.right_link
      counter += 1
      if next_node.score > score && next_node.left_link == nil
        next_node.left_link = Node.new(score, data)
        counter += 1
        return counter
      elsif next_node.score < score && next_node.right_link == nil
        next_node.left_link = Node.new(score, data)
        counter += 1
        return counter
      end
      # binding.pry
    end
  end

end
