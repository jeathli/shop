module Shop

  class DeleteWarehouse

    def call(id)
      warehouse = FetchWarehouse.call(id)
      warehouse.delete_if { |warehouse| warehouse.id == id  }
    end
  end
end