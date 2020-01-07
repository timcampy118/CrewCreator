class AddEmailIdToGoogleUserTable < ActiveRecord::Migration[5.1]
  def change
    add_column :google_user_tables, :idToken, :string
  end
end
