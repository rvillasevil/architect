class Vote < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :micropost, required: false
end
