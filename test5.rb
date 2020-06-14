price, discount = gets.split.map(&:to_f)

paid = 0
while true do
  paid += price
  price = (price*((100-discount)/100)).floor
  break if price.to_i == 0
end

puts paid.to_i