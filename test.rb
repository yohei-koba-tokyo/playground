begin
  # 数字を0で割ろうとすると、ZeroDivisionError例外が発生する
    1 / 0
  rescue
  # 例外が発生した時にrescue以下の処理が呼ばれる
  puts '0で割ることはできません'
end
