puts "小学生低学年向けの、足し算と引き算のドリルを作成するプログラムです。"
puts "出力したい足し算の問題数と、引き算の問題数を、半角数字で、間に半角スペースを空けて入力してください。"

# 条件…
# a + b = x
# c - d = y
# とすると、
# 0 <= a,b <= 99
# 0 <= x,y <= 99

# 「 3 4 」 と入力した場合の出力例…
# 2 + 6 =
# 68 - 29 =
# 72 - 30 =
# 56 + 13 =
# 88 - 83 =
# 42 + 53 =
# 31 - 17 =

# まず2つの数値（足し算引き算それぞれの問題数）をインプット
plus, minus = gets.split.map(&:to_i)
# 最終的に問題全てを格納する配列
quests = []

# 上記条件を満たすよう、足し算に使用出来る全ての整数パターンを4桁の数値文字列により洗い出す
pattern = []
(0..99).each do |i|
  (0..99).each do |j|
    if i.to_i + j.to_i <= 99
      if i.to_s.length == 1
        i = "0#{i}"
      end
      if j.to_s.length == 1
        j = "0#{j}"
      end
      pattern << i.to_s + j.to_s
    end
  end
end

# 指定した問題数分をランダムでquestsに格納する
plus_pattern = pattern.sample(plus)
plus_pattern.each do |pattern|
  quests << "#{pattern.to_i / 100} + #{pattern.to_i % 100} ="
end

# 上記条件を満たすよう、引き算に使用出来る全ての整数パターンを4桁の数値文字列により洗い出す
pattern = []
(0..99).each do |i|
  (0..99).each do |j|
    if i.to_i >= j.to_i
      if i.to_s.length == 1
        i = "0#{i}"
      end
      if j.to_s.length == 1
        j = "0#{j}"
      end
      pattern << i.to_s + j.to_s
    end
  end
end

minus_pattern = pattern.sample(minus)
minus_pattern.each do |pattern|
  quests << "#{pattern.to_i / 100} - #{pattern.to_i % 100} ="
end

puts quests.shuffle