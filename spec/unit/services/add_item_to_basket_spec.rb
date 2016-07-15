require_relative "../../../lib/services/add_item_to_basket"

module Shop
  BASKET = []
end

RSpec.describe Shop::AddItemToBasket do
  let(:params){ {"product_id" => 1, "quantity" => 1}}
  subject(:basket) { Shop::AddItemToBasket.new(params) }

  before do
    Shop::BASKET.clear
  end

  describe "#add" do
    it "change quantity" do
      expect {
        basket.call
      }.to change{ Shop::BASKET.count}.from(0).to(1)
    end
  end
end
