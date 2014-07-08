class Client < Person

  validates :billing_address, :zipcode, :city, presence: :true
  validates :billing_address, uniqueness: { scope: :zipcode }
  validates :zipcode, length: 5
  
 	has_many :parcels
  
end
