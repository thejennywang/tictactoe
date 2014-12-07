require 'board'

describe 'Board' do
  
  it 'is created as a hash with numbered keys and empty values' do
    board = Board.new

    expect(board.contents).to eq("1" => "", "2" => "", "3" => "", "4" => "", "5" => "", "6" => "", "7" => "", "8" => "", "9" => "")
  end

  it 'knows when it is full' do
    board = Board.new

    board.contents.each_value { |value| 'x' }
  end

end