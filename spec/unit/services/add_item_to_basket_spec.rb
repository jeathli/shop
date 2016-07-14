require_relative "../../../lib/services/add_item_to_basket"

module Shop
  BASKET = []
end

RSpec.describe Shop::AddItemToBasket do
  subject(:basket) { Shop::AddItemToBasket.new }

  before do
    Shop::BASKET.clear
  end

  describe "#add" do
    it "change quantity" do
      expect {
        basket.call(1, 4)
      }.to change{ Shop::BASKET.count}.from(0).to(1)
    end
  end
end
