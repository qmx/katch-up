require 'sinatra/base'
require 'haml'

module KatchUp
	class App < Sinatra::Base
		get '/' do
			@worked_hours = Base.new.expected_hours	
			haml :index
		end
	end
end

