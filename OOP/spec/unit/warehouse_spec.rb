require_relative "../../lib/warehouse"
require_relative "../../lib/product"


RSpec.describe Warehouse do

	it "has 1 param" do
		expect(Warehouse.new).to be_instance_of(Warehouse)
	end

	describe "add products" do
		it "change the quantity" do

			warehouse = Warehouse.new
			expect(warehouse.products.size).to eql(0)
			
			warehouse.add(nil, nil, nil)

			expect(warehouse.products.size).to eql(1)
		end	
	end

		describe "remove" do
			let(:name){"foo"}
			let(:price){10}
			let(:id){1}

			it "reduce the quantity" do

				warehouse = Warehouse.new
				products = Product.new(id: id, name: name, price: price)
				expect(warehouse.products.size).to eql(0)

				warehouse.add(id, name, price)
				expect(warehouse.products.size).to eql(1)

				warehouse.remove(id)

				expect(warehouse.products.size).to eql(0)
			end	
		end	
end