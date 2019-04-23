class ConventionBlock < ActiveRecord::Base
  after_create :create_children
  
  belongs_to :hotel
  belongs_to :convention
  has_many :convention_block_days
  has_many :convention_block_pickups

  def to_label
    self.hotel.name
  end
  
  # create child objects
  def create_children
		# block days
    convention.convention_days.each do |convention_day|
      convention_block_days.create(:convention_day_id => convention_day.id, :convention_block_id => self.id)
    end
    
    # block pickups
    convention.convention_pickups.each do |pickup|
      convention_block_pickups.create(:convention_block_id => self.id, :convention_pickup_id => pickup.id)
    end
  end
  
end
