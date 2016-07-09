
#Data

products =[ {id: 1, name: "Math Book", price: 23.77, VAT: 1.23, quantity: 23},
{id: 2, name: "Red Pen", price: 4.00, VAT: 1.23, quantity: 56},
{id: 3, name: "Blue Pen", price: 4.00, VAT: 1.23, quantity: 47},
{id: 4, name: "English Book", price: 35.78, VAT: 1.23, quantity: 30},
{id: 5, name: "Pencil case", price: 15.25, VAT: 1.23, quantity: 24},
{id: 6, name: "Backpack", price: 89.99, VAT: 1.23, quantity: 40},
{id: 7, name: "Rubber", price: 2.65, VAT: 1.23, quantity: 35},
{id: 8, name: "Pencil", price: 3.75, VAT: 1.23, quantity: 40},
{id: 9, name: "Set of color pencils", price: 18.99, VAT: 1.23, quantity: 51}]

basket = []

def remove(products, id, quantity)
  product = products.find{|x| x[:id] == id}
  return unless product # by nie rzucalo bledu jak nie ma produktu
  if x[:quantity] >= quantity
    x[:quantity] -= quantity 
  else 
    puts "Out of stock: #{x[:name]}" 
  end
end


def add_to_basket( products, id, quantity, basket)
	products.each do |x|
		if x[:id] == id	
			basket << x.clone
			basket[-1][:quantity]= quantity
				if x[:quantity] >= quantity
				puts "Basket: #{x[:name]}, quantity: #{quantity}"
				else
				puts "Out of stock: #{x[:name]}"
				end	
		end
	end
end



def suming_items_in_basket(basket) 
	all=0
	brutto=0
	basket.each do |x|
		all += x[:price] * x[:quantity]
		brutto += x[:price] * x[:VAT]
		end
	puts "Total price to pay: #{all}, #{brutto}"	
end


def remove_items_from_basket(basket, products)
	k = 0
	basket.each do |x|
		if x[:id]== id
			k = basket.delete(x) 	
		end
	end	
	products.each do |x|
		if x[:id] == id
			x[:quantity] += k[:quantity]
		end
	end		
end



def suming_products(products)
	sum=0
	products.each do |x|
		sum += x[:quantity]
	end
	puts "Warehouse total quantity: #{sum}"
end

def product_listning(products)
	products.each do |x|
		puts "#{x[:name]},\t quantity= #{x[:quantity]},\t price= #{x[:price]}"
	end
end



add_to_basket(products, 4, 5, basket)

product_listning(products)
