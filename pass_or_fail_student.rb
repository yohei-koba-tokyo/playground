students, border = gets.split.map(&:to_i)

student = []
students.times do |i|
  s = gets.split.map(&:to_i)
  test = s[0] - (s[1] * 5)
  test = 0 if test < 0
  s = [(i+1), test]
  student << s
end

ok = student.select {|s| s[1] >= border}

ok.each do |i|
  puts i[0]
end
