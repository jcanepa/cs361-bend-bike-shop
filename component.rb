class Component; end

class Cargo < Component

  MAX_ITEMS = 10

  attr_accessor :contents

  def initialize(capacity:MAX_ITEMS)
    @contents = []
  end

  def load(item)
    @contents << item
  end

  def remove(item)
    @contents.remove(item)
  end

  def capacity
    MAX_ITEMS
  end

  def remaining_capacity
    capacity() - @contents.size
  end
end