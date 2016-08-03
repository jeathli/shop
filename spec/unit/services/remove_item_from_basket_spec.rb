require_relative "../../../lib/services/remove_item_from_basket"

RSpec.describe Shop::RemoveItemFromBasket do
  let(:params){ { "product_id" => 1, "quantity" => 1 } }
  subject(:basket) { Shop::RemoveItemFromBasket.new(params) }

  before do
    Shop::BASKET.clear
  end

  describe "#call" do
    context "invalid id" do
      it "raises no error" do
        expect {
          basket.call(nil)
        }.to_not raise_error
      end
    end

    context "valid id" do
      let(:quantity) { 2 }
      let!(:AddItemToBasket) { Shop::BASKET << Shop::Item.new(product_id: 1, quantity: quantity) }

      it "remove item" do
        Shop::BASKET.Ad

        expect {
          basket.call(quantity)
        }.to change{ :quantity }.to(quantity-1)
      end
    end
  end
end