require 'pry'
class CashRegister
  attr_accessor :name, :total, :title, :price, :quantity, :items
  attr_reader :discount 
  
  def initialize (discount=nil)
    @discount = discount
    @total = 0
    @items = []
  end
  
 
  def add_item(title, price, quantity=1)
    @title = title 
    self.total += price * quantity
    quantity.times do 
      @items << title 
      end 
  end 
  
  def apply_discount
   
    percent_decimal = @discount.to_f / 100
    total_discount = percent_decimal * @total 
    self.total = @total - total_discount
    
    @discount? "After the discount, the total comes to $#{self.total.to_i}." : "There is no discount to apply."
  end 
  
end   
