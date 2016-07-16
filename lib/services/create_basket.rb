module Shop
  class CreateBasket
    def call(product_id, quantity)
      BASKET << Basket.new(product_id, quantity)
    end
  end
end