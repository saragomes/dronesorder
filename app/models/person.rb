class Person < ActiveRecord::Base
  
  validates :gender, :first_name, :last_name, :email, :telephone, presence: :true
  validates :first_name, uniqueness: {scope: :last_name}
  validates :email, :telephone, uniqueness: :true
  validates :email, presence: true, email: true
  validates :gender, inclusion: %w(male female)
 
  has_many :orders
  
end
