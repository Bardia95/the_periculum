class AddBodyAndUserIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :body, :text
    add_column :comments, :user_id, :integer
  end
end
