class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.date :opening_time
      t.date :closing_time
      t.string :description
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
