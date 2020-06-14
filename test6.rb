kilo, flesh, cook = gets.split.map(&:to_f)

puts ((kilo/100*(100-flesh))/100*(100-cook)).round(4)