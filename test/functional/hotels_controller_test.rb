require File.dirname(__FILE__) + '/../test_helper'
require 'hotels_controller'

# Re-raise errors caught by the controller.
class HotelsController; def rescue_action(e) raise e end; end

class HotelsControllerTest < Test::Unit::TestCase
  def setup
    @controller = HotelsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
