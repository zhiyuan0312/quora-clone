require 'byebug'

get '/users/:id' do
	@error = "user id page" + " " + params[:id]
end

get '/users/:user_id/questions/' do
	#find all questions by specific user
	@question = Question.where(user_id: params[:user_id])
	erb :"/users/question"
end

get '/users/:user_id/answers/' do
	#find all answers by specific user
	@answer = Answer.where(user_id: params[:user_id])
	erb :"/users/answer"
end

get '/new_user' do
	erb :"/users/new"
end

post '/login' do
	#apply authentication method to check if a user has entered a valid email and password
	#if a user has successfully been authenticated, assign the current user id to a session

	@login = User.authenticate(params[:email], params[:password])
	case @login
	when "email_invalid"
		@error = "Invalid email"
	when "password_invalid"
		@error = "Password invalid"
	else
		#save user id into session (similiar to params)
		session[:user_id] = @login
		redirect :"main"
	end
end

post '/logout' do
	#kill a session when user chooses to logout
	session[:user_id] = nil
	redirect :"/"
end

post '/create_user' do
	@user = User.new(email: params[:email], password: params[:password])
	if @user.save
		@message = "Signed up. You may login now."
		redirect to '/'
	else
		redirect to '/failed_create_user'
	end
end