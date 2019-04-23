class ConventionPickup < ActiveRecord::Base
	after_create :create_children
	
	belongs_to :convention
	has_many :convention_block_pickups, :dependent => :destroy
	has_many :convention_pickup_days, :dependent => :destroy

	def create_children
		convention.convention_days.each do |day|
			convention_pickup_days.create(:convention_day_id => day.id, :convention_pickup_id => self.id)
		end
	end
end
