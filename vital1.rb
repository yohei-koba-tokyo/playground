# 2 と 3を足した値を表示させてください
puts 2 + 3
# 5 から 1を引いた値を表示させてください
puts 5-1
# 4 と 3をかけた値を表示させてください
puts 4*3
# 10 を 2で割った値を表示させてください
puts 10/2
# 10 を 3で割ったあまりの値を表示させてください
puts 10%3
# 123を456を+記号を使用し、結合してみましょう
puts "123" + "456"
# 変数nameに佐藤、変数fruitsにリンゴ、変数priceに50円を入れ、
# 実行結果例を表示させましょう。
name = "佐藤"
fruit = "リンゴ"
price = 50
puts "#{name}は#{fruit}を#{price}円で購入しました。"





# hash編


user = {name: "佐藤", gender: "man"}
user[:age] = 24

user.each do |key, value|
  puts "#{key} = #{value}"
end







# 配列編

list = ["タツヤ", "アイコ", "ヒロユキ", "ミカ"]

puts list[1]
list << "ユウヤ"
puts list.length




# 条件分岐編

list.each do |people|
  if people == "タツヤ" || people == "ヒロユキ"
    puts "「#{people}」は「男性」です"
  else
    puts "「#{people}」は「女性」です"
  end
end





# 三項演算子

list.each do |people|
  people == "タツヤ" || people == "ヒロユキ" ? (puts "「#{people}」は「男性」です") : (puts "「#{people}」は「女性」です")
end




# case文

list.each do |people|
  case people
  when "タツヤ"
    puts "「#{people}」は「男性」です"
  when "ヒロユキ"
    puts "「#{people}」は「男性」です"
  else
    puts "「#{people}」は「女性」です"
  end
end




# unless文

list.each do |people|
  unless people == "タツヤ" || people == "ヒロユキ"
    puts "「#{people}」は「女性」です"
  else
    puts "「#{people}」は「男性」です"
  end
end
