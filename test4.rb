N = gets.to_i

foods = []
N.times do
  foods << gets.chomp
end

count = 0
now_eating = 0

foods.each do |food|

  if now_eating == 0 && food == "melon"
    count += 1
    now_eating = 10
  elsif now_eating != 0
    now_eating -= 1
  end

end

puts count