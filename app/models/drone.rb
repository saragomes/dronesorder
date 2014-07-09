class Drone < ActiveRecord::Base
	validates :name, :category, :price, presence: true
	validates :name, uniqueness: true

	has_many :flights
end
