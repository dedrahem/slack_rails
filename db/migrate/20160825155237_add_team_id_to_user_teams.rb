class AddTeamIdToUserTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :user_teams, :team_id, :integer
  end
end
