require 'player'

describe 'Player' do

  it 'has an id' do
    player = Player.new('x')

    expect(player.id).to eq 'x'
  end
  
  it 'can place a piece' do
    player = Player.new('x')
    position = 1
    player.place(position)

    expect(player.my_squares.first).to eq 1
  end

end