class BrowseByGroupController < ApplicationController
  active_scaffold :convention_group do |config|
    config.columns = [:name]
		#config.nested.add_link("Conventions", [:conventions])
    config.actions.exclude :show, :update, :create, :delete
		config.action_links.add 'index', :label => 'Conventions',
																		:inline => false,
																		:type => :record, 
																		:parameters => {:controller => 'browse_by_convention', :id => record.id}
  end

end
