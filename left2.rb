def left2(str)
  puts str.match(/..$/)[0] + str.sub(/..$/,"")
  puts str.sub(/^../,"") + str.match(/^../)[0]
  puts str[2..-1] + str[0..1]
end

left2("12345")