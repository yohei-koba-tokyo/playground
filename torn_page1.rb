puts "破かれた本の、ページ数を全て足した合計を入力してください。"
print "合計は？ ："
final_sum = gets.to_i

book = []
pages_sum = 0
torn_page_list = []

i = 1
while pages_sum <= final_sum + (2 * i) - 1 do

  lost_page_is = torn_page_list.find { |lost| pages_sum - lost.sum == final_sum }

  break if lost_page_is != nil

  book << i
  pages_sum += i
  if book.last.even?
    torn_page_list << [i - 1, i]
  end
  i += 1
end

if lost_page_is != nil
  puts "この本のページ数は、#{book.length}ページです。"
  puts "破かれたのは、#{lost_page_is[0]}ページ目です(同時に、#{lost_page_is[1]}ページ目も失われています)。"
else
  puts "入力した合計値の条件では、解が存在しませんでした。"
end