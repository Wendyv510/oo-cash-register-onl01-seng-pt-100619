require 'pry'

class CashRegister 
  
  attr_accessor :total, :discount, :price, :items, :employee_discount 
  
  def initialize(discount=0)
    @total = 0
    @discount = discount 
    @items = []
    @employee_discount= employee_discount
  end 
  
  
  def apply_discount 
          employee_discount = @total * 0.20 
          self.total - employee_discount 
          puts "#{total}."
      if  self.discount > 0 
         to_take_off = @total * @discount
         self.total -= to_take_off
            print  "After the discount, the total comes to $#{total}."
      else 
         self.disount == 0 
            print  "There is no discount to apply."
      end 
   end 
   
  def add_item(item, price, quantity = 1)
     @total += price * quantity 
        if quantity >1 
          counter = 0 
          while counter < quantity 
            @items << item
            counter += 1 
          end 
        else 
          @items << item 
        end
  end 
        
    def void_last_transaction
      @total - @price
      @items.pop 
      if @items == 0 
       self.total.clear  
      else 
        puts "#{@total}"  
      end 
    end 
  end