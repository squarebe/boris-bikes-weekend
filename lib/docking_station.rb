require_relative 'bike' #requires a file within the dir.

class DockingStation

  def release_bike
    # Bike.new #creates a bike-obj # later moved to the spec-file
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock bike
  	fail 'Docking station full' if @bike
  	@bike = bike
  end

end