class Basket
	attr_reader :items
	VAT = 1.23

	def initialize
		@items = []
	end

	def add(product, quantity)
		items << { product: product, quantity: quantity }
	end

	def sum
		total_price = 0
		items.each do 
			total_price += x[:price] 
		end
		"Total price to pay: #{total_price} zl."
	end

	def remove(product_id) 
		items.delete_if{|item| item[:product].id == product_id}
	end	
end

