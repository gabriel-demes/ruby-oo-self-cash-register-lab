class CashRegister
    attr_accessor :total, :discount, :item, :lasttransaction

    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @item = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity=nil)
        if quantity
            @total += price * quantity
            @item +=  [title] * quantity
            @lasttransaction = price * quantity
        else @total += price
            @item.push(title)
            @lasttransaction = price
        end
       
    end

    def apply_discount
        if @discount
            @total -= @total * (@discount.to_f / 100)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
        
    end

    def items
        @item
    end

    def void_last_transaction
        @total -= @lasttransaction
    end 


end


