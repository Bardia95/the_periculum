class AddTimestampsToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :created_at, :datetime
    add_column :profiles, :updated_at, :datetime
  end
end
