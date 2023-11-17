require_relative '../stock_picker' # Adjust the path according to your project structure

describe '#stock_picker' do
  it 'finds the best days to buy and sell for maximum profit' do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
  end

  it 'returns [0, 0] when no profit is possible' do
    expect(stock_picker([10, 9, 8, 7, 6])).to eq([0, 0])
  end

  it 'handles an empty array' do
    expect(stock_picker([])).to eq([0, 0])
  end

  it 'handles a single day' do
    expect(stock_picker([5])).to eq([0, 0])
  end

  it 'handles the highest day being the first day' do
    expect(stock_picker([15, 3, 6, 9, 10])).to eq([1, 4])
  end

  it 'handles the lowest day being the last day' do
    expect(stock_picker([3, 6, 9, 15, 1])).to eq([0, 3])
  end
end
