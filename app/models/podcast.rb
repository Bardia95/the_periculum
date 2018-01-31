class Podcast < ApplicationRecord
  has_many :podcomments, dependent: :destroy
  validates :title, presence: true,
                    length:{minimum: 5}
end
