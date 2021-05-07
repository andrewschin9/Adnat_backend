class AddLengthtoShift < ActiveRecord::Migration[6.0]
  def change
    add_column :shifts, :length, :integer
  end
end
