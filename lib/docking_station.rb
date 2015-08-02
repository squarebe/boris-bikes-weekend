require_relative 'bike' #requires a file within the dir.

class DockingStation

	def initialize #initialize the class with the given conditions
		@bikes = []
	end

  def release_bike
    # Bike.new #creates a bike-obj # later moved to the spec-file
    fail 'No bikes available' if empty?
    # raises an error if bikes array is empty.
    @bikes.pop #release the last bike added.
  end

  def dock bike
  	fail 'Docking station full' if full?
  	# raises an error if bikes array more/equal the given number
  	@bikes << bike # it now appends bikes into the array
  end

  private

  def full?
  	@bikes.count >= 20
  	# heres setting the full capacity.
  end

  def empty?
  	@bikes.empty?
  	#heres defining what the empty array means
  end

end