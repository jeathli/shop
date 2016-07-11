module Shop

  class Warehouse
    attr_reader :products

    def initialize(products: [])
      @products = products
    end

    def display_products
      puts "Lp. | Name | Price | Qty"
      products.each_with_index do |p, index|
        puts "#{index+1} | #{p.name} | #{p.price} | #{p.quantity}"
      end
    end

    def add(id, name, price)
      products << { id: id, name: name, price: price }
    end

    def remove(product_id)
      products.delete_if{|products| products[:id] == product_id}
    end
  end
end
