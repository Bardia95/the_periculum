class DropChapters < ActiveRecord::Migration[5.1]
  def up
     drop_table :chapters
   end

   def down
     fail ActiveRecord::IrreversibleMigration
   end
end
