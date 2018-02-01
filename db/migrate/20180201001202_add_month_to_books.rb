class AddMonthToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :month, :string
  end
end
