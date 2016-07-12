module Shop
  class CreateWarehouse

    attr_reader :product_id, :quantity

    def call(product_id, quantity)
      WAREHOUSE << Warehouse.new(product_id, quantity)
    end
  end
end
