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
puts "--------------"
puts table
puts words
puts "--------------"



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
  start_point.each do |sp|
    end_point.each do |ep|
      distance = (ep[0]-sp[0]).abs + (ep[1]-sp[1]).abs
      if distance != 0 && distance <= word.length && (word.length - distance).even? && word.length <= N**2 - 1
        # puts "      test OK"
        def solve(x, y, ep, table, word, answere, count, history)
          [[x+1, y], [x-1, y], [x, y+1], [x, y-1]].each do |dir|
            next if table[dir[0], dir[1]] != word[count] or history.include?([dir[0], dir[1]])
            
            if count == word.length - 1
              answere = "yes"
              break
            else
              solve(dir[0], dir[1], ep, table, word, answere, count+1, history << [dir[0], dir[1]])
            end
          end
        end
        p sp
        p ep
        p word
        solve(sp[0], sp[1], ep, table, word, answere, 0, [sp[0], sp[1]])
      end
    end
  end
  puts answere
end

