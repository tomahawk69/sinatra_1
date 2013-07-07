require 'sinatra'

class ParamError < StandardError; end


get '/' do
	erb :home
end

post '/reverse' do
	if not params[:text] or params[:text].empty? then
		raise ParamError, "Parameter 'text' is missing or empty" 

	end
	erb :reverse
end

# errors
not_found do
	erb :'404'
end

error do
	#@error = request.env['sinatra_error']
   	erb :'param_error'
end

