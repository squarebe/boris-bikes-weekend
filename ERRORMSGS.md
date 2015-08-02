Failures:

  1) DockingStation has a default capacity
     Failure/Error: expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
     NameError:
       uninitialized constant DockingStation::DEFAULT_CAPACITY
     # ./spec/docking_station_spec.rb:21:in `block (2 levels) in <top (required)>'

  2) DockingStation#release bike do not release broken bikes
     Failure/Error: expect { subject.release_bike }.to raise_error 'No bikes available'
       expected Exception with "No bikes available", got #<RSpec::Mocks::MockExpectationError: #<Double :bike> received unexpected message :broken? with (no args)> with backtrace:
         # ./lib/docking_station.rb:53:in `block in working_bikes'
         # ./lib/docking_station.rb:53:in `reject'
         # ./lib/docking_station.rb:53:in `working_bikes'
         # ./lib/docking_station.rb:25:in `release_bike'
         # ./spec/docking_station_spec.rb:35:in `block (4 levels) in <top (required)>'
         # ./spec/docking_station_spec.rb:35:in `block (3 levels) in <top (required)>'
     # ./spec/docking_station_spec.rb:35:in `block (3 levels) in <top (required)>'

  3) DockingStation dock raises an error when full
     Failure/Error: expect {subject.dock :bike }.to raise_error 'Docking station full'
       expected Exception with "Docking station full", got #<RuntimeError: DockingStation full> with backtrace:
         # ./lib/bike_container.rb:13:in `add_bike'
         # ./lib/docking_station.rb:35:in `dock'
         # ./spec/docking_station_spec.rb:44:in `block (4 levels) in <top (required)>'
         # ./spec/docking_station_spec.rb:44:in `block (3 levels) in <top (required)>'
     # ./spec/docking_station_spec.rb:44:in `block (3 levels) in <top (required)>'

Finished in 0.04308 seconds (files took 0.16114 seconds to load)
27 examples, 3 failures

Failed examples:

rspec ./spec/docking_station_spec.rb:20 # DockingStation has a default capacity
rspec ./spec/docking_station_spec.rb:32 # DockingStation#release bike do not release broken bikes
rspec ./spec/docking_station_spec.rb:42 # DockingStation dock raises an error when full