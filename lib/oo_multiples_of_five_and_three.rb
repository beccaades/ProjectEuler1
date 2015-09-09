class MultiplesThreeFive
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def sum_of_multiples
    multiples_of_three_or_five.reduce(:+)
  end

  def multiples_of_three_or_five
    (self.limit-1).downto(0).select { |number| number % 3 == 0 || number % 5 == 0 }
  end 

end




