this file will contain all the details i add to this project.
this project is a solo try to sort out my confuseness out of the 1st weeks struggle.

user stories------------------------------

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike works

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.

==========================================

domain model
 ------------------------------------------
bike  						-->		working?
									-->		broken?
									-->		can be reported broken
 ------------------------------------------
docking_station  	-->		receive and release_bike
									--		have a default capacity
									-->		do not release broken bikes
 ------------------------------------------
default capacity	--		can be change
 ------------------------------------------
bike  						-->   can dock
									 |-		eighter broken or working
 ------------------------------------------
van								-->		pick and release_bike
 ------------------------------------------
garage						-->		pick and release_bike
									-->		fix bikes
 ------------------------------------------