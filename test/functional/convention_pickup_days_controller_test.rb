require File.dirname(__FILE__) + '/../test_helper'
require 'convention_pickup_days_controller'

# Re-raise errors caught by the controller.
class ConventionPickupDaysController; def rescue_action(e) raise e end; end

class ConventionPickupDaysControllerTest < Test::Unit::TestCase
  def setup
    @controller = ConventionPickupDaysController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
