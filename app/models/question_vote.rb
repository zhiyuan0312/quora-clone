class QuestionVote < ActiveRecord::Base
	
	belongs_to :question
	belongs_to :user
	validates :user_id, :uniqueness => {:scope => :question_id}, presence: true
    
end