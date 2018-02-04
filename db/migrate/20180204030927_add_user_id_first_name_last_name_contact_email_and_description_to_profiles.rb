class AddUserIdFirstNameLastNameContactEmailAndDescriptionToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :user_id, :integer
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :contact_email,  :string
    add_column :profiles, :description,  :string
  end
end
