require_relative '../../../lib/services/add_item_to_warehouse'

  RSpec.describe Shop::AddItemToWarehouse do
      subject(:warehouse) { Shop::AddItemToWarehouse.new }

    describe "#call" do
      context "valid id" do
        let(:quantity){ 5 }
        let(:warehouse_first){ Shop::WAREHOUSE.first }

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
        }.to change{ Shop::WAREHOUSE.count }.to(1)
      end
  end