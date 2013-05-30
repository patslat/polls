class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :name, :null => false
      t.integer :creator_id, :null => false
      t.timestamps
    end
  end
end
