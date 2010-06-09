require 'sinatra/base'


module KatchUp
	class App < Sinatra::Base
		get '/' do
			"Hello World"
		end
	end
end

