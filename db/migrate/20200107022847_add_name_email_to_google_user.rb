class AddNameEmailToGoogleUser < ActiveRecord::Migration[5.1]
  def change
    add_column :google_user_tables, :firstName, :string
    add_column :google_user_tables, :lastName, :string
    add_column :google_user_tables, :email, :string
  end
end
