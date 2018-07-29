class MentalModel < ApplicationRecord
  validates :name, :description, presence: true
end