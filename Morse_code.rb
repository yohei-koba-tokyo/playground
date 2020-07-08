
# data:モールス信号データ　morse_code:符号表　word:単語を生成する変数　index:文字変換する範囲を指定するためのindex　results:生成された単語を配列で格納していく
def solve(data, morse_code, word, index, results)
  # アルファベットのモールス信号は最大で4つの符号で表されるので、1個だったら？2個だったら？…というふうに4文字まで検証する
  [1, 2, 3, 4].each do |cut|
    input = data.slice(index, cut)
    remain = data.slice(index + cut, data.length - index - cut)
    add_int = ""
    if morse_code.has_key?(input) && input != ""
      add_str = morse_code[input]
    end
    if remain&.length != 0 && add_str != nil
      solve(data, morse_code, word+add_str, index + cut, results)
    elsif add_str != nil
      answere = word + add_str
      results << answere
      break
    end
  end
  return results
end

# 符号表をハッシュ形式で作成
morse_code = {"01"=>"a", "1000"=>"b", "1010"=>"c", "100"=>"d", "0"=>"e", "0010"=>"f", "110"=>"g", "0000"=>"h", "00"=>"i", "0111"=>"j", "101"=>"k", "0100"=>"l", "11"=>"m", "10"=>"n", "111"=>"o", "0110"=>"p", "1101"=>"q", "010"=>"r", "000"=>"s", "1"=>"t", "001"=>"u", "0001"=>"v", "011"=>"w", "1001"=>"x", "1011"=>"y", "1100"=>"z"}

# 以下のコードを解いてみる(・ = 0, - = 1)
data = "000111000"

p solve(data, morse_code, "", 0, [])

