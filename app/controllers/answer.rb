require 'byebug'
#NEW
get '/questions/:ques_id/answers/new' do
	@question = Question.find(params[:ques_id])
	erb :"answers/new"
end

#CREATE
post '/questions/:ques_id/answers/' do
	@answer = Answer.create(answer_text: params[:answer], user_id: current_user.id, question_id: params[:ques_id])
	redirect :"/questions"
end

#INDEX
get '/questions/:ques_id/answers' do
	erb :"/questions"
end

#SHOW
get '/questions/:ques_id/answers/:ans_id' do
	@question = Question.find(params[:id])
	erb :"questions/show"
end

#EDIT
get '/questions/:ques_id/answers/:ans_id/edit' do
end

#UPDATE
put '/questions/:ques_id/answers/:ans_id/patch' do
end

#DELETE
delete '/questions/:ques_id/answers/ans_id' do
end