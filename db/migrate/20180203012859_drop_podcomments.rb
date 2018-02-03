class DropPodcomments < ActiveRecord::Migration[5.1]
  def up
     drop_table :podcomments
   end

   def down
     fail ActiveRecord::IrreversibleMigration
   end
end
