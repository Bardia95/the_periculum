class DropSections < ActiveRecord::Migration[5.1]
  def up
     drop_table :sections
   end

   def down
     fail ActiveRecord::IrreversibleMigration
   end
end
