module Shop
  Dir["./lib/**/*.rb"].each{|file| require file}

  RSpec.describe Warehouse do

    it "an instance" do
      expect(Warehouse.new(1, nil, nil)).to be_instance_of(Warehouse)
    end

    describe "#add" do
      it "change the quantity" do

        Warehouse = []
        #expect(Warehouse).to eql(0)
        warehouse = Warehouse

        warehouse.add_to_warehouse.new(id: 1, product_id: nil, quantity: nil)

        expect(warehouse).to eql(1)
      end
    end

    xdescribe "#remove" do
      let(:name){"foo"}
      let(:price){10}
      let(:id){11}

      it "reduce the quantity" do

        warehouse = Warehouse []
        products = Product.new(id: id, name: name, price: price)
        expect(warehouse.products.size).to eql(0)

        warehouse.add(id, name, price)
        expect(warehouse.size).to eql(1)

        warehouse.remove(id)

        expect(warehouse.size).to eql(0)
      end
    end
  end
end
