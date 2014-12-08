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
    @contents.has_value?("") == false
  end

end