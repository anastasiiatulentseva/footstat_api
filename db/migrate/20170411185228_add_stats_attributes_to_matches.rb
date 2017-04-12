class AddStatsAttributesToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :city, :string
    add_column :matches, :referee, :string
    add_column :matches, :tournament, :string
    add_column :matches, :yellow_cards_count, :integer
    add_column :matches, :red_cards_count, :integer
    add_column :matches, :substitutions_count, :integer
    add_column :matches, :duration, :integer

    add_index :matches, :team1_id
    add_index :matches, :team2_id
  end
end
