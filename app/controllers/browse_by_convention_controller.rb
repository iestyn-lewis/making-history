class BrowseByConventionController < ApplicationController
  active_scaffold :convention do |config|
    config.columns = [:convention_group, :name, :city, :open_on, :close_on]
    config.actions.exclude :show, :create, :update, :delete
		
    config.action_links.add 'show', :label => 'Get Report', :type => :record, :parameters => {:controller => 'report'}, :page => true
  end 
end
