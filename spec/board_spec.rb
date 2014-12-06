require 'board'

describe 'Board' do
  
  it 'is created as an empty hash' do
    board = Board.new
    square = double :square

    expect(board.contents).to eq ["1" => "", "2" => "", "3" => "", "4" => "", "5" => "", "6" => "", "7" => "", "8" => "", "9" => ""]
  end

end