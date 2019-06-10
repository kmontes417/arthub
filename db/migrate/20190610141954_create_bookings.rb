class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.boolean :availability
      t.references :user, foreign_key: true
      t.references :studio, foreign_key: true

      t.timestamps
    end
  end
end
