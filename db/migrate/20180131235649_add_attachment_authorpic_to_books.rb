class AddAttachmentAuthorpicToBooks < ActiveRecord::Migration[5.1]
    change_table :books do |t|
      t.attachment :authorpic
    end

  def self.down
    remove_attachment :books, :authorpic
  end
end
