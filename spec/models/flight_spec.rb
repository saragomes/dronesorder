require 'spec_helper'

describe Flight, :type => :model do
  it { validate_presence_of :drone }
  it { validate_presence_of :parcel }
  it { validate_presence_of :order }
  it { validate_presence_of :start_date }
  it { validate_presence_of :end_date }

  it { validate_uniqueness_of(:drone).scoped_to(:start_date).scoped_to(:end_date)  }
  
  it { belong_to :drone }
  it { belong_to :parcel }
  it { belong_to :order }

end
