class DropEssays < ActiveRecord::Migration[5.1]
  def up
     drop_table :essays
   end

   def down
     fail ActiveRecord::IrreversibleMigration
   end
end
