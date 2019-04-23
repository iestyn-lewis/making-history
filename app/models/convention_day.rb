class ConventionDay < ActiveRecord::Base
  belongs_to :convention
  has_many :convention_block_days, :dependent => :destroy
	has_many :convention_pickup_days, :dependent => :destroy
  
  def to_label
    self.date.to_s
  end
end
