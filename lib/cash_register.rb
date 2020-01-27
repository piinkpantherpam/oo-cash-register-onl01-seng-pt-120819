require 'pry'
class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end

class CashRegister 
  attr_accessor :discount, :item, :last_transaction, :total

  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0 
  end 
  
  def add_item(cost, name, number = 1)
    self.total = cost * number
    @items << name
  end
  
  def add_item_2(cost, name, number = 1)
    self.total = cost * number

  def apply_discount 
  # the cash register was initialized with an employee discount:  
    # applies the discount to the total price
    # returns success message with updated total
    # reduces the total
    
  # the cash register was *NOT* initialized with an employee discount:
    # returns a string error message that there is no discount to appply
  end 
  
  def items 
  # (self).items!?
  # returns an array containing all items that have been added
  end
  
  def void_last_transaction
  # subtracts the last transaction from the total 
  end 
  
end 

tester = CashRegister.new 
tester.add_item(4, "carrots", 4)