require "sinatra/base"
require "bundler/setup"

Dir["./lib/**/*.rb"].each{|file| require file}

module Shop

  PRODUCTS = [
    Product.new(id: 1, name: "Math Book", price: 23.77, quantity: 23),
    Product.new(id: 2, name: "Red Pen", price: 4.00, quantity: 56),
    Product.new(id: 3, name: "Blue Pen", price: 4.00, quantity: 47),
    Product.new(id: 4, name: "English Book", price: 35.78, quantity: 30),
    Product.new(id: 5, name: "Pencil case", price: 15.25, quantity: 24),
    Product.new(id: 6, name: "Backpack", price: 89.99, quantity: 40),
    Product.new(id: 7, name: "Rubber", price: 2.65, quantity: 35),
    Product.new(id: 8, name: "Pencil", price: 3.75, quantity: 40),
    Product.new(id: 9, name: "Set of color pencils", price: 18.99, quantity: 51)
  ]
  WAREHOUSE = []
  BASKET = []

  class App < Sinatra::Base
    get "/" do
      products = FetchProducts.new.call
      erb :"products/index", locals: { products: products, title: "Products" }
    end

    get "/products/:id" do |id|
      product = FetchProduct.new.call(id)
      erb :"products/show", locals: { product: product }
    end

    get "/basket" do
      products_in_basket = FetchBasket.new.call
      erb :"basket/show", locals: { basket: products_in_basket }
    end

    post "/basket" do
      AddItemToBasket.new(params).call
      redirect "/"
    end
  end
end