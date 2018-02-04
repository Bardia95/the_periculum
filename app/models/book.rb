class Book < ApplicationRecord
  #has_many :comments, as: :commentable
  validates :title, presence: true,
                    length:{minimum: 5}
end
