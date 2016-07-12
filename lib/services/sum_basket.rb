module Shop
  class SumBasket
    attr_reader :product_id, :quantity, :price

    def initialize(params)
      @product_id = params.fetch(product_id)
      @quantity = params.fetch(quantity)
      @price = params.fetch(price)
    end

    def call
      BASKET.reduce {|product_id| product_id(quantity) * product_id(price)}
    end
  end
end
