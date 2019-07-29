#Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

#Note:

#The solution set must not contain duplicate triplets.
# @param {Integer[]} nums
# @return {Integer[][]}
require 'set'
def three_sum(nums)
    uniq_triplets = Set[]
    stop = nums.size - 3
    track = 0
    0.upto(stop) do |indx|
        first = nums[indx]
        j = indx + 1
        j.upto(nums.size - 2 ) do |indx2|
            second, third = nums[indx2], nums[indx2 + 1]
            _3sum = first + second + third
            if _3sum.zero?
              p "3sum #{_3sum}, first #{first}, second #{second}, third #{third}"
              if uniq_triplets.empty?
                uniq_triplets.add([first, second, third])
              else
                unless uniq_triplets.to_a[track].include?(first) && uniq_triplets.to_a[track].include?(second) && uniq_triplets.to_a[track].include?(second)
                  uniq_triplets.add([first, second, third])
                  track += 1
                end
              end
            end
        end
    end
    uniq_triplets.to_a
end

p three_sum([-1, 0, 1, 2, -1, -4])
p three_sum([-1,0,1,0])