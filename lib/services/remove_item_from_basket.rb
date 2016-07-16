module Shop
  class RemoveItemFromBasket
    attr_reader :product_id, :quantity

    def initialize(params)
      @product_id = params.fetch("product_id").to_i
      @quantity = params.fetch("quantity").to_i
    end

    def call(product_id)
      BASKET.delete_if { |product_id| (product_id).product_id == product_id }
    end
  end
end
