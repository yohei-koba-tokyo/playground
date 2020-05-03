

# 対角線を表現します
blc = " "
str = "a"
line = 30

# each文バージョン
(1..line).each do |l|
  puts (blc * (line - l)) + str * l
end

# for文バージョン
for l in (1..line)
  puts (blc * (line - l)) + str * l
end