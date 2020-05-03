puts "身長と体重を入力してください(２つの数値の間には半角スペースを入れて、全て半角で入力してください)"
str = gets
array = str.split.map(&:to_f)
bmi = (array[1] / ((array[0] / 100) ** 2)).round(1)
puts "----------"
puts "BMI:#{bmi}"
if bmi < 18.5
  puts "低体重(痩せ型)"
elsif bmi < 25
  puts "普通体重"
elsif bmi < 30
  puts "肥満(１度)"
elsif bmi < 35
  puts "肥満(２度)"
elsif bmi < 40
  puts "肥満(3度)"
else
  puts "肥満(４度)"
end