class DropEssays < ActiveRecord::Migration[5.1]
  def change
    drop_table :essays
  end
end
