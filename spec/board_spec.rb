require 'board'
require 'player'

describe 'Board' do
  
  let (:board) { Board.new }

  it 'is created as a hash with numbered keys and empty values' do

    expect(board.contents).to eq("1" => "", "2" => "", "3" => "", "4" => "", "5" => "", "6" => "", "7" => "", "8" => "", "9" => "")
  end

  it 'knows when it is full' do
    expect(board.full?).to be false

    board.contents.each_value do |value|
      value.replace "x"
    end

    expect(board.full?).to be true
  end

  it 'does not allow a piece to be placed on a taken square' do
    player = Player.new('x')
    position = 1

    board.place(player.id, position)

    expect(board.contents["1"]).to eq "x"
    expect( lambda { board.place(player.id, position) } ).to raise_error(RuntimeError)
  end

end