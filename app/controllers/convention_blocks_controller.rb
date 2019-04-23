class ConventionBlocksController < ApplicationController
  active_scaffold :convention_block do |config|
    config.columns = [:convention, :hotel, :cutoff_days_prior]
    config.columns[:hotel].ui_type = :select
    config.update.columns.exclude :hotel
    config.actions.exclude :show, :search
    
    config.action_links.add 'show', :label => 'Enter Data', :type => :record, :parameters => {:controller => 'data_entry'}, :popup => true
  end

	def conditions_for_collection
		['convention_id = ?', params[:id]]
	end
end
