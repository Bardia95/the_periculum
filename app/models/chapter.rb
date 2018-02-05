class Chapter < ApplicationRecord
  has_many :questions
  belongs_to :book
  validates :title, presence: true,
                    length:{minimum: 5}
end
