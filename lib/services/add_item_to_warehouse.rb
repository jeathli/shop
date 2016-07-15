require_relative './fetch_warehouse_item'
require_relative '../model/item'

module Shop
  class AddItemToWarehouse
    def call(product_id, quantity)
      WAREHOUSE << Item.new(product_id: product_id, quantity: quantity)
    end
  end
end
