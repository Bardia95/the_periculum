class Chapter < ApplicationRecord
  has_many :sections, dependent: :destroy
  belongs_to :book
  validates :title, presence: true,
                    length:{minimum: 5}
end
