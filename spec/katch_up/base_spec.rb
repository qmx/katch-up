require 'spec_helper'

describe KatchUp::Base do

	before(:each) do
		subject = KatchUp::Base
	end

	it 'should return the weekdays for June, 2010' do
		Time.stub!(:now).and_return(Time.parse("2010-06-1"))
		subject.weekdays.should == 21
	end

	it 'should return 168 worked hours for June, 30, 2010' do
		Time.stub!(:now).and_return(Time.parse("2010-06-30"))
		subject.expected_hours.should == 168
	end

	context "for June, 15, 2010" do
		before(:each) do
			@time = Time.parse("2010-06-15")
			Time.stub!(:now).and_return(@time)
		end

		it 'should return the elapsed working hours' do
			subject.expected_hours.should == 80
		end

		it 'should return the elapsed weekdays' do
			subject.weekdays(@time).should == 10
		end
	end
end
