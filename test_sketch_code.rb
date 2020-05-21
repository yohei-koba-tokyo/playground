









# 以下コードはテスト中です






def cross
  [imap[iam[0], iam[1]-1], imap[iam[0]-1, iam[1]], imap[iam[0], iam[1]+1], imap[iam[0]+1, iam[1]]]
end

imap = []
words = []

N = gets.to_i
imap << ("."*(N+2))
N.times do
  imap << "."+gets.chomp+"."
end
imap << ("."*(N+2))

M = gets.to_i
M.times do
  words << gets.chomp
end


puts imap

words.each do |word|
  answere = "no"
  start_point = []
  imap.each_with_index do |line, index|
    start = line.each_index.select{|i| line[i] == word[0]}
    start.each do |s|
      start_point << [index, s]
    end
  end
  end
  break if start_point = []




  word.drop(1)


  start_point do |iam|
    iimap = imap
    iimap[iam[0], iam[1]] = "."
    word.each do |w|
      # cross = [iimap[iam[0], iam[1]-1], iimap[iam[0]-1, iam[1]], iimap[iam[0], iam[1]+1], iimap[iam[0]+1, iam[1]]]
      # iam = cross.each_index.select{|i| cross[i] == w}
    end
  end


  puts answere
end



# words.each do |word|
#   iimap =imap
#   answere = "no"
  
#   word.each do |w|
#     iam = []
#     imap.each_with_index do |line, index|
#       search = line.each_index.select{|i| line[i] == w}
#       search.each do |s|
#         iam << [index, s]
#       end
#       iam.each do |iam|
#         cross = [imap[iam[0], iam[1]-1], imap[iam[0]-1, iam[1]], imap[iam[0], iam[1]+1], imap[iam[0]+1, iam[1]]]
#         cross.each do |c|
#           imap[c[0]][c|1|] == 
#       end

#     end
#   end
