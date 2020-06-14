board = []
result = 'D'

(1..5).each do
  board.push(gets.chomp.split(''))
end


(1..2).each do |time|
  o = 0
  x = 0

  i = 0

  if time == 1
    j = 0
  else
    j = 4
  end

  (1..5).each do
    if board[i][j] == 'O'
      o = o + 1
    elsif board[i][j] == 'X'
      x = x + 1
    else
      break
    end


    i = i + 1
    if time == 1
    j = j + 1
  else
    j = j - 1
  end
end



if o == 5
  result = 'O'
  break
elsif x == 5
  result = 'X'
  break
end
end
puts result