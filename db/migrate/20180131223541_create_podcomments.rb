class CreatePodcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :podcomments do |t|
      t.string :commenter
      t.text :body
      t.references :podcast, foreign_key: true

      t.timestamps
    end
  end
end
