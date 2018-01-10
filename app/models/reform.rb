class Reform < ApplicationRecord

	has_many :cocinas
	has_many :banos
	has_many :habitacions
	validates :nombre, presence: true, length: { maximum: 50 }

end
