#! /usr/bin/env ruby

require_relative 'bike'
require_relative 'component' # , cargo
require_relative 'rental'

pannier = Cargo.new()
pannier.load(:apples); pannier.load(:water); pannier.load(:repair_kit)

puts "Space for #{pannier.remaining_capacity} items left."

bike = Bike.new(1, :pink, 99.99)
bike.equip(pannier)

Rental.add(bike)
Rental.print_total()