def dtc(x, y, xi, yi)
  dtc = (((x - xi)**2 + (y - yi)**2)**(1/2.0)).round(6)
end

x, y = gets.split.map(&:to_i)
k = gets.to_i
gps = []
N = gets.to_i

N.times do |i|
  gps << gets.split.map(&:to_i)
end

gps.each do |xy|
  xy << dtc(x, y, xy[0], xy[1])
end

gps.sort! {|a, b| a.last <=> b.last}
sum = 0

k.times do |i|
  sum += gps[i][2]
end

puts (sum / k).round

