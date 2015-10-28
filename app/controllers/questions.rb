require 'byebug'
#NEW
get '/questions/new' do
	erb :"questions/new"
end

#CREATE
post '/questions' do
	@question = Question.create(question_text: params[:question], user_id: session[:user_id])
	redirect :"/questions"
end

#INDEX
get '/questions' do
	@questions = Question.all
	erb :"questions/index"
end

#SHOW
get '/questions/:id' do
	@question = Question.find(params[:id])
	erb :"questions/show"
end

#EDIT
get '/questions/:id/edit' do
end

#UPDATE
put '/questions/:id/patch' do
end

#DELETE
delete '/questions/:id' do
end