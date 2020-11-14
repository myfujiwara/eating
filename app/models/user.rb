class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format:{ with: VALID_EMAIL_REGEX }
  validates :password, length: { minimum: 8 }
  mount_uploader :image, ImageUploader
end
