class ConventionBlockDay < ActiveRecord::Base
  belongs_to :convention_block
  belongs_to :convention_day
  has_many :convention_block_pickup_days
  
  def to_label
    "#{self.convention_day.date.to_s} (#{self.convention_block.hotel.name})"
  end 
end
