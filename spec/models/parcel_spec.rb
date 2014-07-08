require 'spec_helper'

describe Parcel, :type => :model do
  it { validate_presence_of :name }
  it { validate_presence_of :hectare }
  it { validate_presence_of :consultant }
  it { validate_presence_of :address }
  it { validate_presence_of :zipcode }
  it { validate_presence_of :city }
  it { validate_uniqueness_of :name }
  it { validate_uniqueness_of :telephone }
  
  it { have_many :orders }
  it { belong_to :client }
  
end
