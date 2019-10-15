class DropTableReservations < ActiveRecord::Migration[6.0]
  def change
    drop_table :reservations
  end
end
