class CashRegister
    attr_accessor :total, :discount, :price, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    def add_item(title, price, quantity = 1)
        self.price = price * quantity
        @total += self.price
        quantity.times {self.items << title}
    end
    def apply_discount
        self.total = (self.total * (1 - (self.discount.to_f/100.0))).to_i
        if self.discount == 0
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{total}."
        end
    end
    def void_last_transaction
        @total -= self.price
    end
end