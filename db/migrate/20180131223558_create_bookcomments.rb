class CreateBookcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :bookcomments do |t|
      t.string :commenter
      t.text :body
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
