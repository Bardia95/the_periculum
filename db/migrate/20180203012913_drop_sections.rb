class DropSections < ActiveRecord::Migration[5.1]
  def change
    drop_table :sections
  end
end
