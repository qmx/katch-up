require 'sinatra/base'
require 'haml'

module KatchUp
	class App < Sinatra::Base
		set :root, File.expand_path("../../..", __FILE__)
		get '/' do
			@worked_hours = Base.new.expected_hours	
			haml :index
		end
	end
end

