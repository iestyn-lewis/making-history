class ConventionBlockPickupDay < ActiveRecord::Base
  belongs_to :convention_block_day
	belongs_to :convention_pickup_day
  belongs_to :convention_block_pickup
  
  def to_label
    convention_block_day.convention_day.date.to_s
  end
end
