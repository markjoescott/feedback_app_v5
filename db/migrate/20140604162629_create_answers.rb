class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :answer_1
      t.integer :answer_2
      t.integer :answer_3
      t.integer :answer_4
      t.integer :answer_5
      t.text :comment
      t.integer :respondent_id
      t.integer :questionnaire_id

      t.timestamps

    end
  end
end
