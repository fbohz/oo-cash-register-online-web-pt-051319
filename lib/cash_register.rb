require 'pry'
class CashRegister
  attr_accessor :name, :total, :title, :price, :quantity 
  attr_reader :discount 
  @@items = []
  
  def initialize (discount=nil)
    @discount = discount
    @total = 0
  end
  
 
  def add_item(title, price, quantity=1)
    @title = title 
    @quantity = quantity
    self.total += price * quantity
    items 
  end 
  
  def apply_discount
   
    percent_decimal = @discount.to_f / 100
    total_discount = percent_decimal * @total 
    self.total = @total - total_discount
    
    @discount? "After the discount, the total comes to $#{self.total.to_i}." : "There is no discount to apply."
  end 
  
 def items
 if @quantity = 1
      @@items << self.title 
      # binding.pry

    else 
      counter = 0
      while counter < @quantity
        @@items << @title
        counter =+ 1
    end     
   end 
   @@items 
   
   end 
end   
