def only_two(string)
  edit = string.match(/../)
  if edit != nil
    puts edit
  else
    puts string
  end
end

puts "文字を入力して下さい"
string = gets.chomp
only_two(string)

