require 'docking_station.rb'

describe DockingStation do

  it 'responds to release_bike method.' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'releases a bike that is working.' do
    bike = DockingStation.new.release_bike
    expect(bike).to respond_to(:working?)
  end

  it 'can dock a bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:dock_bike).with(1).argument
  end

  it 'docks a bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    docking_station.dock_bike(bike)
    expect(docking_station.list_bikes[0]).to equal(bike)
  end

end
