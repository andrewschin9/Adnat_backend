class ChangeLengthtoDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :shifts, :length, :decimal
  end
end
