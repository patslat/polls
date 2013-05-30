class ChangeQuestionIdToAnswerId < ActiveRecord::Migration
  def change
    remove_column :responses, :question_id
    add_column :responses, :answer_id, :integer
  end
end
