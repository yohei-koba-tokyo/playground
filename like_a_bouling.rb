# 処理速度の改善中

# 入力例
# 15 5 24
# 5 5 5 4 G 1 G 5 3 2 1 4 4 G G 1 5 5 5 2 1 5 3 1

# 10 10 18
# 3 4 G 1 8 2 6 2 10 2 7 G 10 10 10 9 1 3


frames, pins, throws = gets.split.map(&:to_i)
array = gets.chomp.split(" ")

array.each_with_index do |a, i|
  a == "G" ? (array[i] = 0) : (array[i] = a.to_i)
end

frame_number = 1
push_remaining = 0
life = 1

array.each_with_index do |a, i|
  remaining = pins - a - push_remaining
  array[i] = [frame_number, a]
  push_remaining = pins - remaining
  if remaining == 0 or life == 0
    frame_number += 1
    push_remaining = 0
    life = 1
  else
    life -= 1
  end
end

array.unshift([0, 0, "_"], [0, 0, "_"])
score = 0

(1..array.last[0]).each do |frame|
  normal = 0
  bonus = 0
  array.select { |a| a[0] == frame}.each_with_index do |throw, i|
    normal += throw[1]
    if normal == pins
      throw << "B"*(i+1)
    else
      throw << "_"
    end
  end
  
  case array.reverse.find {|a| a[0] == frame - 1}[2]
  when "B"
    bonus += normal
    if array.find {|a| a[0] == frame}[2] == "B"
      bonus += array.find {|a| a[0] == frame + 1}[1]
    end 
  when "BB"
    bonus += array.find{|a| a[0] == frame}[1]
  end
  score += normal + bonus
end

p score