class Answer < ActiveRecord::Base
	#e.g., User.authenticate('zen@hotmail.com','ilovecoding')
	belongs_to :question
	belongs_to :user
	has_many :answer_votes
    
end