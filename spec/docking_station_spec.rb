require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  # when passing a n argument must be attached to the requrement

  it 'releases working bikes' do
    subject.dock Bike.new
    bike = subject.release_bike
    #gotta build up objs for the test
    expect(bike).to be_working
#    bike = double :bike, broken?: false
#    subject.dock bike
#    expect(subject.release_bike).to be bike
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release bike' do # #is an instance variable
    it 'raises an error when no bike available' do
    	expect { subject.release_bike }.to raise_error 'No bikes available'
    	# {} makes the prg runs code inside first then the outside ones,
    	# important at fail msg raise not to break the prg.
    end

    it 'do not release broken bikes' do
      bike = double :bike, working?: false
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe 'dock' do
  	it 'raises an error when full' do
  		20.times { subject.dock :bike }
  		expect {subject.dock :bike }.to raise_error 'Docking station full'
  	end
  end

end