def circ(min, pi)
  return (pi*min*2/4*100).round(9)
end

def strt(num)
  return num * 100
end

pi = Math::PI

N = gets.to_i

position = []
2.times do
  position << gets.chomp.split(" ")
end

position.each do |pos|
  if pos[1] == "N"
    pos[1] = 0
  elsif pos[1] == "E"
    pos[1] = 1
  elsif pos[1] == "S"
    pos[1] = 2
  else
    pos[1] = 3
  end
end

if (position[0][1]-position[1][1]).abs == 0
  puts strt((position[0][0].to_i-position[1][0].to_i).abs)
elsif (position[0][1]-position[1][1]).abs == 2
  puts strt(position[0][0].to_i+position[1][0].to_i)
else
  minmax = [position[0][0].to_i, position[1][0].to_i].sort
  puts circ(minmax.first, pi)+strt(minmax.last-minmax.first)
end