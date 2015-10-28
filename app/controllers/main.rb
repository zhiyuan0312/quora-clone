get '/' do
	if session[:user_id] != nil
		redirect :"main"
	else
		@list = User.all
		erb :"static/index"
	end
end

post '/' do
	redirect :"static/index"
end

get '/main' do
	erb :"main"
end