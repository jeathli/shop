module Shop
  class FetchProduct
    def call(id)
      return unless id
      PRODUCT.find do |id|
        product_id == id
      end
    end
  end
end
