class RemoveChannelIdFromUserTeams < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_teams, :channel_id, :integer
  end
end
