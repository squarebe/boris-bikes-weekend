require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }
#  it { is_expected.to respond_to :working? }

  it 'releases working bikes' do
    bike = subject.release_bike
    #gotta build up objs for the test
    expect(bike).to be_working
  end

end