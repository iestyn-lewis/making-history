class ConventionBlockPickupDaysController < ApplicationController
  active_scaffold :convention_block_pickup_day do |config|
    config.columns = [:convention_block_pickup, :convention_block_day, :pickup]
    config.update.columns.exclude :convention_block_pickup, :convention_block_day
    config.actions.exclude :create, :delete
  end
end