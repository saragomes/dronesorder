require 'spec_helper'

describe Order, :type => :model do

  it { validate_presence_of :consultant }
  it { validate_presence_of :client }
  it { validate_presence_of :total_htc }
  it { validate_presence_of :total_htt }
  it { validate_presence_of :shipping }
  it { validate_presence_of :taxes }
  it { validate_presence_of :reduction }

  it { belong_to :consultant }
  it { belong_to :client }
  it { have_many :flights }
end
