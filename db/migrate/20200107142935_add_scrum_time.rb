class AddScrumTime < ActiveRecord::Migration[5.1]
  def change
        add_column :teams, :scrum_time, :Time
  end
end
