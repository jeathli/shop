require_relative "./fetch_basket_item"

module Shop
  class AddItemToBasket

#    def initialize(params)
#      @product_id = params.fetch(product_id).to_i
#      @quantity = params.fetch(quantity).to_i
#    end

    def call(product_id, quantity)
      BASKET << Item.new(product_id, quantity)
    end
  end
end
