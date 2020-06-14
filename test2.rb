





# 3 600
# 600 200 200 400
# 900 800 400 500
# 200 200 200 300

# タクシー

# 追加料金を返すメソッド
def add_price(distance, taxi)
  (((distance - taxi[0]) / taxi[2]) + 1) * taxi[3]
end

# 料金を調べるメソッド
def price(distance, taxi)
  # ここで<とするか<=とするかが、ポイント
  if taxi[0] <= distance
    return taxi[1] + add_price(distance, taxi)
  else
    return taxi[1]
  end
end

# 入力
taxi_num, distance = gets.split.map(&:to_i)
taxies = []
taxi_num.times do
  taxies << gets.split.map(&:to_i)
end

# 料金の全パターンを配列に格納
price_list = []
taxies.each do |taxi|
  price_list << price(distance, taxi)
end

puts "#{price_list.min} #{price_list.max}"