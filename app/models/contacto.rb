class Contacto < ApplicationRecord
	validates :email, presence: true
end
