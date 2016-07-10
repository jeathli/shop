module Shop
  require_relative "../../lib/product"

  RSpec.describe Product do
    describe "self.new" do
      it "able to create a new object" do
        subject = Product.new(id: 1, name: "122", price: 123.33)

        expect(subject.name).to eq("122")
      end
    end
  end
end
