require_relative 'bike' #requires a file within the dir.

class DockingStation
	DEFAULT_CAPACITY = 20

	attr_accessor :capacity

	def initialize #initialize the class with the given conditions
		@bikes = []
		@capacity = DEFAULT_CAPACITY
	end

  def release_bike
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

  attr_reader :bikes

  def full?
  	@bikes.count >= capacity
  	# heres setting the full capacity.
  end

  def empty?
  	@bikes.empty?
  	#heres defining what the empty array means
  end

end