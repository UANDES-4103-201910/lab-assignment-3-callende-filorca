class AdminProfile < ApplicationRecord
	has_many :admins
	has_many :super_admins
end
