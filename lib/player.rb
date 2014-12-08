class Player

  attr_accessor :id, :my_moves

  def initialize(id)
    @id = id
    @my_moves = []
  end

  def choose(position)
    @my_moves << position
  end

end