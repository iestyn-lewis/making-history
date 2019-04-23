class ReportController < ApplicationController
	class DateParameters
		def thestart
			Time.now
		end
		def theend
			Time.now
		end
	end

	def search_results
		@convention_group = ConventionGroup.find(params[:convention_group])
		@conventions = @convention_group.conventions
	end
	
	def show
		@convention = Convention.find(params[:id])
		@days = @convention.convention_days
		@blocks = @convention.convention_blocks
	end

	def search_form
		@convention_groups = ConventionGroup.find(:all)
		@cities = City.find(:all)
		@date_parameters = DateParameters.new
	end
end

