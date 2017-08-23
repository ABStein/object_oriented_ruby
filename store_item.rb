# store_item = {:product => "apple", :price => 1, :color => "red"}
# store_item_1 = {:product => "milk", :price => 2, :color => "white"}
# store_item_2 = {:product => "eggs", :price => 2, :color => "yellow"}






# p store_item_1[:product]
# p store_item_2[:color]  
# p store_item[:price]


class Item
  attr_reader :product, :price, :color
  attr_writer :product, :price, :color

  def initialize(input_hash)
    @product = input_hash[:product]
    @price = input_hash[:price]
    @color = input_hash[:color]
  end

  def color_description
    "The color value is " + @color
  end

  # def product 
  #   @product
  # end

  # def product=(new_product)
  #   @product = new_product 
  # end
end



store_item = Item.new(
  product: "apple",
  price: 1,
  color: "red"
)
store_item_1 = Item.new(
  product: "milk",
  price: 2,
  color: "white"
)
store_item_2 = Item.new(
  product: "eggs",
  price: 2,
  color: "yellow"
)

puts store_item_2.price 
puts store_item_2.color
puts store_item_2.product
puts store_item_2.color_description
