
def solve(data, morse_code, word, index, results)
  [1, 2, 3, 4].each do |cut|
    input = data.slice(index, cut)
    remain = data.slice(index + cut, data.length - index - cut)
    # puts "data: #{data}     input: #{input}     remain: #{remain}"

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
    else
      break
    end

  end

  return results
end

morse_code = {"01"=>"a", "1000"=>"b", "1010"=>"c", "100"=>"d", "0"=>"e", "0010"=>"f", "110"=>"g", "0000"=>"h", "00"=>"i", "0111"=>"j", "101"=>"k", "0100"=>"l", "11"=>"m", "10"=>"n", "111"=>"o", "0110"=>"p", "1101"=>"q", "010"=>"r", "000"=>"s", "1"=>"t", "001"=>"u", "0001"=>"v", "011"=>"w", "1001"=>"x", "1011"=>"y", "1100"=>"z"}

data = "100111110"

p solve(data, morse_code, "", 0, [])

