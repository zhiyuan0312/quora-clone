require 'byebug'
#NEW
get '/questions/:ques_id/vote/new' do

end

#CREATE
post '/questions/:ques_id/vote' do
	@vote = QuestionVote.new(vote_value: 1, user_id: current_user.id, question_id: params[:ques_id])
		if @vote.save
		redirect :"/questions"
	else
		@error = "Each user can only vote once"
		end
end

#INDEX
get '/questions/:ques_id/vote' do

end

#SHOW
get '/questions/:ques_id/vote/:vote_id' do

end

#EDIT
get '/questions/:ques_id/vote/:vote_id/edit' do
end

#UPDATE
put '/questions/:ques_id/vote/:vote_id/patch' do
end

#DELETE
delete '/questions/:ques_id/vote/:vote_id' do
	puts "==================="
	@vote = QuestionVote.find(params[:vote_id])
	@vote.delete
	redirect "/questions"
end