require 'player'

describe 'Player' do

  let (:player) { Player.new ('x')}

  it 'has an id' do
    expect(player.id).to eq 'x'
  end
  
  it 'can choose where to place a piece' do
    position = 1 # this is a square's number on the board

    expect(player.my_moves).to eq []

    player.choose(position)

    expect(player.my_moves.first).to eq 1
  end

  it 'knows the history of their own moves' do
    player.choose(1)
    player.choose(2)

    expect(player.my_moves).to eq [1,2]
  end

end