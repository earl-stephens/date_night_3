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

  def include?(score_to_check)
    if @root.score == score_to_check
      return true
    elsif score_to_check < @root.score
      next_node = @root.left_link
      if next_node.score == score_to_check
        return true
      elsif score_to_check < next_node.score
        next_node = next_node.left_link
        if next_node.score == score_to_check
          return true
        else
          return false
        end
      elsif score_to_check > next_node.score
        next_node = next_node.right_link
        if next_node.score == score_to_check
          return true
        else
          return false
        end
      end
    elsif score_to_check > @root.score
      next_node = @root.right_link
      if next_node.score == score_to_check
        return true
      elsif score_to_check < next_node.score
        if next_node.left_link == nil
          return false
        end
        next_node = next_node.left_link
        if next_node.score == score_to_check
          return true
        else
          return false
        end
      elsif score_to_check > next_node.score
        if next_node.right_link == nil
          return false
        end
        next_node = next_node.right_link
        if next_node.score == score_to_check
          return true
        else
          return false
        end
      end
    end
  end

  def depth_of(score)
    if include?(score) == false
      return nil
    end
    counter = 0
    if @root.score == score
      return counter
    elsif @root.score > score
      next_node = @root.left_link
      counter += 1
      if next_node.score == score
        return counter
      elsif next_node.score > score
        next_node = next_node.left_link
        counter += 1
        return counter
      elsif next_node.score < score
        next_node = next_node.right_link
        counter += 1
        return counter
      end
    elsif @root.score < score
      next_node = @root.right_link
      counter += 1
      if next_node.score == score
        return counter
      end
    end
  end

end
