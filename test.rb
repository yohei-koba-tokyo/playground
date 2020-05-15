N = gets.to_i
M, A, B = gets.split.map(&:to_i)

if N >= M
  puts A * N
else
  puts B * N
end