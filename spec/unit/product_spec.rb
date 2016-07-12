module Shop
  Dir["./lib/**/*.rb"].each{|file| require file}

  RSpec.describe Product do
    describe "self.new" do
      it "able to create a new object" do
        subject = Product.new(id: 1, name: "122", price: 123.33, quantity: 23)

        expect(subject.name).to eq("122")
      end
    end

      xit "set_price" do
        expect {
          (price.lenght) > 2
        }.to_not raise_error
      end
  end
end
