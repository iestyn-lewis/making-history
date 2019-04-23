class ConventionDaysController < ApplicationController
  active_scaffold :convention_day do |config|
    config.columns = [:convention, :date, :day_number, :day_of_week, :is_peak, :convention_block_days]
    config.actions.exclude :update, :create, :delete
  end
end