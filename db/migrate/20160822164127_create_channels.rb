class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.integer :team_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
