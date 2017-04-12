class CreateTeam < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :emblem
    end
  end
end
