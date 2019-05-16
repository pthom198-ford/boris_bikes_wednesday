#require 'bike'

class DockingStation

  attr_reader :dock

  def initialize
    @dock = []
  end

  def release_bike
#@dock.empty? is equivalent to @dock != nil
    empty? ? raise("aint no bike fool") : @dock.pop
  end

  def add_bike(bike)
     full? ? raise("theres a bike here fool") : @dock.push(bike)
  end

  private
  def full?
    @dock.count == 20
 end

  def empty?
    @dock.count == 0
  end
end
