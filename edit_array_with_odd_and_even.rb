array1 = [1, 2, 3, 4, 5].map do |el| 
  if el.odd?
    el 
  end
end.compact!

array2 = [1, 2, 3, 4, 5].map { |el| el if el.odd? }.compact!
array3 = (1..5).to_a.delete_if { |el| el.even? }
array4 = (1..5).to_a.delete_if(&:even?)
array5 = [1, 2, 3, 4, 5].select{ |el| el.odd?}

p array1
p array2
p array3
p array4
p array5