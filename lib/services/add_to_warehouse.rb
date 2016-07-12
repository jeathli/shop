module Shop
  class AddToWarehouse
    attr_reader :product_id, :quantity

    def initialize(params)
      @product_id = params.fetch(product_id)
      @quantity = params.fetch(quantity)
    end

    def call
      WAREHOUSE << Warehouse.new(
        product_id: product_id,
        quantity: quantity
      )
    end
  end
end
