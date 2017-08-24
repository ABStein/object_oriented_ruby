require "./store_item.rb"
store_item = StoreFront::Item.new(
  product: "apple",
  price: 1,
  color: "red"
)

  p store_item.on_sale