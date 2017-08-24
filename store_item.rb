require "./sale.rb"

module StoreFront 
  class Item
    include Sale

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
  end
end



