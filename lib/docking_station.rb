class DockingStation

  def initialize
    @docked_bikes = []
  end

  def list_bikes
    @docked_bikes
  end

  def release_bike
    return Bike.new
  end

  def dock_bike(bike)
    @docked_bikes.push(bike)
  end

end
