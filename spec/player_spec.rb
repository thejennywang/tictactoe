require 'player'

describe 'Player' do

  it 'has an id' do
    player = Player.new('x')

    expect(player.id).to eq 'x'
  end
  
  it 'can place a piece' do
    player = Player.new('x')
    position = 1

    expect(player.my_moves).to eq []

    player.place(position)

    expect(player.my_moves.first).to eq 1
  end

  it 'knows the history of their own moves' do
    player = Player.new('x')

    player.place(1)
    player.place(2)

    expect(player.my_moves).to eq [1,2]
  end

end