require './customer'
require './movie'
require './ticket'
require './ticket_vending_machine'
require 'date'

#customerを作成。nameとmoneyの値を渡している
customer = Customer.new("takashi", 5000)

#ticket_vending_machineを作成。初期値はinitializeメソッドの中で自動で入る
ticket_vending_machine = TicketVendingMachine.new

#movieを3つ作成。start_date、end_dateにはDateクラスのインスタンスを入れる
titanic = Movie.new(
                    "Titanic",
                    2000,
                    Date.new(2017, 2, 20),
                    Date.new(2017, 4, 20)
          )

tom_and_jerry = Movie.new(
                          "tom_and_jerry",
                          1500,
                          Date.new(2017, 3, 18),
                          Date.new(2017, 5, 10)
                )

oceans_eleven = Movie.new(
                          "Ocean's Eleven",
                          1800,
                          Date.new(2017, 4, 18),
                          Date.new(2017, 6, 10)
                )

#作成したticket_vending_machineクラスのインスタンスのmoviesを更新
ticket_vending_machine.movies = [titanic, tom_and_jerry, oceans_eleven]
# ticket_vending_machine.display_menu
# ticket_vending_machine.display_result(customer)
customer.buy(ticket_vending_machine)

