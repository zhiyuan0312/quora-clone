require 'byebug'
#NEW
get '/questions/new' do
	erb :"questions/new"
end

#CREATE
post '/questions' do
	@question = Question.create(question_text: params[:question], user_id: current_user.id)
	redirect :"/questions"
end

#INDEX
get '/questions' do
	@questions = Question.all.order(:id)
	erb :"questions/index"
end

#SHOW
get '/questions/:id' do
	@question = Question.find(params[:id])
	erb :"questions/show"
end

#EDIT
get '/questions/:id/edit' do
	@question = Question.find(params[:id])
	erb :"questions/edit"
end

#UPDATE
put '/questions/:id/patch' do
	@question = Question.find(params[:id])
	@question.update(question_text: params[:edited_question])
	redirect :"questions"
end

#DELETE
delete '/questions/:id' do
end