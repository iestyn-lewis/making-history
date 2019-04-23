require File.dirname(__FILE__) + '/../test_helper'
require 'hotel_chains_controller'

# Re-raise errors caught by the controller.
class HotelChainsController; def rescue_action(e) raise e end; end

class HotelChainsControllerTest < Test::Unit::TestCase
  def setup
    @controller = HotelChainsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
