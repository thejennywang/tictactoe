require 'board'
require 'player'

describe 'Board' do
  
  let (:board) { Board.new }

  it 'is created as an empty array of moves' do

    expect(board.contents).to eq([nil, nil, nil, nil, nil, nil, nil, nil, nil, nil])
  end

  it 'knows when it is full' do
    expect(board.full?).to be false

    board.contents.fill("x")

    expect(board.full?).to be true
  end

  it 'does not allow a piece to be placed on a taken square' do
    player = Player.new('x')
    position = 1

    board.place(player.id, position)

    expect(board.contents[position]).to eq "x"
    expect( lambda { board.place(player.id, position) } ).to raise_error(RuntimeError)
  end

end