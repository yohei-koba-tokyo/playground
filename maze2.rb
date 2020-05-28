
# マス目のアルファベットをたどって文字列が組めるかを判定する

# 入力例
# 4
# abcd
# efgh
# hgfe
# dcba
# 5
# abfgf
# bfgc
# abfga
# hdc
# fghde

def cue_point(table, word)
  cue = []
  table.each_with_index do |line, index|
    start = line.chars.each_index.select{|i| line[i] == word}
    start.each do |s|
      cue << [index, s]
    end
  end
  return cue
end

def solve_start_to_end(sp, ep, history, word, table, index)
  [[sp[0]-1, sp[1]], [sp[0], sp[1]+1], [sp[0]+1, sp[1]], [sp[0], sp[1]-1]].each do |dir|
    next if table[dir[0]][dir[1]] != word[index] || history.include?([dir[0], dir[1]])
    if dir == ep && (index + 1) == word.length
      return true
    else
      solve_start_to_end(dir, ep, history + [dir], word, table, index + 1) ? (return true) : false 
    end
  end
  false
end

table = []
words = []

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
  result = false
  if word.length == 1
    table.each do |line|
      result = line.include?(word)
      break if result
    end
  end
  start_point = cue_point(table, word[0])
  end_point = cue_point(table, word.chars.last)
  word.slice!(0)
  start_point.each do |sp|
    end_point.each do |ep|
      distance = (ep[0]-sp[0]).abs + (ep[1]-sp[1]).abs
      if distance != 0 && distance <= word.length && (word.length - distance).even? && word.length <= N**2 - 1
        result = solve_start_to_end(sp, ep, [sp], word, table, 0)
        break if result
      end
    end
    break if result
  end
  result ? (puts "yes") : (puts "no")
end

