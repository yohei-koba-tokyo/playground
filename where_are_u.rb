
# 配列マップ上である場所から移動ログをたどった後、どの位置にいるかを示す


width, height, log_length = gets.split.map(&:to_i)
position = gets.split.map(&:to_i)

map = []
height.times do |y|
  line = []
  width.times do |x|
    line << [x, y]
  end
  map << line
end

log_sum = [0, 0]
log_length.times do |i|
  log = gets.chomp.split(" ")
  case log[0]
    when "U"
      log_sum = [log_sum[0], (log_sum[1] + log[1].to_i)]
    when "D"
      log_sum = [log_sum[0], (log_sum[1] - log[1].to_i)]
    when "L"
      log_sum = [(log_sum[0] - log[1].to_i), log_sum[1]]
    when "R"
      log_sum = [(log_sum[0] + log[1].to_i), log_sum[1]]
  end
end
puts map[(position[1]+log_sum[1])%height][(position[0]+log_sum[0])%width].join(' ')