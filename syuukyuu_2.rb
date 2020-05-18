
N = gets.to_i
read = gets.split.map(&:to_i)
buffer = [1, 1, 1, 1, 1, 1]
array = buffer + read + buffer
result = []

N.times do |i|
  judge = false
  7.times do |k|
    if [array[i+k],array[i+k+1],array[i+k+2],array[i+k+3],array[i+k+4],array[i+k+5],array[i+k+6]].count(0) >= 2
      judge = true
      break
    end
  end
  result << judge
end

count = 0
maxx = [0]
N.times do |i|
  if result[i]
    count += 1
    maxx << count
  else
    count = 0
  end
end
puts maxx.max