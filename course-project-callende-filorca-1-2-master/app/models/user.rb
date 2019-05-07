class User < ApplicationRecord
  belongs_to :blacklist
  belongs_to :admin
  belongs_to :super_admin
	has_many :posts
	has_many :comments
	has_one :wall

	validates :picture, :presence => true 
	validates :password, length: {in: 8..12}
	validates :password, format: {with: /\A[a-zA-Z0-9]*\z/ }
	validates :name, length: {in: 2..20}
	validates :lastname, length: {in: 2..20}
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end

