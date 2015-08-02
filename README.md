this file will contain all the details i add to this project.
this project is a solo try to sort out my confuseness out of the 1st weeks struggle.

user stories------------------------------

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike works

==========================================

domain model
 ------------------------------------------
bike  						-->		working?
									-->		broken?
									-->		can be reported broken
 ------------------------------------------
docking_station  	-->		release_bike
									--		have a default capacity
									-->		do not release broken bikes
 ------------------------------------------
default capacity	--		can be change
 ------------------------------------------
bike  						-->   can dock
									 |-		eighter broken or working
 ------------------------------------------
