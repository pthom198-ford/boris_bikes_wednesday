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

  it 'throws an error when there are no bikes available' do
    expect{docking_station.release_bike}.to raise_error("aint no bike fool")
  end

  it 'throws an error when there is a bike already docked' do
    20.times{docking_station.add_bike(bike)}
    expect{docking_station.add_bike(bike)}.to raise_error("theres a bike here fool")
  end
  it "can have a capacity of 20 bikes" do
    20.times{docking_station.add_bike(bike)}
    expect(docking_station.dock.count).to eq(20)
  end
end
