require 'x'

describe 'X' do
  
  it 'alerts the player when a square is taken' do
    x = X.new

    expect{x.place}.to raise_error(RuntimeError)
  end
end