class Blog < ApplicationRecord

	belongs_to :user
	validates :title, presence: true
	validates :user_id, presence: true
	validates :description, presence: true

  validate  :foto_primera_size

	mount_uploader :foto_primera, PictureUploader
	mount_uploader :foto_segunda, PictureUploader
	mount_uploader :foto_tercera, PictureUploader

  def to_param
    slug
  end

  private

    # Validates the size of an uploaded picture.
    def foto_primera_size
      if foto_primera.size > 2.megabytes
        errors.add(:foto_primera, "should be less than 2MB")
      end
    end  

end