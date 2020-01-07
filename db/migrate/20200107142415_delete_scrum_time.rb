class DeleteScrumTime < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :scrum_time
  end
end
