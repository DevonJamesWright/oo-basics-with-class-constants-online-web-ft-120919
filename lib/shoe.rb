class Shoe
  attr_accessor :color, :material, :condition
  attr_reader :brand, :size

BRANDS = []
  def initialize(brand)
    @brand = brand
  end
  
  def brand= (brand)
    @brand = brand
    if brand != BRANDS.detect
      brand << BRANDS
    end
  end
  def size= (size)
    @size = size
    BRANDS << size
  end
  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end