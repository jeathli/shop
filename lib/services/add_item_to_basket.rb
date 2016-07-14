require_relative "./fetch_basket_item"

module Shop
  class AddItemToBasket

    def call(product_id, quantity)
      BASKET << Item.new(product_id, quantity)
    end
  end
end
