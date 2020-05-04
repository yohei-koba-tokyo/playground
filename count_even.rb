def count_evens1(ary)
  ary.select!{|a| a%2 == 0}
  puts ary.length
end

# or

def count_evens2(nums)
  count = 0
  nums.each do |num|
    if num.even?
      count += 1
    end     
  end
  puts count
end


count_evens2([2, 1, 2, 3, 4])
count_evens2([2, 2, 0])
count_evens2([1, 3, 5])