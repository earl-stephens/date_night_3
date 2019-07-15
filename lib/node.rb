class Node
  attr_reader :score,
              :data
  attr_accessor :left_link,
                :right_link

  def initialize(score, data, left_link=nil, right_link=nil)
    @score = score
    @data = data
    @left_link = left_link
    @right_link = right_link
  end

end
