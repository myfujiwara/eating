class PostImage < ApplicationRecord
  belongs_to :post, dependent: :destroy
  mount_uploader :image, ImageUploader
end
