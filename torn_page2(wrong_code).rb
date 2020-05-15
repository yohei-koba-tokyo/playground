def solve(sum)
  should_be = 0  # あるべき合計数
  page = 0

  loop do
    page += 1
    should_be += page
    break if should_be > sum
  end

  diff = should_be - sum
  # １枚破ると、奇数ページと偶数ページの合計が偶数になることはない。
  return nil if diff.even?
  smaller = (diff - 1) / 2
  # 小さい方が偶数もありえない。
  return nil if smaller.even?
  larger = smaller + 1
  return page, smaller, larger
end

puts "破かれた本の、ページ数を全て足した合計を入力してください。"
print "合計は？ ："
final_sum = gets.to_i

res = solve(final_sum)

unless res
  puts "入力した合計値の条件では、解が存在しませんでした。"
end

page, first, second = res
puts "この本のページ数は、#{page}ページです。"
puts "破かれたのは、#{first}ページ目です(同時に、#{second}ページ目も失われています)。"