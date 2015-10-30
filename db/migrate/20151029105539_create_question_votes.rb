class CreateQuestionVotes < ActiveRecord::Migration
	def change
		create_table :question_votes do |t|
			t.belongs_to :user, index: true
			t.belongs_to :question, index: true
			t.integer :vote_value, :default => 0
			t.timestamp null: false
		end
	end
end
