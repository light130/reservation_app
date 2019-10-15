class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.datetime :start, null: false
      t.datetime :close, null: false

      t.timestamps
    end
  end
end
