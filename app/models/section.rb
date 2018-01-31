class Section < ApplicationRecord
  has_many :bookcomments, dependent: :destroy
  belongs_to :chapter
  validates :title, presence: true,
                    length:{minimum: 5}
end
