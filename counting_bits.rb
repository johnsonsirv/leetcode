def int_in_bits(dec)
  count = dec % 2
  until (dec/2).zero?
      dec = dec/2
      count +=1 if dec.odd?
  end
  count
end

def count_bits(num)
  output = []
  
  0.upto(num) do |n|
      bits = int_in_bits(n)
      output << bits
  end
  
  output
end


p count_bits(5)