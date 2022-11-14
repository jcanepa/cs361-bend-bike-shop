class Rental

  attr_reader :bike, :luggage

  def initialize(bike, luggage=nil)
    @bike = bike
    @luggage = luggage
  end

  def price
    @bike.price + (2 * self.weight)
  end

  def weight
    luggage_weight = (@luggage ? @luggage.weight : 0)
    @bike.weight + luggage_weight
  end

end
