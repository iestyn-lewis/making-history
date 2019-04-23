class DataEntryController < ApplicationController
	layout nil
	
 def index
    show
    render :action => 'menu'
  end

  def show
    # temp debug
    get_vars
  end
  
  def update
    get_vars
    # update block days
    @block_days.each do |day|
      day.number_of_rooms = params['block_' + day.id.to_s]
      day.actual = params['actual_' + day.id.to_s]
      day.save
    end
    
    # update pickups
    @pickups.each do |pickup|
      pickup.convention_block_pickup_days.each do |day|
        day.pickup = params['pickup_' + day.id.to_s]
        day.save
      end
    end

		# update aggregate statistics.
		
  end

  def get_vars
    @convention_block = ConventionBlock.find(params[:id])
    @convention = @convention_block.convention
    @block_days = @convention_block.convention_block_days
    @pickups = @convention_block.convention_block_pickups
  end

end