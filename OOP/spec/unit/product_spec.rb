module Shop
  require_relative "../../lib/product"

  RSpec.describe Products do
    describe "self.new" do
      it "able to create a new object" do
        subject = Products.new(id: 1, name: "122", price: 123.33)

        expect(subject.name).to eq("122")
      end
    end

      #it "set_price" do
      #expect {
       ##(price.lenght) > 2
      #}.to_not raise_error
     # end
  end
end
