include Math

def distance(x, y)
  (x**2+y**2)**(1/2.0)
end

def view(direction, wide, target_x, target_y)
  a = (direction - wide/2).to_f
  b = (direction + wide/2).to_f

  x = atan2(target_y, target_x)/PI*180
  while (direction - x).abs >= 360 do
    direction - x > 0 ? x += 360 : x -= 360
  end

  if x >= a && x <= b
    return true
  else
    return false
  end
end

width, height, M, N = gets.split.map(&:to_i)
cameras = []
M.times do
  cameras << gets.split.map(&:to_i)
end
works = []
N.times do
  works << gets.split.map(&:to_i)
end

works.each do |work|
  result = "no"
  cameras.each do |camera|
    if camera[4] >= distance(work[0]-camera[0], work[1]-camera[1])
      if view(camera[2].to_f, camera[3].to_f, work[0]-camera[0], work[1]-camera[1])
        result = "yes"
      end
    end
    break if result == "yes"
  end
  puts result
end