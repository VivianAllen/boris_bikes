class DockingStation

  def initialize
    @docked_bikes = []
  end

  def list_bikes
    @docked_bikes
  end

  def release_bike
    if @docked_bikes.length > 0
      return Bike.new
    else
      raise StandardError.new('There are no bikes to release.')
    end
  end

  def dock_bike(bike)
    @docked_bikes.push(bike)
  end

end
