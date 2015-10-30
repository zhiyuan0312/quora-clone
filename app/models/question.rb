class Question < ActiveRecord::Base
	#e.g., User.authenticate('zen@hotmail.com','ilovecoding')
	has_many :answers
	has_many :question_votes
	belongs_to :user
   	
end