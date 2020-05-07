# 容疑者a,bの二人が同一供述なら、Trueを返す

def police_trouble(a, b)
  a == b ? "True" : "False"
end

# 出力例
p police_trouble(true, false)
p police_trouble(false, false)
p police_trouble(true, true)