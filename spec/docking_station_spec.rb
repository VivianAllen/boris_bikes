require 'docking_station.rb'

describe DockingStation do
  it 'responds to release_bike method.' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end
end
