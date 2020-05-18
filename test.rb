def powerUp(power, point)
  power = power * (100 + point)/100
end

power, point = gets.split.map(&:to_f)

while point != 0 do
  power = powerUp(power, 1)
  point -= 1
end

puts (power / 1).to_i
