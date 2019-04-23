class HotelsController < ApplicationController
  active_scaffold :hotel do |config|
    config.columns = [:name, :address, :city, :hotel_chain]
    config.list.columns.exclude :address
    config.columns[:city].ui_type = :select
    config.columns[:hotel_chain].ui_type = :select
  end
end
