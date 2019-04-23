class ConventionsDataEntryController < ApplicationController
  active_scaffold :convention do |config|
    config.columns = [:convention_group, :name, :city, :open_on, :close_on, :convention_blocks]
    config.actions.exclude :create, :update, :delete, :show
    config.columns[:convention_group].ui_type = :select
		config.list.columns.exclude :convention_blocks
    config.actions.exclude :show

		config.action_links.add 'index', :label => 'Convention Blocks',
																		:inline => false,
																		:type => :record, 
																		:parameters => {:controller => 'convention_blocks'}

  end
end
