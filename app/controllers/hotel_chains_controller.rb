class HotelChainsController < ApplicationController
  active_scaffold :hotel_chain do |config|
    config.columns = [:name]
  end 
end
