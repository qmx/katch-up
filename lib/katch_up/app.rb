require 'sinatra/base'
require 'haml'

module KatchUp
	class App < Sinatra::Base
		get '/' do
			haml :index
		end
	end
end

