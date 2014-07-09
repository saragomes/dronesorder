class Client < Person

  validates :billing_address, :zipcode, :city, presence: :true
  validates :billing_address, uniqueness: { scope: :zipcode }
  validates :zipcode, length: { maximum: 5 } 

	has_many :parcels
  has_many :orders
  
end
