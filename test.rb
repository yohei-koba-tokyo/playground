






# 3 3 10
# 60 2 2 4
# 70 8 7 9 
# 50 2 3 9


# スコアのリストを渡すと、スキル習得できるかを判定するメソッド
def passing?(results, border)
  results.each do |result|
    if result < border
      return false
      break
    end
  end
  return true
end

# 購入する本のリストを渡すと、点数の結果を返すメソッド
def scoring(books, qNumber)
  results = [] + [0] * qNumber
  books.each do |book|
    qNumber.times do |i|
      results[i] += book[i+1]
    end
  end
  return results
end

# 入力
bookNumber, qNumber, border = gets.split.map(&:to_i)
books = []
bookNumber.times do
  books << gets.split.map(&:to_i)
end

# スキル習得がそもそも不可能だった場合に判定終了させる
if not passing?(scoring(books, qNumber), border)
  puts -1
  exit
end

# クリアできる購入本のパターンを探し出し、全ケースの購入金額のみをpassing_listに入れる。
passing_list = []
bookNumber.times do |i|
  # combinationメソッドは、「何個の本を買うとしたら、どの本を選ぶか」？の、全パターンをあぶり出すのに最適。
  buy_books_pattern = books.combination(i+1).to_a
  buy_books_pattern.each do |buy_books|
    if passing?(scoring(buy_books, qNumber), border)
      # transposeは、二次元配列のとき便利。仮想の表と判断し、行列を入れ替える
      passing_list << buy_books.transpose[0].sum
    end
  end
end

# 最小値を出力
puts passing_list.min