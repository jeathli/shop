module Shop
  class FetchProduct
    def call(product_id)

      return unless product_id

      PRODUCTS.find do |product|
        product_id.to_i == product.id
      end
    end
  end
end
