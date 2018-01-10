class Habitacion < ApplicationRecord

	belongs_to :reform
	validates :nombre, presence: true, length: { maximum: 50 }
		
end
