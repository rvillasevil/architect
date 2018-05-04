class Partida < ApplicationRecord
	mount_uploader :foto, PictureUploader

	validates :titulo, uniqueness: true, allow_nil: true

  def to_param
    slug
  end
end
