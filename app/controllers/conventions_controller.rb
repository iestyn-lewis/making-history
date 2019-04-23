class ConventionsController < ApplicationController
  active_scaffold :convention do |config|
    config.columns = [:convention_group, :name, :city, :open_on, :close_on, :convention_blocks]
    config.columns[:convention_group].ui_type = :select
    config.columns[:city].ui_type = :select 
    config.update.columns.exclude :convention_blocks
    config.create.columns.exclude :convention_blocks
    config.actions.exclude :show
		
  end 
end
