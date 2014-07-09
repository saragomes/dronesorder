class Order < ActiveRecord::Base
	validates :consultant, :client, :total_htt, :total_htc, :shipping, :taxes, :reduction, presence: :true

	has_many :flights
	belongs_to :consultant
	belongs_to :client
end
