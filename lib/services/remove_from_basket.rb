module Shop
  class RemoveFromBasket
    def initialize(params)
      @product_id = params.fetch(product_id)
      @quantity = params.fetch(quantity)
    end

    def call
      BASKET.delete_if {|product_id| params.fetch[:product].id == product_id }
    end
  end
end
