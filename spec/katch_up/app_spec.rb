require 'spec_helper'

describe KatchUp::App do
	
	def app
		KatchUp::App
	end

	it 'should render the homepage' do
		get '/'
		last_response.should be_ok
		last_response.body.should_not be_empty
	end

	it 'should return the expected working hours for this month' do
		Time.stub!(:now).and_return(Time.parse("2010-06-9"))
		get '/'
		last_response.should be_ok
		last_response.body.include?("48").should be_true
	end

end
