class ConventionGroupsController < ApplicationController
  active_scaffold :convention_group do |config|
    config.columns = [:name, :conventions]
    config.update.columns.exclude :conventions
    config.create.columns.exclude :conventions
    config.actions.exclude :show
  end
end
