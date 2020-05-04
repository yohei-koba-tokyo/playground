# 対角線を表現します
blc = " "
str = "a"
puts "enter the number of lines in one-byte"
line = gets.to_i

puts "\n -- by_each -- "
(1..line).each do |l|
  puts (blc * (line - l)) + str * l
end

puts "\n -- by_for -- "
for l in (1..line)
  puts (blc * (line - l)) + str * l
end