class AddCosttoShift < ActiveRecord::Migration[6.0]
  def change
    add_column :shifts, :wage, :decimal
  end
end
