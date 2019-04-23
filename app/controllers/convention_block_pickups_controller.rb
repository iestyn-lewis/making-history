class ConventionBlockPickupsController < ApplicationController
  active_scaffold :convention_block_pickup do |config|
    #config.create.columns.exclude :convention_block_days
    #config.columns[:hotel].ui_type = :select
    #config.actions.exclude :create
  end
end
