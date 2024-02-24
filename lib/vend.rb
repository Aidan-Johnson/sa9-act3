class VendingMachine
  def initialize(bottles = 20)
    @bottles = bottles
  end
  def purchase(amount)
    @bottles -= amount
  end
  def restock(amount)
    @bottles += amount
  end
  def get_inventory
    @bottles
  end
  def report
    puts "Inventory: #{@bottles} bottles"
  end

end

if __FILE__ == $0
  drink_machine = VendingMachine.new
  drink_machine.report
  puts "How many drinks to buy:"
  drinks_to_buy = gets.to_i
  puts "How many drinks to restock:"
  bottles_to_stock = gets.to_i
  drink_machine.purchase(drinks_to_buy)
  drink_machine.restock(bottles_to_stock)
  drink_machine.report
end
