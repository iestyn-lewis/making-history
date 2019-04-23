require File.dirname(__FILE__) + '/../test_helper'
require 'convention_blocks_controller'

# Re-raise errors caught by the controller.
class ConventionBlocksController; def rescue_action(e) raise e end; end

class ConventionBlocksControllerTest < Test::Unit::TestCase
  def setup
    @controller = ConventionBlocksController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
