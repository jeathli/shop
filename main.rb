require "sinatra/base"

require_relative "./lib/product"
require_relative "./lib/shop"
require_relative "./lib/warehouse"

  class App < Sinatra::Base
    get "/" do
      @products = Products.new.call
      erb :index
    end

    get "/products/:id" do
      @products = Products.new.find {|product| product.id == product.id }
      erb :show
    end
  end

