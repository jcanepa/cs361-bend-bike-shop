class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :components

  def initialize(id, color, price, weight=STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @components = []
  end

  def equip(component)
    components.push(component)
  end
  # todo unequip method
end