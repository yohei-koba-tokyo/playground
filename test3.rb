
# 木の本数　区間明るさの平均基準
# 樹木のライト本数
# 区間調査の回数
# それぞれ区間調査の範囲

# 5 6
# 4 3 6 1 3
# 3
# 1 3
# 1 5
# 2 3


treeNumber, border = gets.split.map(&:to_i)
trees = gets.split.map(&:to_i)

testNumber = gets.to_i
tests = []
testNumber.times do
  tests << gets.split.map(&:to_i)
end

tests.each do |test|
  test = [test[0] - 1, test[1]]
  test_trees = trees.slice(test[0], test[1] - test[0])
  average =  test_trees.sum / test_trees.length
  if border > average
    addNumber = border - average
    (test[1]-test[0]).times do |i|
      trees[test[0] + i] += addNumber
    end
  end
end

puts trees.join(' ')