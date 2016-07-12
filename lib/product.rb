module Shop

  class Products
    attr_reader :id, :name
    attr_accessor :price, :quantity

    @@id = 0

    def initialize(name:, price:, quantity:)
      @id = set_id
      @name = name
      @price = set_price(price)
      @quantity = quantity
    end

    def inspect_total_no_products
      " #{name}; price #{price} "
    end

    def set_id
      @@id += 1
    end

    def set_price(price)
      rais ArgumentError unless price.is_a?(Numeric)
      price
    end
  end
end
