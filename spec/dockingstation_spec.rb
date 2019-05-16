require './lib/dockingstation'
require './lib/bike'


describe DockingStation do

  let(:bike){Bike.new}
  let(:docking_station){DockingStation.new}

  it 'can release bike from docking station' do
    docking_station.add_bike(bike)
    docking_station.release_bike
    expect(docking_station.dock).not_to include(bike)
  end

  it 'expects to return the bike to docking station' do
    docking_station.add_bike(bike)
    expect(docking_station.dock).to include(bike)
  end

  it 'expects to see a bike in docking station' do
    docking_station.add_bike(bike)
    expect(docking_station.dock).to include(bike)
  end
end
