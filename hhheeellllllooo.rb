def hello(int)
  (1..int).each do |i|
    puts "whatup"
  end
end

puts "enter your feeling by integer."
hello(gets.to_i)