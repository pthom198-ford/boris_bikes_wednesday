#require 'bike'

class DockingStation

  attr_reader :dock

  def initialize
    @dock = []
  end

  def release_bike
   @dock.pop
  end

  def add_bike(bike)
   @dock.push(bike)
  end

  def view_dock
    @dock
  end

end
