class ConventionBlockPickup < ActiveRecord::Base
  after_create :create_children
  
  belongs_to :convention_block
	belongs_to :convention_pickup
  has_many :convention_block_pickup_days
  
  def create_children
		# set block pickup days
    convention_block.convention_block_days.each do |day|
      block_pickup_day = convention_block_pickup_days.create(:convention_block_day_id => day.id, :convention_block_pickup_id => self.id)
			# set pickup day
			pickup_day = convention_pickup.convention_pickup_days.find(:all, :conditions => ["convention_day_id = ?", day.convention_day_id])
			block_pickup_day.id = pickup_day.id
    end
  end
  
  def to_label
    weeks_before
  end
end
