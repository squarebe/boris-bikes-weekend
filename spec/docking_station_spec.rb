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
  end

  describe '#release bike' do # #is an instance variable
    it 'raises an error when no bike available' do
    	expect { subject.release_bike }.to raise_error 'No bikes available'
    	# {} makes the prg runs code inside first then the outside ones,
    	# important at fail msg raise not to break the prg.
    end
  end
end