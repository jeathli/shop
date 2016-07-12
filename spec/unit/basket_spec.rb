module Shop
 Dir["./lib/**/*.rb"].each{|file| require file}

  RSpec.describe Basket do
    it "check existence" do
      expect(Basket.new(product_id: nil, quantity: nil)).to be_instance_of(Basket)
    end

    xdescribe "#add" do
      it "adds items to the basket" do
        basket = Basket.new(product_id, quantity)
        expect(basket.items.size).to eql(0)

        basket.add(nil, nil)

        expect(basket.items.size).to eql(1)
      end
    end
  end
end
