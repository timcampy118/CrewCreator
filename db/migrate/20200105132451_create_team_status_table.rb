class CreateTeamStatusTable < ActiveRecord::Migration[5.1]
  def change
    create_table :team_status_tables do |t|
      
      t.timestamps
    end
  end
end
