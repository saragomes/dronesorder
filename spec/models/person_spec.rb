require 'spec_helper'

describe Person, type: :model do
  it { validate_presence_of :first_name }
  it { validate_presence_of :last_name }
  it { validate_presence_of :email }
  it { validate_presence_of :telephone }
  it { validate_uniqueness_of :email }
  it { validate_uniqueness_of :telephone }
  
  it { have_many :orders }
end
