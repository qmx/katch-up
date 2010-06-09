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
		
end
