def fizz_buzz(int)

  for i in (1..int)
    i%15 == 0 ? (puts "fizzBuzz") : (i%5 == 0 ? (puts "buzz") : (i%3 == 0 ? (puts "fizz") : (puts i)))
  end
  # or
  (1..int).each do |i|
    i%15 == 0 ? (puts "fizzBuzz") : (i%5 == 0 ? (puts "buzz") : (i%3 == 0 ? (puts "fizz") : (puts i)))
  end

end

puts "fizzBuzzを何行分、実行しますか？"
fizz_buzz(gets.to_i)