

height, width, N = gets.split.map(&:to_i)

field = []
field << "#" * width
height.times do |i|
  field << "." * width
end
field.reverse!


blocks = []
N.times do
  blocks << gets.split.map(&:to_i)
end

blocks.each do |block|
  area = []
  block[1].times do |i|
    area << block[2]+i
  end 
  block << area
end

blocks.each do |block|
  height.times do |t|
    stay = false
    block[3].each do |point|
      if field[t+1][point]=="#"
        stay = true
        break
      end
    end
    if stay
      block << t
      break
    end
  end
  block[0].times do |i|
    block[3].each do |drop|
      field[block[4]-i][drop] = "#"
    end
  end
end

height.times do |i|
  puts field[i]
end