#require 'bike'

class DockingStation

  attr_reader :dock


  def initialize
    @dock = []
  end

  # def release_bike
  #  return Bike.new
  # end



  def add_bike(bike)
   @dock.push(bike)
  end

  # def view_bike
  #
  # end

end
