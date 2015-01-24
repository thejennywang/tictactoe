class Board

  attr_accessor :contents

  def initialize
    @contents = Array.new(10)
  end

  def place(piece, position)
    if @contents[position] == nil 
      @contents[position] = "#{piece}"
    else
      raise "This square is taken."
    end
  end

  def full?
    @contents.all? { |obj| obj.is_a? String }
  end

end