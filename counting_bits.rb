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

def count_bits_with_bitewise_operator
  output = [0]
  1.upto(num) do |n|
    left_bit = n & 1
    bit_div = n >> 1
    output << output[bit_div] + left_bit
  end

  output
end


def count_bits_with_string_method(num)
  output = [0]
  1.upto(num) do |n|
    count = n.to_s(2).count('1')
    output << count
  end

  output
end
p count_bits_with_string_method(5)