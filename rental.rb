# Singleton

class Rental

  @@equiptment = []

  attr_accessor :equiptment

  def self.add(eq)
    @@equiptment << eq
  end

  def self.remove(eq)
    @@equiptment.remove(eq)
  end

  def self.total
    @@equiptment.reduce(0) { |sum, eq| sum + eq.price }
  end

  def self.print_total
    puts "$#{self.total}"
  end
end