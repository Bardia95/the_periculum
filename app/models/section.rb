class Section < ApplicationRecord
  has_many :bookcomments, dependent: :destroy
  belongs_to :chapter, required: false
  belongs_to :book, required: false
  validates :title, presence: true,
                    length:{minimum: 5}
end
