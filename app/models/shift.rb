class Shift < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :organizations, optional: true
end
