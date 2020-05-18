



def count_foots(bird_foot, turtle_foot, bird, turtle)
  return bird_foot*bird+turtle_foot*turtle
end

foots, heads, bird_foot, turtle_foot =gets.split.map(&:to_i)





answere = "miss"
if (bird_foot == turtle_foot && bird_foot != 1) || heads < 2
  puts answere
  exit
end




(1..(heads-1)).each do |i|
  if foots == count_foots(bird_foot, turtle_foot, i, (heads-i))
    answere = "#{i} #{heads-i}"
    break
  end
end
puts answere

