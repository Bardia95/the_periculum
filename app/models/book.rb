class Book < ApplicationRecord
  has_many :comments, as: :commentable
  has_attached_file :bookcover, styles: { medium: "300x300>", thumb: "100x100>" }
  has_attached_file :authorpic, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :bookcover, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :authorpic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :title, presence: true,
                    length:{minimum: 5}
end
