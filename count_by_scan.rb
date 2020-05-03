def count_hi(str)
  puts "result: hi x #{str.scan('hi').length}"
end

puts "Please input string."
count_hi(gets)