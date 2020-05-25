# 以下コードはテスト中です


table = []
words = []

# 入力ゾーン
N = gets.to_i
table << ("."*(N+2))
N.times do
  table << "."+gets.chomp+"."
end
table << ("."*(N+2))

M = gets.to_i
M.times do
  words << gets.chomp
end



words.each do |word|

  start_point = []
  table.each_with_index do |line, index|
    start = line.chars.each_index.select{|i| line[i] == word[0]}
    start.each do |s|
      start_point << [index, s]
    end
  end

  end_point = []
  table.each_with_index do |line, index|
    start = line.chars.each_index.select{|i| line[i] == word.chars.last}
    start.each do |s|
      end_point << [index, s]
    end
  end

  answere = "no"
  word.slice!(0)
  # print "start "
  # p start_point
  # print "end   "
  # p end_point
  start_point.each_with_index do |sp, s|
    end_point.each_with_index do |ep, e|
      distance = (ep[0]-sp[0]).abs + (ep[1]-sp[1]).abs
      if distance != 0 && distance <= word.length && (word.length - distance).even? && word.length <= N**2 - 1
        # puts "      test OK"

      
      end
    end
  end

end

