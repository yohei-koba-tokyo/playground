



map = []
5.times do
  map << gets.chomp
end
puts "-----------"
taikaku_A = map[4][0]+map[3][1]+map[2][2]+map[1][3]+map[0][4] 
taikaku_B = map[0][0]+map[1][1]+map[2][2]+map[3][3]+map[4][4] 

if taikaku_A == "ooooo" or taikaku_B == "ooooo"
  puts "oの勝ち"
elsif taikaku_A == "xxxxx" or taikaku_B == "xxxxx"
  puts "xの勝ち"
else
  puts "Dドロー"
end






