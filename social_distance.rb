# 今回は atan2 や PI を使いたいので、最初に include Math を宣言します
include Math

# 角度を求めるメソッド
def degree(x, y)
  (atan2(y, x)/PI*180)%360
end

# 方角を求めるメソッド
def compass(degree)
  if degree > 15 && degree < 75
     "北東"
  elsif degree >= 75 && degree <= 105
     "北"
  elsif degree > 105 && degree < 165
     "北西"
  elsif degree >= 165 && degree <= 195
     "西"
  elsif degree > 195 && degree < 255
     "南西"
  elsif degree >= 255 && degree <= 285
     "南"
  elsif degree > 285 && degree < 345
     "南東"
  else
     "東"
  end
end

# 2点間の距離を求めるメソッド
def distance(a_x, a_y, b_x, b_y)
   ((b_x - a_x)**2 + (b_y - a_y)**2)**(1/2.0)
end


puts "Aさんの座標(x, y)を、半角数字で2つ、間に半角スペースを入れて入力してください"
print "Aさんの座標は? "
a_x, a_y = gets.split.map(&:to_i)

puts "Bさんの座標(x, y)を、半角数字で2つ、間に半角スペースを入れて入力してください"
print "Bさんの座標は? "
b_x, b_y = gets.split.map(&:to_i)

if a_x == b_x && a_y == b_y
  puts "二人は同じ場所にいます。"
  exit
end

direction = compass(degree(b_x - a_x, b_y - a_y))
distance = distance(a_x, a_y, b_x, b_y).round(1)

puts "B君はAさんから見て#{direction}の方向にいて、#{distance}m離れています。"
# 2メートル以内は、密です
distance > 2 ? (puts "ソーシャルディスタンスが保たれています。") : (puts "密です！")