




# 度からラジアンを求める
def radian(degree)
  degree * Math::PI / 180
end

# ラジアンから度を求める
def degree(radian)
  radian * 180 / Math::PI
end

a = [-360, -315, -270, -225, -180, -90, -45, 0, 45, 90, 180, 225, 270, 315, 360]
a.each{|v|
  r = radian(v) # 度をラジアンに変換
  d = degree(r) # ラジアンを度に変換
  puts "#{v}       radian:#{r.round(2)}       degree:#{d}"
}