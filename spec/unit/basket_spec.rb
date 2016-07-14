module Shop
 Dir["./lib/**/*.rb"].each{|file| require file}

  RSpec.describe Basket do
    it "check existence" do
      expect(Basket.new(product_id: nil, quantity: nil)).to be_instance_of(Basket)
    end
  end
end
