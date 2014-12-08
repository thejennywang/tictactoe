class Board

  attr_accessor :contents

  def initialize
    @contents = {}
    (1..9).each do |number|
      @contents["#{number}"] = ""
    end
    @contents
  end

  def place(piece, position)
    if @contents["#{position}"] == "" 
      @contents["#{position}"] = "#{piece}"
    else
      raise "This square is taken."
    end
  end

  def full?
    @contents.has_value?("") == false
  end

end