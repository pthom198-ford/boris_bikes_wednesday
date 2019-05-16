require './lib/dockingstation'
require './lib/bike'


describe DockingStation do
  # it 'can release bike from docking station' do
  #   docking_station = DockingStation.new
  #   expect(docking_station.release_bike).to not_include(bike)
  # end
  #
  # it 'expects the bike to be working' do
  #   docking_station = DockingStation.new
  #   released_bike = docking_station.release_bike
  #   expect(released_bike.working?).to eq(true)
  # end

  it 'expects to return the bike to docking station' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.add_bike(bike)
    expect(docking_station.dock).to include(bike)
  end

  # it 'expects to see a bike in docking station' do
  #   docking_station = DockingStation.new
  #   docking_station.add_bike
  #   expect(docking_station.view_dock).to include(bike)
  # end
end
