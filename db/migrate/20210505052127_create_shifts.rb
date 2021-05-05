class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.integer :employee_id
      t.date :shift_date
      t.time :start_time
      t.time :finish_time
      t.integer :break_length

      t.timestamps
    end
  end
end
