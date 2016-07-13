require_relative '../../lib/services/add_item_to_warehouse'

module Shop
  WAREHOUSE = []
end

  RSpec.describe Shop::AddItemToWarehouse do
      subject(:warehouse) {Shop::AddItemToWarehouse.new}


    describe "#call" do
      context "valid id" do
        let(:quantity){ 5 }
        let(:warehouse_first){ Shop::Warehouse.first}

        it "raise no error" do
          expect {
            warehouse.call(nil).to eql(Shop::Warehouse.clear)
          }
        end
      end
    end
  end
