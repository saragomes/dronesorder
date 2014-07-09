require 'spec_helper'

describe Drone, :type => :model do
  it { validate_presence_of :name }
  it { validate_presence_of :category }
  it { validate_presence_of :price }
  it { validate_uniqueness_of :name }
  
  it { have_many :flights }
  
end

