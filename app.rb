require 'sinatra/base'

class GigaWars < Sinatra::Application
	get '/' do
		'Hello world!'
	end
end