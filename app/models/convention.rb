class Convention < ActiveRecord::Base
  after_create :create_children

  belongs_to :city
  belongs_to :convention_group
	
  has_many :convention_blocks, :dependent => :destroy
  has_many :convention_pickups, :dependent => :destroy
  has_many :convention_days, :dependent => :destroy
  
  def create_children
		# order is important, b/c the pickups need the days to be created first
		
		# days - padded out 4 days in either direction
    count = 1
    (self.open_on-4).upto(self.close_on+4) do |thedate|
      self.convention_days.create(:date => thedate, :day_number => count, :convention_id => self.id)
      count += 1
    end
    
		# pickups
    1.upto(12) do |week|
			self.convention_pickups.create(:convention_id => self.id, :weeks_before => week)
    end
		
  end

	
end
