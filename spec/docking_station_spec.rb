require 'docking_station.rb'

describe DockingStation do

  it 'responds to release_bike method.' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'releases a bike that is working.' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it 'can dock a bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:dock_bike).with(1).argument
  end

  it 'docks a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)
    expect(docking_station.docked_bikes[0]).to equal(bike)
  end

  it 'cannot to release_bike if there are no bikes.' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike}.to raise_error('There are no bikes to release.')
  end


end
