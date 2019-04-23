require File.dirname(__FILE__) + '/../test_helper'
require 'cities_controller'

# Re-raise errors caught by the controller.
class CitiesController; def rescue_action(e) raise e end; end

class CitiesControllerTest < Test::Unit::TestCase
  def setup
    @controller = CitiesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
