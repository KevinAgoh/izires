class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :description
      t.time :opening_time
      t.time :closing_time
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
