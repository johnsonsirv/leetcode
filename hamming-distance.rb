def hamming_distance(x, y)
  #convert to bits using gsub
  # iterate over the chars of each, increment count once they are diff
  x_bits = x.to_s(2)
  y_bits = y.to_s(2)
  p y_bits
  p x_bits
  x_bits_padded = x_bits
  y_bits_padded = y_bits
  max_size = x_bits.size > y_bits.size ? x_bits.size : y_bits.size
  if y_bits.size > x_bits.size
    x_bits_padded = x_bits.rjust(max_size, '0')
  else
    y_bits_padded = y_bits.rjust(max_size, '0')
  end
  p x_bits_padded
  p y_bits_padded

  count = 0
  0.upto(max_size - 1) do |c|
     dist += 1 unless y_bits_padded.chars[c].to_i.eql?(x_bits_padded.chars[c].to_i)
  end
  dist
end


def hamming_distance_2(x, y)
  ba1 = bit_array(x) 
  ba2 = bit_array(y)
  p ba1
  p ba2
  dist = 0
  32.times.with_index do |i|
      dist += 1 unless ba1[i] == ba2[i]
  end
  dist
end

def bit_array(n)
 Array.new(32) { |i| n[i] }.reverse! 
end


def hamming_distance_3(x, y)
  (x ^ y).to_s(2).count('1')  
end

p hamming_distance_2(4, 14)
# p hamming_distance_2(1, 4)

