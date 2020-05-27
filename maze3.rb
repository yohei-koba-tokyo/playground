








m, n = 5, 4
count = 0

solve = ->(x, y, history) {
  if history.size == m * n
    count += 1
  else
    [[1, 0], [-1, 0], [0, 1], [0, -1]].each do |dir|
      x1, y1 = x + dir[0], y + dir[1]
      next if x1 < 0 or x1 >= m or y1 < 0 or y1 >= n or history.include?([x1, y1])
      solve.(x1, y1, history + [[x1, y1]])
    end
  end
}

m.times do |x|
  n.times {|y| solve.(x, y, [[x, y]])}
end
puts count / 2