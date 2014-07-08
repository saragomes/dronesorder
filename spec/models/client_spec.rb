require 'spec_helper'

describe Client, type: :model do
  it { validate_presence_of :first_name }
  it { validate_presence_of :last_name }
  it { validate_presence_of :email }
  it { validate_presence_of :telephone }
  it { validate_presence_of :billing_address }
  it { validate_presence_of :zip_code }
  it { validate_presence_of :city }
  it { validate_uniqueness_of :email }
  it { validate_uniqueness_of :telephone }
  
  it { have_many :parcels }
  
end
