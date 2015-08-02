# The purpose of this class is to give us an instance of
# something that includes `BikeContainer`, to initially run tests against
require 'bike_container'
require 'support/shared_examples_for_bike_container'

class BikeContainerTest
	include BikeContainer
end

describe BikeContainerTest do

  it_behaves_like BikeContainer

end