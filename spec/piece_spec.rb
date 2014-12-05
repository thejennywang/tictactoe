require 'Piece'

describe Piece do
  
  it 'has a value' do
    x_piece = Piece.new
    expect(x_piece.value).to eq 'x'
  end
end