class Board

  attr_accessor :contents, :grid_hash

  def initialize
    @contents = [create_grid]
  end

  def create_grid 
    @grid_hash = {}
    (1..9).each do |number|
      @grid_hash["#{number}"] = ""
    end
    @grid_hash
  end
end