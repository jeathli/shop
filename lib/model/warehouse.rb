module Shop

  class Warehouse
    attr_reader :id, :product_id
    attr_accessor :quantity

    @@id = 0

    def initialize(set_id, product_id, quantity)
      @id = set_id
      @product_id = product_id
      @quantity = quantity
    end

    def display_products
      puts "Lp. | Name | Price | Qty"
      products.each_with_index do |p, index|
        puts "#{index+1} | #{p.name} | #{p.price} | #{p.quantity}"
      end
    end

    #def add(id, name, price)
    # products << { id: id, name: name, price: price }
    #end

    #def remove(product_id)
    #  products.delete_if{|products| products[:id] == product_id}
    #end

    private
    def set_id
      @@id += 1
    end
  end
end
