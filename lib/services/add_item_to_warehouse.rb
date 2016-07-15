require_relative './fetch_warehouse_item'

module Shop
  class AddItemToWarehouse
    def call
      WAREHOUSE << Item.new(params)
    end
  end
end
