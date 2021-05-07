class AddNametoShifts < ActiveRecord::Migration[6.0]
  def change
    add_column :shifts, :employee_name, :string
  end
end
