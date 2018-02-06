class User < ApplicationRecord
  before_create :add_role_to_user
  ROLES = %w[admin member].freeze

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  has_many :comments, dependent: :destroy

  def add_role_to_user
    self.role = 'member'
  end

end
