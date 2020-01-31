class ChangeScrumTimeToString < ActiveRecord::Migration[5.1]
  def change
    change_column :teams, :scrum_time, :string 
  end
end
