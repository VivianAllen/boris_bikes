class DockingStation

  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike
    fail 'NO BIKES!' if @docked_bikes.count.zero?
    Bike.new
  end

  def dock_bike(bike)
    fail 'NO ROOM!' if @docked_bikes.count == 1
    @docked_bikes.push(bike)
  end

end
