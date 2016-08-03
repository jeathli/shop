require_relative "../../../lib/services/add_item_to_basket"

RSpec.describe Shop::AddItemToBasket do
  let(:params){ { "product_id" => 1, "quantity" => 1 } }
  subject(:basket) { Shop::AddItemToBasket.new(params) }

  describe "#add" do
    before do
      Shop::BASKET.clear
    end

    it "change quantity" do
      expect {
        basket.call
      }.to change{ Shop::BASKET.count }.to(1)
    end
  end
end
