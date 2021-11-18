class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.time :opening_time
      t.time :closing_time
      t.string :description
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
