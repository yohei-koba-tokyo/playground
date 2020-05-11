require "date"

case Date.today.wday
when 1
  puts "月曜だ…"
when 2
  puts "火曜だ…"
when 3
  puts "水曜だ…"
when 4
  puts "木曜だ…"
when 5
  puts "金曜だ！"
when 6
  puts "土曜だ！"
when 0
  puts "日曜だ！"
end


d = Date.today;
puts [
  d.sunday?,
  d.monday?,
  d.tuesday?,
  d.wednesday?,
  d.thursday?,
  d.friday?,
  d.saturday?
]



require "date"

day = Date.today.wday
days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

if day == 5
  puts "今日は#{days[day]}だ！！！"
else
  puts "今日は#{days[day]}"
end