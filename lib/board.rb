class Board

  attr_accessor :contents

  def initialize
    @contents = {}
    (1..9).each do |number|
      @contents["#{number}"] = ""
    end
    @contents
  end

  def full?
    @contents.each do | square_number, content|
      if content.empty?
        false
      else
        true
      end
    end

  end
end