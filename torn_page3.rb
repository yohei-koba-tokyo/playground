puts "破かれた本の、ページ数を全て足した合計を入力してください。"
print "合計は？ ："
final_sum = gets.to_i

book = []
pages_sum = 0
torn_page_list = []

# 以下２つは、解が発見された場合に格納する為の変数
book_is = []
lost_page_is = []

i = 1
while pages_sum <= final_sum + (2 * i) - 1 do

  lost_page_is << torn_page_list.find { |lost| pages_sum - lost.sum == final_sum }
  unless lost_page_is.last == nil
    book_is << book.last
  end

  book << i
  pages_sum += i
  if book.last.even?
    torn_page_list << [i - 1, i]
  end
  i += 1
end

lost_page_is.compact!
unless lost_page_is == []
  lost_page_is.each_with_index do |lost, i|
    puts "#{book_is[i]}ページ分あった本の、#{lost[0]}〜#{lost[1]}ページ目が破かれています。"
  end
else
  puts "入力した合計値の条件では、解が存在しませんでした。"
end