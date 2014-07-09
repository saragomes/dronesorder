class Flight < ActiveRecord::Base
	validates :drone, :parcel, :consultant, :order, :start_date, :end_date, presence: :true
	validates :drone, uniqueness: { scoped: :start_date }

	belongs_to :drone
	belongs_to :parcel
	belongs_to :consultant
	belongs_to :order

end
