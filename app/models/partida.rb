class Partida < ApplicationRecord
	mount_uploader :foto, PictureUploader
	belongs_to :user
end
