class CitiesController < ApplicationController
  active_scaffold :city do |config|
    config.columns = [:name, :state, :hotels]
    config.columns[:hotels].ui_type = :select
    config.update.columns.exclude :hotels
    config.create.columns.exclude :hotels
  end
end
