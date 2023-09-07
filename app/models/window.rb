class Window < ApplicationRecord
  belongs_to :master
  has_one :appointment
end
