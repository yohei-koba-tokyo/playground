

require 'time'
a_walk, b_train, c_walk = gets.split.map(&:to_i)
N = gets.to_i
trains = []
N.times do |i|
  trains << gets.split.map(&:to_i)
  trains[i] = Time.new(2020, 1, 1, trains[i][0], trains[i][1], 0)
end

trains.reverse!
goal = Time.new(2020, 1, 1, 8, 59-c_walk, 0)
N.times do |i|
  if trains[i]+(b_train*60) <= goal
    start = trains[i]-(a_walk*60)
    puts start.strftime("%H:%M")
    break
  end
end