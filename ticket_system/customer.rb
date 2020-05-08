class Customer
  attr_accessor :name, :money, :ticket
  
  
  def initialize(name, money, ticket=nil)
    @name, @money, @ticket = name, money, ticket
  end

  def choose_movie
    gets.to_i
  end

  def buy(ticket_vending_machine)
    ticket_vending_machine.display_menu
    choosed_movie = ticket_vending_machine.movies[choose_movie]
    self.money -= choosed_movie.fee
    self.ticket = Ticket.new(choosed_movie)
    puts "#{choosed_movie.title}のチケットを買ったよ！"
    puts "#{name}の所持金が#{money}円になりました！"
  
  end

end

