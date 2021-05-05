class Organization < ApplicationRecord
  has_many :users, :through => :shifts
end
