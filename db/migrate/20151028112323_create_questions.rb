class CreateQuestions < ActiveRecord::Migration
	def change
		create_table :questions do |t|
			t.belongs_to :user, index: true
			t.string :question_text
			t.timestamp null: false
		end
	end
end
