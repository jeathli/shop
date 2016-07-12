module Shop
  class RemoveFromWarehouse
    attr_reader :product_id, :quantity

    def initialize(params)
      @product_id = params.fetch(product_id)
      @quantity = params.fetch(quantity)
    end

    def call(id)
      Warehouse.delete_if { |product| product(id) == id  }
    end
  end
end
