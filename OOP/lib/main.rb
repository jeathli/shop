require_relative "./products"
require_relative "./basket"
require_relative "./warehouse"

class Shop
  def initialize
    @basket = Basket.new
    @wearhouse = Warehouse.new(products: [ 
      Product.new(id: 1, name: "Math Book", price: 23.77, quantity: 23),
      Product.new(id: 2, name: "Red Pen", price: 4.00, quantity: 56),
      Product.new(id: 3, name: "Blue Pen", price: 4.00, quantity: 47),
      Product.new(id: 4, name: "English Book", price: 35.78, quantity: 30),
      Product.new(id: 5, name: "Pencil case", price: 15.25, quantity: 24),
      Product.new(id: 6, name: "Backpack", price: 89.99, quantity: 40),
      Product.new(id: 7, name: "Rubber", price: 2.65, quantity: 35),
      Product.new(id: 8, name: "Pencil", price: 3.75, quantity: 40),
      Product.new(id: 9, name: "Set of color pencils", price: 18.99, quantity: 51)
    ])
    @menu_items = [
      "Show products",
      "Exit"
    ]
  end

  def start_shooping
    loop do
      display_menu      
      choice = gets.chomp
      navigate_through_the_menu(choice)
    end
  end

  def display_menu
    puts "Hello! Nice to see you"
    puts "What do you want to do?"
    @menu_items.each_with_index { |i, index| puts "#{index+1} #{i}" }
  end

  def navigate_through_the_menu(choice)
    case choice
    when "1" then
      @wearhouse.display_products
    when "2"
      exit(0)
    when 3
      1, 3
      add_to_basket(1,3)
    else
      puts "Sorry there is no such a opptions :("
    end
  end

  def add_to_basket(product_id, q)
    p = @warehouse.products.find{|product| product.id == product_id}
    @basket.add(p, q)
  end
end

shop = Shop.new
shop.start_shooping
