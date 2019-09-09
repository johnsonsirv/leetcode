# @return {String[][]}

  def group_anagrams(strs)
    grouped_ana = {}
    strs.each do |w|
      s = w.split('').sort.join('')
     if grouped_ana.has_key?(s)
         grouped_ana[s] << w
     else
         grouped_ana[s] = [w]
     end 
    end
    grouped_ana.values
end

def group_anagrams_2(strs)
    grouped_ana = {}
    strs.each do |w|
      s = w.chars.sort.join('')
      # p s
     if grouped_ana.has_key?(s)
         grouped_ana[s] << w
     else
         grouped_ana[s] = [w]
     end 
    end
    grouped_ana.values
end


def group_anagrams_3(strs)
 strs.group_by {|w| w.chars.sort}.values
end


# p group_anagrams_2(["","b"])
# p group_anagrams(["",""])
p group_anagrams_2(["and","dan"])
# p group_anagrams(["c","c"])
# p group_anagrams(["","b",""])