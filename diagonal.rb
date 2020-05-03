blc = " "
str = "a"
line = 5

(1..line).each do |l|
  puts (blc * (line - l)) + str * l
end