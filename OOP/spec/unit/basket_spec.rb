module Shop
  require_relative "../../lib/basket"
  require_relative "../../lib/product"

  RSpec.describe Basket do 
    it "has 1 param" do
      expect(Basket.new).to be_instance_of(Basket)  
    end

    describe "add" do
      it "adds items to the basket" do
        basket = Basket.new
        expect(basket.items.size).to eql(0)
        basket.add(nil, nil)
        expect(basket.items.size).to eql(1)
      end 
    end

    describe "sum" do
      it "items in the basket" do
        basket = Basket.new
        basket.add(nil, nil)

        expect(basket.items.count).to eql(1)
      end
    end

    describe "remove" do
      let(:name){"foo"}
      let(:price){10}
      let(:id){1}
      
      it "items from the basket" do
        basket = Basket.new
        product = Product.new(id: id, name: name, price: price)
        basket.add(product, 1)
        expect(basket.items.count).to eql(1)
        
        basket.remove(id)
        
        expect(basket.items.count).to eql(0)
      end
    end
  end
end  
