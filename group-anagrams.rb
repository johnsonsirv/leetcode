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


p group_anagrams(["","b"])
p group_anagrams(["",""])
p group_anagrams(["and","dan"])
p group_anagrams(["c","c"])
p group_anagrams(["","b",""])