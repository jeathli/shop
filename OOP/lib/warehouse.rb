class Warehouse
	def initialize(products: [])
		@products = products
	end

	def display_products
		puts "Lp. | Name | Price | Qty"
		@products.each_with_index do |p, index|
			puts "#{index+1} | #{p.name} | #{p.price} | #{p.quantity}"
		end
	end
end
			