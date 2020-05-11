def array123(nums)
  nums.include?(1) && nums.include?(2) && nums.include?(3) ? (puts "True") : (puts "False")
end

array123([1, 1, 2, 3, 1])
array123([1, 1, 2, 4, 1])
array123([1, 1, 2, 1, 2, 3])
