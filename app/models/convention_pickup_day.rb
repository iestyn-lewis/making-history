class ConventionPickupDay < ActiveRecord::Base
	belongs_to :convention_pickup
	belongs_to :convention_day
	has_many :convention_block_pickup_days
end
