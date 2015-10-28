class Question < ActiveRecord::Base
	#e.g., User.authenticate('zen@hotmail.com','ilovecoding')
	has_many :answers
	belongs_to :user
    	
end