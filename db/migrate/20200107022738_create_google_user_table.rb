class CreateGoogleUserTable < ActiveRecord::Migration[5.1]
  def change
    create_table :google_user_tables do |t|
      t.timestamps
    end
  end
end
