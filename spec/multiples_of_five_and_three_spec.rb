describe "#sum_of_multiples" do 
  it 'returns the correct sum when the limit is 10' do
    expect(sum_of_multiples(10)).to eq(23)
  end

  it 'returns the correct sum when the limit is 100' do
     expect(sum_of_multiples(100)).to eq(2318)
  end

  it 'returns the correct sum when the limit is 1000' do
    expect(sum_of_multiples(1000)).to eq(233168)
  end
end