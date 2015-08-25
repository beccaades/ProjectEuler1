def sum_of_multiples(num)
  multiples_of_three_or_five = is_a_multiple?(num-1)
  multiples_of_three_or_five.reduce(:+)
end

def is_a_multiple?(num)
  num.downto(0).select do |integer| 
    integer % 3 == 0 || integer % 5 == 0
  end
end
