class Micropost < ApplicationRecord
# encoding: UTF-8
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true
  validate  :picture_size
  has_many :comments
  has_many :votes

  validates :title, uniqueness: true 

  private
    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 2.megabytes
        errors.add(:picture, "should be less than 2MB")
      end
    end

end