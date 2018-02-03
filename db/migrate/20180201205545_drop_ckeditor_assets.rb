class DropCkeditorAssets < ActiveRecord::Migration[5.1]
  def up
     drop_table :ckeditor_assets
   end

   def down
     fail ActiveRecord::IrreversibleMigration
   end
end
