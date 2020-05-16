def test(final_sum)
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

  return lost_page_is.compact!.length

end

# 1から◯◯までの範囲で、複数解のケースがいくつあるかを出力
total = 0
(90001..100000).each do |i|
  # 解が2つの場合を抽出
  if test(i) == 3
    total += 1
    print "#{i} "
  end
end
puts "◆ total: #{total}"