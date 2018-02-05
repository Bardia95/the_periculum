class Question < ApplicationRecord
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :chapter
  validates :title, presence: true,
                    length:{minimum: 5}
end
