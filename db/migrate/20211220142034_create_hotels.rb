class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :description
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
