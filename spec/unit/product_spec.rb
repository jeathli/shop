module Shop
  Dir["./lib/**/*.rb"].each{|file| require file}

  RSpec.describe Product do
    describe "self.new" do
      it "able to create a new object" do
        subject = Product.new(id: 1, name: "122", price: 123.33, quantity: 23)

        expect(subject.name).to eq("122")
      end
    end
  end
end
