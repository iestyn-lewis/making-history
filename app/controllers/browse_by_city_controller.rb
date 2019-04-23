class BrowseByCityController < ApplicationController
  active_scaffold :city do |config|
    config.columns = [:name, :state, :conventions]
		config.actions.exclude :show, :update, :create, :delete
	end
end
