# 【問題１】
# class User
#   attr_accessor :last_name, :first_name, :gender, :age

#   def print_greetings
#     puts "こんにちは。#{self.last_name}#{self.first_name}です。性別は#{self.gender}です。歳は#{self.age}です。"
#   end

#   def male?
#     case self.gender
#     when "男"
#       return true
#     else
#       return false
#     end
#   end

# end

# user1 = User.new
# user1.last_name = '佐藤'
# user1.first_name = '一郎'
# user1.gender = '男'
# user1.age = 24

# user1.print_greetings

# if user1.male?
#   puts "#{user1.last_name}は男性です！"
# else
#   puts "#{user1.last_name}は女性です！"
# end

# 【問題２】
class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

end

class Book < Product
    attr_accessor :author, :publisher, :page_count
end

class CD < Product
    attr_accessor :artist, :year, :songs
end

class ShoppingCart
  attr_reader :count, :total_price

  def initialize
    @count = 0
    @total_price = 0
  end

  def add_product(product)
    @count += 1
    @total_price+= product.price
  end

end

book1 = Book.new('吾輩は猫である', 500)
book1.author = '夏目漱石'
book1.publisher = 'Vitalize出版'
book1.page_count = 400

cd1 = CD.new('SMAP', 1200)
cd1.artist = 'スマップ'
cd1.year = 2018
cd1.songs = ["青い稲妻", "世界に一つだけの花", "オレンジ"]

cart = ShoppingCart.new
cart.add_product(book1)
cart.add_product(cd1)
puts "買い物かごに入っている商品は全部で #{cart.count} 個です"
puts "金額は合計 #{cart.total_price} 円です"


# 【問題３】
