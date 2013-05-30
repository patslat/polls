class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :body, :null => false
      t.integer :responder_id, :null => false
      t.integer :question_id, :null => false
      t.timestamps
    end
  end
end
