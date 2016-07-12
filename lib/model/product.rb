module Shop

  class Product
    attr_reader :id, :name, :price, :quantity

    def initialize(id:, name:, price:, quantity:)
      @id = id
      @name = name
      @price = set_price(price)
      @quantity = quantity
    end

    def inspect_total_no_products
      " #{name}; price #{price} "
    end

    private
    def set_price(price)
      rais ArgumentError unless price.is_a?(Numeric)
      price
    end
  end
end
