class AddBodyBackToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :body, :string
  end
end
