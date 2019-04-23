class City < ActiveRecord::Base 
  has_many :hotels
  has_many :conventions

	def city_state
		"#{name}, #{state}"
	end
end
