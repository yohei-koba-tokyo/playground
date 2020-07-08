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

class User
  attr_accessor :last_name, :first_name, :gender, :age

  def print_greetings
    puts "こんにちは。#{self.last_name}#{self.first_name}です。性別は#{self.gender}です。歳は#{self.age}です。"
  end

  def male?
    case self.gender
    when "男"
      return true
    else
      return false
    end
  end
end

class ShoppingUser < User
  attr_accessor :money, :cart

  def initialize(money)
    @money = money
    @cart = ShoppingCart.new
  end

  def into_cart(product)
    self.cart.add_product(product)
    self.money -= product.price
  end

  def checkout?
    self.money >= self.cart.total_price ? (return true) : (return false)
  end

end

book1 = Book.new('吾輩は猫である', 1000)
book1.author = '夏目漱石'
book1.publisher = 'Vitalize出版'
book1.page_count = 400

cd1 = CD.new('SMAP', 1500)
cd1.artist = 'スマップ'
cd1.year = 2018
cd1.songs = ["青い稲妻", "世界に一つだけの花", "オレンジ"]

user1 = ShoppingUser.new(10000)
user1.last_name = '山田'
user1.first_name = '花子'
user1.gender = '女'
user1.age = 30

user1.into_cart(book1)
user1.into_cart(cd1)

if user1.checkout?
  puts "#{user1.last_name}は#{user1.cart.count}個の商品を購入し、全部で#{user1.cart.total_price}円支払いました。"
  puts "結果として残りの所持金は#{user1.money}円です。"
else
  puts "#{user1.last_name}はチェックアウトできませんでした。"
  puts "なぜなら買い物の合計金額が#{user1.cart.total_price}円なのに対し、所持金は#{user1.money}円しかなかったからです。"
end
