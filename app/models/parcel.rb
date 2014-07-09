class Parcel < ActiveRecord::Base
  validates :name, :hectare, :address, :zipcode, :city, presence: :true
  validates :address, uniqueness: { scope: [:zipcode, :city] }
  validates :name, uniqueness: :true
  validates :email, presence: true, email: true
 
  has_many :flights
  belongs_to :client
end
