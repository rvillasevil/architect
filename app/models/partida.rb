class Partida < ApplicationRecord
	mount_uploader :foto, PictureUploader

	validates :titulo, uniqueness: true
end
