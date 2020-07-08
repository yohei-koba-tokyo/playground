
# まず入力
# puts "表の行数と列数を、半角で間にスペースを入れて入力してください"
H, W = gets.split.map(&:to_i)
# puts "1行目の2つ分のデータを、半角で間にスペースを入れて入力してください"
A1, B1 = gets.split.map(&:to_i)
# puts "2行目の2つ分のデータを、半角で間にスペースを入れて入力してください"
A2, B2 = gets.split.map(&:to_i)

#  入力が完了した段階では、既に2×2の表は出来ていることになる。
#   A0 B0 ... この行には、あと(W-2)個のデータを入れる
#   A1 B1 ... 上記同様に,あと(W-2)個のデータを入れる
#   .  .      ここから下は、新しく(H-2)行分のデータを作成する。
#   '  '

# なので、あとでわざわざ-2しなくてもよいよう、以下のように、フィルする数を予め代入しておく
fill_H = H - 2
fill_W = W - 2

# 事前準備は終了したので、ここからの手順…
# 1.最初に、以下のように左から２列分のデータを先に完成させる。(縦方向に向かってフィルしていく)
#   ※縦の列を配列だと思って、２つの配列を作るとやりやすい。
#   例)4x5の表だとしたら…
#   ↓  ↓
#   A0 B0 ?? ?? ??
#   A1 B1 ?? ?? ??
#   A2 B2 ?? ?? ??
#   A3 B3 ?? ?? ??
#   ※例えばA2の数は、A1+(A1-A0)というふうに計算する。

# 2.そのあと、完成した上記データを使って、横１行ずつ配列を作りながらputsしていく。（横方向に向かってフィルしていく）
# → A0 B0 C0 D0 E0  配列つくったらputs!
# → A1 B1 C1 D1 E1  配列つくったらputs!
# → A2 B2 C2 D2 E2  配列つくったらputs!
# → A3 B3 C3 D3 E3  配列つくったらputs!
#   ※例えばC0の数は、B0+(B0-A0)というふうに計算する。

columnA = [A1, A2]
columnB = [B1, B2]

fill_H.times do |i|
  columnA << columnA[i+1] + (columnA[i+1] - columnA[i])
end


fill_H.times do |i|
  columnB << columnB[i+1] + (columnB[i+1] - columnB[i])
end

puts "以下に結果を出力します"
H.times do |i|
  row = [columnA[i], columnB[i]]
  fill_W.times do |i|
    row << row[i+1] + (row[i+1] - row[i])
  end
  puts row.join(" ")
end