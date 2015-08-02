require 'bike'

describe Bike do

  it { is_expected.to respond_to :working? }
  it { is_expected.to respond_to :broken? }

  it 'can be reported broken' do
  	subject.report_broken
  	expect(subject).to be_broken
  end

  it 'can be not working' do
  	subject.report_broken
  	expect(subject.report_broken).to eq false
  end

  it 'works as default' do
  	expect(subject.working?).to eq true
  end

  it 'reported broken should be broken' do
  	subject.report_broken
  	expect(subject.working?).to eq false
  end
  
end