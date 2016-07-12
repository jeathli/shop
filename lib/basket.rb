module Shop
  class Basket
    attr_reader :items
    VAT = 1.23

    def initialize
      @items = []
    end

    def add(product, quantity)
      items << { product: product, quantity: quantity }
    end

    def sum(quantity, price)
      items.reduce {|items| item(quantity) * item(price)}
    end

    def remove(product_id)
      items.delete_if {|item| item[:product].id == product_id}
    end
  end
end
