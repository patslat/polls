class DropBodyFromResponse < ActiveRecord::Migration
  def change
    remove_column :responses, :body
  end
end
