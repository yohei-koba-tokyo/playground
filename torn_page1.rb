puts "破かれた本の、ページ数を全て足した合計を入力してください。"
print "合計は？ ："
final_sum = gets.to_i

# ↓ bookには、1ページずつ配列で格納していきます。 例) [1, 2, 3, .. ]
book = []

# ↓ pages_sumには、本のページ数を足していきます。
pages_sum = 0

# ↓ torn_page_listには、破ることが可能な全てのページを、パターンとして配列で格納していきます。 例) [[1, 2], [3,4], .. ]
torn_page_list = []

# ↓ インデックス値を用意
i = 1
while pages_sum <= final_sum + (2 * i) - 1 do

  # ↓ 破るページを全ケース試して、解の条件を満たすケースが無いかを検証。
  lost_page_is = torn_page_list.find { |lost| pages_sum - lost.sum == final_sum }

  # ↓ 条件を満たすケースが見つかったら、while文をbreak(強制終了)する！
  break if lost_page_is != nil

  # ↓ 満たさなかった(上記でbreakしなかった)場合は、ページを増やし再検証する。
  book << i
  pages_sum += i
  if book.last.even?
    torn_page_list << [i - 1, i]
  end
  i += 1
end

# 結果を出力
if lost_page_is != nil
  puts "この本のページ数は、#{book.length}ページです。"
  puts "破かれたのは、#{lost_page_is[0]}ページ目です(同時に、#{lost_page_is[1]}ページ目も失われています)。"
else
  puts "入力した合計値の条件では、解が存在しませんでした。"
end