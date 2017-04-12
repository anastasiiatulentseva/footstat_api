class CreatePlayer < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :origin_country
      t.date :dob
      t.belongs_to(:team, index: true, foreign_key: true)
    end
  end
end
