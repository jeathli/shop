module Shop
  class FetchWarehouse
    def call(id)
      WAREHOUSE.find do |id|
        warehouse.id == id
      end
    end
  end
end
