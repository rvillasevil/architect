class Comment < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :micropost, required: false

	validates :contenido, presence: true, length: { maximum: 450 }

end
