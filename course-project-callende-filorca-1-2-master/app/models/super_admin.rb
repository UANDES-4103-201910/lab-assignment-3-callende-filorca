class SuperAdmin < ApplicationRecord
  belongs_to :admin_profile
	has_many :admins
	has_many :users
	has_many :posts
	validates :name, :presence => true 
	validates :location, :presence => true 
	validates :lastname, :presence => true 
	validates :password, length: {in: 8..20}
	validates :password, format: {with: /\A[a-zA-Z0-9]*\z/ }
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end

