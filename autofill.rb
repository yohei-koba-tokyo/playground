puts "表の行数と列数を、半角で間にスペースを入れて入力してください"
H, W = gets.split.map(&:to_i)
puts "1行目の2つ分のデータを、半角で間にスペースを入れて入力してください"
A1, B1 = gets.split.map(&:to_i)
puts "2行目の2つ分のデータを、半角で間にスペースを入れて入力してください"
A2, B2 = gets.split.map(&:to_i)

fill_H = H - 2
fill_W = W - 2

columnA = [A1, A2]
(1..fill_H).each do |i|
  columnA << columnA[i] + (columnA[i] - columnA[i-1])
end

columnB = [B1, B2]
(1..fill_H).each do |i|
  columnB << columnB[i] + (columnB[i] - columnB[i-1])
end

puts "以下に結果を出力します"
(0..(H-1)).each do |i|
  row = [columnA[i], columnB[i]]
  (1..fill_W).each do |i|
    row << row[i] + (row[i] - row[i-1])
  end
  puts row.join(" ")
end