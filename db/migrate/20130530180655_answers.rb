class Answers < ActiveRecord::Migration
  def change
    remove_column :answers, :body
    remove_column :answers, :responder_id
  end
end
