require_relative '../../../lib/services/add_item_to_warehouse'

module Shop
  WAREHOUSE = []
end

  RSpec.describe Shop::AddItemToWarehouse do
      subject(:warehouse) { Shop::AddItemToWarehouse.new }

    before do
      Shop::WAREHOUSE.clear
    end

    describe "#call" do
      context "valid id" do
        let(:quantity){ 5 }
        let(:warehouse_first){ Shop::WAREHOUSE.first}

        it "raise no error" do
          expect {
            warehouse.call(nil).to eql(Shop::WAREHOUSE.clear)
          }
        end
      end
    end

      it "change the quantity" do
        expect {
          warehouse.call(nil, :quantity)
        }.to change{Shop::WAREHOUSE.count}.from(0).to(1)
      end
  end

