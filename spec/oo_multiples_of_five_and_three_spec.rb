describe "MultiplesThreeFive" do
  let(:app) { MultiplesThreeFive.new(1000) }
  let(:invalid_app) { MultiplesThreeFive.new }

  describe "attribures and method tests" do 
    subject { app }

    it "raises ArgumentError when initialized without a limit parameter" do
      expect { invalid_app }.to raise_error(ArgumentError)
    end
  end

  describe "#multiples_of_three_or_five" do
    it "returns the multiples of three or five when the limit is 10" do
      expect(MultiplesThreeFive.new(10).multiples_of_three_or_five).to eq([9, 6, 5, 3, 0])
    end  
  end

  describe "#sum_of_multiples" do
    it "returns the correct sum when the limit is 10" do
      expect(MultiplesThreeFive.new(10).sum_of_multiples).to eq(23)
    end

    it "returns the correct sum when the limit is 100" do
      expect(MultiplesThreeFive.new(100).sum_of_multiples).to eq(2318)
    end
  end

  describe "project euler solution" do
    it "returns the correct solution" do
      expect(app.sum_of_multiples).to eq(233168)
    end
  end
end
