class Product
	VAT = 1.23
	attr_reader :id, :name
	attr_accessor :price

	def initialize(id:, name:, price:)
		@id = id
		@name = name
		@price = price
	end


	def inspect_total_no_products
		" #{name}; price #{price} "
	end
end	

#p1 = Product.new(id: 10, price: 232, name: "Ruller", quantity: 23)
#p p1.inspect_total_no_products
