class AddBookableToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :bookable, polymorphic: true, null: false
  end
end
