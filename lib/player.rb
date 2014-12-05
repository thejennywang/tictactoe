class Player

  attr_accessor :id, :my_squares

  def initialize(id)
    @id = id
    @my_squares = []
  end

  def place(position)
    @my_squares << position
  end

end