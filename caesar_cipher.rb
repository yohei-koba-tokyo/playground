char = "abcxyz"
char_ary = char.split("")

changed_char_ary = []

char_ary.each do |char|
  char.ord >= 97 && char.ord <= 99 ? char = (char.ord + 26).chr : char = char
  changed_char_ary << (char.ord - 3).chr
end

p changed_char_ary.join