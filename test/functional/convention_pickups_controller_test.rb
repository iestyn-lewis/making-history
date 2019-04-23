require File.dirname(__FILE__) + '/../test_helper'
require 'convention_pickups_controller'

# Re-raise errors caught by the controller.
class ConventionPickupsController; def rescue_action(e) raise e end; end

class ConventionPickupsControllerTest < Test::Unit::TestCase
  def setup
    @controller = ConventionPickupsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
