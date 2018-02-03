class DropBookcomments < ActiveRecord::Migration[5.1]
  def up
     drop_table :bookcomments
   end

   def down
     fail ActiveRecord::IrreversibleMigration
   end
end
