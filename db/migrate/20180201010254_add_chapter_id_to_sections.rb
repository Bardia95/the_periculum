class AddChapterIdToSections < ActiveRecord::Migration[5.1]
  def change
    add_reference :sections, :chapter, foreign_key: true
  end
end
