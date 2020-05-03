def fib(n)
  n == 1 || n == 2 ? 1 : fib(n-1) + fib(n-2)
end
# or
def fib(n)
  if n == 1 || n == 2
    1
  else
    fib(n-1) + fib(n-2)
  end
end

puts "何番目のフィボナッチ数を求めますか？"
puts fib(gets.to_i)