class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.integer :user_id
      t.integer :respondent_id
      t.integer :course_id
      t.integer :answer_1
      t.integer :answer_2
      t.integer :answer_3
      t.integer :answer_4
      t.integer :answer_5

      t.timestamps

    end
  end
end
