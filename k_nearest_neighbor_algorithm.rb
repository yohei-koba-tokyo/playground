def dtc(x, y, xi, yi)
  dtc = (x - xi)**2 + (y - yi)**2
end

x, y = gets.split.map(&:to_i)
k = gets.to_i
gps = []
N = gets.to_i

N.times do |i|
  gps << gets.split.map(&:to_i)
  gps[i].insert(3, dtc(x, y, gps[i][0], gps[i][1]))
end

sum = 0
gps = (gps.sort {|a, b| a.last <=> b.last}).first(k)

gps.each do |gps|
  sum += gps[2]
end

puts (sum / k).round