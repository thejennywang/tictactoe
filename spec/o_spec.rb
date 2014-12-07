require 'o'

describe 'O' do
  
  it 'alerts the player when a square is taken' do
    o = O.new

    expect{o.place}.to raise_error(RuntimeError)
  end
end