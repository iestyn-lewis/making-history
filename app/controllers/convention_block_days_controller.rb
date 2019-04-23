class ConventionBlockDaysController < ApplicationController
  active_scaffold :convention_block_days do |config|
    config.columns = [:convention_block, :convention_day, :number_of_rooms, :actual, :is_peak]
    config.update.columns.exclude :convention_day, :convention_block, :is_peak
    config.actions.exclude :create, :delete
  end
end